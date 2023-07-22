<%-- 
    Document   : edit
    Created on : 13 jul. 2023, 01:45:37
    Author     : franc
--%>

<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
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
            <div class="col-lg-6">
                <%
                    PersonaDAO dao = new PersonaDAO();
                    int id = Integer.parseInt((String) request.getAttribute("idper"));
                    Persona p = (Persona) dao.list(id);
                %>
                <h1>Modificar Persona</h1>
                <form action="Controlador">
                    DNI:<br>
                    <input class="form-control" type="text" name="txtDni" value="<%= p.getDni()%>"><br>
                    Nombres: <br>
                    <input class="form-control" type="text" name="txtNom" value="<%= p.getNom()%>"><br>

                    <input type="hidden" name="txtid" value="<%= p.getId()%>">
                    <input class="btn btn-primary" type="submit" name="accion" value="Actualizar"> 
                    <a href="Controlador?accion=listar">Regresar</a>
                </form>
            </div>
        </div>
    </body>
</html>
