<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login driver</title>
</head>
<body>
<div class="wrapper fadeInDown">
    <div id="formContent">
        <form method="POST" action="${pageContext.request.contextPath}/login">
            <h4>Login page</h4>
            <h4 style="color: red">${errorMsg}</h4>
            <form>
                <input type="text" name="login" placeholder="login" required>
                <input type="password" name="password" placeholder="password" required>
                <input type="submit" value="Log In">
            </form>
        </form>
        <h4><a href="${pageContext.request.contextPath}/drivers/add">Register</a></h4>
    </div>
</div>
</body>
</html>
