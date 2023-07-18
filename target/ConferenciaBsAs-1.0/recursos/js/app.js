function calcularDescuento() {
    // Obtener los valores de entrada del usuario
    var cantidad = parseInt(document.getElementById('cantidad').value);
    var categoria = document.getElementById('categoria').value;
    var descuento;

    // Validando las categorias
    if (categoria === 'estudiante') {
        descuento = 0.8;
    } else if (categoria === 'trainee') {
        descuento = 0.5;
    } else if (categoria === 'junior') {
        descuento = 0.15;
    }

    // Calculando el total con el descuento incluido
    var total = cantidad * 200 * (1 - descuento);

    // Mostrando resultado en pantalla
    document.getElementById('total').textContent = 'Total a pagar: $ ' + total.toFixed(2);
}

// Sanitizando el contenido del resultado a pagar 
function borrarTotal() {
    document.getElementById('total').textContent = 'Total a pagar: $ ';
}

// Quitando Flechas de incremento y decremento en los inputs number
function quitarFlechas(event) {
    event.preventDefault();
}