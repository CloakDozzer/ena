<%-- 
    Document   : consultar
    Created on : 14-jun-2018, 18:19:58
    Author     : patri
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/<X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: gray ">
        <div class="row">
    <div class="col-sm-2">
    </div>
    <div class="col-sm-6">
        <form action="servlett" method="post">
            <legend> <h1>Consultar Requerimiento</h1></legend>             
            <table>
                <tr>
                    <label>Gerencia: </label>
                <select class="form-control" name="gerencia">
                    <option>Gerencia 1</option>
                    <option>Gerencia 2</option>
                    <option>Gerencia 3</option>
                </select>
                    
                </tr>
                <tr>
                    <label>Departamento: </label>
                <select class="form-control" name="departamento">
                    <option>Finanzas</option>
                    <option>Temas especiales</option>
                    <option>Gerencia</option>
                </select>
                    
                </tr>
                <tr>
                    <label>Asignar a: </label>
                <select class="form-control" name="asignar">
                    <option>Zona 1</option>
                    <option>Zona 2</option>
                    <option>ZOna 3</option>
                </select>
                    <br>
                </tr>
                
        <form>
            <input type="submit" class="btn btn-light" value="Buscar">
            
           
                       
        </form>
        

    </div>
  <div class="col-sm-4">
    </div>
</div>
        <body style="background-color: gray ">
        <h3> Usuario: <%out.print(session.getAttribute("nombre"));%></h3>
        <fieldset>
        <%
             HttpSession User = (HttpSession) request.getSession();
            if(User.getAttribute("nombre") == null){
                response.sendRedirect("accesoDenegado.jsp");
            }

            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pruebaena","root","");
                String query="SELECT * FROM requerimiento";
                Statement st=con.createStatement();
                ResultSet rs = st.executeQuery(query);
                out.println("<table>");
                out.println("<th>Gerencia</th>");
                out.println("<th>Departamento</th>");
                out.println("<th>Asignado a</th>");
                out.println("<th>Requerimiento</th>");
                out.println("<th>Editar</th>");
                out.println("<th>Borrar</th>");
                out.println("<th>Ver</th>");
                
                
                while(rs.next()){
                out.println("<tr>");   
                out.println("<td>"+rs.getString("gerencia")+"</td>");   
                out.println("<td>"+rs.getString("departamento")+"</td>");   
                out.println("<td>"+rs.getString("asignar")+"</td>");   
                out.println("<td>"+rs.getString("encargado")+"</td>");                      
                out.println("<td>"+rs.getString("requerimiento")+"</td>");                     
                out.println("<td><a href=\"editar.jsp?id="+rs.getString("id")+"\">Editar</a></td>");
                out.println("<td><a href=\"eliminar.jsp?id="+rs.getString("id")+"\">Borrar</a></td>");
                out.println("<td><a href=\"ver.jsp?id="+rs.getString("id")+"\">Ver</a></td>");     
                out.println("</tr>");   
                    
                    
                }
                
                out.println("</table>");
                
            }catch(SQLException ex){
                
            throw new SQLException(ex);   
            
            }
            
            %>
            
        <form action="menu.jsp">          
            <button type="button" class="btn btn-success">Menu principal</button>
            
            
        </form>
           
           
            <form action="Csession.jsp" >
                <button type="button" class="btn btn-success">Cerrar session</button>            
            </form>           
            </fieldset>
    </body>
</html>
