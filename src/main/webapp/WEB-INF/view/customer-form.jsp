<%--
  Created by IntelliJ IDEA.
  User: rasul.rasulzade
  Date: 7/27/2021
  Time: 11:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Customer form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div>
            <a href="${pageContext.request.contextPath}/customer/list">Back to list</a>
        </div>

        <form:form action="save-customer" modelAttribute="customer" method="POST">
            <form:hidden path="id"/>

            <table>
                <thbody>
                    <tr>
                        <td><label for="firstName">First name:</label></td>
                        <td><form:input id="firstName" path="firstName"/></td>
                    </tr>
                    <tr>
                        <td><label for="lastName">Last name:</label></td>
                        <td><form:input id="lastName" path="lastName"/></td>
                    </tr>
                    <tr>
                        <td><label for="email">Email:</label></td>
                        <td><form:input id="email" path="email"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Save"/></td>
                    </tr>
                </thbody>
            </table>
        </form:form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>
