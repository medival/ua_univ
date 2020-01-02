<!DOCTYPE html>
<html lang="en">

<head>
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
                        <a href="<?php echo site_url('stisla/mahasiswa/add') ?>"><i class="fas fa-plus"></i> Add New</a>
                    </div>
                    <h1> <?php echo $user['name']; ?></h1>
                    <div class="section-body">
                        <div class="table-responsive">
                            <table class="table table-hover" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Name</th>
                                        <th>Image</th>
                                        <th>NISN</th>
                                        <th>Email</th>
                                        <th>No Hp</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $no = 1; ?>
                                    <?php foreach ($mahasiswa as $m) : ?>
                                        <tr>
                                            <td width="10">
                                                <?php echo $no; ?>
                                            </td>
                                            <td width="140">
                                                <?php echo $m->nama ?>
                                            </td>
                                            <td>
                                                <img src="<?php echo base_url('upload/foto/' . $m->image) ?>" width="64" />
                                            </td>
                                            <td>
                                                <?php echo $m->nisn ?>
                                            </td>
                                            <td>
                                                <?php echo $m->email ?>
                                            </td>
                                            <td>
                                                <?php echo $m->no_hp ?>
                                            </td>
                                            <td width="250">
                                                <a href="<?php echo site_url('stisla/mahasiswa/edit/' . $m->id) ?>" class="btn btn-small"><i class="fas fa-edit"></i> Edit</a>
                                                <a onclick="deleteConfirm('<?php echo site_url('stisla/mahasiswa/delete/' . $m->id) ?>')" href="#!" class="btn btn-small text-danger"><i class="fas fa-trash"></i> Hapus</a>
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