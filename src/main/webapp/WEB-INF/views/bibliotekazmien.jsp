<%@include file="./includes/common.jsp"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Zmiana rekordu w bibliotece</title>
        <link rel="icon" href="<c:url value="/resources/favicon.ico" />" type="image/x-icon">
          <link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<h1>Zmiana rekordu w bibliotece</h1>
	<form:form modelAttribute="ksiazka">
		<table id="t1">
                    <tr>
                        <td><label for="tytul">Tytu&#322:</label></td>
                        <td><form:input path="tytul"/></td>
                        <td><form:errors path="tytul" cssStyle="color: #ff0000;"/></td>
                    </tr>
                    <tr>
                        <td><label for="opis">Opis:</label></td>      
                        <td><form:input path="opis"/></td>
                        <td><form:errors path="opis" cssStyle="color: #ff0000;"/></td>
                    </tr>
                    <tr>
                        <td><label for="imieAutora"> Imi&#281: </label></td>     
                        <td><form:input path="imieAutora" /></td>
                        <td><form:errors path="imieAutora" cssStyle="color: #ff0000;"/></td>
                    </tr>
                    <tr>
                    <td><label for="nazwiskoAutora"> Nazwisko: </label></td>     
                    <td><form:input path="nazwiskoAutora" /></td>
                    <td><form:errors path="nazwiskoAutora" cssStyle="color: #ff0000;"/></td>
                    </tr>
                    <td><label for="pochodzenieAutora"> Pochodzenie Autora: </label></td>     
                    <td><form:input path="pochodzenieAutora"/></td>
                    <td><form:errors path="pochodzenieAutora" cssStyle="color: #ff0000;"/></td>
                    </tr>
                    <tr>
                        <td><label for="ilosc">Ilo&#347&#263:</label></td>     
                        <td><form:input path="ilosc" type="number"/></td>
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
                        <td><form:errors path="kategoria" cssStyle="color: #ff0000;"/></td>
                    </tr>
                </table>
                <br/>
		<input type="submit" value="Zmie&#324;" />
		<form:hidden path="id"/>
	</form:form>
</body>
</html>