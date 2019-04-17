<%
    if ((session.getAttribute("user") == null)) {
%>
Thanks for creating an Account<br/>
<a href="login.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("user")%>  

//this will display the username that is stored in the session.
<a href='logout.jsp'>Log out</a>
<%
    }
%>