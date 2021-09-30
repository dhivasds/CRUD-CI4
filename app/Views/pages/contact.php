<?= $this->extend('layout/template'); ?>

<?= $this->section('content'); ?>

<div class="container">
    <div class="card mt-3" style="width: 18rem;">
        <div class="card-body">
            <h5 class="card-title">Contact Us</h5>
            <?php foreach ($alamat as $almt) : ?>
                <ul>
                    <li><?= $almt['tipe']; ?></li>
                    <li><?= $almt['alamat']; ?></li>
                    <li><?= $almt['kota']; ?></li>
                </ul>
            <?php endforeach; ?>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>