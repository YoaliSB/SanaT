<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
		<title>Cuestionario 1</title>
        <link rel="stylesheet" href="css/foundation.css">
        <link rel="stylesheet" href="css/app.css">
</head>
<body>
Paciente ${requestScope.id}
<c:if test="${requestScope.completed}">
			terapeuta agregado :)
</c:if>

<table border="1">
    <tr>
        <th>#</th>
        <th>Pregunta</th>
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
            <c:forEach items="${requestScope.respuestas}" var="r">
                <c:set var="pre" scope="session" value="${p.getIDPregunta()}"/>
                <c:set var="res" scope="session" value="${r.getIDPregunta()}"/>
                <c:if test="${pre eq res}">
                    <td>
                        <c:choose>
                            <c:when test="${pre >131}">
                                <c:choose>
                                    <c:when test="${r.descripcionRespuesta eq 'Pregunta Abierta'}">
                                        <c:if test="${pre<142}">
                                            <input type="text" id="shortAnswer" name=<c:out value="${r.getIDPregunta()}"/>>
                                        </c:if>
                                        <c:if test="${pre>142}">
                                            <input type="text" id="bigAnswer" name=<c:out value="${r.getIDPregunta()}"/>>
                                        </c:if>
                                    </c:when>
                                    <c:when test="${pre eq 148 or pre eq 152 }">
                                        <input type="checkbox" name=<c:out value="${r.getIDPregunta()}"/> value=<c:out value="${r.getIDRespuesta()}"/>><c:out value="${r.descripcionRespuesta}"/>
                                    </c:when>
                                    <c:otherwise>
                                         <input type="radio" name=<c:out value="${r.getIDPregunta()}"/> value=<c:out value="${r.getIDRespuesta()}"/>><c:out value="${r.descripcionRespuesta}"/>
                                    </c:otherwise>
                                </c:choose>
                            </c:when>
                            <c:otherwise>
                                 <input type="radio" name=<c:out value="${r.getIDPregunta()}"/> value=<c:out value="${r.getIDRespuesta()}"/>><c:out value="${r.descripcionRespuesta}"/>
                            </c:otherwise>
                        </c:choose>
                    </td>
                </c:if>
            </c:forEach>
    </tr>

    </c:forEach>
</table>
<br />
<form action="AgregarPaciente" method="post">
	<input class="button" type="submit" name="submit" value="Regresar" />
</form>
</body>
</html>
