<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
    </head>
    <body>
        <h4 style="text-align:center">Editar Terapeuta</h4>
        <form action="EditarTerapeuta" method="post">
            <input type="hidden" value="${requestScope.idTerapeuta}" name="idTerapeuta"/>
            <div class="row">
                <div class="large-6 medium-6 columns">
                    <label>Login</label>
                    <input required name="login" type="text" placeholder="Login">
                </div>
                <div class="large-6 medium-6 columns">
                    <label>Password</label>
                    <input placeholder="Contrase&ntilde;a" name="contra" type="password" required>
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
        <form action="EliminarTerapeuta" method="post">
            <div class="row">
                <div class="large-4 medium-4 columns">
                    <label style="font-size:1px">A</label>
                </div>
                <div align="center" class="large-4 medium-4 columns">
                    <input type="hidden" value="${requestScope.idTerapeuta}" name="idTerapeuta"/>
                    <input style="align-content:center" class="alert button" type="submit" name="submit" value="Eliminar" />
                </div>
                <div class="large-4 medium-4 columns">
                    <label style="font-size:1px">A</label>
                </div>
            </div>
        </form>
    </body>
    </html>

       