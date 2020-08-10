<%-- 
    Document   : student
    Created on : Jul 31, 2020, 7:03:35 PM
    Author     : teacher
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="modal.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Danh Sach Sinh Vien - Fake</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"/>

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
            <%
        ArrayList<Student> studentList = new ArrayList<Student>();
        if(session.getAttribute("studentList") != null){
            studentList = (ArrayList<Student>) session.getAttribute("studentList");
        }
        %>
        <div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2 class="text-center">All Student List</h2>
			</div>
			<div class="panel-body">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Fullname</th>
                                        <th>Age</th>
                                        <th>Address</th>
                                    </tr>
                                </thead>
                            </table>
                            <tbody>
                                <%
                                    int index = 1;
                                    for (Student student : studentList){
                                %>
                                <tr>
                                    <td><%=index++%></td>
                                    <td><%=student.getFullname()%></td>
                                    <td><%=student.getAge()%></td>
                                    <td><%=student.getAddress()%></td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
			</div>
		</div>
	</div>
    </body>
</html>
