
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Codo a Codo 4.0</title>
        <!-- BOOTSTRAP v5.3 alpha -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="recursos/css/style.css">
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
                        <a class="nav-link text-secondary text-light" href="#">La conferencia</a>
                        <a class="nav-link text-secondary" href="${pageContext.request.contextPath}/ServletControlador?accion=listarUsuarios">Los oradores</a>
                        <a class="nav-link text-secondary" href="#scroll-lugar">El lugar y la fecha</a>
                        <a class="nav-link text-secondary" href="registrate.jsp">Conviértete en orador</a>
                        <a class="nav-link text-verde-pro mb-3" href="comprar.jsp">Comprar tickets</a>
                    </div>
                </div>
            </div>
        </nav>

        <!-- Hero -->
        <header class="p-0 hero">
            <div class="contenido-hero d-flex">
                <div class="container d-flex justify-content-end align-items-center m-top-10">
                    <div class="col-6 text-end">
                        <h1>Conf Bs As</h1>
                        <p class="fs-2 lh-sm mb-4">Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra
                            comunidad el conocimiento y experiencia de los expertos que están creando el futuro de internet. Ven a
                            conocer miembros del evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos
                            para ti. Te esperamos!
                        </p>
                        <a href="registrate.jsp" class="btn btn-outline-light btn-lg p-3 fs-3 fw-semibold me-3">Quiero ser orador</a>
                        <a href="comprar.jsp" class="btn btn-success verde-pro btn-lg p-3 fs-3">Comprar tickets</a>
                    </div>
                </div>
            </div>
        </header>

        <!-- Contenido principal -->
        <main class="container grid p-4 mb-4" id="scroll-oradores">

            <div class="row">
                <p class="text-uppercase text-center">Conoce a los</p>
                <p class="fs-1 fw-semibold text-uppercase text-center">Oradores</p>
            </div>

            <!-- Cards -->
            <div class="row justify-content-center gap-5 mt-5">

                <!-- Primer card -->
                <div class="card m-0 p-0" style="width: 30rem;">
                    <img src="recursos/img/steve.jpg" class="card-img-top" alt="Steve Jobs">
                    <div class="card-body p-4">
                        <p class="mt-4"><span class="btn btn-warning fs-5 fw-bold">JavaScript</span> <span
                                class="btn btn-primary fs-5 fw-bold">React</span></p>
                        <h3 class="mt-2">Steve Jobs</h3>
                        <p class="mt-3 card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum, labore magni aliquam
                            eligendi accusamus cum culpa deleniti minima sint aliquid! Modi debitis reprehenderit doloribus rem dolorem
                            iusto praesentium, ullam quasi.</p>
                    </div>
                </div>

                <!-- Segunda card -->
                <div class="card m-0 p-0" style="width: 29rem;">
                    <img src="recursos/img/bill.jpg" class="card-img-top" alt="Bill Gates">
                    <div class="card-body p-4">
                        <p class="mt-4"><span class="btn btn-warning fs-5 fw-bold">JavaScript</span> <span
                                class="btn btn-primary fs-5 fw-bold">React</span></p>
                        <h3 class="mt-2">Bill Gates</h3>
                        <p class="mt-3 card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum, labore magni aliquam
                            eligendi accusamus cum culpa deleniti minima sint aliquid! Modi debitis reprehenderit doloribus rem dolorem
                            iusto praesentium, ullam quasi.</p>
                    </div>
                </div>

                <!-- Tercer card -->
                <div class="card m-0 p-0" style="width: 29rem;">
                    <img src="recursos/img/ada.jpeg" class="card-img-top" alt="Ada Lovelace">
                    <div class="card-body p-4">
                        <p class="mt-4"><span class="btn btn-secondary fs-5 fw-bold">Negocios</span> <span
                                class="btn btn-danger fs-5 fw-bold">Startups</span></p>
                        <h3 class="mt-2">Ada Lovelace</h3>
                        <p class="mt-3 card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Rerum, labore magni aliquam
                            eligendi accusamus cum culpa deleniti minima sint aliquid! Modi debitis reprehenderit doloribus rem dolorem
                            iusto praesentium, ullam quasi.</p>
                    </div>
                </div>

            </div>

        </main>

        <!-- Bs As Octubre -->
        <section class="container-fluid mb-5" id="scroll-lugar">

            <div class="row block bg-dark">
                <div class="col p-0">
                    <img src="recursos/img/honolulu.jpg" class="img-fluid" alt="Playa">
                </div>

                <div class="col p-4">
                    <h4 class="text-light fs-1 fw-bold">Bs As - Octubre</h4>
                    <p class="text-light">Buenos Aires es la provincia y localidad más grande del estado de Argentina, en los
                        Estados Unidos. Honolulu es la ciudad más sureña de entre las principalas ciudades estadounidenses. Aunque el
                        nombre de Honolulu se refiere al área urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de
                        Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad (aproximadamente de 600
                        km<sup>2</sup> de superficie).</p>
                    <a href="#" class="btn btn-outline-light btn-lg fs-4 mt-4">Conocé más</a>
                </div>
            </div>
        </section>

        <!-- Conviertete en un Orador -->
        <section class="container mb-5 " id="scroll-conviertete">

            <div class="row">

                <div class="text-center">
                    <p class="text-uppercase fs-5">Conviértete en un</p>
                    <p class="fs-1 fw-semibold text-uppercase mb-3">Orador</p>
                    <p>Anótate como orador para dar una <span class="dotted">charla ignite</span>. Cuéntanos de qué queres hablar!
                    </p>
                </div>

                <!-- Formulario -->
                <form class="formulario mt-4" action="">

                    <div class="contenedor-campos">
                        <div class="campos-orador mb-4 mgb-0">
                            <input type="email" class="form-control fs-4 p-3" id="exampleFormControlInput1" placeholder="Nombre">
                        </div>
                        <div class="campos-orador">
                            <input type="email" class="form-control fs-4 p-3" id="exampleFormControlInput1" placeholder="Apellido">
                        </div>

                        <div class="campos-orador mb-4">
                            <label for="exampleFormControlTextarea1" class="form-label"></label>
                            <textarea class="form-control no-resize fs-4 p-3 mb-1" id="exampleFormControlTextarea1" rows="6"
                                      placeholder="Sobre qué quieres hablar?"></textarea>
                            <p class="fs-5 text-body-tertiary">Recuerda incluir un título para tu charla</p>
                        </div>
                        <div class="campos-orador">
                            <input type="submit" class="btn btn-success w-100 verde-claro p-3 fs-3 fw-bold" value="Enviar">
                        </div>
                    </div>

                </form>

            </div>
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
        <script src="recursos/js/app.js"></script>
    </body>

</html>
