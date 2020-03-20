<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>Master</h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-files-o"></i> Home</a></li>
        <li class="active">Setting</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Setting</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <button class="btn btn-sm btn-success" onclick="tambah()" style="margin-bottom: 10px;"><i class="glyphicon glyphicon-plus"></i> Tambah</button>
                    <table id="table_setting" class="display responsive nowrap table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Action</th>
                                <th>Key</th>
                                <th>Value</th>
                                <th>Link</th>
                                <th>Image</th>
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
                    <h3 class="modal-title">Setting Form</h3>
                </div>
                <div class="modal-body form">
                    <form action="#" id="form" class="form-horizontal">
                        <input type="hidden" value="" name="id_setting"/> 
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label col-md-3">Key</label>
                                <div class="col-md-9">
                                    <input name="key" placeholder="Key" class="form-control" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Value</label>
                                <div class="col-md-9">
                                    <input name="value" placeholder="Value" class="form-control" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Link</label>
                                <div class="col-md-9">
                                    <input name="link" placeholder="Link" class="form-control" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Image</label>
                                <div class="col-sm-9">
                                    <div class="fileUpload btn btn-sm">
                                        <input id="image" name="image" type="file" accept="image/*" class="upload" onchange="PreviewImage(this)" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3"></label>
                                <div class="col-sm-9">
                                    <img id="image_img" src="#" width="60%" alt="image"></img>
                                </div>
                            </div>                            
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" id="btnSave" onclick="simpan()" class="btn btn-primary">Simpan</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <!-- End Bootstrap modal -->    

</section>

<script>
    var save_method;
    var table;
    var image_setting = 'no_image.png';

    $(document).ready(function () {
        
        table = $('#table_setting').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            ajax: {
                url: "{base_url}master/setting/ajax_list",
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
                {sClass: "left"},
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
                $('#image_img').attr('src', e.target.result);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

    function tambah() {
        save_method = 'add';
        $('#form')[0].reset();
        $("input[name='id_setting']").val('');
        clearFileInput('image');
        image_setting = 'no_image.png';
        $('#image_img').attr('src', '{base_url}asset/image/no_image.png');
        $('#modal_form').modal('show');
        $('.modal-title').text('Tambah Setting');
    }

    function simpan() {
        var url;
        if (save_method == 'add') {
            url = "{base_url}master/setting/add";
        } else {
            url = "{base_url}master/setting/update";
        }
        if (document.getElementById('image').files.length !== 0) {
            hapusGambar(image_setting);
            var formData = new FormData($('#form')[0]);
            $.ajax({
                url: "{base_url}master/setting/upload_file",
                type: "POST",
                data: formData,
                async: false,
                success: function (data) {
                    var result = eval('(' + data + ')');

                    if (result.success) {
                        image_setting = result.image;
                    } else {
                        image_setting = 'no_image.png';
                        $success = false;
                    }
                },
                cache: false,
                contentType: false,
                processData: false
            });
        } else {
            if (save_method == 'add') {
                image_setting = 'no_image.png';
            }
        }
        $.ajax({
            url: url,
            type: "POST",
            data: {
                id_setting: $("input[name='id_setting']").val(),
                key: $("input[name='key']").val(),
                value: $("input[name='value']").val(),
                link: $("input[name='link']").val(),
                image: image_setting,
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
            url: "{base_url}master/setting/edit/" + id,
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                $('[name="id_setting"]').val(data.id_setting);
                $('[name="key"]').val(data.key);
                $('[name="value"]').val(data.value);
                $('[name="link"]').val(data.link);
                clearFileInput('image');
                image_setting = data.image == '' ? 'no_image.png' : data.image;
                image_url = '{base_url}asset/image/' + image_setting;
                $.get(image_url)
                        .done(function () {
                            $('#image_img').attr('src', image_url);
                        })
                        .fail(function () {
                            $('#image_img').attr('src', '{base_url}asset/image/no_image.png');
                        });
                        
                $('#modal_form').modal('show');
                $('.modal-title').text('Edit Setting');

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
                url: "{base_url}master/setting/delete_file/" + gambar,
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
                        hapusGambar(image_setting);
                        $.ajax({
                            url: "{base_url}master/setting/delete/" + id,
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

</script>
