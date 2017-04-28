<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
        <link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet">
    </head>
    <body>
        <div class="wrapper2">
        </div>
        <div class="wrapper3">
            <img src="media/sanaTLogo.png" class="logo">
        <h2 style="text-align:center" class="header2">Editar Terapeuta</h2>
        <form action="EditarTerapeuta" method="post" class="add_form">
            <input type="hidden" value="${requestScope.idTerapeuta}" name="idTerapeuta"/>
            <div class="row">
                <div class="field">
                    <input required name="login" type="text" placeholder="Usuario">
                </div>
                <div class="field">
                    <input placeholder="Contrase&ntilde;a" name="contra" type="password" required>
                </div>
            </div>
            <div class="row">
                <div class="large-4 medium-4 columns">
                    <label style="font-size:1px">A</label>
                </div>
                <div align="center" class="large-4 medium-4 columns">
                    <input style="align-content:center" class="button hover-button" type="submit" name="submit" value="Editar" />
                </div>
                <div class="large-4 medium-4 columns">
                    <label style="font-size:1px">A</label>
                </div>
            </div>
            
        </form>
        <form action="EliminarTerapeuta" method="post">
            <div class="row">
                <div class="large-4 medium-4 columns">
                    <label style="font-size:1px">A</label>
                </div>
                <div align="center" class="large-4 medium-4 columns">
                    <input type="hidden" value="${requestScope.idTerapeuta}" name="idTerapeuta"/>
                    <button class="icon delete" name="submit" value="Eliminar" type="submit" style="position: absolute; top: 94px; left: 75%"></button>
                </div>
                <div class="large-4 medium-4 columns">
                    <label style="font-size:1px">A</label>
                </div>
            </div>
        </form>
    </body>
    </html>

       