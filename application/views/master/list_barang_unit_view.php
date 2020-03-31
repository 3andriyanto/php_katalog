
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>List Barang</h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-files-o"></i> Home</a></li>
        <li class="active">List Barang Unit</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">List Barang Unit {user_unit}</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <!--<button class="btn btn-sm btn-success" onclick="tambah()" style="margin-bottom: 10px;"><i class="glyphicon glyphicon-plus"></i> Tambah</button>-->
                        <table id="list_barang_unit" class="display responsive table table-bordered table-hover" cellspacing="0" width="100%">
                            <thead>
                                <tr>
                                    <th>Action</th>
                                    <th>Gambar</th>
                                    <th>Nama</th>
                                    <th>Ukuran</th>
                                    <th>Harga</th>
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
                    <h3 class="modal-title">Form</h3>
                </div>
                <div class="modal-body form">
                    <form action="#" id="form" class="form-horizontal">
                        <input type="hidden" value="" name="id_barang_unit"/>
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label col-md-3">Nama</label>
                                <div class="col-md-9">
                                    <input name="nama_barang_unit" placeholder="Nama Barang" class="form-control" type="text" disabled="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Qty</label>
                                <div class="col-md-9">
                                    <input id="qty" name="qty" class="form-control" type="number" min="1" value="1">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3"></label>
                                <div class="col-sm-9">
                                    <img id="barang_img" src="#" width="80%" alt="gambar"></img>
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
    var list_barang_unit;
    var foto_barang_unit = 'no_image.png';
    var cari_barang;

    $(document).ready(function () {
        
        list_barang_unit = $('#list_barang_unit').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            ajax: {
                url: "{base_url}master/list_barang_unit/ajaxlist",
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
                {"sClass": "right"}
            ]
        });
        
    });

    function reload_table() {
        list_barang_unit.ajax.reload(null, false);
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

    function clearFileInput(id) {
        $('#' + id).html($('#' + id).html());
    }
    
    function edit(id) {
        save_method = 'update';
        $('#form')[0].reset();

        $.ajax({
            url: "{base_url}master/list_barang_unit/edit/" + id,
            type: "GET",
            dataType: "JSON",
            success: function (data) {
//                $('[name="id_barang_unit"]').val(data.id_barang_unit);
//                $('[name="unit"]').val(data.id_unit).trigger('change');
//                $('[name="tanggal"]').val(tanggal_mask(data.tanggal));
                $('[name="nama_barang_unit"]').val(data.nama_barang_unit);
//                $('[name="satuan"]').val(data.satuan);
//                $('#deskripsi').summernote('code', data.deskripsi);
//                $('[name=harga]').val(data.harga);
//                $('[name="kategori"]').val(data.id_kategori).trigger('change');
//                $('[name="ukuran"]').val(data.ukuran);
//                data.new == 1 ? $('#new').bootstrapToggle('on') : $('#new').bootstrapToggle('off');
//                data.aktif == 1 ? $('#aktif').bootstrapToggle('on') : $('#aktif').bootstrapToggle('off');
                
//                clearFileInput('gambar');
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
                $('.modal-title').text('Add To Chart');

            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                console.log(errorThrown);
            }
        });
    }

</script>
