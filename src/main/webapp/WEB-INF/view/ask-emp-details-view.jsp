<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>

<html>
<body>


<h2>Dear Employee, pls enter your details</h2>

<br>
<br>
<br>

<form:form action="showDetails" modelAttribute="employee">
    <form:input path="name"/>
    <br><br>
    <form:input path="surName"/>
    <br><br>
    <form:input path="salary"/>
    <br><br>
    <input type="submit" value="OK"/>
    <br><br>

</form:form>

<%--<form action="showDetails" method="get">--%>
<%--    <input type="text" name="employeeName"--%>
<%--           placeholder="Write your name"/>--%>
<%--    <input type="submit"/>--%>
<%--</form>--%>


</body>


</html>
