<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Bootstrap v4.3.1 -->
        <link 
            rel="stylesheet" 
            href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
            integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
            crossorigin="anonymous"
            >
        <%-- Font Awesome --%>
        <script src="https://kit.fontawesome.com/402fbcc265.js" crossorigin="anonymous"></script>
    </head>

    <body>
        <header id="main-header" class="py-2 bg-info text-white">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h1>
                            <i class="fas fa-cog"></i> Editar Usuarios</h1>
                    </div>
                </div>
            </div>
        </header>

        <div class="container">
            <div class="col-md-3 p-1">
                <a href="${pageContext.request.contextPath}/LoginControlador?accion=iniciarSesion" class="btn btn-ligth">
                    <i class="fas fa-arrow-left"></i> Regresar al inicio
                </a>
            </div>
        </div>

        <div class="container">
            <div class="col-md-6 mt-4">
                <%-- Formulario --%>
                <form action="${pageContext.request.contextPath}/LoginControlador?accion=modificar&idUsuario=${usuario.idUsuario}"
                      method="POST" class="was-validated">

                    <div class="form-group">
                        <label for="nombre">Nombre</label>
                        <input type="text" class="form-control" id="nombre" name="nombre" value="${usuario.nombre}">
                    </div>
                    <div class="form-group">
                        <label for="apellido">Apellido</label>
                        <input type="text" class="form-control" id="apellido" name="apellido" value="${usuario.apellido}">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email" value="${usuario.email}">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password" value="${usuario.password}">
                    </div>

                    <%-- Botones --%>
                    <div class="">
                        <button class="btn btn-success" type="submit">
                            <i class="fas fa-check"></i> Guardar
                        </button>

                        <a href="${pageContext.request.contextPath}/LoginControlador?accion=eliminar&idUsuario=${usuario.idUsuario}"
                           class="btn btn-danger">
                            <i class="fas fa-trash"></i> Eliminar
                        </a>
                    </div>
                </form>
                <%-- FIN FORMULARIO --%>
            </div>
        </div>

        <footer id="pie-pagina" class="bg-warning text-white mt-5 p-5">
            <div class="container">
                <div class="col">
                    <p class="lead text-center">
                        &copy; Gonzalo Duarte - Bs As Argentina
                    </p>
                </div>
            </div>
        </footer>

        <%-- Bootstrap v4.3.1 JS --%>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
    </body>
</html>