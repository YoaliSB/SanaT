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
            <h2 style="text-align:center" class="header2">Receta</h2>
        <table border="1" class="data">
            <tr>
                <th>Flor</th>
                <th>Cantidad</th>
            </tr>
            <c:forEach items="${requestScope.flores}" var="f">
                <tr>
                    <td><c:out value="${f.nombreFlor}"/></td>
                    <td><c:out value="${f.dosis}"/></td>
                </tr>
            </c:forEach>
        </table>
        <div class="field ok">
            <a style="align-content:center" class="button add_button hover-button"  href="javascript:window.open('','_self').close();">Ok</a>
        </div>
      </div>
    </body>
</html>
