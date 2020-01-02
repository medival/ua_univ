<!DOCTYPE html>
<html lang="en">

<head>
    <?php $this->load->view("/stisla/_partials/header.php"); ?>
</head>

<body>
    <div id="app">
        <div class="main-wrapper">
            <?php $this->load->view("/stisla/_partials/navbar.php"); ?>

            <!-- Sidebar -->
            <?php $this->load->view("/stisla/_partials/sidebar_admin.php"); ?>
            <!-- Main Content -->
            <div class="main-content">
                <section class="section">
                    <div class="section-header">
                        <a href="<?php echo site_url('/stisla/mahasiswa/admin') ?>"><i class="fas fa-arrow-left"></i> Back</a>
                    </div>

                    <div class="section-body">
                        <div class="card-body">
                            <?php if ($this->session->flashdata('success')) : ?>
                                <div class="alert alert-success alert-dismissible show fade" role="alert">
                                    <button class="close" data-dismiss="alert">
                                        <span>&times;</span>
                                    </button>
                                    <?php echo $this->session->flashdata('success'); ?>
                                </div>
                            <?php endif; ?>
                            <form class="col-md-10" action="<?php base_url('stisla/mahasiswa/update_form') ?>" method="post" enctype="multipart/form-data" class="needs-validation" novalidate="">
                                <h4> Detail Data Pendaftar </h4>
                                <div class="row">
                                    <div class="col-lg col-md">
                                        <div class="card card-primary">
                                            <div class="card-header">
                                                <h4> Data Diri </h4>
                                            </div>
                                            <input type="hidden" name="id" value="<?php echo $pendaftar->id ?>" />
                                            <div class="card-body">
                                                <div class="form-group">
                                                    <label>Nama *</label>
                                                    <input type="text" class="form-control" required="" name="nama" autofocus value="<?= $pendaftar->nama; ?>">
                                                    <div class=" invalid-feedback">
                                                        Please fill in your email
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>Email *</label>
                                                    <input type="email" class="form-control" required="" name="email" value="<?= $pendaftar->email; ?>">
                                                    <div class=" invalid-feedback">
                                                        Masukan Email Anda?
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label>No Telefon *</label>
                                                    <input type="text" class="form-control" required="" name="no_hp" value="<?= $pendaftar->no_hp; ?>">
                                                    <div class=" invalid-feedback">
                                                        Opps! No Telefon diperlukan
                                                    </div>
                                                </div>
                                                <label for=""> Alamat *</label>
                                                <br>
                                                <div class="form-group">
                                                    <label>Jalan </label>
                                                    <input type="text" class="form-control" required="" name="jalan" value="<?= $pendaftar->jalan; ?>">
                                                    <div class=" invalid-feedback">
                                                        Opps! Jalan diperlukan
                                                    </div>
                                                </div>
                                                <div class="form-row">
                                                    <div class="form-group col-md-5">
                                                        <label for="">Kota</label>
                                                        <input type="text" class="form-control" name="kota" value="<?= $pendaftar->kota; ?>">
                                                    </div>
                                                    <div class=" form-group col-md-3">
                                                        <label for="">Provinsi</label>
                                                        <input type="text" class="form-control" name="provinsi" value="<?= $pendaftar->provinsi; ?>">
                                                    </div>
                                                    <div class=" form-group col-md-2">
                                                        <label for="">Zip</label>
                                                        <input type="text" class="form-control" name="kode_pos" maxlength="5" value="<?= $pendaftar->kode_pos; ?>">
                                                    </div>
                                                </div>
                                                <div class=" form-group">
                                                    <label>Asal Sekolah * </label>
                                                    <input type="text" class="form-control" required="" name="asal_sekolah" value="<?= $pendaftar->asal_sekolah; ?>">
                                                    <div class=" invalid-feedback">
                                                        Opps! Asal Sekolah masih kosong
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label> Prodi Jurusan *</label>
                                                    <select class="form-control" name="prodi">
                                                        <option value="S1-Teknik Informatika" <?php if ($pendaftar->prodi == "S1-Teknik Informatika") {
                                                                                                    echo "selected";
                                                                                                } ?>>S1 - Teknik Informatika</option>
                                                        <option value="S1-Teknik Elektro" <?php if ($pendaftar->prodi == "S1-Teknik Elektro") {
                                                                                                echo "selected";
                                                                                            } ?>>S1 - Teknik Elektro</option>
                                                        <option value="S1-Sistem Informasi" <?php if ($pendaftar->prodi == "S1-Sistem Informasi") {
                                                                                                echo "selected";
                                                                                            } ?>>S1 - Sistem Informasi</option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <label> Kelas *</label>
                                                    <select class="form-control select" name="kelas">
                                                        <option value="Pagi" <?php if ($pendaftar->kelas == "Pagi") {
                                                                                    echo "selected";
                                                                                } ?>> Pagi </option>
                                                        <option value="Sore" <?php if ($pendaftar->kelas == "Sore") {
                                                                                    echo "selected";
                                                                                } ?>> Sore </option>
                                                    </select>
                                                </div>
                                                <div class="form-group">
                                                    <div class="control-label">Verifikasi</div>
                                                    <div class="custom-switches-stacked mt-2">
                                                        <label class="custom-switch">
                                                            <input type="radio" name="verifikasi" value="0" class="custom-switch-input" <?php if ($pendaftar->verifikasi == 0) {
                                                                                                                                            echo "checked";
                                                                                                                                        } ?>>
                                                            <span class="custom-switch-indicator"></span>
                                                            <span class="custom-switch-description">Belum Verifikasi</span>
                                                        </label>
                                                        <label class="custom-switch">
                                                            <input type="radio" name="verifikasi" value="1" class="custom-switch-input" <?php if ($pendaftar->verifikasi == 1) {
                                                                                                                                            echo "checked";
                                                                                                                                        } ?>>
                                                            <span class="custom-switch-indicator"></span>
                                                            <span class="custom-switch-description">Verifikasi</span>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <button class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                </section>
            </div>

            <!-- Foooter  -->
            <?php $this->load->view("/stisla/_partials/footer.php"); ?>
        </div>
    </div>

    <!-- General JS Scripts -->
    <?php $this->load->view("/stisla/_partials/js.php"); ?>
</body>

</html>