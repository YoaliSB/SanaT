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
            <tr>
                <td>Comentarios</td>
                <td>${requestScope.comentario}</td>
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
                <div class="large-4 medium-4 columns"><label style="text-align:center">Comentar</label></div>
                <div class="large-4 medium-4 columns">
                    <label style="font-size:1px">A</label>
                </div>
            </div>
            <div class="row">
                <textarea type="text" cols="140" rows="5" style="" name="comentarios" placeholder="Comentarios"></textarea>
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
         <form action="AgregarReceta" method="post">
        	<input type="hidden" name="idTerapeuta" value="${requestScope.idTerapeuta}"/>
             <input type="hidden" name="id" value="${requestScope.id}"/>
            <table>
                <tr>
                    <td rowspan="38">
                        Flor
                    </td>
                    <td>
                        Agrimonia
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisAgrimonia" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Alamo Temblón
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisAlamoTemblon" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Haya
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisHaya" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Centaurea
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisCentaurea" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Ceratostigma
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisCeratostigma" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Cerasifera
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisCerasifera" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Brote de Castaño
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisBroteDeCastano" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Achicoria
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisAchicoria" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Clemátide
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisClematide" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Manzano Silvestre
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisManzanoSilvestre" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Olmo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisOlmo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Genciana de Campo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisGencianaDeCampo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Aulaga
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisAulaga" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Brezo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisBrezo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Acebo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisAcebo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Madreselva
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisMadreselva" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Hojarazo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisHojarazo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Impaciencia
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisImpaciencia" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Alerce
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisAlerce" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Mimulo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisMimulo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Mostaza
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisMostaza" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Roble
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisRoble" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Olivo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisOlivo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Pino
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisPino" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Castaño Rojo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisCastanoRojo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Heliantemo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisHeliantemo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Agua de Roca
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisAguaDeRoca" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Scleranthus
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisScleranthus" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Estrella de Belén
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisEstrellaDeBelen" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Castaño Dulce
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisCastanoDulce" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Verbena
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisVerbena" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Vid
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisVid" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Nogal
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisNogal" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Violeta de Agua
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisVioletadDeAgua" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Castaño Blanco
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisCastanoBlanco" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Avena Silvestre
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisAvenaSilvestre" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Rosa Silvestre
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisRosaSilvestre" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Sauce
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisSauce" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Fecha de vencimiento
                    </td>
                    <td>
                    </td>
                    <td>
                        <input type="date" required name="vencimiento">
                    </td>
                </tr>
            </table>
            <input type="hidden" name="idPaciente" value="${requestScope.id}"/>
            <input type="submit" name="submit" value="Hacer receta">
        </form>
        <br><br>
        <table border="1">
            <tr>
                <th>Recetas</th>
            </tr>
            <c:set var="counter" value="1"/>
            <c:forEach items="${requestScope.recetas}" var="al">
                <tr>
                	<td>
                		${counter}
                	</td>
                    <td>
                    	<form action="DescribirReceta" method="post">
                            <input type="hidden" name="idPaciente" value="${requestScope.id}"/>
                            <input  name="idReceta" value="${al.getIDReceta()}"/>
                            <input type="submit" value="Flores" target="_blank"/>
                        </form>
                    </td>
                    <td>
                    	Fecha de vencimiento: ${al.getFecha_De_Vencimiento()}
                    </td>
                </tr>
                <c:set var="counter" value="${counter+1}"/>
            </c:forEach>
        </table>
    </body>
</html>