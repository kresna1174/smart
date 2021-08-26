<body>
    <section class="blog-wrap">
        <div class="container">
            <div class="event-heading">
                <h4 align=center><?php echo $judul[0]->album_nama; ?></h4><br>
            </div>
                    <div class="row">
			            <?php foreach ($desk as $row) : ?>
                                <div class="card col-md-4">
                                    <img class="card-img-top" src="<?php echo base_url().'assets/images/'.$row->galeri_gambar;?>" height="75%" width="100%" class="img-fluid" >
                                    <div class="card-body">
                                        <h4 class="card-title text-center"><?= $row->galeri_judul?></h4>
                                    </div>
                                </div>
                        <?php endforeach;?>
                    </div
                    <hr class="event-underline">
    </section>