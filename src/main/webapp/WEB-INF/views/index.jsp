<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Personal area</title>
</head>
<body>
<form method="post"> </form>
<h1>MENU</h1>
<table border="1">
    <tr>
        <th>Redirect to</th>
    </tr>
    <td><h2>Cars</h2></td>
    <tr><td><a href="${pageContext.request.contextPath}/cars/">Display All Cars</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/cars/add">Create new Car</a></td></tr>
    <td><h2>Drivers</h2></td>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/">Display All Drivers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/drivers/add">Create new Driver</a></td></tr>
    <td><h2>Manufacturers</h2></td>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/">Display All Manufacturers</a></td></tr>
    <tr><td><a href="${pageContext.request.contextPath}/manufacturers/add">Create new Manufacturer</a></td></tr>
    <td><h2>***</h2></td>
    <tr><td><a href="${pageContext.request.contextPath}/cars/drivers/add">Add Driver to Car</a></td></tr>
</table>
</body>
</html>
