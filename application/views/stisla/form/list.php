<!DOCTYPE html>
<html lang="en">

<head>
    <title> Daftar Peserta </title>
    <?php $this->load->view("/stisla/_partials/header.php"); ?>
</head>

<body>
    <div id="app">
        <div class="main-wrapper">
            <!-- Sidebar -->
            <?php $this->load->view("/stisla/_partials/navbar.php"); ?>
            <?php $this->load->view("/stisla/_partials/sidebar_admin.php"); ?>

            <!-- Main Content -->
            <div class="main-content">
                <section class="section">
                    <div class="section-header">
                        <h5>Welcome <span class="badge badge-primary"><?= $user['name']; ?></span></h5>
                    </div>

                    <div class="section-body">
                        <div class="table-responsive">
                            <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>Name</th>
                                        <th>Prodi</th>
                                        <th>Kelas</th>
                                        <th>Status</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $no = 1; ?>
                                    <?php foreach ($pendaftar as $p) : ?>
                                        <tr>
                                            <td> <?php echo $no ?></td>
                                            <td> <?php echo $p->nama; ?></td>
                                            <td> <?php echo $p->prodi; ?></td>
                                            <td> <?php echo $p->kelas; ?></td>
                                            <td>
                                                <?php if ($p->verifikasi == false) {
                                                        echo '<div class="badge badge-danger">Belum verifikasi</div>';
                                                    } else {
                                                        echo '<div class="badge badge-success">Verifikasi</div>';
                                                    }
                                                    ?>
                                            </td>
                                            <td>
                                                <a href="<?php echo site_url('stisla/mahasiswa/edit_form/' . $p->id) ?>" class="btn btn-light text-info"><i class="fas fa-info-circle"> </i> Detail</a>
                                                <a onclick="deleteConfirm('<?php echo site_url('stisla/mahasiswa/delete_pendaftar/' . $p->id) ?>')" href="#!" class="btn btn-light text-danger"><i class="fas fa-trash"></i> Hapus</a>
                                            </td>
                                        </tr>
                                        <?php $no++; ?>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <!-- Foooter  -->
    <?php $this->load->view("/stisla/_partials/footer.php"); ?>
    </div>
    </div>
    <?php $this->load->view("/stisla/_partials/modal.php"); ?>
    <!-- General JS Scripts -->
    <?php $this->load->view("/stisla/_partials/js.php"); ?>
</body>
<script>
    function deleteConfirm(url) {
        $('#btn-delete').attr('href', url);
        $('#deleteModal').modal();
    }
</script>

</html>