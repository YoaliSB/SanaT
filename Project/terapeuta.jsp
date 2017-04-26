<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
    </head>
    <body>
        <h2 style="text-align:center">Bienvenido </h2>
        <br />
        <h4 style="text-align:center">Agregar Paciente</h4>
        <form action="AgregarPaciente" method="post">
            <div class="row">
                <div class="large-4 medium-4 columns">
                    <label>Nombre</label>
                    <input name="nombre" type="text">
                </div>
                <div class="large-4 medium-4 columns">
                    <label>Edad</label>
                    <input name="edad" type="text">
                </div>
                <div class="large-4 medium-4 columns">
                    <label>Sexo</label>
                    <input name="sexo" type="text">
                </div>
            </div>
            <div class="row">
                <div class="large-4 medium-4 columns">
                    <label>Direccion</label>
                    <input name="direccion" type="text">
                </div>
                <div class="large-4 medium-4 columns">
                    <label>Telefono</label>
                    <input name="telefono" type="text">
                </div>
                <div class="large-4 medium-4 columns">
                    <label>Mail</label>
                    <input name="mail" type="text">
                </div>
                <div class="large-4 medium-4 columns">
                    <input type="hidden" value="${requestScope.idTerapeuta}" name="idTerapeuta"/>
                    <input style="align-content:center" class="button" type="submit" name="submit" value="Agregar Paciente" />
                </div>
            </div>
        </form>
        <br />
        <h4 style="text-align:center">Lista de pacientes</h4>
        <form action="RefreshPacientes" method="post">
            <input type="hidden" value="${requestScope.terapeuta}" name="nombreTerapeuta"/>
            <input type="hidden" value="${requestScope.idTerapeuta}" name="idTerapeuta"/>
            <input class="success button" value="Recargar" type="submit"/>
        </form>
        <table border="1">
            <tr>
                <th>Nombre</th>
            </tr>
            <c:forEach items="${requestScope.pacientes}" var="al">
                <tr>
                    <td>
                        <form target="_blank" style="text-align:center" action="MostrarPaciente" method="post">
                            <input type=hidden value=${al.getIDPaciente()} name="id"/>
                            <input type="submit" value="${al.getNombrePaciente()}"/>
                            
                        </form>                            
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>