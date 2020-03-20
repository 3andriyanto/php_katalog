
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Master
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-files-o"></i> Home</a></li>
        <li class="active">Hak Akses</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Hak Akses</h3>
                </div><!-- /.box-header -->
                <div class="box-body">
                    <button class="btn btn-sm btn-success" onclick="tambah()" style="margin-bottom: 10px;"><i class="glyphicon glyphicon-plus"></i> Tambah</button>
                    <table id="table_hak_akses" class="display responsive nowrap table table-striped table-bordered" cellspacing="0" width="100%">
                        <thead>
                            <tr>
                                <th>Action</th>
                                <th>User</th>
                                <th>Kode Transaksi</th>
                                <th>Nama Transaksi</th>
                                <th>Tambah</th>
                                <th>Ubah</th>
                                <th>Hapus</th>
                                <th>Lihat</th>
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
                    <h3 class="modal-title">Hak Akses Form</h3>
                </div>
                <div class="modal-body form">
                    <form action="#" id="form" class="form-horizontal">
                        <input type="hidden" value="" name="id_hak_akses"/> 
                        <div class="form-body">
                            <div class="form-group">
                                <label class="control-label col-md-3">Nama User</label>
                                <div class="col-md-9">
                                    <select id="user" name="user" class="form-control selectpicker" data-live-search="true">
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3">Transaksi</label>
                                <div class="col-md-9">
                                    <select id="transaksi" name="transaksi" class="form-control selectpicker" data-live-search="true">
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Tambah</label>
                                <div class="col-sm-9">
                                    <input id="tambah" name="tambah" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-onstyle="success" data-offstyle="danger" data-size="small">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Ubah</label>
                                <div class="col-sm-9">
                                    <input id="ubah" name="ubah" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-onstyle="success" data-offstyle="danger" data-size="small">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Hapus</label>
                                <div class="col-sm-9">
                                    <input id="hapus" name="hapus" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-onstyle="success" data-offstyle="danger" data-size="small">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3">Lihat</label>
                                <div class="col-sm-9">
                                    <input id="lihat" name="lihat" type="checkbox" data-toggle="toggle" data-on="Ya" data-off="Tidak" data-onstyle="success" data-offstyle="danger" data-size="small">
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
    var table_hak_akses;

    $(document).ready(function () {
        
        $('#tambah').bootstrapToggle();
        $('#ubah').bootstrapToggle();
        $('#hapus').bootstrapToggle();
        $('#lihat').bootstrapToggle();
        
        table_hak_akses = $('#table_hak_akses').DataTable({
            processing: true,
            serverSide: true,
            responsive: true,
            ajax: {
                url: "{base_url}master/hak_akses/ajax_list",
                type: "POST"
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
                {"sClass": "center"},
                {"sClass": "center"},
                {"sClass": "center"},
                {"sClass": "center"}
            ]
        });
        
        $('.selectpicker').selectpicker({size: 10});
       
    });
    
//    function reload_table() {
//        table_hak_akses.ajax.reload(null, false);
//    }

</script>
    

