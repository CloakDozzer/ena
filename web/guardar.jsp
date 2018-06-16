<%-- 
    Document   : guardar
    Created on : 14-jun-2018, 18:00:18
    Author     : patri
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: gray">
        <%
            
           String gerencia = request.getParameter("gerencia") ;
           String departamento = request.getParameter("departamento");      
           String asignar = request.getParameter("asignar");      
           String encargado = request.getParameter("encargado");
           String requerimiento = request.getParameter("requerimiento");
         
          /*  if(gerencia.equals("") || departamento.equals("") || asignar.equals("") || encargado.equals("") || requerimiento.equals("")){
            request.setAttribute("msg","Falta ingresar datos");
            RequestDispatcher rd = request.getRequestDispatcher("menuprincipal.jsp");            
            rd.forward(request, response);                   
            }
            */
            String m=(String)request.getAttribute("msg");
                if(request.getAttribute("msg")!=null){
                    out.print(request.getAttribute("msg"));
                }
                   
           
           try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/enajava","root","");
               String consulta = "insert into requerimiento (gerencia, departamento, asignar, encargado, requerimiento, estado) values(?,?,?,?,?,1)";
               PreparedStatement smt = con.prepareStatement(consulta);
               smt.setString(1,gerencia);
               smt.setString(2,departamento);
               smt.setString(3,asignar);
               smt.setString(4,encargado);
               smt.setString(5,requerimiento);
               int resultado = smt.executeUpdate();
               if(resultado>0){
                   out.print("Requerimiento Ingresado");
               }else{
                   out.print("Oops, algo sucedio...");
               }
               
           }catch(Exception ex){
               out.print("El requerimiento ya se encuentra en solucion ");
           }
           
        
            %>
            <form action="autentificacion.jsp">
                <input type="submit" class="btn btn-light" value="Volver a Inicio">       
        </form>
            <br>
            <form action="ingresar.jsp">
                <input type="submit" class="btn btn-light" value="Ingresar requerimiento">       
        </form>
    </body>
</html>
