<%@page import="jakarta.persistence.Query"%>
<%@page import="com.Todo.Todo.entity.Task"%>
<%@page import="java.util.List"%>
<%@page import="com.Todo.Todo.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#task{

}

#head1{
display: flex;
}

#finish{
margin-top: 30px;

color: orange;
font-size: 25px;
border-style: none;
}

#dt{
margin-left: 550px;
}
#sub{
width: 900px;
height: 35px;
margin-top: 10px;
margin-left:200px;
border: solid 2.5px white;
color: white;
background-color: orange;
border-radius: 10px;

}
#tn{
margin-left: 200px;
}
#tsk{
margin-left: 200px;
font-size: 25px;
}
#fn{
margin-left: 1000px;
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
User u=(User)hs.getAttribute("user");

List<Task> ts = (List)hs.getAttribute("mytask");
%>

<%
for(int i=0;i<ts.size();i++){
	Task tl=ts.get(i);
	if(tl.getFinish().equals("finish")){
		
	%>
	
	<div id="task">
	<form action="updatetask" method="post">
	<h1 id="dt">Date: <%=tl.getDate() %></h1>
	<h3 id="tn">Task <%=tl.getTaskno() %></h3>
	<p id="tsk"><%=tl.getTask() %></p>
	<input type="hidden" value="<%=tl.getDate()%>" name="date">
	<input type="hidden" value="<%=tl.getEmail()%>" name="mail">
	<input type="hidden" value="<%=tl.getTask()%>" name="task">
	<input type="hidden" value="<%=tl.getId()%>" name="tskid">
	<input type="hidden" value="<%=tl.getTaskno()%>" name="tskno">
	<input type="submit" value="FINISH" id="sub">
	</form>
	</div>
	
	<br>
<%	
	}
}
%>

<form action="add" method="post">
<input type="submit" value="ADD TASK"> 
</form>
<footer>
<div id="head1">
<form action="todos" method="post">
<input type="submit" value="TODOS" id="finish">
</form>
<h1 style="color:orange;"  id="fn">FINISH</h1>
</div>
</footer>
</body>
</html>