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
            <img src="media/sanaTLogo.png" class="logo">
            <h2 class="header2">Bienvenido, ${requestScope.terapeuta}</h2>
            <br />
             
              <form class="add_form" action="AgregarPaciente" method="post" id="agregar_paciente">
                  <h4 style="text-align:center">Agregar Paciente</h4>
                 <input type="hidden" value="${requestScope.idTerapeuta}" name="idTerapeuta"/>
                  <div class="field">
                     <input required name="nombre" type="text" placeholder="Nombre Completo">
                  </div>
                  <div class="field">
                     <input required name="edad" type="number" placeholder="Edad">
                  </div>
                  <div class="field">
                     <select required class="select" name="sexo" required> 
                        <option value="" disabled selected hidden>Sexo</option>
                        <option>Hombre</option>
                        <option>Mujer</option>
                    </select>
                </div>
                <div class="field">
                    <input name="direccion" type="text" placeholder="Direccion">
                </div>
                <div class="field">
                    <input name="telefono" type="text" placeholder="Telefono">
                </div>
                <div class="field">
                    <input name="mail" type="text" placeholder="Mail: mail@mail.com">
                </div>
                <div class="field">
                    <input style="align-content:center;left:30%" class="button add_button hover-button terapeutas" type="submit" name="submit" value="Agregar Paciente" />
                </div>
            </form>
            <form class="form-flores" action="MostrarFlores" method="post" target="_blank">
               <input style="align-content:center" class="button add_button hover-button flores2 receta" type="submit" name="submit" value="Ver Flores" />
            </form>
            <button class="button hover-button add_button flores2 receta" id="agregar_paciente_button" style="left:15%">Agregar Paciente</button> <br>
            <h4 class="header4 pacientes">Pacientes</h4>
            <form class="form-pacientes" action="RefreshPacientes" method="post">
                <input type="hidden" value="${requestScope.terapeuta}" name="nombreTerapeuta"/>
                <input type="hidden" value="${requestScope.idTerapeuta}" name="idTerapeuta"/>
                <button class="icon refresh" name="refrescar" value="refrescar" type="submit"></button>
            </form>
            <table class="table pacientes" border="1">
                <c:forEach items="${requestScope.pacientes}" var="al">
                    <tr>
                        <td>
                            <form target="_blank" style="text-align:center" action="MostrarPaciente" method="post">
                                <input type=hidden value=${al.getIDPaciente()} name="id"/>
                                <input class="paciente_button" type="submit" value="${al.getNombrePaciente()}"/>
                            </form>                        
                    </td>
                </tr>
            </c:forEach>
        </table>
      </div>
    </body>
</html>
<script>
        $("#agregar_paciente").hide();
        
        $("#agregar_paciente_button").click(function(){
        $("#agregar_paciente").show();
        });
    </script>