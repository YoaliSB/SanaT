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
        <div class="wrapper2"></div>
        <div class="wrapper3">
            <img src="media/sanaTLogo.png" class="logo">
            <h2 style="text-align:center"class="header2">Receta</h2>
        <table class="data" border="1">
            <tr>
                <th>Flor</th>
                <th>Conteo</th>
            </tr>
            <c:forEach items="${requestScope.flores}" var="f">
                <tr>
                    <td><p><c:out value="${f.nombreFlor}"/></p></td>
                    <td><p><c:out value="${f.cont}"/></p></td>
                </tr>
            </c:forEach>
        </table>
        <div class="field ok">
            <a style="align-content:center" class="button add_button hover-button"  href="javascript:window.open('','_self').close();">Ok</a>
        </div>
      </div>
    </body>
</html>
