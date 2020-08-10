<%-- 
    Document   : input
    Created on : Jul 31, 2020, 7:15:46 PM
    Author     : teacher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Registation Form * Form Tutorial</title>
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
	<div class="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h2 class="text-center">Input Student's Detail Information</h2>
			</div>
			<div class="panel-body">
                            <form method="post" action="data-student-post.html">
                                <div class="form-group">
				  <label for="fullname">Full name:</label>
                                  <input required="true" type="text" class="form-control" id="fullname" name="fullname"/>
				</div>
				<div class="form-group">
				  <label for="age">Age:</label>
				  <input required="true" type="number" class="form-control" id="age" name="age"/>
				</div>
				<div class="form-group">
				  <label for="address">Address:</label>
				  <input required="true" type="text" class="form-control" id="address" name="address"/>
				</div>
				<button class="btn btn-success">Save</button>
                            </form>
			</div>
		</div>
	</div>
</body>
</html>
