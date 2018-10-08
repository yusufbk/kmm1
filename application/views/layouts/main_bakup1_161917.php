<?php $class = $this->router->fetch_class();?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>RS Amal Sehat</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="<?php echo site_url('resources/bootstrap/css/bootstrap.min.css');?>">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="<?php echo site_url('resources/dist/css/AdminLTE.min.css');?>">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="<?php echo site_url('resources/dist/css/skins/_all-skins.min.css');?>">

        <link rel="stylesheet" href="<?php echo site_url('resources/plugins/datatables/dataTables.bootstrap.css');?>">

    </head>
    
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">
            <header class="main-header">
                <!-- Logo -->
                <a href="<?php echo base_url();?>" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini">RS Amal Sehat</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg">RS Amal Sehat</span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                        <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="<?php echo site_url('resources/img/user.png');?>" class="user-image" alt="User Image">
                                    <span class="hidden-xs"><?php echo $this->session->userdata('nama');?></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="<?php echo site_url('resources/img/user.png');?>" class="img-circle" alt="User Image">

                                    <p>
                                        <?php echo $this->session->userdata('nama');?>
                                        <small>Status Login <?php echo $this->session->userdata('level');?></small>
                                    </p>
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
          
                                        <div class="pull-right">
                                            <a href="<?php echo site_url('dashboard/logout');?>" class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="<?php echo site_url('resources/img/user.png');?>" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p><?php echo $this->session->userdata('nama');?></p>
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">MAIN NAVIGATION</li>

                    <?php if($this->session->userdata('level')=='admin') { ?>

                
                       
                        <li class="<?php echo ($this->router->fetch_class() == "dokter" ? "active" : ""); ?>">
                            <a href="<?php echo site_url('dokter');?>">
                            <i class="fa fa-user-md"></i> <span>Dokter</span>
                          </a>
                        </li>
                        <li class="<?php echo ($this->router->fetch_class() == "perawat" ? "active" : ""); ?>">
                            <a href="<?php echo site_url('perawat');?>">
                            <i class="fa fa-user"></i> <span>Perawat</span>
                          </a>
                        </li>
                        <li class="<?php echo ($this->router->fetch_class() == "pasien" ? "active" : ""); ?>">
                            <a href="<?php echo site_url('pasien');?>">
                            <i class="fa fa-users"></i> <span>Pasien</span>
                          </a>
                        </li>
                        <li class="<?php echo ($this->router->fetch_class() == "pelayanan" ? "active" : ""); ?>">
                            <a href="<?php echo site_url('pelayanan');?>">
                            <i class="fa fa-stethoscope"></i> <span>Pelayanan</span>
                          </a>
                        </li>

                        <li class="<?php echo ($this->router->fetch_class() == "jadwal_praktek" ? "active" : ""); ?>">
                           <a href="<?php echo site_url('jadwal_praktek');?>">
                            <i class="fa fa-calendar-plus-o"></i> <span>Jadwal Praktek</span>
                          </a>
                        </li>
                        <li class="<?php echo ($this->router->fetch_class() == "jadwal_praktek_antrian" ? "active" : ""); ?>">
                            <a href="<?php echo site_url('jadwal_praktek_antrian');?>">
                            <i class="fa fa-user-times"></i> <span>Jadwal Praktek Antrian</span>
                          </a>
                        </li>
                        
                         <li class="<?php echo ($this->router->fetch_class() == "gallery" ? "active" : ""); ?>">
                            <a href="<?php echo site_url('gallery');?>">
                            <i class="fa fa-image"></i> <span>Gallery</span>
                          </a>
                        </li>

                    <?php } else { ?>

                        <li class="<?php echo ($this->router->fetch_class() == "jadwal_praktek" ? "active" : ""); ?>">
                           <a href="<?php echo site_url('jadwal_praktek');?>">
                            <i class="fa fa-calendar-plus-o"></i> <span>Jadwal Praktek</span>
                          </a>
                        </li>
                        <!-- <li class="<?php echo ($this->router->fetch_class() == "jadwal_praktek_antrian" ? "active" : ""); ?>">
                            <a href="<?php echo site_url('jadwal_praktek_antrian');?>">
                            <i class="fa fa-user-times"></i> <span>Jadwal Praktek Antrian</span>
                          </a>
                        </li> -->

                    <?php } ?>

                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Main content -->
                <section class="content">
                    <?php                    
                    if(isset($_view) && $_view)
                        $this->load->view($_view);
                    ?>                    
                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <footer class="main-footer">
                <strong>Generated By <a href="#">Skynosoft</a> 2017</strong>
            </footer>

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Create the tabs -->
                <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
                    
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                    <!-- Home tab content -->
                    <div class="tab-pane" id="control-sidebar-home-tab">

                    </div>
                    <!-- /.tab-pane -->
                    <!-- Stats tab content -->
                    <div class="tab-pane" id="control-sidebar-stats-tab">Stats Tab Content</div>
                    <!-- /.tab-pane -->
                    
                </div>
            </aside>
            <!-- /.control-sidebar -->
            <!-- Add the sidebar's background. This div must be placed
            immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div>
        <!-- ./wrapper -->

        <!-- jQuery 2.2.3 -->
        <script src="<?php echo site_url('resources/plugins/jQuery/jQuery-2.1.4.min.js');?>"></script>
        <!-- Bootstrap 3.3.6 -->
        <script src="<?php echo site_url('resources/bootstrap/js/bootstrap.min.js');?>"></script>

        <script src="<?php echo site_url('resources/plugins/datatables/jquery.dataTables.min.js');?>"></script>

        <script src="<?php echo site_url('resources/plugins/datatables/dataTables.bootstrap.min.js');?>"></script>
        <!-- FastClick -->
        <script src="<?php echo site_url('resources/plugins/fastclick/fastclick.min.js');?>"></script>
        <!-- AdminLTE App -->
        <script src="<?php echo site_url('resources/dist/js/app.min.js');?>"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="<?php echo site_url('resources/dist/js/demo.js');?>"></script>

        <script src="<?php echo site_url('resources/plugins/slimScroll/jquery.slimscroll.min.js');?>"></script>

        <script type="text/javascript">
          $(function () {
            $("#example1").dataTable();
            $('#example2').dataTable({
              "bPaginate": true,
              "bLengthChange": false,
              "bFilter": false,
              "bSort": true,
              "bInfo": true,
              "bAutoWidth": false
            });
          });
        </script>

        <style type="text/css">
            
            .table {
                        font-size: 10pt;
                   }

        </style>

    <script type="text/javascript">
      $("#tersedia").hide(); // menyembunyikan status tersedia ketika dibuka.
      $("#tdk_tersedia").hide(); // sama seperti atasnya.
      $("#panjang_karakter").hide();

      $("#username_tersedia").hide(); // menyembunyikan status tersedia ketika dibuka.
      $("#username_tdk_tersedia").hide(); // sama seperti atasnya.
      $("#username_panjang_karakter").hide(); // sama seperti atasnya.

      $(document).ready(function(){
        $("#nomor_registrasi").blur(checkAvailability);
      });

      function checkAvailability(){
        var nomor_registrasi = $("#nomor_registrasi").val();  
        if(nomor_registrasi == "" || nomor_registrasi.length < 4){    
          $("#nomor_registrasi").css('border', '2px orange solid');    
          $("#btn_submit").prop('disabled', true);
          $("#btn_save_edit").prop('disabled', true);
          $("#tersedia").hide();  
          $("#tdk_tersedia").hide();   
          $("#panjang_karakter").show();   
        }else{
          $.ajax({
            type: "post",
            url: "<?= site_url($class.'/cek_nomor_registrasi')?>",
            cache: false,       
            data:'nomor_registrasi=' + $("#nomor_registrasi").val(),
            success: function(response){  
              try{
                if(response=='true'){
                  $("#nomor_registrasi").css('border','2px green solid');  
                  $("#btn_submit").prop('disabled', false);
                  $("#btn_save_edit").prop('disabled', false);
                  $("#panjang_karakter").hide();  
                  $("#tdk_tersedia").hide();  
                  $("#tersedia").show();  
                }else{
                  $("#nomor_registrasi").css('border','2px red solid');  
                  $("#btn_submit").prop('disabled', true);  
                  $("#btn_save_edit").prop('disabled', true);  

                  $("#panjang_karakter").hide();  
                  $("#tersedia").hide();  
                  $("#tdk_tersedia").show();  
                }                   
              }catch(e) {   
                alert('Exception while request..');
              }   
            },
            error: function(){            
              alert('Error while request..');
            }
           });
        }
      } 


      $(document).ready(function(){
        $("#username").blur(checkAvailabilityPassword);
      });

      function checkAvailabilityPassword(){
        var username = $("#username").val();  
        if(username == "" || username.length < 4){    
          $("#username").css('border', '2px orange solid');    
          $("#btn_submit").prop('disabled', true);
          $("#btn_save_edit").prop('disabled', true);
          $("#username_tersedia").hide();  
          $("#username_tdk_tersedia").hide();   
          $("#username_panjang_karakter").show();   
        }else{
          $.ajax({
            type: "post",
            url: "<?= site_url($class.'/cek_username')?>",
            cache: false,       
            data:'username=' + $("#username").val(),
            success: function(response){  
              try{
                if(response=='true'){
                  $("#username").css('border','2px green solid');  
                  $("#btn_submit").prop('disabled', false);
                  $("#btn_save_edit").prop('disabled', false);
                  $("#username_panjang_karakter").hide();  
                  $("#username_tdk_tersedia").hide();  
                  $("#username_tersedia").show();  
                }else{
                  $("#username").css('border','2px red solid');  
                  $("#btn_submit").prop('disabled', true);  
                  $("#btn_save_edit").prop('disabled', true);  

                  $("#username_panjang_karakter").hide();  
                  $("#username_tersedia").hide();  
                  $("#username_tdk_tersedia").show();  
                }                   
              }catch(e) {   
                alert('Exception while request..');
              }   
            },
            error: function(){            
              alert('Error while request..');
            }
           });
        }
      }

      $(document).ready(function(){
        $("#nomor_registrasi_edit").blur(checkAvailabilityEdit);
      });


      function checkAvailabilityEdit(){
        var nomor_registrasi_edit = $("#nomor_registrasi_edit").val();  
        if(nomor_registrasi_edit == "" || nomor_registrasi_edit.length < 4){    
          $("#nomor_registrasi_edit").css('border', '2px orange solid');    
          $("#btn_submit").prop('disabled', true);
          $("#btn_save_edit").prop('disabled', true);
          $("#tersedia").hide();  
          $("#tdk_tersedia").hide();   
          $("#panjang_karakter").show();   
        }else{
          var pk= '<?=$this->uri->segment(3)?>';
          $.ajax({
            type: "post",
            url: "<?= site_url($class.'/cek_nomor_registrasi_edit')?>"+'/'+pk,
            cache: false,       
            data:'nomor_registrasi_edit=' + $("#nomor_registrasi_edit").val(),
            success: function(response){  
              try{
                if(response=='true'){
                  $("#nomor_registrasi_edit").css('border','2px green solid');  
                  $("#btn_submit").prop('disabled', false);
                  $("#btn_save_edit").prop('disabled', false);
                  $("#panjang_karakter").hide();  
                  $("#tdk_tersedia").hide();  
                  $("#tersedia").show();  
                }else{
                  $("#nomor_registrasi_edit").css('border','2px red solid');  
                  $("#btn_submit").prop('disabled', true);  
                  $("#btn_save_edit").prop('disabled', true);  

                  $("#panjang_karakter").hide();  
                  $("#tersedia").hide();  
                  $("#tdk_tersedia").show();  
                }                   
              }catch(e) {   
                alert('Exception while request..');
              }   
            },
            error: function(){            
              alert('Error while request..');
            }
           });
        }
      } 


      $(document).ready(function(){
        $("#username_edit").blur(checkAvailabilityEditPassword);
      });


      function checkAvailabilityEditPassword(){
        var username_edit = $("#username_edit").val();  
        if(username_edit == "" || username_edit.length < 4){    
          $("#username_edit").css('border', '2px orange solid');    
          $("#btn_submit").prop('disabled', true);
          $("#btn_save_edit").prop('disabled', true);
          $("#username_tersedia").hide();  
          $("#username_tdk_tersedia").hide();   
          $("#username_panjang_karakter").show();   
        }else{
          var pk= '<?=$this->uri->segment(3)?>';
          $.ajax({
            type: "post",
            url: "<?= site_url($class.'/cek_username_edit')?>"+'/'+pk,
            cache: false,       
            data:'username_edit=' + $("#username_edit").val(),
            success: function(response){  
              try{
                if(response=='true'){
                  $("#username_edit").css('border','2px green solid');  
                  $("#btn_submit").prop('disabled', false);
                  $("#btn_save_edit").prop('disabled', false);
                  $("#username_panjang_karakter").hide();  
                  $("#username_tdk_tersedia").hide();  
                  $("#username_tersedia").show();  
                }else{
                  $("#username_edit").css('border','2px red solid');  
                  $("#btn_submit").prop('disabled', true);  
                  $("#btn_save_edit").prop('disabled', true);  

                  $("#username_panjang_karakter").hide();  
                  $("#username_tersedia").hide();  
                  $("#username_tdk_tersedia").show();  
                }                   
              }catch(e) {   
                alert('Exception while request..');
              }   
            },
            error: function(){            
              alert('Error while request..');
            }
           });
        }
      } 

    </script>
        
    </body>
</html>
