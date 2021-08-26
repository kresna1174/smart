<body>
	<section>
		<div class="content-wrapper">
		    <div class="content">
		        <?php foreach ($desk as $row) : ?>
		            <?php echo $row->nama_jurusan; ?>
		            <img src="<?php echo base_url().'assets/images/'.$row->logo_jurusan;?>" class="img-fluid" alt="#">
		            <?php echo $row->deskripsi; ?>

		    <?php  endforeach; ?>
		    </div>
		</div>
	</section>