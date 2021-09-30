<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'Home | DDS'
        ];
        return view('pages/home', $data);
    }

    public function about()
    {
        $data = [
            'title' => 'About Me'
        ];
        return view('pages/about', $data);
    }

    public function contact()
    {
        $data = [
            'title' => 'Contact Us',
            'alamat' => [
                [
                    'tipe' => 'Rumah',
                    'alamat' => 'Jl Wibawa, 007/12',
                    'kota' => 'Jakarta'
                ],
                [
                    'tipe' => 'Kantor',
                    'alamat' => 'Jl Teratai, 008/12',
                    'kota' => 'Bekasi'
                ]
            ]
        ];
        return view('pages/contact', $data);
    }
}
