function distanciaChanged(e) {
    let transportes = ['A PIE', 'BICICLETA', 'COLECTIVO', 'AUTO', 'AVIÓN'];
    $('#lblSelected')[0].innerHTML = e.srcElement.selectedOptions[0].text;
    $('#lblTransporte')[0].innerHTML = transportes[e.srcElement.selectedIndex-1];
}

function process(e) {
    let form = $('form').serialize().split('&');
    let numbers = [];
    let value = 0;

    $('#lblDatos')[0].innerHTML = '[ ';
    for (var i = 0; i < form.length; i++) 
    {
        value = parseInt(form[i].split('=')[1]);

        if (!isNaN(value)) {
            $('#lblDatos')[0].innerHTML += value;
            numbers.push(value);

            if (form[i].split('=')[1] != '') {
                $('#lblDatos')[0].innerHTML += ', ';
            }
        }
    }

    if ($('#lblDatos')[0].innerHTML.lastIndexOf(', ') > -1) {
        $('#lblDatos')[0].innerHTML = $('#lblDatos')[0].innerHTML.substring(0, $('#lblDatos')[0].innerHTML.lastIndexOf(', '));
    }
    
    $('#lblDatos')[0].innerHTML += ' ]';

    if (numbers.length > 0) {
        $('#lblMayor')[0].innerHTML = getMax(numbers);    
    }
}

function getMax(numbers) {
    const max = Math.max(...numbers);
    const index = numbers.indexOf(max);
    return numbers[index];
}

function reset2() {
    $('form')[0].reset();
    $('#lblDatos')[0].innerHTML = '[ ]';
    $('#lblMayor')[0].innerHTML = 'Ninguno';
}