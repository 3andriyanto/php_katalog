
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Master
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-files-o"></i> Home</a></li>
        <li class="active">Master Barang</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Master Barang</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                        <div class="col-sm-4">
                            <button class="btn btn-sm btn-success" onclick="tambah()" style="margin-bottom: 10px;"><i class="glyphicon glyphicon-plus"></i> Tambah</button>
                            <button class="btn btn-sm btn-primary" onclick="cetakBarang()" style="margin-bottom: 10px;"><i class="glyphicon glyphicon-print"></i> Cetak</button>
                        </div>
                    </div>
                    <table id="table_barang" class="display responsive table table-bordered table-striped" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Action</th>
                                <th>Gambar</th>
                                <th>Nama</th>
                                <th>Tanggal</th>
                                <th>Satuan</th>
                                <th>Merek</th>
                                <th>Kategori</th>
                                <th>Ukuran</th>
                                <th>File Gambar</th>
                                <th>New</th>
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
        <div class="modal-dialog" style="width: 90%;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3 class="modal-title">Barang Form</h3>
                </div>
                <div class="modal-body form">
                    <form action="#" id="form" class="form-horizontal" method="post" novalidate>
                        <input type="hidden" value="" name="id_barang"/>
                        <div class="form-body">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Tanggal</label>
                                    <div class="col-sm-9">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                                            <input id="tanggal" name="tanggal" placeholder="dd/mm/yyyy" class="form-control" type="text">
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Nama</label>
                                    <div class="col-sm-9">
                                        <input name="nama_barang" placeholder="Nama Barang" class="form-control" type="text">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Satuan</label>
                                    <div class="col-sm-9">
                                        <input name="satuan" placeholder="Satuan" class="form-control" type="text">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Kategori</label>
                                    <div class="col-sm-9">
                                        <select id="kategori" name="kategori" class="form-control selectpicker" data-live-search="true" data-container="#modal_form">
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">New</label>
                                    <div class="col-sm-9">
                                        <input id="new" name="new" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-onstyle="success" data-offstyle="danger">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Aktif</label>
                                    <div class="col-sm-9">
                                        <input id="aktif" name="aktif" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-onstyle="success" data-offstyle="danger">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Ukuran</label>
                                    <div class="col-sm-9">
                                        <input name="ukuran" placeholder="Ukuran dimensi" class="form-control" type="text">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3">Gambar</label>
                                    <div class="col-sm-9">
                                        <div class="fileUpload btn btn-sm">
                                            <input id="gambar" name="gambar" type="file" accept="image/*" class="upload" onchange="PreviewImage(this)" />
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label col-sm-3"></label>
                                    <div class="col-sm-9">
                                        <img id="barang_img" src="#" width="80%" alt="Gambar"></img>
                                    </div>
                                </div>

                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <div class="col-sm-12">
                                        <label class="control-label">Deskripsi</label>
                                        <textarea id="deskripsi" name="deskripsi" class="textarea form-control" placeholder="Deskripsi Barang"></textarea>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <div class="modal-footer">
                        <button type="button" id="btnSave" onclick="simpan()" class="btn btn-primary">Save</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <!-- End Bootstrap modal -->

</section>


<script type="text/javascript">


    var save_method;
    var table;
    var foto = 'no_image.png';

    $(document).ready(function () {
        $("#deskripsi").summernote({
            height: 320,
            minHeight: 150,
            maxHeight: 400
        });

        $('#new').bootstrapToggle();
        $('#aktif').bootstrapToggle();
        $("#tanggal").inputmask("d/m/y", {"placeholder": "dd/mm/yyyy"});

        table = $('#table_barang').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            ajax: {
                'url': "{base_url}master/barang/ajax_list",
                type: "POST"
            },
            columnDefs: [
                {
                    targets: [-1],
                    orderable: false
                },
                {width: "55px", targets: 0}
            ],
            aoColumns: [
                {"sClass": "center"},
                {"sClass": "center"},
                {"sClass": "left"},
                {"sClass": "left"},
                {"sClass": "left"},
                {"sClass": "left"},
                {"sClass": "left"},
                {"sClass": "left"},
                {"sClass": "left"},
                {"sClass": "center"},
                {"sClass": "center"}
            ]
        });

        $('.selectpicker').selectpicker({size: 10});
        select_kategori('{base_url}', '#kategori');
    });

    function reload_table() {
        table.ajax.reload(null, false);
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

    function tambah() {
        save_method = 'add';
        $('#form')[0].reset();
        $("input[name='id_barang']").val('');
        $('.selectpicker').selectpicker('deselectAll');
        $("#tanggal").val(today());
        $('#deskripsi').summernote('code', '');
        $('#new').bootstrapToggle('on');
        $('#aktif').bootstrapToggle('on');
        clearFileInput('gambar');
        foto = 'no_image.png';
        $('#barang_img').attr('src', '{base_url}asset/image/produk/no_image.png');
        $('.modal-title').text('Tambah Barang');
        $('#modal_form').modal('show');
    }

    function simpan() {
        var url;
        var success = true;
        if (save_method == 'add') {
            url = "{base_url}master/barang/add";
        } else {
            url = "{base_url}master/barang/update";
        }

        if (document.getElementById('gambar').files.length != 0) {
            hapusGambar(foto);
            var formData = new FormData($('#form')[0]);
            $.ajax({
//              url: "{base_url}master/barang/upload_file",
                url: "{base_url}master/barang/upload",
                type: "POST",
                data: formData,
                async: false,
                success: function (data) {
                    var result = JSON.parse(data);

                    if (result.success) {
                        foto = result.filename;
                    } else {
                        foto = 'no_image.png';
                        success = false;
                        var pesan = new BootstrapDialog({
                            type: BootstrapDialog.TYPE_WARNING,
                            title: 'Error',
                            message: '<font color="red">' + result.msg + '</font>',
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
                cache: false,
                contentType: false,
                processData: false
            });
        } else {
            if (save_method == 'add') {
                foto = 'no_image.png';
            }
        }

        $.ajax({
            url: url,
            type: "POST",
            data: {
                id_barang: $("input[name='id_barang']").val(),
                tanggal: $("input[name='tanggal']").val(),
                nama_barang: $("input[name='nama_barang']").val(),
                satuan: $("input[name='satuan']").val(),
                deskripsi: $('#deskripsi').summernote('code'),
                id_kategori: $("select[name='kategori']").val(),
                gambar: foto,
                ukuran: $("input[name='ukuran']").val(),
                aktif: $('#aktif').prop('checked') == true ? 1 : 0,
                new : $('#new').prop('checked') == true ? 1 : 0,
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
            url: "{base_url}master/barang/edit/" + id,
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                $('[name="id_barang"]').val(data.id_barang);
                $('[name="tanggal"]').val(tanggal_mask(data.tanggal));
                $('[name="nama_barang"]').val(data.nama_barang);
                $('[name="satuan"]').val(data.satuan);
                $('#deskripsi').summernote('code', data.deskripsi);
                $('[name="kategori"]').val(data.id_kategori).trigger('change');
                //$('[name=kategori]').val(data.id_kategori);
                //select_kategori('base_url', '#kategori');
                // $('.selectpicker').selectpicker('refresh')

                // $('[name="kategori"]').val(data.nama_kategori);
                  $('[name="ukuran"]').val(data.ukuran);
                data.new == 1 ? $('#new').bootstrapToggle('on') : $('#new').bootstrapToggle('off');
                data.aktif == 1 ? $('#aktif').bootstrapToggle('on') : $('#aktif').bootstrapToggle('off');
                clearFileInput('gambar');
                foto = data.gambar == '' ? 'no_image.png' : data.gambar;
                image_url = '{base_url}asset/image/produk/' + foto;
                $.get(image_url)
                        .done(function () {
                            $('#barang_img').attr('src', image_url);
                        })
                        .fail(function () {
                            $('#barang_img').attr('src', '{base_url}asset/image/produk/no_image.png');
                        });

                $('#modal_form').modal('show');
                $('.modal-title').text('Edit Barang');

            },
            error: function (jqXHR, textStatus, errorThrown) {
              console.log(errorThrown);
            }
        });
    }

    function hapusGambar(gambar) {
        if (gambar !== 'no_image.png') {
            $.ajax({
                url: "{base_url}master/barang/delete_file/" + gambar,
                type: "POST",
                async: false,
                success: function (data) {
                    var result = JSON.parse(data);
                    if (result.success) {
                    } else {
                        var pesan = new BootstrapDialog({
                            type: BootstrapDialog.TYPE_WARNING,
                            title: 'Error',
                            message: '<font color="red">' + result.msg + '</font>',
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
                cache: false,
                contentType: false,
                processData: false
            });
        }
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
                    action: function (dialogItself) {
                        hapusGambar(foto);
                        $.ajax({
                            url: "{base_url}master/barang/delete/" + id,
                            type: "POST",
                            dataType: "JSON",
                            success: function (data)
                            {
                                if (data.success) {
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
                    action: function (dialogItself) {
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
            url: "{base_url}master/barang/aktif",
            type: "POST",
            data: {id_barang: id, aktif: aktif},
            dataType: "JSON",
            success: function (data)
            {
                if (!data.success) {
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

    function edit_list(pre, id) {
        aktif = $('#' + pre + id).prop('checked') == true ? 1 : 0;
        $.ajax({
            url: "{base_url}master/barang/active",
            type: "POST",
            data: {id_barang: id, field: pre, value: aktif},
            dataType: "JSON",
            success: function (data)
            {
                if (!data.success) {
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

    function cetakBarang() {
        // window.open('{base_url}master/barang/pdf/' + $("select[name='filter_merek']").val() + '/' + $("select[name='filter_kategori']").val() + '/' + $("select[name='filter_new']").val(), 'popUpWindow');
        window.open('{base_url}master/barang/pdf/' + $("select[name='filter_merek']").val(), 'popUpWindow');
    }
</script>
