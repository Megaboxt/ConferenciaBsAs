
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Crear Cuenta</title>
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Montserrat:400,700'>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="recursos/css/form.css">
    </head>

    <body>
        
        <%-- NAVEGACION --%>
        <nav class="navbar navbar-expand-lg bg-dark" data-bs-theme="dark">
            <div class="container">
                <a class="navbar-brand me-0" href="principal.jsp">
                    <img src="recursos/img/codoacodo.png" width="180" height="100" alt="Codo a Codo">
                </a>
                <p class="text-light justify-content-start" aria-current="page">Conf Bs As</p>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                        aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="justify-content-end collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav hover">
                        <a class="nav-link text-secondary" href="principal.jsp">La conferencia</a>
                        <a class="nav-link text-secondary" href="${pageContext.request.contextPath}/ServletControlador?accion=listarUsuarios">Los oradores</a>
                        <a class="nav-link text-secondary" href="#scroll-lugar">El lugar y la fecha</a>
                        <a class="nav-link text-secondary text-light" href="registrate.jsp">Conviértete en orador</a>
                        <a class="nav-link text-verde-pro mb-3" href="comprar.jsp">Comprar tickets</a>
                    </div>
                </div>
            </div>
        </nav>

        <%-- FORMULARIO --%>
        <div class="login-container">

            <form name="form-registrate" action="${pageContext.request.contextPath}/ServletControlador?accion=insertar" 
                  method="POST" id="form-registro" class="form-login">

                <ul class="login-nav text-center">
                    <li class="login-nav__item active">
                        <a href="#">Crear Cuenta</a>
                    </li>
                </ul>

                <div>
                    <label for="nombre" class="login__label">
                        Nombre
                    </label>
                    <input class="login__input" type="text" id="nombre" name="nombre" />    
                </div>

                <div>
                    <label for="apellido" class="login__label">
                        Apellido
                    </label>
                    <input class="login__input" type="text" id="apellido" name="apellido" />    
                </div>


                <div>
                    <label for="email" class="login__label">
                        Email
                    </label>
                    <input class="login__input" type="email" id="email" name="email" />
                </div>


                <div>
                    <label for="password" class="login__label">
                        Password
                    </label>
                    <input class="login__input" type="password" id="password" name="password" />
                </div>


                <button class="login__submit opacity-25" type="submit" disabled>Crear</button>

                <a class="login__forgot" href="login.jsp">Ya tenes una cuenta ? Inicia sesion..</a>

            </form>

        </div>

        <%-- footer --%>
        <footer class="container-fluid bg-footer fw-normal">

            <div class="container text-center">
                <div class="d-flex column justify-content-evenly align-items-center hover-footer mt-5 pt-3">
                    <a href="#" class="text-light">Preguntas <br> Frecuentes</a>
                    <a href="#" class="text-light">Contáctanos</a>
                    <a href="#" class="text-light">Prensa</a>
                    <a href="#" class="text-light">Conferencias</a>
                    <a href="#" class="text-light">Términos y <br> Condiciones</a>
                    <a href="#" class="text-light">Privacidad</a>
                    <a href="#" class="text-light">Estudiantes</a>
                </div>
                <p class="text-secondary mt-5"> &copy; Gonzalo Duarte - Bs As Argentina</p>
            </div>
        </footer>

        <!-- BOOTSTRAP v5.3 alpha JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
        <script src="recursos/js/formRegistro.js"></script>

    </body>

</html>
