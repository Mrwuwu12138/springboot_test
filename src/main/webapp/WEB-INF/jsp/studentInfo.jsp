<%--
  Created by IntelliJ IDEA.
  User: 吴健义
  Date: 2020/7/11
  Time: 13:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>helloJSP</title>
</head>
<body>
<table align="center" border="1">
    <tr>
        <td>id</td>
        <td>name</td>
        <td>age</td>
        <td>sex</td>
        <td>编辑</td>
        <td>删除</td>
    </tr>
    <c:forEach items="${page.content}" var="stu">
        <tr>
            <td>${stu.id}</td>
            <td>${stu.name}</td>
            <td>${stu.age}</td>
            <td>${stu.sex}</td>
            <td><a href="editStu?id=${stu.id}">编辑</a></td>
            <td><a href="deleteStu?id=${stu.id}">删除</a></td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="5">
            <a href="?start=0">首页</a>
            <a href="?start=${page.number-1}">上一页</a>
            <a href="?start=${page.number+1}">下一页</a>
            <a href="?start=${page.totalPages-1}">末页</a>
        </td>
    </tr>
</table>
<form action="/addStu" method="post">
    id:<input type="text" name="id"><br>
    名字:<input type="text" name="name"><br>
    年龄:<input type="text" name="age"><br>
    性别:<input type="text" name="sex"><br>
    <input type="submit" value="确定">
</form>
</body>
</html>
