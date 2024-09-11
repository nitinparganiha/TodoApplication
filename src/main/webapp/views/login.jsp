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
border-radius: 5px;
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
border: none;
margin-left:50px;
margin-top: 50px; 
font-size: 20px; 
background-color: transparent;
} 
#reg:hover {
	color: red;
	border-radius: 5px;
}
</style>
</head>
<body>
<h1 id="todo">TODO's</h1>
<h1 id="log">Login</h1>
<div id="login">

<form action="login" method="post">
 <input type="email" name="email" placeholder="Email" class="box" required="required"> <br>
 <input type="password" name="pass" placeholder="Password" class="box" required="required"><br>
<input type="submit" value="Login" id="sub">
</form>
<h3>${text}</h3>
<form action="reg" method="post">
<input type="submit" value="Click here If don't have an account?" id="reg"> 
</form>
</div>
</body>
</html>