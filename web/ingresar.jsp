<%-- 
    Document   : ingresar
    Created on : 14-jun-2018, 17:28:43
    Author     : patri
--%>

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
        <form action="guardar.jsp" method="get">
            <legend> <h1>Ingresar Requerimiento</h1></legend>

              
            <table>
                <tr>
                    <label>Gerencia: </label>
                <select class="form-control" id="gerencia"  name="gerencia">
                    <option>Selecciona</option>
                    <option>Gerencia 1</option>
                    <option>Gerencia 2</option>
                    <option>Gerencia 3</option>
                </select>
                    
                </tr>
                <tr>
                    <label>Departamento: </label>
                <select class="form-control" name="departamento">
                    <option>Selecciona</option>
                    <option>Finanzas</option>
                    <option>Temas especiales</option>
                    <option>Gerencia</option>
                </select>
                    
                </tr>
                <tr>
                    <label>Asignar a: </label>
                <select class="form-control" name="asignar">
                    <option>Selecciona</option>
                    <option>Zona 1</option>
                    <option>Zona 2</option>
                    <option>Zona 3</option>
                </select>
                    
                </tr>
                <tr>
                    <label>Encargado: </label>
                <select class="form-control" name="encargado">
                    <option>Selecciona</option>
                    <option>Javier</option>
                    <option>Manuel</option>
                    <option>John wick</option>
                </select>
                    
                </tr>
                <tr>
                    <label>Requerimiento:</label>
    <textarea class="form-control" name="requerimiento" rows="3"></textarea>                    
                </tr>
            </table> 
        </form>
        
        <form action="guardar.jsp">
            <input type="submit" class="btn btn-light" value="Guardar">
            
           
                       
        </form>
        <br>
        <form action="menu.jsp">
           
            <input type="submit" class="btn btn-light" value="Volver al Menu">
            
            
        </form>

    </div>
  <div class="col-sm-4">
    </div>
</div>
    </body>
</html>
