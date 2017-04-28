<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
        <link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet">
        <script src="js/jquery-1.12.0.min.js"></script>
        <script src="js/store.min.js"></script>
        <script src="js/jquery.simpleWeather.min.js"></script>
    </head>
    <body>
        <div class="wrapper2"></div>
        <div class="wrapper3">
            <img src="media/sanaTLogo.png" class="logo">
            <h2 style="text-align:center" class="header2">${requestScope.nombre}</h2>
            <hr/>
            <table border="1" class="data">
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
                    <td>Tel&eacute;fono</td>
                    <td>${requestScope.telefono}</td>
                </tr>
                <tr>
                    <td>Mail</td>
                    <td>${requestScope.mail}</td>
                </tr>
                <tr>
                    <td>Comentarios</td>
                    <td>${requestScope.comentario}</td>
                </tr>
            </table>
            <br/>
            
            <form action="EditarPaciente" method="post" id="editar_paciente">
                <h4 style="text-align:center">Editar Paciente</h4>
                <input type="hidden" value="${requestScope.id}" name="id"/>
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
                    <textarea type="text" cols="100" rows="5" style="" name="comentarios" placeholder="Comentarios"></textarea>
                </div>      
                <div class="field">
                    <input style="align-content:center" class="button add_button hover-button editar" type="submit" name="submit" value="Editar" />
                </div>
            </form>
            <div align="center" class="field" style="position: absolute;top: 4%; left: 53%;" >
                <button class="icon edit" id="editar_paciente_button"></button>
            </div> 
            <form action="EliminarPaciente" method="post">
                <div align="center" class="field" style="position: absolute;top: 4%; left: 80%; width:30px">
                    <input type="hidden" value="${requestScope.id}" name="id"/>
                    <button class="icon delete" name="submit" value="Eliminar" type="submit"></button>
                </div>
            </form>
            <h4 style="text-align:center">Contestar cuestionarios</h4>
            <form  target="_blank" style="text-align:center" action="./Cuest" method="post">
            	<input type="hidden" name="id" value="${requestScope.id}"/><label></label>
		  	<input class="success button hover-button" type="submit" value="1" name="test" />
		  	<input class="success button hover-button" type="submit" value="2" name="test" />
		  	<input class="success button hover-button" type="submit" value="3" name="test" />
            </form>
            
            <h4 style="text-align:center">Recetas</h4>
            <h5 style="text-align:center">Analizar cuestionarios</h5>
            <form  target="_blank" style="text-align:center" action="./Conteo" method="post">
            	<input type="hidden" name="id" value="${requestScope.id}"/><label></label>
		  	<input class="success button hover-button" type="submit" value="1" name="test" />
		  	<input class="success button hover-button" type="submit" value="2" name="test" />
		  	<input class="success button hover-button" type="submit" value="3" name="test" />
            </form>
            <button class="button hover-button  add_button flores2 receta" id="hacer_receta_button">Hacer nueva receta</button>
            <form action="AgregarReceta" method="post" id="hacer_receta">
        	<input type="hidden" name="idTerapeuta" value="${requestScope.idTerapeuta}"/>
             <input type="hidden" name="id" value="${requestScope.id}"/>
            <table class="table pacientes">
                <tr>
                    <td rowspan="38">
                        <b>Flor</b>
                    </td>
                    <td>
                        Agrimonia
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisAgrimonia" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Alamo Tembl&oacute;n
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisAlamoTemblon" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Haya
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisHaya" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Centaurea
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisCentaurea" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Ceratostigma
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisCeratostigma" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Cerasifera
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisCerasifera" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Brote de Casta&ntilde;o
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisBroteDeCastano" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Achicoria
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisAchicoria" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Clem&aacute;tide
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisClematide" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Manzano Silvestre
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisManzanoSilvestre" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Olmo
                    </td>
                    <td>
                        <input type="number" min="0" value="0"  class="recipe-field" name="dosisOlmo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Genciana de Campo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisGencianaDeCampo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Aulaga
                    </td>
                    <td>
                        <input type="number" min="0" value="0"  class="recipe-field"name="dosisAulaga" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Brezo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisBrezo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Acebo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisAcebo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Madreselva
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisMadreselva" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Hojarazo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisHojarazo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Impaciencia
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisImpaciencia" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Alerce
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisAlerce" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Mimulo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisMimulo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Mostaza
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisMostaza" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Roble
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisRoble" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Olivo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisOlivo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Pino
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisPino" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Casta&ntilde;o Rojo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisCastanoRojo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Heliantemo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisHeliantemo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Agua de Roca
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisAguaDeRoca" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Scleranthus
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisScleranthus" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Estrella de Bel&eacute;n
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisEstrellaDeBelen" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Casta&ntilde;o Dulce
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisCastanoDulce" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Verbena
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisVerbena" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Vid
                    </td>
                    <td>
                        <input type="number" min="0" value="0"class="recipe-field" name="dosisVid" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Nogal
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisNogal" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Violeta de Agua
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisVioletadDeAgua" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Casta&ntilde;o Blanco
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisCastanoBlanco" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Avena Silvestre
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisAvenaSilvestre" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Rosa Silvestre
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisRosaSilvestre" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Sauce
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisSauce" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        <b>Fecha de vencimiento</b>
                    </td>
                    <td>
                    </td>
                    <td>
                        <input type="date" required name="vencimiento" style="width:80%">
                    </td>
                </tr>
            </table>
            <input type="hidden" name="idPaciente" value="${requestScope.id}"/>
                <div class="field">
			 	    <input style="align-content:center" class="button add_button hover-button" type="submit" name="submit" value="Hacer receta" />
                    </div>
        </form>
        <br><br>
        <h4 class="header4">Recetas</h4>
        <table border="1" class="table recetas">
            <c:set var="counter" value="1"/>
            <c:forEach items="${requestScope.recetas}" var="al">
                <tr>
                	<td>
                		${counter}
                		<c:if test="${counter==1}">
                			<form action="IngresaDatosReceta" method="post" style="    position: relative;top: -3vh; height:5px">
                				<input type="hidden" name="idReceta" value="${al.getIDReceta()}"/>
                				<input type="hidden" name="id" value="${requestScope.id}"/>
                				<input type="hidden" name="idTerapeuta" value="${requestScope.idTerapeuta}"/>
                				<input type="hidden" name="vencimiento" value="${al.getFecha_De_Vencimiento()}"/>
								<button class="icon edit" type="submit" value="Modificar receta más reciente" style="position:relative;left: 28px"> </button>
							</form>
						</c:if>
                	</td>
                    <td>
                    	<form action="DescribirReceta" method="post">
                            <input type="hidden" name="idPaciente" value="${requestScope.id}"/>
                            <input type="hidden" name="idReceta" value="${al.getIDReceta()}"/>
                            <input type="submit" value="Flores" target="_blank" class="button add_button hover-button flores2"/>
                        </form>
                    </td>
                    <td>
                    	Fecha de vencimiento: ${al.getFecha_De_Vencimiento()}
                    </td>
                </tr>
                <c:set var="counter" value="${counter+1}"/>
            </c:forEach>
        </table>
        </div>
    </body>
</html>
    
    <script>
        $("#editar_paciente").hide();
        $("#hacer_receta").hide();
        
        $("#editar_paciente_button").click(function(){
        $("#editar_paciente").show();
        });
        
        $("#hacer_receta_button").click(function(){
        $("#hacer_receta").show();
        });
    </script>