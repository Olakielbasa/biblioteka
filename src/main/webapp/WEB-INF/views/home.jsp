<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>  
    <head>
        <title>Home</title>
        <link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="icon" href="<c:url value="/resources/favicon.ico" />" type="image/x-icon">
    </head>
  
    <body>

        <header>
            <h1>
                Biblioteka
            </h1>
        </header>

    <center>

        <center>
            <button><a id="1" href="<c:url value="/biblioteka" />">Dodaj ksi&#261&#380k&#281</a></button></center>
        <center>
            </br>
            <button><a id="1" href="<c:url value="/home2"/>">Edytuj katalog</a></button></center> 
        </br>
    </center>
    <footer>
        <p id="1">Biblioteka</p>
    </footer>
</body>
</html>
