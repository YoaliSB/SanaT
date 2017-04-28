<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>
            SanaT
        </title>
        <meta charset="utf-8">
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
        <link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet">
    </head>
    <body>
        <div class="wrapper2">
        </div>
        <div class="wrapper3">
        <img src="media/sanaTLogo.png" class="logo">
        <h2 class="header2" style="text-align:center">Modificar Receta</h2>
        <label>Ingrese los nuevos datos de la receta</label>
        <form action="ModificarReceta" method="post">
        	<input type="hidden" name="idTerapeuta" value="${requestScope.idTerapeuta}"/>
             <input type="hidden" name="id" value="${requestScope.id}"/>
             <input type="hidden" name="vencimiento" value="${requestScope.vencimiento}"/>
             <input type="hidden" name="idReceta" value="${requestScope.idReceta}"/>
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
                        Chicoria
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisAchicoria" class="recipe-field" placeholder="Cantidad en mililitros">ml
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
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisOlmo" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Genciana de Campo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisGencianaDeCampo" class="recipe-field" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Aulaga
                    </td>
                    <td>
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisAulaga" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Brezo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisBrezo" class="recipe-field" placeholder="Cantidad en mililitros">ml
                    </td>
                </tr>
                <tr>
                    <td>
                        Acebo
                    </td>
                    <td>
                        <input type="number" min="0" value="0" name="dosisAcebo" class="recipe-field" placeholder="Cantidad en mililitros">ml
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
                        <input type="number" min="0" value="0" class="recipe-field" name="dosisVid" placeholder="Cantidad en mililitros">ml
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
            </table>
            <input type="hidden" value="${requestScope.vencimiento}" required name="vencimiento">
            <input type="hidden" name="idPaciente" value="${requestScope.id}"/>
            <div class="field">
            <input type="submit" name="submit" class="button add_button hover-button" value="Modificar Receta">
            </div>
        </form>
        </div>
    </body>
</html>