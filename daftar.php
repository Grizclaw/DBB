<?php 
include 'koneksi.php'; 
	if (isset($_POST['daftar'])) 
	{
						$nama = $_POST['nama'];
						$email = $_POST['email'];
						$password = $_POST['password'];
						$alamat = $_POST['alamat'];
						$telepon = $_POST['telepon'];

						//cek apakah email sudah ada
						$ambil=$koneksi->query("SELECT*FROM pelanggan WHERE email_pelanggan='$email'");
						$yangcocok = $ambil->num_rows;
						if ($yangcocok == 1) 
						{
              echo "<div class='alert alert-danger'>Pendaftaran gagal, email sudah digunakan!</div>";
              echo "<meta http-equiv='refresh' content='1;url=daftar.php'>";
						}
						else
						{
							$koneksi->query("INSERT INTO pelanggan (nama_pelanggan, email_pelanggan,  password_pelanggan, alamat, telepon_pelanggan)
								VALUES('$nama','$email','$password','$alamat','$telepon')");

							echo "<script>alert('pendaftaran berhasil')</script>";
							echo "<script>location='login.php';</script>";
						}
					}
?>
<!DOCTYPE html>
<html>
<head>
	<title>FP CASUALS</title>
	<link rel="stylesheet" type="text/css" href="admin/assets/css/bootstrap.css">
</head>
<style>
	.container{
		margin-left: 55px;
	}
	body{
		background: url('admin/assets/img/bg-login.png');
	}
</style>
<body>
<div class="container" style="margin-top: 10px">
<br><br><br><br>
	<div class="row">
		<div class="col-md-7 col-md-offset-3">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h3 class="panel-title">Daftar Pelanggan</h3>
				</div>
				<div class="panel-body">
					<form method="post" class="form-horizontal">
						<div class="form-group">
							<label class="control-label col-md-3">Nama</label>
							<div class="col-md-7">
								<input type="text" name="nama" class="form-control" required>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Email</label>
							<div class="col-md-7">
								<input type="email" name="email" class="form-control" required>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Password</label>
							<div class="col-md-7">
								<input type="password" name="password" class="form-control" required>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Alamat</label>
							<div class="col-md-7">
								<textarea class="form-control " name="alamat" required></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Telepon</label>
							<div class="col-md-7">
								<input type="text" name="telepon" class="form-control">
							</div>
						</div>
						<div class="form-group">
							<div class="col-md-7 col-md-offset-3">
								<button class="btn btn-primary" name="daftar">Daftar</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>