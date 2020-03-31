<!DOCTYPE html>
<html lang="id">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>{title} | Beranda</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="icon" href="{base_url}asset/image/favicon.ico">
        <!-- Bootstrap 3.3.5 -->
        <link rel="stylesheet" href="{base_url}asset/bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
        <!-- iCheck for checkboxes and radio inputs -->
        <link rel="stylesheet" href="{base_url}asset/plugins/iCheck/all.css">
        <!-- DataTables -->
        <link rel="stylesheet" href="{base_url}asset/plugins/datatables/media/css/dataTables.bootstrap.min.css">
        <link rel="stylesheet" href="{base_url}asset/plugins/datatables/extensions/Responsive/css/responsive.bootstrap.min.css">

        <!-- Theme style -->
        <link rel="stylesheet" href="{base_url}asset/adminlte/css/AdminLTE.css">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
             folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="{base_url}asset/adminlte/css/skins/_all-skins.min.css">
        <link rel="stylesheet" href="{base_url}asset/plugins/summernote/summernote.css">
        <link rel="stylesheet" href="{base_url}asset/plugins/bootstrap-toggle/css/bootstrap-toggle.min.css">

        <link rel="stylesheet" href="{base_url}asset/plugins/bootstrap-select/css/bootstrap-select.min.css">
        <!--<link rel="stylesheet" href="{base_url}asset/plugins/select2/css/select2.min.css">-->
        <!--<link rel="stylesheet" href="{base_url}asset/plugins/select2/select2-bootstrap.css">-->

        <link href="{base_url}asset/bootstrap/dialog/css/bootstrap-dialog.min.css" rel="stylesheet" type="text/css" />
        <link href="{base_url}asset/css/camera.css" rel="stylesheet" type="text/css" />
        <link href="{base_url}asset/css/daterangepicker.css" rel="stylesheet" type="text/css" />

        <style>
            .form-group {
                margin-bottom: 5px;
            }

            .col-md-3 {
                padding-right: 5px;
            }
            .col-md-9 {
                padding-left: 5px;
            }
        </style>

    </head>
    <body class="hold-transition skin-purple-light sidebar-mini" onclick="checkSession()">
        <div class="wrapper">

            <header class="main-header">

                <!-- Logo -->
                <a href="home" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini">{nickname}</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg">{perusahaan}</span>
                </a>

                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar" role="navigation">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <!-- Navbar Right Menu -->
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">

                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="{base_url}asset/image/user/{user_photo}" class="user-image" alt="User Image">
                                    <span class="hidden-xs">{user_nama}</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="{base_url}asset/image/user/{user_photo}" class="img-circle" alt="User Image">
                                        <p>
                                            {user_nama}
                                            <small>{user_email}</small>
                                            <small>Unit: {user_unit}</small>
                                        </p>
                                    </li>
                                    <!-- Menu Body -->
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="javascript:void(0)" onclick="showContent('profile')" class="btn btn-default btn-flat"><span class="glyphicon glyphicon-user" aria-hidden="true"></span> Profile</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="login/keluar" class="btn btn-default btn-flat"><span class="glyphicon glyphicon-off" aria-hidden="true"></span> Sign out</a>
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
                            <img src="{base_url}asset/image/user/{user_photo}" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>{user_nama}</p>
                            <a href="javascript:void(0)"><i class="fa fa-circle text-success"></i> Online</a><br>
                        </div>
                    </div>
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">MENU</li>
                        <li class="active"><a href="javascript:void(0)" onclick="showContent('dashboard')"><i class="fa fa-dashboard"></i> <span>Beranda</span></a></li>
                        <li class="treeview">
                            <a href="javascript:void(0)">
                                <i class="glyphicon glyphicon-file"></i>
                                <span>Master</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                              <li><a href="javascript:void(0)" onclick="showContent('barang')"><i class="glyphicon glyphicon-th-large"></i> Barang</a></li>
                              <li><a href="javascript:void(0)" onclick="showContent('kategori')"><i class="glyphicon glyphicon-th-list"></i> Kategori Barang</a></li>
                              <li><a href="javascript:void(0)" onclick="showContent('merek')"><i class="glyphicon glyphicon-registration-mark"></i> Merek Barang</a></li>
                              <li><a href="javascript:void(0)" onclick="showContent('customer')"><i class="glyphicon glyphicon-user"></i> Customer</a></li>
                              <hr>
                              <li><a href="javascript:void(0)" onclick="showContent('distributor')"><i class="glyphicon glyphicon-map-marker"></i> Sales & Distributor</a></li>
                              <hr>
                              <li><a href="javascript:void(0)" onclick="showContent('barang_unit')"><i class="glyphicon glyphicon-th"></i> Barang Unit</a></li>
                              <hr>
                              <li><a href="javascript:void(0)" onclick="showContent('area')"><i class="fa fa-circle-o"></i> Area</a></li>
                              <li><a href="javascript:void(0)" onclick="showContent('unit')"><i class="glyphicon glyphicon-flag"></i> Unit</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="javascript:void(0)">
                                <i class="glyphicon glyphicon-credit-card"></i>
                                <span>Transaksi</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="javascript:void(0)" onclick="showContent('list_barang_unit')"><i class="glyphicon glyphicon-th-list"></i> List Barang Unit</a></li>
                                <li><a href="javascript:void(0)" onclick="showContent('shopping_chart')"><i class="glyphicon glyphicon-shopping-cart"></i> <span>Shopping Chart</span></a></li>
                            </ul>
                        </li>
                        <hr>
                        <li class="treeview">
                            <a href="javascript:void(0)">
                                <i class="glyphicon glyphicon-wrench"></i>
                                <span>Setting</span>
                                <i class="fa fa-angle-left pull-right"></i>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="javascript:void(0)" onclick="showContent('user')"><i class="glyphicon glyphicon-user"></i> User</a></li>
                                <li><a href="javascript:void(0)" onclick="showContent('hak_akses')"><i class="glyphicon glyphicon-lock"></i> Hak Akses</a></li>
                                <hr>
                                <li><a href="javascript:void(0)" onclick="showContent('setting')"><i class="glyphicon glyphicon-globe"></i> Global Setting</a></li>
                            </ul>
                        </li>

                    </ul>
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div id="isi" class="content-wrapper">
            </div><!-- /.content-wrapper -->

            <footer class="main-footer">
                <div class="pull-right hidden-xs">
                    <b>Version</b> 1.0.0
                </div>
                <strong>Copyright &copy; 2016 <a href="{website}">{perusahaan}</a>.</strong> All rights reserved.
            </footer>

        </div><!-- ./wrapper -->

        <!-- jQuery 2.1.4 -->
        <script src="{base_url}asset/plugins/jQuery/jQuery-2.1.4.min.js"></script>
        <!-- Bootstrap 3.3.5 -->
        <script src="{base_url}asset/bootstrap/js/bootstrap.min.js"></script>
        <!-- iCheck 1.0.1 -->
        <script src="{base_url}asset/plugins/iCheck/icheck.min.js"></script>
        <!-- FastClick -->
        <script src="{base_url}asset/plugins/fastclick/fastclick.min.js"></script>
        <!-- AdminLTE App -->
        <script src="{base_url}asset/adminlte/js/app.min.js"></script>
        <!-- Sparkline -->
        <script src="{base_url}asset/plugins/sparkline/jquery.sparkline.min.js"></script>
        <!-- SlimScroll 1.3.0 -->
        <script src="{base_url}asset/plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- DataTables -->
        <script src="{base_url}asset/plugins/datatables/media/js/jquery.dataTables.js"></script>
        <script src="{base_url}asset/plugins/datatables/media/js/dataTables.bootstrap.min.js"></script>
        <script src="{base_url}asset/plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
        <!--     Bootstrap WYSIHTML5
            <script src="asset/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>-->
        <script src="{base_url}asset/plugins/summernote/summernote.min.js"></script>
        <script src="{base_url}asset/plugins/bootstrap-toggle/js/bootstrap-toggle.min.js"></script>

        <script src="{base_url}asset/bootstrap/dialog/js/bootstrap-dialog.min.js"></script>
        <script src="{base_url}asset/js/message_box.js"></script>

        <!--<script src="{base_url}asset/plugins/select2/js/select2.full.js"></script>-->
        <script src="{base_url}asset/plugins/bootstrap-select/js/bootstrap-select.min.js"></script>

        <script type="text/javascript" src="{base_url}asset/plugins/input-mask/jquery.inputmask.bundle.js"></script>
        <script type="text/javascript" src="{base_url}asset/js/moment-with-locales.js"></script>
        <script type="text/javascript" src="{base_url}asset/js/daterangepicker.js"></script>

        <script src="{base_url}asset/js/ie10-viewport-bug-workaround.js"></script>
        <script src="{base_url}asset/js/tanggal.js"></script>
        <script src="{base_url}asset/js/select.js"></script>
        <script src="{base_url}asset/js/format_mask.js"></script>
        <script src="{base_url}asset/js/uuid-v4.min.js"></script>

        <!-- Untuk Cetak -->
<!--        <script type="text/javascript" src="{base_url}asset/js/qz/js/3rdparty/deployJava.js"></script>
        <script type="text/javascript" src="{base_url}asset/js/qz/js/qz-websocket.js"></script>
        <script type="text/javascript" src="{base_url}asset/js/qz/qz.js"></script>
        <script type="text/javascript" src="{base_url}asset/js/qz/js/3rdparty/html2canvas.js"></script>
        <script type="text/javascript" src="{base_url}asset/js/qz/js/3rdparty/jquery.plugin.html2canvas.js"></script>-->

        <script type="text/javascript">
              $(document).ready(function () {
                  showContent('dashboard');

                  $('.sidebar-toggle').on('click', function () {
                      window.scrollTo(0, 0);
                  });
              });

              function checkSession() {
                  $.get('{base_url}login/check_session', function (data) {
                      result = JSON.parse(data);
                      if (result.login == false) {
                          window.location.href = '{base_url}login/keluar';
                      }
                  });
              }

              function showContent(item) {
                  $.get('{base_url}home/menu/' + item, function (resp) {
                      if (resp == false) {
                          BootstrapDialog.show({
                              type: BootstrapDialog.TYPE_DANGER,
                              message: 'Anda tidak berhak melakukan transaksi ini.',
                              buttons: [{
                                      label: 'Ok',
                                      action: function (dialogItself) {
                                          dialogItself.close();
                                      }
                                  }]
                          });
                      } else {
                          $('#isi').html(resp);
                      }
                  });
                  $(".content-wrapper").click();
                  window.scrollTo(0, 0);
              }

        </script>
    </body>
</html>
