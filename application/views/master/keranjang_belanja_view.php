
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>Keranjang Belanja</h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-files-o"></i> Home</a></li>
        <li class="active">Keranjang Belanja</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Keranjang Belanja {user_unit}</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <!--<button class="btn btn-sm btn-success" onclick="tambah()" style="margin-bottom: 10px;"><i class="glyphicon glyphicon-plus"></i> Tambah</button>-->
                    <table id="list_keranjang_belanja" class="display responsive table table-bordered table-hover" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Pilih</th>
                                <th>Gambar</th>
                                <th>Nama</th>
                                <th>Harga</th>
                                <th>Qty</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col -->
    </div><!-- /.row -->

</section>


<script type="text/javascript">
    
    var save_method;
    var list_keranjang_belanja;
    var foto_barang_unit = 'no_image.png';
    var cari_barang;

    $(document).ready(function () {
        
        list_keranjang_belanja = $('#list_keranjang_belanja').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            ajax: {
                url: "{base_url}master/keranjang_belanja/ajax_list",
                type: "POST"
            },
            columnDefs: [
                {
                    targets: [-1],
                    orderable: false
                },

                {width: "50px", targets: 0}
            ],
            aoColumns: [
                {"sClass": "center"},
                {"sClass": "left"},
                {"sClass": "left"},
                {"sClass": "right"},
                {"sClass": "right"}
            ]
        });
        
    });

    function reload_table() {
        list_keranjang_belanja.ajax.reload(null, false);
    }
    
    $('#modal_form').on('hide.bs.modal', function (e) {
        reload_table();
    });

    

</script>
