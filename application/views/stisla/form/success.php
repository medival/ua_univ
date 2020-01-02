<!DOCTYPE html>
<html lang="en">

<head>
    <?php $this->load->view('/stisla/_partials/header'); ?>
</head>

<body>
    <div id="app">
        <section class="section">
            <div class="container mt-5 card-success">
                <div class="col-lg col-md">
                    <div class="card mt-5">
                        <div class="card-header">

                        </div>
                        <div class="card-body text-center">
                            <div class="card-footer">
                                <h2 class="text-center mb-5"> Congrats! </h2>
                                <h3>Registrasi berhasil</h3>

                                <div class="text-center mt-5">
                                    <a href="<?php echo base_url('stisla/mahasiswa') ?>" class="btn btn-success">Back to home</a>
                                </div>
                            </div>
                        </div>
                        <div class="card-footer">
                            <div class="simple-footer mt-5">
                                Copyright &copy; Stisla 2018
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <?php $this->load->view('/stisla/_partials/js'); ?>
</body>

</html>