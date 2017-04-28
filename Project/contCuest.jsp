<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
		<title>Cuestionario </title>
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
        <link href="https://fonts.googleapis.com/css?family=Oxygen" rel="stylesheet">
</head>
<body>
    <div class="wrapper2">
    </div>
    <div class="wrapper3">
        <img src="media/sanaTLogo.png" class="logo">
        <form action="./FinCuest" method="post">
            <h2 class="header2">Cuestionario ${requestScope.test}</h2>
            <input type="hidden" name="idpa" value="${requestScope.id}"/>
            <input type="hidden" name="num" value="${requestScope.test}"/>
            <table class="table cuestionario" border="1">
                <tr>
                    <th colspan="4">Preguntas</th>
                </tr>
                <c:forEach items="${requestScope.preguntas}" var="p">
                    <tr>
                        <td>
                            <c:out value="${p.numPregunta}" />
                            <br />
                        </td>
                        <td>
                            <c:out value="${p.getDescripcionPregunta()}" />
                            <br />
                        </td>
                        <c:choose>
                            <c:when test="${requestScope.contestado}">
                                <td>
                                    <c:forEach items="${requestScope.respuestas}" var="r">
                                        <c:if test="${r.getIDPregunta() eq p.getIDPregunta()}">
                                            <p><c:out value="${r.descripcionRespuesta}"/></p>
                                            <input type="hidden" name=<c:out value="${p.getIDPregunta()}"/> value=<c:out value="${r.getIDRespuesta()}"/>>
                                        </c:if>
                                    </c:forEach>     
                                </td>
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${requestScope.respuestas}" var="r">
                                    <td>
                                        <input type="radio" required name=<c:out value="${p.getIDPregunta()}"/> value=<c:out value="${r.getIDRespuesta()}"/>><c:out value="${r.descripcionRespuesta}"/>
                                        
                                    </td>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </tr>
                    
                </c:forEach>
            </table>
            <br />
            <input class="button field" type="submit" name="submit" value="Enviar" />
        </form>
    </div>
</body>
</html>