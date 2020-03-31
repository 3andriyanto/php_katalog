
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>List Barang</h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-files-o"></i> Home</a></li>
        <li class="active">List Barang Unit</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">List Barang Unit {user_unit}</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <!--<button class="btn btn-sm btn-success" onclick="tambah()" style="margin-bottom: 10px;"><i class="glyphicon glyphicon-plus"></i> Tambah</button>-->
                        <table id="list_barang_unit" class="display responsive table table-bordered table-hover" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Action</th>
                                    <th>Gambar</th>
                                    <th>Nama</th>
                                    <th>Satuan</th>
                                    <th>Merek</th>
                                    <th>Ukuran</th>
                                    <th>Harga</th>
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
    var list_barang_unit;
    var foto_barang_unit = 'no_image.png';
    var cari_barang;

    $(document).ready(function () {
        
        list_barang_unit = $('#list_barang_unit').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            ajax: {
                url: "{base_url}master/list_barang_unit/ajaxlist",
                type: "POST"
            },
            columnDefs: [
                {
                    targets: [-1],
                    orderable: false
                },
                {
                    targets: 7,
                    render: function (data, type, full, meta) {
                        return data;
                    }
                },
                {width: "50px", targets: 0}
            ],
            aoColumns: [
                {"sClass": "center"},
                {"sClass": "left"},
                {"sClass": "left"},
                {"sClass": "left"},
                {"sClass": "left"},
                {"sClass": "left"},
                {"sClass": "right"}
            ]
        });
        
        //select_unit2('{base_url}', '#unit');
        //select_kategori('{base_url}', '#kategori');
        //$('.selectpicker').selectpicker({size: 10});
        
    });

    function reload_table() {
        list_barang_unit.ajax.reload(null, false);
    }
    
    $('#modal_form').on('hide.bs.modal', function (e) {
        reload_table();
    });

    function PreviewImage(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#barang_img').attr('src', e.target.result);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

    function cariBarang() {
        cari_barang = new BootstrapDialog({
            size: BootstrapDialog.SIZE_WIDE,
            title: 'Master Barang Unit',
            message: $('<div></div>').load('{base_url}master/barang_unit/dialog'),
            buttons: [
                {
                    label: 'Tutup',
                    action: function (dialogRef) {
                        dialogRef.close();
                    }
                }
            ]
        });
        cari_barang.open();
    }

    function clearFileInput(id) {
        $('#' + id).html($('#' + id).html());
    }

</script>
