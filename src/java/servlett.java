/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author patri
 */
@WebServlet(urlPatterns = {"/servlett"})
public class servlett extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String usuario = request.getParameter("user");
            String password = request.getParameter("pass");
            String usernamesql="";
            String passwordsql="";
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/enajava","root","");
                String query="select * from user where user.username='"+usuario+"' and user.password='"+password+"'";
                Statement st=conn.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                while(rs.next()){
                 usernamesql= rs.getString("username");
                 passwordsql=rs.getString("password");
                }
                
            }catch(SQLException ex){
            throw new SQLException(ex);    
            }
            
            if(usuario.equals("")&&password.equals("")){
                request.setAttribute("msg", "Complete ambos campos");
                RequestDispatcher rd = request.getRequestDispatcher("autentificacion.jsp");
                rd.forward(request, response);
            
            }
            if(usuario.equals("")){
                request.setAttribute("msg", "Ingrese Usuario");
                RequestDispatcher rd = request.getRequestDispatcher("autentificacion.jsp");
                rd.forward(request, response);
                
            }
                
            if(password.equals("")){
                request.setAttribute("msg", "Ingrese Contraseña");
                RequestDispatcher rd = request.getRequestDispatcher("autentificacion.jsp");
                rd.forward(request, response);
            }
            
            if(!usuario.equals(usernamesql)||!password.equals(passwordsql)){
                request.setAttribute("msg", "Usuario o Password invalido");
                RequestDispatcher rd = request.getRequestDispatcher("autentificacion.jsp");
                rd.forward(request, response);                
            }
          
             if(usuario.equals(usernamesql)||password.equals(passwordsql)){
                 HttpSession User = (HttpSession)request.getSession();            
            User.setAttribute("nombre",usuario);
            response.sendRedirect("menu.jsp");             
            }
            
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(servlett.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(servlett.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(servlett.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(servlett.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
