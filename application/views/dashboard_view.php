
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Dashboard
            <small>Version 1.0</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Dashboard</li>
          </ol>
        </section>

        <!-- Main content -->
        <section class="content">
          <!-- Info boxes -->
          <div class="row">
              <div id="jumlah_produk"></div>
            <!-- fix for small devices only -->
            <div class="clearfix visible-sm-block"></div>


          </div><!-- /.row -->

        </section><!-- /.content -->

    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <!--<script src="{base_url}asset/adminlte/js/pages/dashboard2.js"></script>-->


    <script type="text/javascript">
        $(document).ready(function () {
            $.get('{base_url}dashboard/jumlah_produk', function(data){
                $('#jumlah_produk').html(data);
            }, 'html');
        });

    </script>
