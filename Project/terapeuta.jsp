<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
    </head>
    <body>
        <h2 style="text-align:center">Bienvenido ${requestScope.terapeuta}</h2>
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
                    <input style="align-content:center" class="button" type="submit" name="submit" value="Agregar Paciente" />
                </div>
            </div>
        </form>
        <br />
        <h4 style="text-align:center">Lista de pacientes</h4>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Edad</th>
                <th>Sexo</th>
                <th>Direccion</th>
                <th>Telefono</th>
                <th>Mail</th>
                <th>Cuestionarios</th>
            </tr>
            <c:forEach items="${requestScope.pacientes}" var="al">
                <tr>
                    <td>
                        <c:out value="${al.getNombrePaciente()}" />
                        <br />
                    </td>
                    <td>
                        <c:out value="${al.getEdad()}" />
                        <br />
                    </td>
                    <td>
                        <c:out value="${al.getSexo()}" />
                        <br />
                    </td>
                    <td>
                        <c:out value="${al.getDireccion()}" />
                        <br />
                    </td>
                    <td>
                        <c:out value="${al.getTelefono()}" />
                        <br />
                    </td>
                    <td>
                        <c:out value="${al.getMail()}" />
                        <br />
                    </td>
                    <td>
                    	<form  target="_blank" style="text-align:center" action="./Cuest" method="post">
                    		<input type="hidden" name="id" value="${al.getIDPaciente()}"/><label></label>
							<input type="submit" value="1" name="test" />
							<input type="submit" value="2" name="test" />
							<input type="submit" value="3" name="test" />
						</form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>