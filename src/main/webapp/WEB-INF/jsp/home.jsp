<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-10-16
  Time: 오후 4:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="core" uri="jakarta.tags.core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h3>할일</h3>
<h4>
    <form action="/add" method="post">
        <input type="text" name="todo">
    </form>
</h4>
<h4>할일목록</h4>
<div>
    <table>
        <tr>
            <th>id</th>
            <th>todo</th>
            <th>inserted</th>
        </tr>
        <c:forEach items="${todoList}" var="todo">
            <tr>
                <td>${todo.id}</td>
                <td>${todo.todo}</td>
                <td>${todo.inserted}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
