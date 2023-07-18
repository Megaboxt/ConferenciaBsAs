package Controlador;

import Config.UsuarioDAO;
import Modelo.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletControlador", urlPatterns = {"/ServletControlador"})
public class ServletControlador extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String accion = request.getParameter("accion");

        if (accion != null) {
            if (accion.equals("listarUsuarios")) {
                this.listarUsuarios(request, response);
            }
        } else {
            this.accionDefault(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String accion = request.getParameter("accion");
        
        if(accion != null) {
            if(accion.equals("insertar")) {
                this.insertarUsuario(request, response);
            } else {
                this.accionDefault(request, response);
            }
        }
    }

    /* METODOS DE AYUDA */
    private void accionDefault(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("principal.jsp").forward(request, response);
    }

    private void listarUsuarios(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Usuario> usuario = new UsuarioDAO().listar();
        request.setAttribute("listarUsuarios", usuario);
        request.getRequestDispatcher("usuarios.jsp").forward(request, response);
    }

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
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
}
