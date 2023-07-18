/* variables */
const inputNombre = document.querySelector('#nombre');
const inputApellido = document.querySelector('#apellido');
const inputEmail = document.querySelector('#email');
const inputPass = document.querySelector('#password');
const btnSubmit = document.querySelector('#form-registro button[type="submit"]');

/* Iniciando objetos */
const formRegistro = {
    nombre: '',
    apellido: '',
    email: '',
    password: ''
};

cargarListeners();
function cargarListeners() {
    inputNombre.addEventListener('input', validar);
    inputApellido.addEventListener('input', validar);
    inputEmail.addEventListener('input', validar);
    inputPass.addEventListener('input', validar);
}

function validar(e) {
    // trim(). elimina los espacios en blanco en ambos extremos del string.
    if (e.target.value.trim() === '') {
        mostrarAlerta(`El campo ${e.target.id} es obligatorio`, e.target.parentElement);
        // Reinicia el objeto global y despues comprueba el campo
        formRegistro[e.target.name] = '';
        comprobarRegistro();
        return;
    }

    if (e.target.id === 'email' && !validarEmail(e.target.value)) {
        mostrarAlerta('El email no es valido', e.target.parentElement);
        // Reinicia el objeto
        formRegistro[e.target.name] = '';
        comprobarRegistro();
        return;
    }
    
    comprobarRegistro();

    // Remueve la alerta generada 
    limpiarAlerta(e.target.parentElement);

    // Asignar los valores
    formRegistro[e.target.name] = e.target.value.trim().toLowerCase();


    console.log(e.target.id);
}// FIN FUNCION VALIDAR

function mostrarAlerta(mensaje, referencia) {
    limpiarAlerta(referencia);

    const error = document.createElement('P');
    error.textContent = mensaje;
    error.classList.add('text-white', 'pb-3', 'text-uppercase', 'text-center');

    // Agregando HTML al input
    referencia.appendChild(error);
    /*
     setTimeout(() => {
     error.remove();
     }, 5000); */
}

function limpiarAlerta(referencia) {
    // Toma la referencia desde donde salio el cartel y comprueba
    const alerta = referencia.querySelector('P');
    if (alerta) {
        alerta.remove();
    }

}

function validarEmail(email) {
    // Expresion Regular
    const regex = /^\w+([.-_+]?\w+)*@\w+([.-]?\w+)*(\.\w{2,10})+$/;
    const resultado = regex.test(email);
    return resultado;
}

function comprobarRegistro() {
    if (formRegistro['nombre'] === '' || formRegistro['apellido'] === '' || formRegistro['email'] === '' || formRegistro['password'] === '') {
        btnSubmit.classList.add('opacity-25');
        btnSubmit.disabled = true;
        return;
    }
    btnSubmit.classList.remove('opacity-25');
    btnSubmit.disabled = false;
}