<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="address">
                    <h3>Hubungi Kami</h3>
                    <p><span>Alamat: </span> Jl. Ki Mangunsarkoro VI/3, Beji, Boyolangu, Tulungagung, Jawa Timur</p>
                    <p>Email : smkn1boyolangu@yahoo.co.id
                        <br> Phone : (0355) 323024</p>
                        <ul class="footer-social-icons">
                            <li><a href="https://www.facebook.com/esemkita.esemkita"><i class="fa fa-facebook fa-2x" style="color: #3b5998;" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin fa-2x" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.youtube.com/channel/UC-WdSHOrqKaiM285ojxY7OQ"><i class="fa fa-youtube fa-2x" style="color: #609af7" aria-hidden="true"></i></a></li>
                            <li><a href="https://www.instagram.com/smkn1_boyolangu/?hl=id"><i class="fa fa-instagram fa-2x" style="color:#ff0000" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="sitemap">
                        <h3>Menu Utama</h3>
                        <ul>
                            <li><a href="<?php echo site_url();?>">Home</a></li>
                            <li><a href="<?php echo site_url('about');?>">Tentang</a></li>
                            <li><a href="<?php echo site_url('artikel');?>">Berita </a></li>
                            <li><a href="<?php echo site_url('galeri');?>">Galeri</a></li>
                             <li><a href="<?php echo site_url('guru');?>">Guru</a></li>
                           
                        </ul>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="sitemap">
                        <h3>Akademik</h3>
                        <ul>
                            <li><a href="<?php echo site_url('jurusan');?>">Komp. Keahlian </a></li>
                            <li><a href="<?php echo site_url('pengumuman');?>">Pengumuman</a></li>
                            <li><a href="<?php echo site_url('agenda');?>">Agenda</a></li>
                            <li><a href="<?php echo site_url('download');?>">Download</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-2" style="padding-top: 50px;">
                    <div class="address">
                        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7815.862176109879!2d111.89850921725565!3d-8.081474592197296!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e78e2fe4e42ef85%3A0x873776b0da703415!2sSMK%20Negeri%201%20Boyolangu%20Tulungagung!5e0!3m2!1sid!2sid!4v1572363662329!5m2!1sid!2sid" width="323" height="250" frameborder="0" style="border:1;" allowfullscreen="" style="max-width: 100%"></iframe>
                    </div>
                </div>
            </div>
            <div class="footer">
                <div class="text-center text-white py-5 bg-dark">
                        <img src="<?php echo base_url().'theme/images/esemkita.png'?>" style="width:7%" class="img-fluid" alt="footer_logo"><!-- <span style="color: #dadada">SMKN 1 BOYOLANGU</span> -->
                    <p style="color:white"><?php echo date('Y');?> © by <a href="https://smkn1boyolangu.sch.id/"><span style="color: #cbb58b">SMKN 1 BOYOLANGU</span></a>. <br></p>
                </div>
            </div>
        </div>
    </footer>
    <!--//END FOOTER -->
    <!-- jQuery, Bootstrap JS. -->
    <script src="<?php echo base_url().'theme/js/jquery.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/tether.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/bootstrap.min.js'?>"></script>
    <!-- Plugins -->
    <script src="<?php echo base_url().'theme/js/slick.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/waypoints.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/counterup.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/owl.carousel.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/validate.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/tweetie.min.js'?>"></script>
    <!-- Subscribe -->

    <script src="<?php echo base_url().'theme/js/subscribe.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/jquery-ui-1.10.4.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/jquery.isotope.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/animated-masonry-gallery.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/jquery.magnific-popup.js'?>"></script>
    <!-- Script JS -->
    <script src="<?php echo base_url().'theme/js/script.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/jquery.dataTables.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/dataTables.bootstrap4.min.js'?>"></script>
    <script>
        $(document).ready(function() {
            $('#display').DataTable();
        });
    </script>
</body>
</html>