<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="ru.javawebinar.topjava.model.Meal" %>
<%@ page import="java.util.List" %>
<%@ page import="ru.javawebinar.topjava.model.MealTo" %>
<%@ page import="ru.javawebinar.topjava.util.DateUtil" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>

<table border="1" cellpadding="8" cellspacing="0" style="margin: auto">
    <tr>
        <th>Date</th>
        <th>Description</th>
        <th>Calories</th>
        <th></th>
        <th></th>
    </tr>

    <c:forEach items="${meals}" var="meal">
        <jsp:useBean id="meal" type="ru.javawebinar.topjava.model.MealTo"/>
        <tr style="color: ${(meal.excess ? 'red' : 'green')}">
            <td><%=DateUtil.formatLocalDateTime(meal.getDateTime(), "dd.MM.yyyy HH:mm")%></td>
            <td><%=meal.getDescription()%></td>
            <td><%=meal.getCalories()%></td>
            <td><a href>Update</a></td>
            <td><a href>Delete</a></td>
        </tr>
    </c:forEach>

</table>

</body>
</html>