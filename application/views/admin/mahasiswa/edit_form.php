<!DOCTYPE html>
<html lang="en">

<head>
	<?php $this->load->view("admin/_partials/head.php") ?>
</head>

<body id="page-top">

	<?php $this->load->view("admin/_partials/navbar.php") ?>
	<div id="wrapper">

		<?php $this->load->view("admin/_partials/sidebar.php") ?>

		<div id="content-wrapper">

			<div class="container-fluid">

				<?php $this->load->view("admin/_partials/breadcrumb.php") ?>

				<?php if ($this->session->flashdata('success')) : ?>
					<div class="alert alert-success" role="alert">
						<?php echo $this->session->flashdata('success'); ?>
					</div>
				<?php endif; ?>

				<!-- Card  -->
				<div class="card mb-3">
					<div class="card-header">
						<a href="<?php echo site_url('admin/mahasiswa/') ?>"><i class="fas fa-arrow-left"></i>
							Back</a>
					</div>
					<div class="card-body">

						<form action="<?php base_url(" admin/mahasiswa/edit/") ?>" method="post" enctype="multipart/form-data">

							<input type="hidden" name="id" value="<?php echo $mahasiswa->id ?>" />

							<div class="form-group">
								<label for="nisn">NISN*</label>
								<input class="form-control <?php echo form_error('nisn') ? 'is-invalid' : '' ?>" type="text" name="nisn" placeholder="NISN" value="<?php echo $mahasiswa->nisn; ?>" />
								<div class="invalid-feedback">
									<?php echo form_error('nisn') ?>
								</div>
							</div>
							<div class="form-group">
								<label for="name">Nama*</label>
								<input class="form-control <?php echo form_error('nama') ? 'is-invalid' : '' ?>" type="text" name="nama" placeholder="Your name" value="<?php echo $mahasiswa->nama; ?>" />
								<div class="invalid-feedback">
									<?php echo form_error('nama') ?>
								</div>
							</div>
							<div class="form-group">
								<label for="email">Email*</label>
								<input class="form-control <?php echo form_error('email') ? 'is-invalid' : '' ?>" type="text" name="email" placeholder="Your email" value="<?php echo $mahasiswa->email; ?>" />
								<div class="invalid-feedback">
									<?php echo form_error('email') ?>
								</div>
							</div>

							<div class="form-group">
								<label for="no_hp">No Telefon*</label>
								<input class="form-control <?php echo form_error('no_hp') ? 'is-invalid' : '' ?>" type="text" name="no_hp" maxlength="13" placeholder="Your nomor telefon" value="<?php echo $mahasiswa->no_hp; ?>" />
								<div class="invalid-feedback">
									<?php echo form_error('no_hp') ?>
								</div>
							</div>

							<div class="form-group">
								<label for="name"> Foto </label>
								<input class="form-control-file <?php echo form_error('price') ? 'is-invalid' : '' ?>" type="file" name="image" />
								<input type="hidden" name="old_image" value="<?php echo $mahasiswa->image ?>">
								<div class="invalid-feedback">
									<?php echo form_error('image') ?>
								</div>
							</div>

							<input class="btn btn-success" type="submit" name="btn" value="Update" />
						</form>

					</div>

					<div class="card-footer small text-muted">
						* required fields
					</div>


				</div>
				<!-- /.container-fluid -->

				<!-- Sticky Footer -->
				<?php $this->load->view("admin/_partials/footer.php") ?>

			</div>
			<!-- /.content-wrapper -->

		</div>
		<!-- /#wrapper -->

		<?php $this->load->view("admin/_partials/scrolltop.php") ?>

		<?php $this->load->view("admin/_partials/js.php") ?>

</body>

</html>