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
            <?php $this->load->view("/stisla/_partials/sidebar_member.php"); ?>

            <!-- Main Content -->
            <div class="main-content">
                <section class="section">
                    <div class="section-header">
                        <h5>Welcome <span class="badge badge-primary"><?= $user['name']; ?></span></h5>
                    </div>
                    <div class="row">
                        <div class="col-lg ">
                            <div class="card card-primary">
                                <div class="card-header">
                                    <h4>Selamat Datang Username <?php echo $user['name']; ?></h4>
                                </div>
                                <div class="card-body">
                                    <p>Selamat datang di web pendaftaran online Universitas :</p>
                                    <ol>
                                        <li>Mengisi dan submit <a href="<?php echo base_url('stisla/mahasiswa/add_form') ?>">formulir pendaftaran</a></li>
                                        <li> Mengupload berkas syarat yang dibutuhkan</li>
                                        <li> Membayar voucher ke bank</li>
                                        <li> Mencetak kartu ujian</li>
                                        <li> Ujian seleksi</li>
                                        <li> Pengumuman bisa dilihat di website ppmb.x.ac.id</li>
                                        <li> Pendaftaran ulang www.x.ac.id </li>
                                    </ol>
                                </div>
                            </div>
                        </div>
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