<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>
<body>


<h2>Dear Employee, pls enter your details</h2>

<br>
<br>
<br>

<form:form action="showDetails" modelAttribute="employee">
    Name <form:input path="name"/>
    <br><br>
    Surname <form:input path="surName"/>
    <br><br>
    Salary <form:input path="salary"/>
    <br><br>
    Department<form:select path="department">
    <%--    <form:option value="InfoTeh" label="IT"/>--%>
    <%--    <form:option value="Human Resourses" label="HR"/>--%>
    <%--    <form:option value="Sales" label="Sales"/>--%>
    <form:options items="${employee.departments}"/>

</form:select>

    Which car do u want?
<%--    BMW <form:radiobutton path="carBrand" value="BMV"/>--%>
<%--    Audi <form:radiobutton path="carBrand" value="Audi"/>--%>
<%--    MB <form:radiobutton path="carBrand" value="Mers"/>--%>
    <form:radiobuttons path="carBrand"  items="${employee.carBrands}"/>
    <br><br>
    Foreign Language(s)
<%--    EN<form:checkbox path="languages" value="English"/>--%>
<%--    FR<form:checkbox path="languages" value="French"/>--%>
<%--    De<form:checkbox path="languages" value="Deutch"/>--%>
    <form:checkboxes path="languages" items="${employee.languageList}"/>
    <br><br>
    <input type="submit" value="OK"/>


</form:form>

<%--<form action="showDetails" method="get">--%>
<%--    <input type="text" name="employeeName"--%>
<%--           placeholder="Write your name"/>--%>
<%--    <input type="submit"/>--%>
<%--</form>--%>


</body>


</html>
