<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Modelo.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
﻿<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- BOOTSTRAP v5.3 alpha -->
        <link 
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" 
            rel="stylesheet" 
            integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" 
            crossorigin="anonymous"
            >
        <title>Usuarios</title>
    </head>
    <body>

        <div class="container">
            <h1 class="text-center mt-2">Lista de Usuarios</h1>
            <div>
                <a class="btn btn-success" href="principal.jsp">Volver</a>
            </div>
            <br>
            <br>

            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">NOMBRE</th>
                        <th class="text-center">EMAIL</th>
                    </tr>
                </thead>

                <tbody>
                    <!-- Iterando la lista de usuarios-->
                <c:forEach var="usuario" items="${listarUsuarios}" varStatus="status" >
                    <tr>
                        <td> ${status.count} </td>
                        <td> ${usuario.nombre} ${usuario.apellido} </td>
                        <td> ${usuario.email} </td>
                    </tr>
                </c:forEach>
                <%-- 
                <%
                    List<Usuario> listaUsuario = (List<Usuario>) request.getAttribute("listaUsuarios");
                    for (Usuario usuario : listaUsuario) {
                %>
                <tr>
                    <td class="text-center"><%= usuario.getIdUsuario()%></td>
                    <td class="text-center"><%= usuario.getNombre()%></td>
                    <td class="text-center"><%= usuario.getEmail()%></td>
                </tr>
                <%
                    }
                %>
                --%>
                </tbody>
            </table>

        </div>
    </body>
</html>
