<%-- 
    Document   : comprar
    Created on : 11 jul. 2023, 03:04:12
    Author     : black
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Conferencia Buenos Aires</title>
        <!-- BOOTSTRAP v5.3 alpha -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="recursos/css/style.css">
    </head>

    <body>

        <!-- Barra de navegacion -->
        <nav class="navbar navbar-expand-lg p-4 bg-dark" data-bs-theme="dark">
            <div class="container">

                <a href="principal.jsp">
                    <p class="text-light justify-content-start" aria-current="page">Conf Bs As</p>
                </a>


                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup"
                        aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="justify-content-end collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav hover">
                        <a class="nav-link text-secondary" href="principal.jsp">La conferencia</a>
                        <a class="nav-link text-secondary" href="${pageContext.request.contextPath}/ServletControlador?accion=listarUsuarios">Los oradores</a>
                        <a class="nav-link text-secondary" href="#scroll-lugar">El lugar y la fecha</a>
                        <a class="nav-link text-secondary" href="registrate.jsp">Conviértete en orador</a>
                        <a class="nav-link text-light mb-3" href="comprar.jsp">Comprar tickets</a>
                    </div>
                </div>
            </div>
        </nav>

        <!-- Cards Cursos -->
        <section class="container p-5">

            <div class="row justify-content-center gap-2 ">
                <div class="card border-primary border-none text-center" style="width: 20rem;">
                    <div class="card-body p-4">
                        <h3 class="mt-2">Estudiante</h3>
                        <p class="mt-3 card-text">Tienen un descuento</p>
                        <p class="bold m-3">80%</p>
                        <p class="fs-5 text-body-tertiary">* presentar documentación</p>
                    </div>
                </div>

                <div class="card border-info text-center" style="width: 20rem;">
                    <div class="card-body p-4">
                        <h3 class="mt-2">Trainee</h3>
                        <p class="mt-3 card-text">Tienen un descuento</p>
                        <p class="bold m-3">50%</p>
                        <p class="fs-5 text-body-tertiary">* presentar documentación</p>
                    </div>
                </div>

                <div class="card border-warning text-center" style="width: 20rem;">
                    <div class="card-body p-4">
                        <h3 class="mt-2">Junior</h3>
                        <p class="mt-3 card-text">Tienen un descuento</p>
                        <p class="bold m-3">15%</p>
                        <p class="fs-5 text-body-tertiary">* presentar documentación</p>
                    </div>
                </div>

                <div class="text-center">
                    <p class="text-uppercase fs-5">Venta</p>
                    <p class="fs-1 fw-semibold text-uppercase">Valor de Ticket $200</p>
                </div>
            </div>

            <!-- Formulario -->
            <form class="formulario-tickets p-3">

                <fieldset>
                    <div class="contenedor-campos">

                        <div class="campo">
                            <input type="text" class="form-control fs-4 p-3 mb-3" id="nombre" placeholder="Nombre" required>
                        </div>

                        <div class="campo">
                            <input type="text" class="form-control fs-4 p-3 mb-3" id="apellido" placeholder="Apellido" required>
                        </div>

                        <div class="campo">
                            <input type="email" class="form-control fs-4 p-3 mb-3" id="correo" placeholder="Correo" required>
                        </div>

                        <div class="campo">
                            <label for="cantidad" class="mb-3">Cantidad</label>
                            <input type="number" min="1" id="cantidad" class="form-control fs-4 p-3 mb-3" placeholder="cantidad"
                                   required>
                        </div>

                        <div class="campo">
                            <label for="categoria" class="mb-3">Categoría</label>
                            <select id="categoria" class="form-select fs-4 p-3 mb-4" required>
                                <option value="estudiante">Estudiante</option>
                                <option value="trainee">Trainee</option>
                                <option value="junior">Junior</option>
                            </select>
                        </div>
                        <div class="campo">
                            <p class="form-control box-total fs-4 p-4 mb-3" id="total">Total a pagar: $ </p>
                        </div>

                        <div class="campo mb-3">
                            <button type="button" class="btn btn-success w-100 verde-claro p-3 fs-3 fw-bold"
                                    onclick="borrarTotal()">Borrar</button>
                        </div>
                        <div class="campo">
                            <button type="button" class="btn btn-success w-100 verde-claro p-3 fs-3 fw-bold"
                                    onclick="calcularDescuento()">Resumen</button>
                        </div>
                    </div> <!-- Termina contenedor-campo -->

                </fieldset>
            </form>

        </section>

        <!-- Pie de pagina -->
        <footer class="container-fluid bg-footer fw-normal">

            <div class="container text-center">
                <div class="d-flex column justify-content-evenly align-items-center hover-footer pt-5 pb-4">
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
        <script src="../recursos/js/app.js"></script>
    </body>

</html>
