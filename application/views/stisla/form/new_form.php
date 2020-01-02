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
						<a href="<?php echo site_url('/stisla/home') ?>"><i class="fas fa-arrow-left"></i> Back</a>
					</div>
					<div class="section-body">
						<div class="card-body">
							<form class="col-md-10" action="<?php base_url('stisla/mahasiswa/save_form') ?>" method="post" enctype="multipart/form-data" class="needs-validation" novalidate="">
								<h4> Formulir Pendaftaran </h4>
								<div class="row">
									<div class="col-lg col-md">
										<div class="card card-primary">
											<div class="card-header">
												<h4> Data Diri </h4>
											</div>
											<div class="card-body">
												<div class="form-group">
													<label>Nama *</label>
													<input type="text" class="form-control" required="" name="nama" autofocus>
													<div class=" invalid-feedback">
														Please fill in your email
													</div>
												</div>
												<div class="form-group">
													<label>Email *</label>
													<input type="email" class="form-control" required="" name="email">
													<div class=" invalid-feedback">
														Masukan Email Anda?
													</div>
												</div>
												<div class="form-group">
													<label>No Telefon *</label>
													<input type="text" class="form-control" required="" name="no_hp">
													<div class=" invalid-feedback">
														Opps! No Telefon diperlukan
													</div>
												</div>
												<label for=""> Alamat *</label>
												<br>
												<div class="form-group">
													<label>Jalan </label>
													<input type="text" class="form-control" required="" name="jalan">
													<div class=" invalid-feedback">
														Opps! Jalan diperlukan
													</div>
												</div>
												<div class="form-row">
													<div class="form-group col-md-5">
														<label for="">Kota</label>
														<input type="text" class="form-control" name="kota">
													</div>
													<div class=" form-group col-md-3">
														<label for="">Provinsi</label>
														<input type="text" class="form-control" name="provinsi">
													</div>
													<div class=" form-group col-md-2">
														<label for="">Zip</label>
														<input type="text" class="form-control" name="kode_pos" maxlength="5">
													</div>
												</div>
												<div class=" form-group">
													<label>Asal Sekolah * </label>
													<input type="text" class="form-control" required="" name="asal_sekolah">
													<div class=" invalid-feedback">
														Opps! Asal Sekolah masih kosong
													</div>
												</div>
												<div class="form-group">
													<label> Prodi Jurusan *</label>
													<select class="form-control" name="prodi">
														<option value=""> Choose </option>
														<option value="S1-Teknik Informatika">S1 - Teknik Informatika</option>
														<option value="S1-Teknik Elektro">S1 - Teknik Elektro</option>
														<option value="S1-Sistem Informasi">S1 - Sistem Informasi</option>
													</select>
												</div>
												<div class="form-group">
													<label> Kelas *</label>
													<select class="form-control select" name="kelas">
														<option value=""> Choose </option>
														<option value="Pagi"> Pagi </option>
														<option value="Sore"> Sore </option>
													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
								<br>

								<!-- <div class="custom-file">
									<input type="file" name="image" class="custom-file-input" id="foto">
									<label class="custom-file-label">Choose File</label>
								</div>
								<div class="form-text text-muted">The image must have a maximum size of 1MB</div> -->


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