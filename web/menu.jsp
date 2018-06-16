<%-- 
    Document   : menu
    Created on : 14-jun-2018, 17:09:20
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
        <div class="row">
            <div class="col-sm-4">
    </div>
            <div class="col-sm-6">
        <table>            
            <tr>
                <td> <form action="ingresar.jsp">
                        <button type="button" class="btn btn-primary btn-lg btn-block">Ingresar requerimiento</button>           
                </form>
                </td>
            </tr>
            <br>
            <tr>
                <td> <form action="consultar.jsp">
                        <button type="button" class="btn btn-primary btn-lg btn-block">Consultar requerimiento</button>
                </form>
                </td>    
            <tr>
            <br>
            <tr>    
                <td><form action="cerrar.jsp">
                        <button type="button" class="btn btn-primary btn-lg btn-block">Cerrar requerimento</button>
                </form>
                </td>           
        </table>
                <br>
        <table>
             </tr>           
                <td><form action="autentificacion.jsp">
                        <button type="button" class="btn btn-warning">Volver al incio</button>
                </form>
                </td>
            </tr>
        </table>                
                <table>
             </tr>           
             <td><form action="Csession.jsp">
                        <button type="button" class="btn btn-success">Cerrar</button>
                </form>
                </td>
            </tr>
        </table>
            </div>
            <div class="col-sm-4">
    </div>                        
            </div>        
    </body>
</html>
