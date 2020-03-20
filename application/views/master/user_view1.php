
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Master
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-files-o"></i> Home</a></li>
        <li class="active">User</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">User</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <button class="btn btn-sm btn-success" onclick="tambah()" style="margin-bottom: 10px;"><i class="glyphicon glyphicon-plus"></i> Tambah</button>
                    <table id="table_user" class="display responsive nowrap table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Action</th>
                                <th>Nama</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>Unit</th>
                                <th>Departemen</th>
                                <th>Photo</th>
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
                    <h3 class="modal-title">User Form</h3>
                </div>
                <div class="modal-body form">
                    <form action="#" id="form" class="form-horizontal">
                        <input type="hidden" value="" name="id_user"/> 
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label col-md-3">Nama</label>
                                <div class="col-md-9">
                                    <input name="nama_user" placeholder="Nama User" class="form-control" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Email</label>
                                <div class="col-md-9">
                                    <input name="email" placeholder="Email" class="form-control" type="email">
                                </div>
                            </div>
                            <div id="password" class="form-group">
                                <label class="control-label col-md-3">Password</label>
                                <div class="col-md-9">
                                    <input name="password" placeholder="Password" class="form-control" type="password">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Role</label>
                                <div class="col-md-9">
                                    <select id="role" name="role" class="form-control selectpicker" data-live-search="true">
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Unit</label>
                                <div class="col-md-9">
                                    <select id="unit" name="unit" class="form-control selectpicker" data-live-search="true">
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Departemen</label>
                                <div class="col-md-9">
                                    <input name="departemen" placeholder="Departemen" class="form-control" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Aktif</label>
                                <div class="col-sm-9">
                                    <input id="aktif" name="aktif" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-onstyle="success" data-offstyle="danger">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Photo</label>
                                <div class="col-sm-9">
                                    <div class="fileUpload btn btn-sm">
                                        <input id="photo" name="photo" type="file" accept="image/*" class="upload" onchange="PreviewImage(this)" />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3"></label>
                                <div class="col-sm-9">
                                    <img id="photo_img" src="#" width="50%" alt="Photo"></img>
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


<script type="text/javascript">
    
    var save_method;
    var table;
    var foto_user = 'no_photo.png';

    $(document).ready(function () {
        $('#aktif').bootstrapToggle();
        
        table = $('#table_user').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            ajax: {
                url: "{base_url}master/user/ajax_list",
                type: "POST"
            },
            columnDefs: [
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
                        {"sClass": "left"}
                        {"sClass": "left"},
                        {"sClass": "left"},
                        {"sClass": "left"},
                        {"sClass": "center"},
                        {"sClass": "center"}
            ]
        });
        select_role();
        select_unit();
    });
    
    $("#role").on('shown.bs.dropdown', function(){
        select_role();
    });
    
    $("#unit").on('shown.bs.dropdown', function(){
        select_unit();
    });
    
    function select_role() {
        $("#role").empty();
        $.ajax({
            url:"{base_url}master/roles/get",
            type:'GET',
            datatype:'json',
            success:function(data) {
                data = JSON.parse(data);
                var options;
                for (var i = 0; i < data['length']; i++) {
                    options += "<option value='"+data[i]['id_role']+"'>"+data[i]['nama_role']+"</option>";
                }
                $("#role").append(options);
            }
        });
    }
    
    function select_unit() {
        $("#unit").empty();
        $.ajax({
            url:"{base_url}master/unit/get",
            type:'GET',
            datatype:'json',
            success:function(data) {
                data = JSON.parse(data);
                var options;
                for (var i = 0; i < data['length']; i++) {
                    options += "<option value='"+data[i]['id_unit']+"'>"+data[i]['nama_unit']+"</option>";
                }
                $("#unit").append(options);
            }
        });
    }
    
    function reload_table() {
        table.ajax.reload(null, false);
    }

    function PreviewImage(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#photo_img').attr('src', e.target.result);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

    function tambah() {
        save_method = 'add';
        $('#form')[0].reset();
        $("input[name='id_user']").val('');
        $('#password').show();
        $('#aktif').bootstrapToggle('on');
        clearFileInput('photo');
        foto_user = 'no_photo.png';
        $('#photo_img').attr('src', '{base_url}asset/image/user/no_photo.png');
        $('#modal_form').modal('show');
        $('.modal-title').text('Tambah User');
    }

    function simpan() {
        var url;
        if (save_method == 'add') {
            url = "{base_url}master/user/add";
        } else {
            url = "{base_url}master/user/update";
        }
        
        if (document.getElementById('photo').files.length !== 0) {
            hapusGambar(foto_user);
            var formData = new FormData($('#form')[0]);
            $.ajax({
                url: "{base_url}master/user/upload_file",
                type: "POST",
                data: formData,
                async: false,
                success: function (data) {
                    var result = eval('(' + data + ')');
                    
                    if (result.success) {
                        foto_user = result.photo;
                    } else {
                        foto_user = 'no_photo.png';
                        $success = false;
                    }
                },
                cache: false,
                contentType: false,
                processData: false
            });
        } else {
            if(save_method == 'add') {
                foto_user = 'no_photo.png';
            }
        }
        
        $.ajax({
            url: url,
            type: "POST",
            data: {
                id_user: $( "input[name='id_user']").val(),
                nama_user: $( "input[name='nama_user']").val(),
                email: $( "input[name='email']").val(),
                password: $( "input[name='password']").val(),
                id_role: $( "select[name='role']").val(),
                id_unit: $( "select[name='unit']").val(),
                departemen: $( "input[name='departemen']").val(),
                photo: foto_user,
                aktif: $('#aktif').prop('checked') == true ? 1 : 0
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
            url: "{base_url}master/user/edit/" + id,
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                
                $('[name="id_user"]').val(data.id_user);
                $('[name="nama_user"]').val(data.nama_user);
                $('[name="email"]').val(data.email);
                $('[name="password"]').val('UPDATE_USER');
                $('#password').hide();
                $('[name="role"]').val(data.id_role);
                $('[name="unit"]').val(data.id_unit);
                $('[name="departemen"]').val(data.departemen);
                data.aktif == 1 ? $('#aktif').bootstrapToggle('on') : $('#aktif').bootstrapToggle('off');
                
                clearFileInput('photo');
                foto_user = data.photo === '' ? 'no_photo.png' : data.photo;
                image_url = '{base_url}asset/image/user/' + foto_user;
                $.get(image_url)
                        .done(function () {
                            $('#photo_img').attr('src', image_url);
                        })
                        .fail(function () {
                            $('#photo_img').attr('src', '{base_url}asset/image/user/no_photo.png');
                        });

                $('#modal_form').modal('show');
                $('.modal-title').text('Edit User');

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
                url: "{base_url}master/user/delete_file/" + gambar,
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
                        hapusGambar(foto_user);
                        $.ajax({
                            url: "{base_url}master/user/delete/" + id,
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
        aktif = $('#'+id).prop('checked') == true ? 1 : 0;
        $.ajax({
            url: "{base_url}master/user/aktif",
            type: "POST",
            data: {id_user: id, aktif: aktif},
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