<form action="${pageContext.request.contextPath}/LoginControlador?accion=modificar&idUsuario=${usuario.idUsuario}" 
      method="POST" class="">
    
    <label>Nombre</label>
    <br>
    <br>
    <input type="text" name="nombre" value="${usuario.nombre}">
    <label>Nombre</label>
    <br>
    <br>
    <input type="text" name="apellido" value="${usuario.apellido}">
    <label>Nombre</label>
    <br>
    <br>
    <input type="text" name="email" value="${usuario.email}">
    <label>Nombre</label>
    <br>
    <br>
    <input type="text" name="password" value="${usuario.password}">
</form>



<%-- 

<a href="${pageContext.request.contextPath}/LoginControlador?accion=editar&idUsuario=${usuario.idUsuario}"
                   class="btn btn-secondary">
                    <i class="fas fa-angle-double-right"></i> Editar
                </a>
<section id="actions" class="py-4 mb-4 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <a href="index.jsp" class="btn btn-ligth btn-block">
                    <i class="fas fa-arrow-left"></i> Regresar al inicio
                </a>
            </div>
            <div class="col-md-3">
                <button type="submit" class="btn btn-success btn-block">
                    <i class="fas fa-check"></i> Guardar Usuario
                </button>
            </div>
            <div class="col-md-3">
                <a href="${pageContext.request.contextPath}/LoginControlador?accion=eliminar&idUsuario=${usuario.idUsuario}"
                   class="btn btn-danger btn-block">
                    <i class="fas fa-trash"></i> Eliminar Usuario
                </a>
            </div>
        </div>
    </div>
</section>
--%>