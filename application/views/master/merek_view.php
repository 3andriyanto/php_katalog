<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>Master</h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-files-o"></i> Home</a></li>
        <li class="active">Merek Barang</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Merek Barang</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <button class="btn btn-sm btn-success" onclick="tambah()" style="margin-bottom: 10px;"><i class="glyphicon glyphicon-plus"></i> Tambah</button>
                    <table id="table_merek" class="display responsive nowrap table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Action</th>
                                <th>Nama</th>
                                <th>Urut Posisi</th>
                                <th>Logo</th>
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
                    <h3 class="modal-title">Merek Form</h3>
                </div>
                <div class="modal-body form">
                    <form action="#" id="form" class="form-horizontal">
                        <input type="hidden" value="" name="id_merek"/>
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label col-md-3">Nama</label>
                                <div class="col-md-9">
                                    <input name="nama_merek" placeholder="Nama Merek" class="form-control" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Urut Posisi</label>
                                <div class="col-md-9">
                                    <input id="posisi" name="posisi" placeholder="Posisi" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Deskripsi</label>
                                <div class="col-md-9">
                                    <textarea id="deskripsi" name="deskripsi" class="textarea form-control" placeholder="Deskripsi Merek"></textarea>
                                </div>
                            </div>
                            <div id="aktif-group" class="form-group">
                                <label class="control-label col-sm-3">Aktif</label>
                                <div class="col-sm-9">
                                    <input id="aktif" name="aktif" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-onstyle="success" data-offstyle="danger" data-size="small">
                                </div>
                            </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Logo</label>
                                    <div class="col-sm-9">
                                        <div class="fileUpload btn btn-sm">
                                            <input id="logo" name="logo" type="file" accept="image/*" class="upload" onchange="PreviewImage(this)" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3"></label>
                                    <div class="col-sm-9">
                                        <img id="logo_img" src="#" width="60%" alt="logo"></img>
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
    var foto_merek = 'no_image.png';

    $(document).ready(function () {
        $("#deskripsi").summernote({
            height: 250,
            minHeight: 150,
            maxHeight: 400
        });
        $('#aktif').bootstrapToggle();
        $("#posisi").inputmask("integer", {digits: 0, groupSeparator: ",", autoGroup: true, removeMaskOnSubmit: true});

        table = $('#table_merek').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            ajax: {
                url: "{base_url}master/merek/ajax_list",
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
                {sClass: "center"},
                {sClass: "left"},
                {sClass: "center"},
                {sClass: "left"},
                {sClass: "center"}
            ]
        });

    });

    function reload_table() {
        table.ajax.reload(null, false);
    }

    function PreviewImage(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#logo_img').attr('src', e.target.result);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

    function tambah() {
        save_method = 'add';
        $('#form')[0].reset();
        $("input[name='id_merek']").val('');
        $('#deskripsi').summernote('code', '');
        $('#aktif').bootstrapToggle('on');
        clearFileInput('logo');
        foto_merek = 'no_image.png';
        $('#logo_img').attr('src', '{base_url}asset/image/no_image.png');
        $('#modal_form').modal('show');
        $('.modal-title').text('Tambah Merek Barang');
    }

    function simpan() {
        var url;
        if (save_method == 'add') {
            url = "{base_url}master/merek/add";
        } else {
            url = "{base_url}master/merek/update";
        }
        if (document.getElementById('logo').files.length !== 0) {
            hapusGambar(foto_merek);
            var formData = new FormData($('#form')[0]);
            $.ajax({
                url: "{base_url}master/merek/upload_file",
                type: "POST",
                data: formData,
                async: false,
                success: function (data) {
                    var result = eval('(' + data + ')');

                    if (result.success) {
                        foto_merek = result.logo;
                    } else {
                        foto_merek = 'no_image.png';
                        $success = false;
                    }
                },
                cache: false,
                contentType: false,
                processData: false
            });
        } else {
            if (save_method == 'add') {
                foto_merek = 'no_image.png';
            }
        }
        $.ajax({
            url: url,
            type: "POST",
            data: {
                id_merek: $("input[name='id_merek']").val(),
                nama_merek: $("input[name='nama_merek']").val(),
                deskripsi: $('#deskripsi').summernote('code'),
                logo: foto_merek,
                posisi: $("input[name='posisi']").inputmask('unmaskedvalue'),
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
            url: "{base_url}master/merek/edit/" + id,
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                $('[name="id_merek"]').val(data.id_merek);
                $('[name="nama_merek"]').val(data.nama_merek);
                $('#deskripsi').summernote('code', data.deskripsi);
                $('[name="posisi"]').val(data.posisi);
                data.aktif == 1 ? $('#aktif').bootstrapToggle('on') : $('#aktif').bootstrapToggle('off');
                clearFileInput('logo');
                foto_merek = data.logo == '' ? 'no_image.png' : data.logo;
                image_url = '{base_url}asset/image/' + foto_merek;
                $.get(image_url)
                        .done(function () {
                            $('#logo_img').attr('src', image_url);
                        })
                        .fail(function () {
                            $('#logo_img').attr('src', '{base_url}asset/image/no_image.png');
                        });

                $('#modal_form').modal('show');
                $('.modal-title').text('Edit Merek');

            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                console.log(errorThrown);
            }
        });
    }

    function hapusGambar(gambar) {
        $success = false;
        if (gambar !== 'no_image.png') {
            $.ajax({
                url: "{base_url}master/merek/delete_file/" + gambar,
                type: "POST",
                async: false,
                success: function (data) {
                    $success = true;
                },
                cache: false,
                contentType: false,
                processData: false
            });
        }
        return $success;
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
                        hapusGambar(foto_merek);
                        $.ajax({
                            url: "{base_url}master/merek/delete/" + id,
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

    function clearFileInput(id) {
        $('#' + id).html($('#' + id).html());
    }

    function edit_aktif(id) {
        aktif = $('#' + id).prop('checked') == true ? 1 : 0;
        $.ajax({
            url: "{base_url}master/merek/aktif",
            type: "POST",
            data: {id_merek: id, aktif: aktif},
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
