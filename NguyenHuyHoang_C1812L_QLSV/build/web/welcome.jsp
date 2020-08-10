<%-- 
    Document   : welcome
    Created on : Jul 31, 2020, 7:23:55 PM
    Author     : teacher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
//        String name = (String) request.getParameter("name");
        String fullname = (String) session.getAttribute("s_fullname");
        Cookie[] cookieLIst = request.getCookies();
        String k_fullname = "";
        for (Cookie elem : cookieLIst) {
            if(elem.getName().equals("k_fullname")) {
                k_fullname = elem.getValue();
            }
        }
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome - <%=fullname%></title>
    </head>
    <body>
        <h1>Session: Welcome <%=fullname%>!</h1>
        <h1>Cookie Welcome <%=k_fullname%>!</h1>
        <h2>
            <a href="danh-sach-sinh-vien.html">Xem danh sách sinh viên</a>
        </h2>
    </body>
</html>
