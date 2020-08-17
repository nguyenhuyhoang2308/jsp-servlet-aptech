<%-- 
    Document   : studentList
    Created on : Aug 14, 2020, 8:53:52 PM
    Author     : Asus
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>
    </head>
    <body>
        <h1 style="text-align: center; margin: 20px 0;">Student Management</h1>
        <table class="table table-bordered" style="width:100%">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Fullname</th>
                    <th>Gender</th>
                    <th>Email</th>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${studentList}">
                    <tr>
                        <td>${item.rollno}</td>
                        <td>${item.fullname}</td>
                        <td>${item.gender}</td>
                        <td>${item.email}</td>
                        <td>${item.address}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
