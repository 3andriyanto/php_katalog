
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Master
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-files-o"></i> Home</a></li>
        <li class="active">Hak Akses</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Hak Akses</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <button class="btn btn-sm btn-success" onclick="tambah()" style="margin-bottom: 10px;"><i class="glyphicon glyphicon-plus"></i> Tambah</button>
                    <table id="table_hak_akses" class="display responsive nowrap table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Action</th>
                                <th>User</th>
                                <th>Kode Transaksi</th>
                                <th>Nama Transaksi</th>
                                <th>Tambah</th>
                                <th>Ubah</th>
                                <th>Hapus</th>
                                <th>Lihat</th>
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
                    <h3 class="modal-title">Hak Akses Form</h3>
                </div>
                <div class="modal-body form">
                    <form action="#" id="form" class="form-horizontal">
                        <input type="hidden" value="" name="id_hak_akses"/> 
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label col-md-3">Nama User</label>
                                <div class="col-md-9">
                                    <select id="user" name="user" class="form-control selectpicker" data-live-search="true" data-container="#modal_form">
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Transaksi</label>
                                <div class="col-md-9">
                                    <select id="transaksi" name="transaksi" class="form-control selectpicker" data-live-search="true" data-container="#modal_form">
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Tambah</label>
                                <div class="col-sm-9">
                                    <input id="tambah" name="tambah" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-onstyle="success" data-offstyle="danger" data-size="small">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Ubah</label>
                                <div class="col-sm-9">
                                    <input id="ubah" name="ubah" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-onstyle="success" data-offstyle="danger" data-size="small">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Hapus</label>
                                <div class="col-sm-9">
                                    <input id="hapus" name="hapus" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-onstyle="success" data-offstyle="danger" data-size="small">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Lihat</label>
                                <div class="col-sm-9">
                                    <input id="lihat" name="lihat" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-onstyle="success" data-offstyle="danger" data-size="small">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" id="btnSave" onclick="simpan()" class="btn btn-primary">Save</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <!-- End Bootstrap modal -->    

</section>

<script>
    var save_method;
    var table_hak_akses;

    $(document).ready(function () {
        
        $('#tambah').bootstrapToggle();
        $('#ubah').bootstrapToggle();
        $('#hapus').bootstrapToggle();
        $('#lihat').bootstrapToggle();
        
        table_hak_akses = $('#table_hak_akses').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            ajax: {
                url: "{base_url}master/hak_akses/ajax_list",
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
                {"sClass": "center"},
                {"sClass": "center"},
                {"sClass": "center"},
                {"sClass": "center"}
            ]
        });
        
        $('.selectpicker').selectpicker({size: 10});
        select_user('{base_url}', '#user');
        select_transaksi('{base_url}', '#transaksi');
       
    });
    
    function reload_table() {
        table_hak_akses.ajax.reload(null, false);
    }
    
    function tambah() {
        save_method = 'add';
        $('#form')[0].reset();
        $("input[name='id_hak_akses']").val('');
        $('#tambah').bootstrapToggle('on');
        $('#ubah').bootstrapToggle('on');
        $('#hapus').bootstrapToggle('on');
        $('#lihat').bootstrapToggle('on');
        $('#modal_form').modal('show');
        $('.modal-title').text('Tambah Hak Akses');
    }
    
    function simpan() {
        var url;
        if (save_method == 'add') {
            url = "{base_url}master/hak_akses/add";
        } else {
            url = "{base_url}master/hak_akses/update";
        }

        $.ajax({
            url: url,
            type: "POST",
            data: {
                id_hak_akses: $("input[name='id_hak_akses']").val(),
                id_user: $("select[name='user']").val(),
                id_transaksi: $("select[name='transaksi']").val(),
                tambah: $('#tambah').prop('checked') == true ? 1 : 0,
                ubah: $('#ubah').prop('checked') == true ? 1 : 0,
                hapus: $('#hapus').prop('checked') == true ? 1 : 0,
                lihat: $('#lihat').prop('checked') == true ? 1 : 0,
                method: save_method
            },
            dataType: "JSON",
            success: function (data)
            {
                if (data.success) {
                    reload_table();
                    $('#modal_form').modal('hide');
                } else {
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
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                console.log(errorThrown);
            }
        });
    }
    
    function edit(id) {
        save_method = 'update';
        $('#form')[0].reset();
        console.log(id);
        $.ajax({
            url: "{base_url}master/hak_akses/edit/" + id,
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                $('[name="id_hak_akses"]').val(data.id_hak_akses);
                $('[name="user"]').val(data.id_user).trigger('change');
                $('[name="transaksi"]').val(data.id_transaksi).trigger('change');
                data.tambah == 1 ? $('#tambah').bootstrapToggle('on') : $('#tambah').bootstrapToggle('off');
                data.ubah == 1 ? $('#ubah').bootstrapToggle('on') : $('#ubah').bootstrapToggle('off');
                data.hapus == 1 ? $('#hapus').bootstrapToggle('on') : $('#hapus').bootstrapToggle('off');
                data.lihat == 1 ? $('#lihat').bootstrapToggle('on') : $('#lihat').bootstrapToggle('off');

                $('#modal_form').modal('show');
                $('.modal-title').text('Edit Hak Akses');

            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                console.log(errorThrown);
            }
        });
    }

    function hapus(id) {
        BootstrapDialog.show({
        type: BootstrapDialog.TYPE_DANGER,
                title: 'Hapus',
                message: 'Yakin ingin menghapus data ini?',
                buttons: [{
                    icon: 'glyphicon glyphicon-ban-circle',
                    label: 'Hapus',
                    cssClass: 'btn-warning',
                    action: function(dialogItself) {
                        $.ajax({
                            url: "{base_url}master/hak_akses/delete/" + id,
                            type: "POST",
                            dataType: "JSON",
                            success: function (data)
                            {
                                if(data.success) {
                                    reload_table();
                                    dialogItself.close();
                                } else {
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
                            },
                            error: function (jqXHR, textStatus, errorThrown)
                            {
                                console.log(errorThrown);
                            }
                        });
                    }
                }, {
                    label: 'Batal',
                    action: function(dialogItself){
                        dialogItself.close();
                }
            }]                
        });        
    }

    function edit_list(pre, id) {
        $.ajax({
            url: "{base_url}master/hak_akses/active",
            type: "POST",
            data: {id_hak_akses: id, field: pre, value: $('#' + pre + id).prop('checked') == true ? 1 : 0},
            dataType: "JSON",
            success: function (data) {
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
    

