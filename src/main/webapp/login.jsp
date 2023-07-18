
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>Iniciar Sesión</title>
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Montserrat:400,700'>
        <!-- BOOTSTRAP v5.3 alpha -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="recursos/css/form.css">
    </head>

    <body>

        <!-- Barra de navegacion -->
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

        <!-- Formulario Log in -->
        <div class="login-container">

            <form action="${pageContext.request.contextPath}/LoginControlador?accion=iniciarSesion" 
                  method="POST" id="form-login" name="iniciar-sesion" class="form-login">

                <ul class="login-nav text-center">
                    <li class="login-nav__item active">
                        <a href="">Iniciar Sesión</a>
                    </li>
                </ul>

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


                <div>
                    <label for="sesion" class="login__label--checkbox">
                        <input id="sesion" name="sesion" type="checkbox" class="login__input--checkbox" />
                        Mantener sesion abierta
                    </label>
                </div>


                <div>
                    <button type="submit" class="login__submit opacity-25" disabled>Iniciar Sesion</button>
                </div>

                <a href="#" class="login__forgot">Olvidaste la contraseña ?</a>
                <a href="registrate.jsp" class="login__forgot">No tenes cuenta ? Registrate</a>
            </form>


        </div>

        <!-- Footer -->
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
        <script src="recursos/js/formLogin.js"></script>

    </body>

</html>
