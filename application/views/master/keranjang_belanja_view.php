
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
                    <button class="btn btn-sm btn-success" onclick="tambah()" style="margin-bottom: 10px;"><i class="glyphicon glyphicon-ok-sign"></i> Order</button>
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
    
    <!-- Bootstrap modal -->
    <div class="modal fade" id="modal_form" role="dialog">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title">List Order : </h3>
                </div>
                
                <div class="box-body">
                    <label class="control-label col-sm-3">Customer</label>
                    <div class="col-sm-9">
                        <select id="customer" name="customer" class="form-control selectpicker" data-live-search="true">
                        </select>
                    </div>
                </div>
                
                <div class="box-body">
                    <!--<button class="btn btn-sm btn-success" onclick="tambah()" style="margin-bottom: 10px;"><i class="glyphicon glyphicon-plus"></i> Tambah</button>-->
                        <table id="list_order" class="display responsive table table-bordered table-hover" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Nama</th>
                                    <th>Qty</th>
                                    <th>Harga</th>
                                </tr>
                            </thead>
                        </table>
                </div><!-- /.box-body -->
                
                <div class="modal-footer">
                    <button type="button" id="btnSave" onclick="simpan()" class="btn btn-lg btn-success">Add</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <!-- End Bootstrap modal -->

</section>

<script type="text/javascript">
    
    var save_method;
    var list_keranjang_belanja;
    var list_order;
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
        
        select_customer('{base_url}', '#customer');
        
        // LIST ORDER
        list_order = $('#list_order').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            
            // remove serch, paging, info
            searching: false, 
            paging: false, 
            info: false,
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

    function tambah() {
        //save_method = 'add';
        //$('#form')[0].reset();
        $('#modal_form').modal('show');
        //$('.modal-title').text('XXXX');
    }

    function edit_aktif(id) {
        aktif = $('#' + id).prop('checked') == true ? 1 : 0;
        $.ajax({
            url: "{base_url}master/keranjang_belanja/aktif",
            type: "POST",
            data: {id_keranjang_belanja: id, aktif: aktif},
            dataType: "JSON",
            success: function (data)
            {
                if(!data.success) {
                    var pesan = new BootstrapDialog({
                        type: BootstrapDialog.TYPE_WARNING,
                        title: 'Error',
                        message: '<font color="red">' + data.msg + '</font>',
                        buttons: [
                            {
                                label: 'Tutup',
                                action: function (dialogRef) {
                                    dialogRef.close();
                                }
                            }
                        ]
                    });
                    pesan.open();
                }
                reload_table();
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                console.log(errorThrown);
            }
        });
    }

</script>
