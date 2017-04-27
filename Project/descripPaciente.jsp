<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
    </head>
    <body>
        <h2 style="text-align:center">${requestScope.nombre}</h2>
        <hr/>
        <table border="1">
            <tr>
                <th colspan="2">Descripci&oacute;n del paciente</th>
            </tr>
            <tr>
                <td>Edad</td>
                <td>${requestScope.edad}</td>
            </tr>
            <tr>
                <td>Sexo</td>
                <td>${requestScope.sexo}</td>
            </tr>
            <tr>
                <td>Direcci&oacute;n</td>
                <td>${requestScope.direccion}</td>
            </tr>
            <tr>
                <td>Telefono</td>
                <td>${requestScope.telefono}</td>
            </tr>
            <tr>
                <td>Mail</td>
                <td>${requestScope.mail}</td>
            </tr>
        </table>
        <br/>
        <h4 style="text-align:center">Editar Paciente</h4>
        <form action="EditarPaciente" method="post">
            <input type="hidden" value="${requestScope.id}" name="id"/>
            <div class="row">
                <div class="large-4 medium-4 columns">
                    <label>Nombre</label>
                    <input required name="nombre" type="text">
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
            </div>
            <div class="row">
                <div class="large-4 medium-4 columns">
                    <label style="font-size:1px">A</label>
                </div>
                <div align="center" class="large-4 medium-4 columns">
                    <input style="align-content:center" class="button" type="submit" name="submit" value="Editar" />
                </div>
                <div class="large-4 medium-4 columns">
                    <label style="font-size:1px">A</label>
                </div>
            </div>
        </form>
        <form action="EliminarPaciente" method="post">
            <div class="row">
                <div class="large-4 medium-4 columns">
                    <label style="font-size:1px">A</label>
                </div>
                <div align="center" class="large-4 medium-4 columns">
                    <input type="hidden" value="${requestScope.id}" name="id"/>
                    <input style="align-content:center" class="alert button" type="submit" name="submit" value="Eliminar" />
                </div>
                <div class="large-4 medium-4 columns">
                    <label style="font-size:1px">A</label>
                </div>
            </div>
        </form>
        <h4 style="text-align:center">Contestar cuestionarios</h4>
        <form  target="_blank" style="text-align:center" action="./Cuest" method="post">
        	<input type="hidden" name="id" value="${requestScope.id}"/><label></label>
			<input class="success button" type="submit" value="1" name="test" />
			<input class="success button" type="submit" value="2" name="test" />
			<input class="success button" type="submit" value="3" name="test" />
        </form>
        
        <h4 style="text-align:center">Recetas</h4>
        <h5 style="text-align:center">Analizar cuestionarios</h5>
        <form  target="_blank" style="text-align:center" action="./Conteo" method="post">
        	<input type="hidden" name="id" value="${requestScope.id}"/><label></label>
			<input class="success button" type="submit" value="1" name="test" />
			<input class="success button" type="submit" value="2" name="test" />
			<input class="success button" type="submit" value="3" name="test" />
        </form>
        
    </body>
</html>