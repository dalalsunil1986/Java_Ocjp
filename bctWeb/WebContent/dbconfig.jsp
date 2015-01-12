<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
java.sql.Connection conn=null;
String url="jdbc:mysql://localhost:3306/myDb";
String Driver="com.mysql.jdbc.Driver";
String username="root";
String password="root";

try{
	Class.forName(Driver);
	conn=DriverManager.getConnection(url, username, password);
	if(conn!=null) {
		out.println("Connected");
	}
			else {
		out.println("Cannot connect to DB");
			}
}
catch (Exception e)
{
	e.printStackTrace();
}


%>
</body>
</html>