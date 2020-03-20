<h5>Master Barang</h5>
    <table id="table_barang" class="display responsive table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>Pilih</th>
                <th>Nama</th>
                <th>Gambar</th>
                <th>Merek</th>
                <th>Kategori</th>
                <th>Ukuran</th>
                <th>ID</th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>

<script type="text/javascript">

    $(document).ready(function () {
        table = $('#table_barang').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            ajax: {
                url: "master/barang/dialog_list",
                type: "POST"
            },
//            columns: [
//                { data: "nama_barang"},
//                { data: "gambar" },
////                { data: "satuan" },
//                { data: "nama_merek" },
//                { data: "nama_kategori" },
//                { data: "ukuran" },
//                { data: "id_barang", visible: false, className: 'hide' }
//            ],
            columnDefs: [
                { className: 'hide', targets: [ 6 ] },
                {width: "25px", targets: [ 0 ]}
            ],
            aoColumns: [
                {"sClass": "center"},
                {"sClass": "left"},
                {"sClass": "center"},
                {"sClass": "left"},
                {"sClass": "left"},
                {"sClass": "left"},
                {"sClass": "hide"}
            ]
        });
        
        $('#table_barang tbody').on( 'click', 'tr', function () {
            if ( $(this).hasClass('selected') ) {
                $(this).removeClass('selected');
            }
            else {
                table.$('tr.selected').removeClass('selected');
                $(this).addClass('selected');
            }
        });
        
        $('#table_barang tbody').on( 'dblclick', 'tr', function () {
            if ( $(this).hasClass('selected') ) {
                $(this).removeClass('selected');
            }
            else {
                table.$('tr.selected').removeClass('selected');
                $(this).addClass('selected');
            }
            
            pilih(table.cell('.selected', 6).data());
            
        });

    });
    
    function pilih(id) {
        $('#form')[0].reset();

        $.ajax({
            url: "{base_url}master/barang/edit/" + id,
            type: "GET",
            dataType: "JSON",
            success: function (data) {
                $('[name="id_barang"]').val(data.id_barang);
                $('[name="nama_barang"]').val(data.nama_barang);
                $('[name="nama_barang_unit"]').val(data.nama_barang);
                $('[name="satuan"]').val(data.satuan);
                $('#deskripsi').code(data.deskripsi);
                $('[name="merek"]').val(data.id_merek);
                $('[name="kategori"]').val(data.id_kategori);
                $('[name="ukuran"]').val(data.ukuran);
                data.aktif == 1 ? $('#aktif').bootstrapToggle('on') : $('#aktif').bootstrapToggle('off');

                clearFileInput('gambar');
                foto = data.gambar == '' ? 'no_image.png' : data.gambar;
                foto_barang_unit = data.gambar == '' ? 'no_image.png' : data.gambar;
                image_url = '{base_url}asset/image/produk/' + foto;
                $.get(image_url)
                        .done(function () {
                            $('#barang_img').attr('src', image_url);
                        })
                        .fail(function () {
                            $('#barang_img').attr('src', '{base_url}asset/image/produk/no_image.png');
                        });
                cari_barang.close();
            },
            error: function (jqXHR, textStatus, errorThrown)
            {
                console.log(errorThrown);
            }
        });            
    }    
    
</script>