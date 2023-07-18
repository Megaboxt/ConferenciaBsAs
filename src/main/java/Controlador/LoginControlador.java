package Controlador;

import Config.UsuarioDAO;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginControlador", urlPatterns = {"/LoginControlador"})
public class LoginControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        /* Obteniendo valor del parametro accion en formulario log in */
        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "editar":
                    this.editarUsuario(request, response);
                    break;
                case "eliminar":
                    this.eliminarUsuario(request, response);
                    break;
                default:
                    this.iniciarSesion(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");
        if (accion != null) {
            switch (accion) {
                case "iniciarSesion":
                    this.iniciarSesion(request, response);
                    break;
                case "insertar":
                    this.insertarUsuario(request, response);
                    break;
                case "modificar":
                    this.modificarUsuario(request, response);
                    break;
                default:
                    this.accionDefault(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    private void accionDefault(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("principal.jsp").forward(request, response);
    }

    private void iniciarSesion(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Usuario> usuarios = new UsuarioDAO().listar();
        HttpSession sesion = request.getSession();
        sesion.setAttribute("usuarios", usuarios);
        sesion.setAttribute("totalUsuarios", usuarios.size());
        // request.getRequestDispatcher("admin.jsp").forward(request, response);
        response.sendRedirect("admin.jsp");
    }

    /* METODOS CRUD - DAO */
    private void insertarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //recuperamos los valores del formulario agregarUsuario
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        // Creando el objeto usuario (modelo)
        Usuario usuario = new Usuario(nombre, apellido, email, password);
        // Insertamos el nuevo objeto en la BD
        int nuevoRegistro = new UsuarioDAO().insertar(usuario);
        System.out.println("nuevoRegistro = " + nuevoRegistro);
        // Redirigimos hacia accion por default
        this.iniciarSesion(request, response);
    }

    private void modificarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Recuperando los valores del formulario editarUsuario
        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Creando el objeto cliente (modelo)
        Usuario usuario = new Usuario(idUsuario, nombre, apellido, email, password);
        
        // Modificando el objeto en la BD
        int registrosModificados = new UsuarioDAO().actualizar(usuario);
        System.out.println("usuario = " + usuario);
        System.out.println("registrosModificados = " + registrosModificados);
        
        // Redirecciona 
        this.iniciarSesion(request, response);
    }
    
    private void editarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Recupera los datos del id seleccionado
        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
        /*
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        */
        Usuario usuario = new UsuarioDAO().encontrar(new Usuario(idUsuario));
        
        
        // System.out.println("usuario" + usuario);
        
        request.setAttribute("usuario", usuario);
        
        String jspEditar = "/WEB-INF/paginas/administrador/editarUsuario.jsp";
        request.getRequestDispatcher(jspEditar).forward(request, response);
        
        /*
        System.out.println("idUsuario = " + idUsuario);
        System.out.println("idUsuario = " + nombre);
        System.out.println("idUsuario = " + apellido);
        System.out.println("idUsuario = " + email);
        System.out.println("idUsuario = " + password);
        */
    }

    private void eliminarUsuario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // recuperando valores del formulario
        int idUsuario = Integer.parseInt(request.getParameter("idUsuario"));
        // Creando objeto
        Usuario usuario = new Usuario(idUsuario);
        // Eliminando registro de la BD
        int registroEliminado = new UsuarioDAO().eliminar(usuario);
        System.out.println("registroEliminado = " + registroEliminado);
        //Redirigimos hacia accion por default
        this.iniciarSesion(request, response);
    }
    /* FIN METODO ELIMINAR USUARIO*/
}
