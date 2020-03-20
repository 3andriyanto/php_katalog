
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Master
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-files-o"></i> Home</a></li>
        <li class="active">Distributor</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Distributor</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <button class="btn btn-sm btn-success" onclick="tambah()" style="margin-bottom: 10px;"><i class="glyphicon glyphicon-plus"></i> Tambah</button>
                    <table id="table_distributor" class="display responsive nowrap table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Action</th>
                                <th>Nama</th>
                                <th>Alamat</th>
                                <th>Aktif</th>
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
                    <h3 class="modal-title">Distributor Form</h3>
                </div>
                <div class="modal-body form">
                    <form action="#" id="form" class="form-horizontal">
                        <input type="hidden" value="" name="id_distributor"/>
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label col-md-3">Nama</label>
                                <div class="col-md-9">
                                    <input name="nama_distributor" placeholder="Nama Distributor" class="form-control" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Alamat</label>
                                <div class="col-md-9">
                                    <!--<input name="alamat" placeholder="Alamat" class="form-control" type="text">-->
                                    <textarea id="alamat" name="alamat" class="textarea form-control" placeholder="Alamat"></textarea>
                                </div>
                            </div>
                            <div id="aktif-group" class="form-group">
                                <label class="control-label col-sm-3">Aktif</label>
                                <div class="col-sm-9">
                                    <input id="aktif" name="aktif" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-onstyle="success" data-offstyle="danger" data-size="small">
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
    var table;

    $(document).ready(function () {
        $("#alamat").summernote({
            height: 150,
            minHeight: 100,
            maxHeight: 200
        });

        $('#aktif').bootstrapToggle();
        $('.aktif').bootstrapToggle();

        table = $('#table_distributor').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            ajax: {
                url: "{base_url}master/distributor/ajax_list",
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
                {"sClass": "center"}
            ]
        });
    });

    function reload_table() {
        table.ajax.reload(null, false);
    }

    function tambah() {
        save_method = 'add';
        $('#form')[0].reset();
        $("input[name='id_distributor']").val('');
        $('#alamat').summernote('code', '');
        $('#aktif').bootstrapToggle('on');
        $('#modal_form').modal('show');
        $('.modal-title').text('Tambah Distributor');
    }

    function simpan() {
        var url;
        if (save_method == 'add') {
            url = "{base_url}master/distributor/add";
        } else {
            url = "{base_url}master/distributor/update";
        }

        $.ajax({
            url: url,
            type: "POST",
            data: {
                id_distributor: $("input[name='id_distributor']").val(),
                nama_distributor: $("input[name='nama_distributor']").val(),
                alamat: $('#alamat').summernote('code'),
                aktif: $('#aktif').prop('checked') == true ? 1 : 0,
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

        $.ajax({
            url: "{base_url}master/distributor/edit/" + id,
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                $('[name="id_distributor"]').val(data.id_distributor);
                $('[name="nama_distributor"]').val(data.nama_distributor);
                $('#alamat').summernote('code', data.alamat);
                data.aktif == 1 ? $('#aktif').bootstrapToggle('on') : $('#aktif').bootstrapToggle('off');

                $('#modal_form').modal('show');
                $('.modal-title').text('Edit Distributor');

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
                            url: "{base_url}master/distributor/delete/" + id,
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

    function edit_aktif(id) {
        aktif = $('#' + id).prop('checked') == true ? 1 : 0;
        $.ajax({
            url: "{base_url}master/distributor/aktif",
            type: "POST",
            data: {id_distributor: id, aktif: aktif},
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
