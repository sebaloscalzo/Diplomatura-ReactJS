function handleSubmit(e) {

    $('#resultado')[0].innerHTML = '<h6>Datos del formulario: <br></h6>';

    var form = $('form').serialize().split('&');
    for (var i = 0; i < form.length; i++) {
        $('#resultado')[0].innerHTML += form[i].replace('%40','@') + '<br>';
    }
}