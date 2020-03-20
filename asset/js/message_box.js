function msgbox_warning(msg) {
    var pesan = new BootstrapDialog({
        type: BootstrapDialog.TYPE_WARNING,
        title: 'Error',
        message: '<font color="red">' + msg + '</font>',
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

function msgbox_info(msg) {
    var pesan = new BootstrapDialog({
        type: BootstrapDialog.TYPE_INFO,
        title: 'Informasi',
        message: '<font color="black">' + msg + '</font>',
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

function msgbox_success(msg) {
    var pesan = new BootstrapDialog({
        type: BootstrapDialog.TYPE_SUCCESS,
        title: 'Informasi',
        message: '<font color="green">' + msg + '</font>',
        buttons: [
            {
                label: 'Oke',
                action: function (dialogRef) {
                    dialogRef.close();
                }
            }
        ]
    });
    pesan.open();
}

function msgbox_delete(url, id, refreshCallback) {
    BootstrapDialog.show({
        type: BootstrapDialog.TYPE_DANGER,
        title: 'Hapus',
        message: 'Yakin ingin menghapus data ini?',
        buttons: [{
                icon: 'glyphicon glyphicon-ban-circle',
                label: 'Hapus',
                cssClass: 'btn-warning',
                action: function (dialogItself) {
                    $.ajax({
                        url: url + id,
                        type: "POST",
                        dataType: "JSON",
                        success: function (data)
                        {
                            if (data.success) {
                                dialogItself.close();
                                msgbox_success("Berhasil dihapus.");
                            } else {
                                msgbox_warning(data.msg);
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

function msgbox_image(title, img) {
    var pesan = new BootstrapDialog({
        type: BootstrapDialog.TYPE_INFO,
        title: title,
        message: '<img src="' + img + '" alt="' + title + '">',
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