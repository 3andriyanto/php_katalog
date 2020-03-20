
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Master
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-files-o"></i> Home</a></li>
        <li class="active">Kategori Barang</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Kategori Barang</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <button class="btn btn-sm btn-success" onclick="tambah()" style="margin-bottom: 10px;"><i class="glyphicon glyphicon-plus"></i> Tambah</button>
                    <table id="table_kategori" class="display responsive nowrap table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Action</th>
                                <th>Nama</th>
                                <th>Keterangan</th>
                                <th>Lisensi</th>
                                <th>Merek</th>
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
                    <h3 class="modal-title">Kategori Form</h3>
                </div>
                <div class="modal-body form">
                    <form action="#" id="form" class="form-horizontal">
                        <input type="hidden" value="" name="id_kategori"/>
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label col-md-3">Nama</label>
                                <div class="col-md-9">
                                    <input name="nama_kategori" placeholder="Nama Kategori" class="form-control" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Keterangan</label>
                                <div class="col-md-9">
                                    <input name="keterangan" placeholder="Keterangan" class="form-control" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Lisensi</label>
                                <div class="col-md-9">
                                    <select id="lisensi" name="lisensi" class="form-control selectpicker" data-live-search="true">
                                        <option value="NC">NON LICENSE</option>
                                        <option value="CL">CHARACTER LICENSE</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Merek</label>
                                <div class="col-md-9">
                                    <select id="merek" name="merek" class="form-control selectpicker" data-live-search="true" data-container="#modal_form"></select>
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

        $('#aktif').bootstrapToggle();
        $('.aktif').bootstrapToggle();

        table = $('#table_kategori').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            ajax: {
                url: "{base_url}master/kategori/ajax_list",
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
                {"sClass": "left"},
                {"sClass": "left"},
                {"sClass": "center"}
            ]
        });

        $('.selectpicker').selectpicker({size: 10});
        select_merek('{base_url}', '#merek');
    });

    function reload_table() {
        table.ajax.reload(null, false);
    }

    function tambah() {
        save_method = 'add';
        $('#form')[0].reset();
        $("input[name='id_kategori']").val('');
        $('#aktif').bootstrapToggle('on');
        $('#modal_form').modal('show');
        $('.modal-title').text('Tambah Kategori Barang');
    }

    function simpan() {
        var url;
        if (save_method == 'add') {
            url = "{base_url}master/kategori/add";
        } else {
            url = "{base_url}master/kategori/update";
        }

        $.ajax({
            url: url,
            type: "POST",
            data: {
                id_kategori: $("input[name='id_kategori']").val(),
                nama_kategori: $("input[name='nama_kategori']").val(),
                lisensi: $("select[name='lisensi']").val(),
                id_merek: $("select[name='merek']").val(),
                keterangan: $("input[name='keterangan']").val(),
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
            url: "{base_url}master/kategori/edit/" + id,
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                $('[name="id_kategori"]').val(data.id_kategori);
                $('[name="nama_kategori"]').val(data.nama_kategori);
                $('[name="keterangan"]').val(data.keterangan);
                $('[name="lisensi"]').val(data.lisensi).trigger('change');
                //$('[name="lisensi"]').val(data.lisensi);
                //$('[name="merek"]').val(data.id_merek);
                $('[name="merek"]').val(data.id_merek).trigger('change');
                data.aktif == 1 ? $('#aktif').bootstrapToggle('on') : $('#aktif').bootstrapToggle('off');

                $('#modal_form').modal('show');
                $('.modal-title').text('Edit Kategori');

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
                            url: "{base_url}master/kategori/delete/" + id,
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
            url: "{base_url}master/kategori/aktif",
            type: "POST",
            data: {id_kategori: id, aktif: aktif},
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
