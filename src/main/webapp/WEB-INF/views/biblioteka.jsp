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
        <h1>
            Biblioteka
        </h1>
        <div id="left">
            <form:form modelAttribute="ksiazka">

                <table id="t1">
                    <tr>
                        <td><label for="tytul">Tytu&#322:</label></td>
                        <td><form:input path="tytul"/></td>
                    </tr>
                    <tr><td></td>
                        <td><form:errors path="tytul" cssStyle="color: #ff0000;"/></td>
                    </tr>
                    <tr>
                        <td><label for="opis">Opis:</label></td>      
                        <td><form:input path="opis"/></td>
                    </tr>
                    <tr><td></td>
                        <td><form:errors path="opis" cssStyle="color: #ff0000;"/></td>
                    </tr>
                    <tr>
                        <td><label for="imieAutora"> Imi&#281: </label></td>     
                        <td><form:input path="imieAutora" /></td>
                    </tr>
                    <tr><td></td>
                        <td><form:errors path="imieAutora" cssStyle="color: #ff0000;"/></td>
                    </tr>
                    <tr>
                        <td><label for="nazwiskoAutora"> Nazwisko: </label></td>     
                        <td><form:input path="nazwiskoAutora" /></td>
                    </tr>
                    <tr><td></td>
                        <td><form:errors path="nazwiskoAutora" cssStyle="color: #ff0000;"/></td>
                    </tr>
                    <td><label for="pochodzenieAutora"> Pochodzenie Autora: </label></td>     
                    <td><form:input path="pochodzenieAutora"/></td>
                    </tr>
                    <tr><td></td>
                        <td><form:errors path="pochodzenieAutora" cssStyle="color: #ff0000;"/></td>
                    </tr>
                    <tr>
                        <td><label for="ilosc">Ilo&#347&#263:</label></td>     
                        <td><form:input path="ilosc" type="number"/></td>
                    </tr>
                    <tr><td></td>
                        <td><form:errors path="ilosc" cssStyle="color: #ff0000;"/></td>
                    </tr>

                    <tr>
                        <td><label for="kategoria">Kategoria:</label></td> 
                        <td>
                            <select id="kategoria" name="kategoria">
                                <option value="Biografia">Biografia</option>
                                <option value="Fantastyka">Fantastyka</option>
                                <option value="Historyczna">Historyczna</option>
                                <option value="Horror">Horror</option>
                                <option value="Literatura popularnonaukowa">Literatura popularnonaukowa</option>
                                <option value="Literatura dzieci&#281ca">Literatura dzieci&#281ca</option>
                                <option value="Klasyka">Klasyka</option>
                                <option value="Poezja">Poezja</option>
                                <option value="Przygodowa">Przygodowa</option>
                                <option value="Romans">Romans</option>
                                <option value="Satyra">Satyra</option>
                                <option value="Sensacja">Sensacja</option>
                                <option value="Thriller">Thriller</option>
                            </select>
                        </td>
                    </tr>
                    <tr><td></td>
                        <td><form:errors path="kategoria" cssStyle="color: #ff0000;"/></td>
                    </tr>
                </table>
                <br/>
                <input type="submit" value="Dodaj" formaction="biblioteka"
                       formmethod="post" />
            </form:form>
            <form action="biblioteka" method="get">
                <input type="text" value=".*" name="wyrazenie" ><br> 
                <select name="kategoria">
                    <option value="1" >Tytu&#322</option>
                    <option value="2" >Opis</option>
                    <option value="5" >Kategoria</option>
                </select><br>
                <input type="submit" name="filter" value="Filtruj" >
            </form>
        </div>
        <div id="right">
            <table id="t2">
                <tr>
                    <th><a href="biblioteka?sort=0">Id</a></th>
                    <th><a href="biblioteka?sort=1">Tytu&#322</a></th>
                    <th><a href="biblioteka?sort=2">Opis</a></th>
                    <th><a href="biblioteka?sort=3">Imi&#281 Autora</a></th>
                    <th><a href="biblioteka?sort=4">Nazwisko Autora</a></th>
                    <th><a href="biblioteka?sort=5">Pochodzenie Autora</a></th>
                    <th><a href="biblioteka?sort=6">Ilo&#347&#263</a></th>
                    <th><a href="biblioteka?sort=7">Kategoria</a></th>
                    <th>Usu&#324;</th>
                    <th>Zmie&#324;</th>
                </tr>
                <c:forEach var="ksiazka" items="${biblioteka}">
                    <tr>
                        <td><c:out value="${ksiazka.id+1}" /></td>
                        <td><c:out value="${ksiazka.tytul}" /></td>
                        <td><c:out value="${ksiazka.opis}" /></td>
                        <td><c:out value="${ksiazka.imieAutora}" /></td>
                        <td><c:out value="${ksiazka.nazwiskoAutora}" /></td>
                        <td><c:out value="${ksiazka.pochodzenieAutora}" /></td>
                        <td><c:out value="${ksiazka.ilosc}" /></td>
                        <td><c:out value="${ksiazka.kategoria}" /></td>
                        <td><a href="biblioteka?id=${ksiazka.id}&action=delete">Usu&#324;</a></td>
                        <td><a href="bibliotekazmien?id=${ksiazka.id}&action=update">Zmie&#324;</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <footer>
            <p id="1">Biblioteka</p>
        </footer>
    </body>
</html>