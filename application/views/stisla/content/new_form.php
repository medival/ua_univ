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
                        <a href="<?php echo site_url('/stisla/mahasiswa/add') ?>"><i class="fas fa-plus"></i> Add New</a>
                    </div>
                    <div class="section-body">
                        <div class="card-body">
                            <form class="col-md-10" action="<?php base_url('stisla/mahasiswa/add') ?>" method="post" enctype="multipart/form-data">
                                <h4> Formulir Pendaftaran </h4>
                                <br>
                                <div class="form-group">
                                    <label>Nama</label>
                                    <input type="text" class="form-control" required="" name="nama">
                                    <div class="invalid-feedback">
                                        Masukkan nama Anda?
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input type="email" class="form-control" required="" name="email">
                                    <div class="invalid-feedback">
                                        Masukan Email Anda?
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>NISN</label>
                                    <input type="text" class="form-control" required="" name="nisn">
                                    <div class="invalid-feedback">
                                        Opps! NISN diperlukan
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label>No Telefon</label>
                                    <input type="text" class="form-control" required="" name="no_hp">
                                    <div class="invalid-feedback">
                                        Opps! No Telefon diperlukan
                                    </div>
                                </div>

                                <div class="custom-file">
                                    <input type="file" name="image" class="custom-file-input" id="foto">
                                    <label class="custom-file-label">Choose File</label>
                                </div>
                                <div class="form-text text-muted">The image must have a maximum size of 1MB</div>


                                <!-- <div class="form-group">
                                    <label for="name"> Foto </label>
                                    <input class="form-control-file " type="file" name="image" />
                                    <div class="invalid-feedback">
                                    </div>
                                </div> -->
                                <!-- <div class="form-group">
                                    <label>NISN</label>
                                    <input type="number" class="form-control">
                                    <div class="invalid-feedback">
                                        Opps Field NISN diperlukan
                                    </div>
                                </div> -->
                                <!-- <div class="form-group mb-0">
                                    <label>No. Telefon</label>
                                    <textarea class="form-control" required=""></textarea>
                                    <div class="invalid-feedback">
                                        Opps! No Telefon terlupakan
                                    </div>
                                </div> -->
                                <!-- </div> -->
                                <br>
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