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
<h1>
	Biblioteka
</h1>

<P>  The time on the server is ${serverTime}. </P>

<ul>
		<li>
			<a href="<c:url value="/biblioteka" />" >Biblioteka</a>
                        
		</li>
               <li> <a href="<c:url value="/bibliotekazmien"/>">Biblioteka zmien</a> </li>
</ul>
         <footer>
           <p id="1">Biblioteka</p>
</footer>
</body>
</html>
