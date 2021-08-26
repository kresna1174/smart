<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Esemkita | Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <link rel="shorcut icon" type="text/css" href="<?php echo base_url().'assets/images/esemkita.png'?>">
  <link rel="stylesheet" type="text/css" media="screen" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/bootstrap/css/bootstrap.min.css'?>">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/font-awesome/css/font-awesome.min.css'?>">
  <link href="<?= base_url('assets/vendor/datatables/datatables.min.css') ?>" rel="stylesheet" type="text/css">
  <!-- Ionicons -->
  <!-- jvectormap -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/plugins/jvectormap/jquery-jvectormap-1.2.2.css'?>">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/AdminLTE.min.css'?>">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="<?php echo base_url().'assets/dist/css/skins/_all-skins.min.css'?>">

</head>
<body>
<div class="wrapper">
	<!-- Begin Page Content -->
	<div class="container-fluid">

		<!-- Page Heading -->
		<div class="d-sm-flex align-items-center justify-content-between mb-4">
			<h1 class="h3 mb-0 text-gray-800">Data Siswa</h1>
		</div>

		<div class="row">
			<div class="col-12">
				<div class="card shadow mb-4">
					<div class="card-header py-3">
						<h6 class="m-0 float-left font-weight-bold text-primary">Data Siswa</h6>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table id="dataTable" class="table table-bordered" width="100%" cellspacing="0" data-autonumber="true">
								<thead>
									<tr>
										<th>No.</th>
										<th>Nama</th>
										<th>Jenis Kelamin</th>
										<th>Tempat Lahir</th>
										<th>Tanggal Lahir</th>
										<th>Asal SMP</th>
										<th>Username</th>
										<th>Password</th>
										<th>Gelombang</th>
										
									</tr>
								</thead>
								<tbody>
									<?php $no =1 ?>
									<?php foreach ($siswa as $row): ?>
										<tr>
											<td><?= $no++ ?></td>
											<td><?= $row['nama_siswa'] ?></td>
											<td><?= $row['jenkel'] ?></td>
											<td><?= $row['tempat_lahir'] ?></td>
											<td><?= $row['tanggal_lahir'] ?></td>
											<td><?= $row['asal_smp'] ?></td>
											<td><?= $row['username'] ?></td>
											<td><?= $row['password'] ?></td>
											<td><?= $row['gelombang'] ?></td>
										</tr>
									<?php endforeach ?>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- jQuery 2.2.3 -->
<script src="<?php echo base_url().'assets/plugins/jQuery/jquery-2.2.3.min.js'?>"></script>
<!-- Bootstrap 3.3.6 -->
<script src="<?php echo base_url().'assets/bootstrap/js/bootstrap.min.js'?>"></script>
<!-- FastClick -->
<script src="<?php echo base_url().'assets/plugins/fastclick/fastclick.js'?>"></script>
<!-- AdminLTE App -->
<script src="<?php echo base_url().'assets/dist/js/app.min.js'?>"></script>
<!-- Sparkline -->
<script src="<?php echo base_url().'assets/plugins/sparkline/jquery.sparkline.min.js'?>"></script>
<!-- jvectormap -->
<script src="<?php echo base_url().'assets/plugins/jvectormap/jquery-jvectormap-1.2.2.min.js'?>"></script>
<script src="<?= base_url('assets/vendor/datatables/datatables.min.js') ?>"></script>
<script src="<?php echo base_url().'assets/plugins/jvectormap/jquery-jvectormap-world-mill-en.js'?>"></script>
<!-- SlimScroll 1.3.0 -->
<script src="<?php echo base_url().'assets/plugins/slimScroll/jquery.slimscroll.min.js'?>"></script>
<!-- ChartJS 1.0.1 -->
<script src="<?php echo base_url().'assets/plugins/chartjs/Chart.min.js'?>"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?php echo base_url().'assets/dist/js/pages/dashboard2.js'?>"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url().'assets/dist/js/demo.js'?>"></script>


</body>
</html>