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
.box1{
width: 400px;
height: 100px;
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
margin-bottom: 80px;
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

<div id="login">
<form action="addtask" method="post">
<input type="date" placeholder="Date" name="date" class="box" required="required"><br>
<input type="text" placeholder="Please enter task here" name="task" class="box1" required="required"><br>
<input type="submit" value="ADD TASK" id="sub"> 
</form>
</div>
</body>
</html>