var alumnos = [
    { nombre: 'Juan Gomez', nota: 7 }, 
    { nombre: 'Pedro Rodriguez', nota: 4 }, 
    { nombre: 'Roxana García', nota: 8 }, 
    { nombre: 'Luciano Lopez', nota: 5 }, 
    { nombre: 'Fernanda Gimenez', nota: 6 }, 
    { nombre: 'Florencia Martinez', nota: 10 }, 
    { nombre: 'Raul Sanchez', nota: 7 }, 
    { nombre: 'Sandra Figueroa', nota: 8 }
];

function applyColor(color) {
    if (color != 'white') {
        $("main").css('color', 'white');
    }
    else {
        $("main").css('color', 'black');
    }

    $("body").css('background-color', color);
}

function chars() {
    $('#lblIngresados')[0].innerHTML = $("#text1")[0].value.length;
}

function process() {
    var i = 1;
    alumnos.forEach(element => {
        $('#estado' + i)[0].innerHTML = element.nota >= 7 ? 'Aprobado' : 'Reprobado';
        i++;
    });
}