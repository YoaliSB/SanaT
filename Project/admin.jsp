<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
    </head>
    <body>
        <h2 style="text-align:center">Bienvenido, administrador</h2>
        <br />
        <h4 style="text-align:center">Agregar Terapeuta</h4>
        <form action="AgregarTerapeuta" method="post">
            <div class="row">
                <div class="large-6 medium-6 columns">
                    <label>Nombre</label>
                    <input name="nombre" type="text">
                </div>
                <div class="large-6 medium-6 columns">
                    <label>Edad</label>
                    <input name="edad" type="text">
                </div>

            </div>
            <div class="row">
            	<div class="large-6 medium-6 columns">
            		<label>Username</label>
            		<input name="user" type="text">
            	</div>
            	<div class="large-6 medium-6 columns">
            		<label>Password</label>
            		<input id="password" placeholder="Password" name="password" type="password">
            	</div>
            	<div class="large-6 medium-6 columns">
				    <input style="align-content:center" class="button" type="submit" name="submit" value="Agregar Terapeuta" />
                </div>
            </div>
        </form>
        <br />
        <h4 style="text-align:center">Lista de terapeutas</h4>
        <table border="1">
            <tr>
                <th>Nombre</th>
            </tr>
            <c:forEach items="${requestScope.listTera}" var="al">
                <tr>
                    <td>
                        <c:out value="${al.getNombreTerapeuta()}" />
                        <br />
                    </td>

                </tr>
            </c:forEach>
        </table>
    </body>
</html>