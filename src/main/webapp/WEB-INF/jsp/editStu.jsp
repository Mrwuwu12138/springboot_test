<%--
  Created by IntelliJ IDEA.
  User: 吴健义
  Date: 2020/7/11
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>编辑学生信息</title>
</head>
<body>
<form action="/updateStu" method="post">
    <table align="center" border="1">
        <tr>
            <td>id：</td>
            <td><input type="text" value="${stu.id}" name="id"></td>
        </tr>
        <tr>
            <td>name</td>
            <td><input type="text" value="${stu.name}" name="name"></td>
        </tr>
        <tr>
            <td>age</td>
            <td><input type="text" value="${stu.age}" name="age"></td>
        </tr>
        <tr>
            <td>sex</td>
            <td><input type="text" value="${stu.sex}" name="sex"></td>
        </tr>
        <tr><td><input type="submit" value="提交"></td></tr>
    </table>
</form>
</body>
</html>
