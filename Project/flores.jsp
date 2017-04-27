<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <title>Listado de Flores</title>
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
    </head>
    <body>
        <h4 style="text-align:center">Lista de Flores</h4>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>Descripcion</th>
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
    </body>
</html>