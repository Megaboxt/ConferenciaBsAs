<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<section id="usuarios">
    <div class="container">
        <div class="row">
            <div class="col-md-9 mt-4 text-center">
                <div class="card">

                    <div class="card-header">
                        <h4>Listado de Usuarios</h4>
                    </div>
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Nombre</th>
                                <th>Email</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Iterando la lista de usuarios-->
                            <c:forEach var="usuario" items="${usuarios}" varStatus="status" >
                                <tr>
                                    <td> ${status.count} </td>
                                    <td> ${usuario.nombre} ${usuario.apellido} </td>
                                    <td> ${usuario.email} </td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/LoginControlador?accion=editar&idUsuario=${usuario.idUsuario}"
                                           class="btn btn-secondary" >
                                            <i class="fas fa-angle-double-right"></i> Editar
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Tarjeta Total de usuarios -->
            <div class="col-md-3 mt-4">
                <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Total Usuarios</h3>
                        <h4 class="display-4">
                            <i class="fas fa-users"></i> ${totalUsuarios}
                        </h4>
                    </div>
                </div>        
            </div>

        </div>
    </div>
</section>

<!-- Agregar usuario MODAL -->
<jsp:include page="/WEB-INF/paginas/administrador/agregarUsuario.jsp"/>

<!-- Editar usuario MODAL  -->
