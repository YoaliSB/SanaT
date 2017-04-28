<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>SanaT</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
        <link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet">
    </head>
    <body>
        <div class="wrapper2">
            <img class="logo" src="media/sanaTLogo.png">
            <h2 class="header2">Bienvenido, Administrador</h2>
            <br />
            <h4 style="text-align:center">Agregar Terapeuta</h4>
            <form action="AgregarTerapeuta" method="post"  class="add_form">
                    <div class="field">
                        <input id="nombre" placeholder="Nombre" name="nombre" type="text" required>
                    </div>
                    <div class="field">
                        <input id="edad" placeholder="Edad" name="edad" type="text" required>
                    </div>
                	<div class="field">
                		<input id="username" placeholder="Usuario" name="user" type="text" required>
                	</div>
                	<div class="field">
                		<input id="password" placeholder="Password" name="password" type="password" required>
                	</div>
                	<div class="field">
			 	    <input style="align-content:center" class="button add_button hover-button" type="submit" name="submit" value="Agregar Terapeuta" />
                    </div>
         </form>
         <h4 class="header4">Terapeutas</h4>
         <table border="1" class="table">
             <c:forEach items="${requestScope.listTera}" var="al">
                 <tr>
                     <td>
                         <c:out value="${al.getNombreTerapeuta()}" />
                         <br />
                     </td>
                  </tr>
             </c:forEach>
         </table>
        </div>
    </body>
</html>