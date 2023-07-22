<%-- 
    Document   : add
    Created on : 13 jul. 2023, 01:42:53
    Author     : franc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class ="col-lg-6">
                <h1>Agregar personas</h1>
                <form action="Controlador">
                    ID: <br>
                    <input class="form-control" type="text" name="txtDni"><br>
                    Nombres: <br>
                    <input  class="form-control" type="text" name="txtNom"><br>
                    <input class="btn btn-primary" type="submit" name="accion" value="Agregar">
                    <a href="Controlador?accion=listar">Regresar</a>

                </form>
            </div>
        </div>
    </body></html>
