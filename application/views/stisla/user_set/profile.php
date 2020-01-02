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
            <?php $this->load->view("/stisla/_partials/sidebar.php"); ?>


            <!-- Main Content -->
            <div class="main-content">
                <section class="section">
                    <div class="section-header">
                        Halaman Profile
                        <label></label>
                    </div>
                    <div class="section-body">
                        <h2 class="section-title">Hi, Ujang!</h2>
                        <p class="section-lead">
                            Change information about yourself on this page.
                        </p>
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