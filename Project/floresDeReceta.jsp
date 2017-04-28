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
        <div class="wrapper2">
            <h2 style="text-align:center">Receta</h2>
        <table border="1">
            <tr>
                <th>Flor</th>
                <th>Cantidad</th>
            </tr>
            <c:forEach items="${requestScope.flores}" var="f">
                <tr>
                    <td><p><c:out value="${f.nombreFlor}"/></p></td>
                    <td><p><c:out value="${f.dosis}"/></p></td>
                </tr>
            </c:forEach>
        </table>
        <div class="field">
            <a style="align-content:center" class="button add_button"  href="javascript:window.open('','_self').close();">Ok.</a>
        </div>
      </div>
    </body>
</html>
