<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteka</title>
        <link rel="icon" href="<c:url value="/resources/favicon.ico" />" type="image/x-icon">
        <link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <header>
            <h1>
                Biblioteka
            </h1>
        </header>
    <center>

        <form action="home2" method="get">
            <input type="text" value=".*" name="wyrazenie" ><br> 
            <select name="kategoria">
                <option value="1" >Tytu&#322</option>
                <option value="2" >Opis</option>
                <option value="5" >Kategoria</option>
            </select><br>
            <input type="submit" name="filter" value="Filtruj" >
        </form>
    </center>
    </br>
        <center>
            <button><a href="<c:url value="/" />" >Strona g&#322&#243wna</a></button></center> </br>   <center>
                <button><a href="<c:url value="/biblioteka" />" >Dodaj ksi&#261&#380k&#281</a></button></center></br>
    <center>
        <table id="t2">
            <tr>
                <th><a href="home2?sort=0" style="color: blue">Id</a></th>
                <th><a href="home2?sort=1" style="color: blue">Tytu&#322</a></th>
                <th><a href="home2?sort=2" style="color: blue">Opis</a></th>
                <th><a href="home2?sort=3" style="color: blue">Imi&#281 Autora</a></th>
                <th><a href="home2?sort=4" style="color: blue">Nazwisko Autora</a></th>
                <th><a href="home2?sort=5" style="color: blue">Pochodzenie Autora</a></th>
                <th><a href="home2?sort=6" style="color: blue">Ilo&#347&#263</a></th>
                <th><a href="home2?sort=7" style="color: blue">Kategoria</a></th>
                <th>Usu&#324;</th>
                <th>Zmie&#324;</th>
            </tr>
            <c:forEach var="ksiazka" items="${home2}">
                <tr>
                    <td><c:out value="${ksiazka.id+1}" /></td>
                    <td><c:out value="${ksiazka.tytul}" /></td>
                    <td><c:out value="${ksiazka.opis}" /></td>
                    <td><c:out value="${ksiazka.imieAutora}" /></td>
                    <td><c:out value="${ksiazka.nazwiskoAutora}" /></td>
                    <td><c:out value="${ksiazka.pochodzenieAutora}" /></td>
                    <td><c:out value="${ksiazka.ilosc}" /></td>
                    <td><c:out value="${ksiazka.kategoria}" /></td>
                    <td><a href="home2?id=${ksiazka.id}&action=delete" style="color: blue; text-decoration:underline">Usu&#324;</a></td>
                    <td><a href="bibliotekazmien?id=${ksiazka.id}&action=update" style="color: blue; text-decoration:underline">Zmie&#324;</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </center>
    </br>
    <footer>
        <p id="1">Biblioteka</p>
    </footer>
</body>
</html>