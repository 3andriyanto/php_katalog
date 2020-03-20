
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Profile
    </h1>
    <ol class="breadcrumb">
        <li><a href="javascript:void(0)" onclick="showContent('dashboard')"><i class="fa fa-files-o"></i> Home</a></li>
        <li class="active">Profile</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">User Profile</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    
                <!-- Nav tabs -->
                  <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Profile</a></li>
                    <li role="presentation"><a href="#ubah_password" aria-controls="ubah_password" role="tab" data-toggle="tab">Ubah Password</a></li>
                  </ul>

                  <!-- Tab panes -->
                  <div class="tab-content">
                      <div role="tabpanel" class="tab-pane active" id="profile">
                            <form action="#" id="form" class="form-horizontal">
                                <input type="hidden" value="" name="id_user"/> 
                                <div class="form-body" style="padding-top: 10px;">
                                    <div class="row">
                                        <div class="col-lg-8">
                                            <div class="form-group">
                                                <label class="control-label col-md-3">Nama</label>
                                                <div class="col-md-9">
                                                    <input name="nama_user" placeholder="Nama User" class="form-control" type="text" style="text-transform: capitalize;">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3">Email</label>
                                                <div class="col-md-9">
                                                    <input name="email" placeholder="Email" class="form-control" type="email" style="text-transform: lowercase;">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-4">
                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <label class="control-label col-sm-3">Foto</label>
                                                    <div class="col-sm-9">
                                                        <div class="fileUpload btn btn-sm">
                                                            <input id="foto" name="foto" type="file" accept="image/*" class="upload" onchange="PreviewImage(this)" />
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <div class="col-sm-12">
                                                    <label class="control-label col-sm-3"></label>
                                                    <div class="col-sm-9">
                                                        <img id="foto_img" src="#" width="90%" alt="Foto"></img>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-sm-3"></label>
                                                <div class="col-sm-9">
                                                    <button type="button" id="btnSave" onclick="simpan()" class="btn btn-primary">Simpan</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </form>
                      </div>
                      <div role="tabpanel" class="tab-pane" id="ubah_password">
                          <form action="#" id="form_password" class="form-horizontal">
                              <div class="form-body" style="padding-top: 10px;">
                                    <div id="password_lama" class="form-group">
                                        <label class="control-label col-md-3">Password Lama</label>
                                        <div class="col-md-5">
                                            <input name="password_lama" placeholder="Password Lama" class="form-control" type="password">
                                        </div>
                                    </div>
                                    <div id="password1" class="form-group">
                                        <label class="control-label col-md-3">Password Baru</label>
                                        <div class="col-md-5">
                                            <input name="password1" placeholder="Password Baru" class="form-control" type="password">
                                        </div>
                                    </div>
                                    <div id="password2" class="form-group">
                                        <label class="control-label col-md-3">Ulangi Password Baru</label>
                                        <div class="col-md-5">
                                            <input name="password2" placeholder="Ulangi Password Baru" class="form-control" type="password">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-sm-3"></label>
                                        <div class="col-sm-5">
                                            <button type="button" id="btnSave" onclick="simpan_password()" class="btn btn-primary">Simpan</button>
                                        </div>
                                    </div>
                              </div>
                        </form>
                      </div>
                    <div role="tabpanel" class="tab-pane" id="transaksi">...</div>
                  </div>                    
                    
                </div><!-- /.box-body -->
            </div><!-- /.box -->
        </div><!-- /.col -->
    </div><!-- /.row -->

</section>


<script>
    var save_method;
    var foto_user = 'no_photo.png';

    $(document).ready(function () {
        
        select_role();
        
        edit('{user_id}');
    });
    
    function select_role() {
        $("#role").empty();
        $.ajax({
            url:"{base_url}roles/get",
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
    
    function PreviewImage(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#foto_img').attr('src', e.target.result);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }

    function simpan() {
        var url;
        if (save_method == 'add') {
            url = "{base_url}user/add";
        } else {
            url = "{base_url}user/update";
        }
        
        if (document.getElementById('foto').files.length !== 0) {
            hapusGambar(foto_user);
            var formData = new FormData($('#form')[0]);
            $.ajax({
                url: "{base_url}user/upload_file",
                type: "POST",
                data: formData,
                async: false,
                success: function (data) {
                    var result = eval('(' + data + ')');
                    
                    if (result.success) {
                        foto_user = result.foto;
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
                password: 'UPDATE_USER',
                foto: foto_user
            },
            dataType: "JSON",
            success: function (data)
            {
                if (data.success) {
                    var pesan = new BootstrapDialog({
                        type: BootstrapDialog.TYPE_INFO,
                        title: 'Simpan',
                        message: 'Profile tersimpan.',
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


    function simpan_password() {
        $.ajax({
            url: "{base_url}user/ubah_password",
            type: "POST",
            data: {
                id_user: $( "input[name='id_user']").val(),
                password: $( "input[name='password_lama']").val(),
                password1: $( "input[name='password1']").val(),
                password2: $( "input[name='password2']").val()
            },
            dataType: "JSON",
            success: function (data) {
                if (data.success) {
                    var pesan = new BootstrapDialog({
                        type: BootstrapDialog.TYPE_INFO,
                        title: 'Simpan',
                        message: 'Password baru tersimpan.',
                        buttons: [
                            {
                                label: 'Tutup',
                                action: function (dialogRef) {
                                    dialogRef.close();
                                    window.location.href = '{base_url}login/keluar';
                                }
                            }
                        ]
                    });
                    pesan.open();
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
            }
        });
    }

    function edit(id) {
        save_method = 'update';
        $('#form')[0].reset();

        $.ajax({
            url: "{base_url}user/edit/" + id,
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                
                $('[name="id_user"]').val(data.id_user);
                $('[name="nama_user"]').val(data.nama_user);
                $('[name="email"]').val(data.email);
                
                clearFileInput('foto');
                foto_user = data.foto === '' ? 'no_photo.png' : data.foto;
                image_url = '{base_url}files/image/user/' + foto_user;
                $.get(image_url)
                        .done(function () {
                            $('#foto_img').attr('src', image_url);
                        })
                        .fail(function () {
                            $('#foto_img').attr('src', '{base_url}files/image/user/no_photo.png');
                        });


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
                url: "{base_url}user/delete_file/" + gambar,
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
    
    function clearFileInput(id) {
        $('#' + id).html($('#' + id).html());
    }

</script>
