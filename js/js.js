$( function() {
    $('#add_guest').click( function() {
        var dtime = $('#dtime').val();
        var name = $('#name').val();
        var body = $('#body').val();
        $.ajax({
            url: "/test.kelnik/index.php",
            method: 'post',
            dataType: 'html',
            data: {
                dtime: dtime,
                name: name,
                body: body,
                add_guest: true
            },
            success: function(data){

            }
        })
    })
});