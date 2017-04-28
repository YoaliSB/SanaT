<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>SanaT</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
        <link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet">
        <script src="js/jquery-1.12.0.min.js"></script>
        <script src="js/store.min.js"></script>
        <script src="js/jquery.simpleWeather.min.js"></script>
    </head>
    <body>
        <div class="wrapper2">
        </div>
        <div class="wrapper3">
            <img class="logo" src="media/sanaTLogo.png">
            <h2 class="header2">Bienvenido, Administrador</h2>
            <br />
            
            <form action="AgregarTerapeuta" method="post"  class="add_form"  id="agregar_terapeuta">
                <h4 style="text-align:center">Agregar Terapeuta</h4>
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
                		<input id="password" placeholder="Contrase&ntilde;a" name="password" type="password" required>
                	</div>
                	<div class="field">
			 	    <input style="align-content:center" class="button add_button hover-button terapeutas" type="submit" name="submit" value="Agregar Terapeuta" />
                    </div>
         </form>
            <button class="button hover-button  add_button flores2 receta" id="agregar_terapeuta_button">Agregar Terapeuta</button>
<br>
         <h4 class="header4 terapeutas" >Terapeutas</h4>
          <form class="form-pacientes" action="RefreshTerapeutas" method="post">
              <button class="icon refresh" name="refrescar" value="refrescar" type="submit" style="    margin-left: 11vh"></button>
          </form>    
         
         <table border="1" class="table terapeutas" style="left:20%">
             <c:forEach items="${requestScope.listTera}" var="al">
                 <tr>
                     <td>
                         <c:out value="${al.getNombreTerapeuta()}" />
                         <br />
                     </td>
                      <td>
                         <form target="_blank" action="MostrarTerapeuta" method="post">
                             <input type="hidden" value="${al.getIDTerapeuta()}" name="idTerapeuta"/>
                             <button class="icon edit"type="submit" value="Editar"></button>
                         </form>
                      </td>
                  </tr>
             </c:forEach>
         </table>
        </div>
    </body>
</html>
    
    <script>
        $("#agregar_terapeuta").hide();
        
        $("#agregar_terapeuta_button").click(function(){
        $("#agregar_terapeuta").show();
        });
    </script>