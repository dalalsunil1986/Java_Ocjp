<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="dbconfig.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String myname=request.getParameter("uname");
String mypwd=request.getParameter("pwd");
String myfname=request.getParameter("fname");
String mylname=request.getParameter("lname");

String sql= "insert into users(username,password,firstname,lastname) values('"+myname+"','"+mypwd+"','"+myfname+"','"+mylname+"')";

try{
	int action=conn.createStatement().executeUpdate(sql);
	conn.setAutoCommit(true);
	
	if(action>=1) {
		out.println("Saved");
			}
	else{
		out.println("Cannot Save");
	}
	}
catch(Exception e)
{
	e.printStackTrace();
}

%>
</body>
</html>