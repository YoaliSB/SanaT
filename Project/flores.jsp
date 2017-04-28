<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>Listado de Flores</title>
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
        <link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet">
    </head>
    <body>
        <div class="wrapper2">
        </div>
        <div class="wrapper3">
        <img src="media/sanaTLogo.png" class="logo">
        <h2 class="header2" style="text-align:center">Lista de Flores</h2>
        <table border="1" class="data  data2">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Descripci&oacute;n</th>
            </tr>
            <c:forEach items="${requestScope.flores}" var="fl">
                <tr>
                    <td>
                        <c:out value="${fl.getIDFlor()}" />
                        <br />
                    </td>
                    <td>
                        <c:out value="${fl.getNombreFlor()}" />
                        <br />
                    </td>
                    <td>
                        <c:out value="${fl.getDescripcionFlor()}" />
                        <br />
                    </td>
                </tr>
            </c:forEach>
        </table>
        </div>
    </body>
</html>