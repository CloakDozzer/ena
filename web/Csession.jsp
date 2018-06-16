<%-- 
    Document   : Csession
    Created on : 14-jun-2018, 18:36:15
    Author     : patri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color: gray ">
        <h1>Sesion Caducada</h1>
        
        <form action="autentificacion.jsp">
            <button type="button" class="btn btn-success">Volver a inicio</button>
            
        </form>
  
        <%
        HttpSession User = (HttpSession)request.getSession();
                
        User.invalidate();
        %>
    </body>
</html>
