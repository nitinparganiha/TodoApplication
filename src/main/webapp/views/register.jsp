<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

#todo{
margin-left: 650px;
color: orange;
font-size: 40px;	
}
#log{
margin-left: 650px;
margin-top:200px;
color: orange;
font-size: 30px;
}
#login{
margin-left: 540px;
}
.box{
width: 400px;
height: 30px;
margin-top: 10px;
border: solid 2.5px black;
}
#sub{
width: 400px;
height: 35px;
margin-top: 10px;
border: solid 2.5px white;
color: white;
background-color: orange;
border-radius: 10px;
}
#reg{
width: 400px;
height: 35px;
margin-top: 10px;
border: solid 2.5px white;
color: white;
border-radius: 10px;
background-color: orange;
}
#reg:hover{
color:red;
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
    <!--  
	<div id="nav">
	<form action="home" method="post">
	<input type="submit" value="Home" class="nav2" >
	</form>
	<form action="profile" method="post">
	<input type="submit" value="Profile" class="nav2">
	</form>
	<form action="logout" method="post">
	<input type="submit" value="Logout" class="nav2">
	</form>
	</div>
	-->
<h1 id="todo">TODO's</h1>
<h1 id="log">Registration</h1>
<div id="login">
<form action="register" method="post">
 <input type="email" name="email" required placeholder="Email" class="box"><br>
 <input type="text" name="name" placeholder="Name" class="box" required="required"><br>
<input type="text" name="con" placeholder="Contact" class="box" required="required"><br>
<input type="password" name="pass1" placeholder="Password" class="box" required="required"><br>
<input type="password" name="pass2" placeholder="Confirm password" class="box" required="required"><br>
<input type="submit" value="Register" id="sub">
</form>

<form action="regtolog" method="post">
<input type="submit" value="Login " id="reg"> 
</form>
</div>
</body>
</html>