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

        <%-- Header --%>
        <jsp:include page="/WEB-INF/paginas/comunes/cabecero.jsp"/>

        <%-- Navegacion --%>
        <jsp:include page="/WEB-INF/paginas/comunes/btn-navbar.jsp"/>

        <%-- Lista de Usuarios --%>
        <jsp:include page="/WEB-INF/paginas/administrador/listaUsuarios.jsp"/>

        <%-- Footer --%>
        <jsp:include page="/WEB-INF/paginas/comunes/footer.jsp"/>

        <%-- Bootstrap v4.3.1 JS --%>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>
