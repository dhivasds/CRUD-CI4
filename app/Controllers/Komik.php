<?php

namespace App\Controllers;

use App\Models\KomikModel;

class Komik extends BaseController
{
    protected $komikModel;

    public function __construct()
    {
        $this->komikModel = new KomikModel();
    }

    public function index()
    {
        // $komik = $this->komikModel->findAll(); // sudah ditambahkan di Komik Mode

        $data = [
            'title' => 'Comics List',
            'komik' => $this->komikModel->getKomik()
        ];


        // $komikModel = new App\Models\komikModel();
        // $komikModel = new KomikModel();


        return view('komik/index', $data);
    }


    public function detail($slug)
    {
        $data = [
            'title' => 'Detail Komik',
            'komik' => $this->komikModel->getKomik($slug)
        ];

        // Jika komik tidak ada di tabel
        if (empty($data['komik'])) {
            throw \CodeIgniter\Exceptions\PageNotFoundException::forPageNotFound('Judul komik "' . $slug . '" tidak ditemukan.');
        }

        return view('komik/detail', $data);
    }

    public function create()
    {
        // karna data input tadi dikirimnya ke session. kita harus tangkap dulu datanya.
        // session();
        $data = [
            'title' => 'Form Tambah Data Komik',
            'validation' => \Config\Services::validation()
        ];

        return view('komik/create', $data);
    }

    public function save()
    {

        // Validasi input
        if (!$this->validate([
            'judul' => [
                'rules' => 'required|is_unique[komik.judul]',
                'errors' => [
                    'required' => '{field} Komik harus diisi.',
                    'is_unique' => '{field} Komik sudah terdaftar'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran file gambar melebihi 1024 KB',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]

        ])) {
            // $validation = \Config\Services::validation();
            // return redirect()->to('/komik/create')->withInput()->with('validation', $validation); //dari save mengirim semua input, ngirim validationnya kita ambil validationnya ke function create dan jalankan session(); karna kalau tidak, errorny tidak akan tampil. agar tidak lupa "session" simpan saja di base controller
            return redirect()->to('/komik/create')->withInput();
        }

        // AMBIL GAMBAR
        $fileSampul = $this->request->getFile('sampul');
        // cek apakah ada gambar yang di upload, kalo tidak ada gunakan gambar default
        if ($fileSampul->getError() == 4) {
            $namaSampul = 'default.png';
        } else {
            // GENERATE NAMA SAMPUL RANDOM
            $namaSampul = $fileSampul->getRandomName();
            // PINDAHKAN FILE KE FOLDER IMG
            $fileSampul->move('img', $namaSampul);
        }


        //EX: dd($this->request->getVar()); // Agar bisa mengambil data dalam bentuk "GET & POST"
        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->komikModel->save([
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul

        ]);

        session()->setFlashdata('pesan', 'Data berhasil di tambahkan.');

        return redirect()->to('/komik');
    }

    public function delete($id)
    {
        // cari gambar berdasarkan id
        $komik = $this->komikModel->find($id);
        // cek jika file gambar default.png
        if ($komik['sampul'] != 'default.png') {

            // hapus gambar
            unlink('img/' . $komik['sampul']);
        }

        $this->komikModel->delete($id);
        session()->setFlashdata('pesan', 'Data berhasil di hapus.');
        return redirect()->to('/komik');
    }

    public function edit($slug)
    {
        $data = [
            'title' => 'Form Ubah Data Komik',
            'validation' => \Config\Services::validation(),
            'komik' => $this->komikModel->getKomik($slug)
        ];

        return view('komik/edit', $data);
    }

    public function update($id)
    {
        // Cek judul
        $komikLama = $this->komikModel->getKomik($this->request->getVar('slug'));
        if ($komikLama['judul'] == $this->request->getVar('judul')) {
            $rule_judul = 'required';
        } else {
            $rule_judul = 'required|is_unique[komik.judul]';
        }

        // Validasi input
        if (!$this->validate([
            'judul' => [
                'rules' => $rule_judul,
                'errors' => [
                    'required' => '{field} Komik harus diisi.',
                    'is_unique' => '{field} Komik sudah terdaftar'
                ]
            ],
            'sampul' => [
                'rules' => 'max_size[sampul,1024]|is_image[sampul]|mime_in[sampul,image/jpg,image/jpeg,image/png]',
                'errors' => [
                    'max_size' => 'Ukuran file gambar melebihi 1024 KB',
                    'is_image' => 'Yang anda pilih bukan gambar',
                    'mime_in' => 'Yang anda pilih bukan gambar'
                ]
            ]

        ])) {
            return redirect()->to('/komik/edit/' . $this->request->getVar('slug'))->withInput();
        }

        $fileSampul = $this->request->getFile('sampul');

        // cek gambar, apakah gambar lama atau diganti
        if ($fileSampul->getError() == 4) {
            $namaSampul = $this->request->getVar('sampulLama');
        } else {
            // generate nama file random
            $namaSampul = $fileSampul->getRandomName();
            // pindahkan gambar
            $fileSampul->move('img', $namaSampul);
            // hapus file yang lama
            unlink('img/' . $this->request->getVar('sampulLama'));
        }

        $slug = url_title($this->request->getVar('judul'), '-', true);
        $this->komikModel->save([
            'id' => $id,
            'judul' => $this->request->getVar('judul'),
            'slug' => $slug,
            'penulis' => $this->request->getVar('penulis'),
            'penerbit' => $this->request->getVar('penerbit'),
            'sampul' => $namaSampul

        ]);

        session()->setFlashdata('pesan', 'Data berhasil diubah.');

        return redirect()->to('/komik');
    }
}
