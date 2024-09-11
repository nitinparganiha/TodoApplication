<%@page import="com.Todo.Todo.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#login{
margin-left: 540px;
}
.box{
width: 400px;
height: 30px;
margin-top: 10px;
border: solid 2.5px black;
border-radius: 5px;
}
#sub{
width: 400px;
height: 35px;
margin-top: 10px;
border: solid 2.5px white;
color: white;
background-color: orange;
border-radius: 5px;
}
#nav{
display: flex;
}
.nav2{
margin-left: 270px;
width: 100px;
background-color: orange;
font-size: 15px;
border: none;
border-radius: 10px;
}

</style>
</head>
<body>
<div id="nav">
	<form action="home" method="post">
	<input type="submit" value="Home" class="nav2">
	</form>
	<form action="profile" method="post">
	<input type="submit" value="Profile" class="nav2">
	</form>
	<form action="logout" method="post">
	<input type="submit" value="Logout" class="nav2">
	</form>
	
	</div>

<%

HttpSession hs=request.getSession();
User us=(User) hs.getAttribute("user");

%>
<div id="login">
<form action="updateprofile" method="post">
<input type="email" placeholder="<%=us.getEmail() %>" name="email" class="box" ><br>
<input type="text" placeholder="<%=us.getName() %>" name="name" class="box"><br>
<input type="text" placeholder="<%=us.getContact()%>" name="con" class="box"><br>


<input type="password" name="pass1" placeholder="<%=us.getPass()%>" class="box"><br>
<input type="password" name="pass2" placeholder="<%=us.getConfpass()%>" class="box"><br>
<input type="submit" value="UPDATE TASKLIST" id="sub">
</form>
</div>
</body>
</html>