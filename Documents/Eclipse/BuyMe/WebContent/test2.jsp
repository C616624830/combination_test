<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">



<title>JSP Multiple Checkbox</title>
</head>
<body>
<form name="form1" onsubmit="true">
<h3>Select your favorite Fruits</h3>
<p><input type="checkbox" name="fruit" value="Mango"/>Mango</p>
<p><input type="checkbox" name="fruit" value="Apple"/>Apple</p>
<p><input type="checkbox" name="fruit" value="Grapes"/>Grapes</p>
<p><input type="checkbox" name="fruit" value="Papaya"/>Papaya</p>
<p><input type="checkbox" name="fruit" value="Lychee"/>Lychee</p>
<p><input type="checkbox" name="fruit" value="Pineapple"/>Pineapple</p>
<p><input type="submit" value="submit"/>
</form>
<%
String fruits[]= request.getParameterValues("fruit");
if(fruits != null)
{
%>
<h4>I likes fruit/s mostly</h4>
<ul>
<%
for(int i=0; i<fruits.length; i++)
{
%>
<li><%=fruits[i]%></li>
<%
}
%>
</ul>
<%
}
%>
</body>
</html>