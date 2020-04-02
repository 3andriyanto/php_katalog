
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>Master</h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-files-o"></i> Home</a></li>
        <li class="active">Master Barang Unit</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <!--<h3 class="box-title">Master Barang Unit {user_unit}</h3>-->
                    <h3 class="box-title">Master Barang Unit {user_unit}</h3>
                </div><!-- /.box-header -->
                <div class="box-body">

                    <button class="btn btn-sm btn-success" onclick="tambah()" style="margin-bottom: 10px;"><i class="glyphicon glyphicon-plus"></i> Tambah</button>
                    <div  >      
                        <div class="col-md-4">


                        </div>
                        <div class="col-md-4">


                        </div>
                        <div class="col-md-4" style="margin-bottom: 10px;">
                            <span>Filter Kategori</span> :  <select id="kategoriFilter" name="kategoriFilter" class="form-control selectpicker" data-live-search="true">
                            </select>

                        </div>
                    </div>

                    <table id="table_barang_unit" class="display responsive table table-bordered table-hover" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Action</th>
                                <th>Gambar</th>
                                <th>Nama</th>
                                <th>Unit</th>
                                <th>Satuan</th>
                                <th>Merek</th>
                                <th>Kategori</th>
                                <th>Ukuran</th>
                                <th>Harga</th>
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
                    <h3 class="modal-title">Barang Unit Form</h3>
                </div>
                <div class="modal-body form">
                    <form action="#" id="form" class="form-horizontal" method="post" novalidate>
                        <input type="hidden" value="" id="id_barang_unit" name="id_barang_unit"/> 
                        <div class="form-body">
                            <div class="col-md-6">
                                <div id="unit-group" class="form-group">
                                    <label class="control-label col-sm-3">Unit</label>
                                    <div class="col-sm-9">
                                        <select id="unit" name="unit" class="form-control selectpicker" data-live-search="true" disabled>
                                            <option value={user_id_unit}>{user_unit}</option>
                                        </select>
                                    </div>
                                </div>
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
                                        <input name="nama_barang_unit" placeholder="Nama Barang" class="form-control" type="text">
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
                                        <select id="kategori" name="kategori" class="form-control selectpicker" data-live-search="true">
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
                                <div id="harga-group" class="form-group">
                                    <label class="control-label col-sm-3">Harga</label>
                                    <div class="col-sm-9">
                                        <div class="input-group">
                                            <span class="input-group-addon">Rp.</span>
                                            <input id="harga" name="harga" placeholder="Harga" class="form-control" type="text">
                                            <span class="input-group-addon">.00</span>
                                        </div>
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
                                        <img id="barang_img" src="#" width="80%" alt="gambar"></img>
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
                        <button type="button" id="btnSave" onclick="simpan()" class="btn btn-primary">Simpan</button>
                        <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                    </div>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <!-- End Bootstrap modal -->    

</section>


<script type="text/javascript">

    var save_method;
    var table_barang_unit;
    var foto_barang_unit = 'no_image.png';
    var cari_barang;

    $(document).ready(function () {
        
        
        
        $("#deskripsi").summernote({
            height: 350,
            minHeight: 150,
            maxHeight: 400
        });

        $('#aktif').bootstrapToggle();
        $('#new').bootstrapToggle();
        $("#harga").inputmask("decimal", {digits: 0, groupSeparator: ",", autoGroup: true, removeMaskOnSubmit: true});

        table_barang_unit = $('#table_barang_unit').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            ajax: {
                url: "{base_url}master/barang_unit/ajaxlist",
                type: "POST",
                "data": function (data) {
                    data.id_kategori = $('#kategoriFilter').val();
                },
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
                {"sClass": "left"},
                {"sClass": "right"},
                {"sClass": "center"},
                {"sClass": "center"}
            ]
        });

        //select_unit2('{base_url}', '#unit');
        select_kategori('{base_url}', '#kategori');
        select_kategoriFilter('{base_url}', '#kategoriFilter');
       
        $('.selectpicker').selectpicker({size: 10});

    });

    $('#kategoriFilter').change('click change', function (event) {
        event.preventDefault();

      table_barang_unit.draw();

    });



    function reload_table() {
        table_barang_unit.ajax.reload(null, false);
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

    function tambah() {
        reload_table();
        save_method = 'add';
        $('#form')[0].reset();
        $("input[name='id_barang_unit']").val('');
        $('.selectpicker').selectpicker('deselectAll');
        $("#tanggal").val(today());
        $('#deskripsi').summernote('code', '');
        $('#new').bootstrapToggle('on');
        $('#aktif').bootstrapToggle('on');
        clearFileInput('gambar');
        foto_barang_unit = 'no_image.png';
        $('#barang_img').attr('src', '{base_url}asset/image/produk_unit/no_image.png');
        $('#modal_form').modal('show');
        $('.modal-title').text('Tambah Barang Unit');
    }

    function simpan() {
        var url;
        //var success = true;
        if (save_method == 'add') {
            url = "{base_url}master/barang_unit/add";
        } else {
            url = "{base_url}master/barang_unit/update";
        }

        if (document.getElementById('gambar').files.length !== 0) {
            hapusGambar(foto_barang_unit);
            var formData = new FormData($('#form')[0]);
            $.ajax({
                url: "{base_url}master/barang_unit/upload",
                type: "POST",
                data: formData,
                async: false,
                success: function (data) {
                    var result = eval('(' + data + ')');

                    if (result.success) {
                        foto_barang_unit = result.gambar;
                    } else {
                        foto_barang_unit = 'no_image.png';
                        $success = false;
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
                foto_barang_unit = 'no_image.png';
            }
        }

        $.ajax({
            url: url,
            type: "POST",
            data: {
                id_barang_unit: $("input[name='id_barang_unit']").val(),
                tanggal: $("input[name='tanggal']").val(),
                nama_barang_unit: $("input[name='nama_barang_unit']").val(),
                id_unit: $("select[name='unit']").val(),
                satuan: $("input[name='satuan']").val(),
                deskripsi: $('#deskripsi').summernote('code'),
                harga: $("input[name='harga']").inputmask('unmaskedvalue'),
                id_kategori: $("select[name='kategori']").val(),
                gambar: foto_barang_unit,
                ukuran: $("input[name='ukuran']").val(),
                aktif: $('#aktif').prop('checked') == true ? 1 : 0,
                new : $('#aktif').prop('checked') == true ? 1 : 0,
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
            url: "{base_url}master/barang_unit/edit/" + id,
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                $('[name="id_barang_unit"]').val(data.id_barang_unit);
                $('[name="unit"]').val(data.id_unit).trigger('change');
                $('[name="tanggal"]').val(tanggal_mask(data.tanggal));
                $('[name="nama_barang_unit"]').val(data.nama_barang_unit);
                $('[name="satuan"]').val(data.satuan);
                $('#deskripsi').summernote('code', data.deskripsi);
                $('[name=harga]').val(data.harga);
                $('[name="kategori"]').val(data.id_kategori).trigger('change');
                $('[name="ukuran"]').val(data.ukuran);
                data.new == 1 ? $('#new').bootstrapToggle('on') : $('#new').bootstrapToggle('off');
                data.aktif == 1 ? $('#aktif').bootstrapToggle('on') : $('#aktif').bootstrapToggle('off');

                clearFileInput('gambar');
                foto = data.gambar == '' ? 'no_image.png' : data.gambar;
                image_url = '{base_url}asset/image/produk_unit/' + foto;
                foto_barang_unit = foto;
                $.get(image_url)
                        .done(function () {
                            $('#barang_img').attr('src', image_url);
                        })
                        .fail(function () {
                            $('#barang_img').attr('src', '{base_url}asset/image/produk_unit/no_image.png');
                        });

                $('#modal_form').modal('show');
                $('.modal-title').text('Edit Barang Unit');

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
                url: "{base_url}master/barang_unit/delete_file/" + gambar,
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
                        hapusGambar(foto_barang_unit);
                        $.ajax({
                            url: "{base_url}master/barang_unit/delete/" + id,
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
            url: "{base_url}master/barang_unit/aktif",
            type: "POST",
            data: {id_barang_unit: id, aktif: aktif},
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

</script>
