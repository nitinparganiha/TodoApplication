package com.Todo.Todo.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Todo.Todo.entity.Task;
import com.Todo.Todo.entity.User;
import com.Todo.Todo.jparepository.TaskjpaRepository;
import com.Todo.Todo.jparepository.Userjparepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@Controller
public class UserController {
@Autowired
Userjparepository u;
@Autowired
TaskjpaRepository t;
@RequestMapping("/")
public String home(HttpServletRequest req, HttpServletResponse resp) {
	return "login";
}

@RequestMapping("/login")
public String login(HttpServletRequest req,HttpServletResponse resp,Model model) {
	String email=req.getParameter("email");
	String pass=req.getParameter("pass");
	User us=u.findByEmailAndPass(email, pass);
	String ret="";
	if(us==null) {
		String credentia="Please enter right user name and password";
		model.addAttribute("text",credentia);
		
		ret="login";
	}else {
		HttpSession ses=req.getSession();
		ses.setAttribute("user",us);
		
		List<Task>ts=t.findByEmail(email);
		ses.setAttribute("mytask", ts);
		ret="task";
	}
	return ret;
}


@RequestMapping("/reg")
public String Reg(HttpServletRequest req, HttpServletResponse resp) {
	return "register";
}

@RequestMapping("/register")
public String register(HttpServletRequest req,HttpServletResponse resp) {
	String email=req.getParameter("email");
	String name=req.getParameter("name");
	String con=req.getParameter("con");
	String pass1=req.getParameter("pass1");
	String pass2=req.getParameter("pass2");
	String ret="";
	if(pass1.equals(pass2)) {
		User us=new User();
		us.setEmail(email);
		us.setName(name);
		long cont=Long.parseLong(con);
		us.setContact(cont);
		us.setPass(pass1);
		u.save(us);
		ret="login";
	}else {
		ret="register";
	}
	return ret;
}

@RequestMapping("add")
public String Add(HttpServletRequest req,HttpServletResponse resp) {
	return "addtask";
}

@RequestMapping("/addtask")
public String Addtask(HttpServletRequest req, HttpServletResponse resp) {
	List<Task> ts=t.findAll();
	String date=req.getParameter("date");
	String task=req.getParameter("task");
	HttpSession hs=req.getSession();
	User use= (User)hs.getAttribute("user");
//	System.out.println(use.getEmail());
	Task tsk=new Task();
	tsk.setId(ts.size()+1);
	tsk.setDate(date);
	tsk.setTask(task);
	tsk.setTaskno(ts.size()+1);
	tsk.setFinish("Not");
	tsk.setEmail(use.getEmail());
	t.save(tsk);
	
	List<Task>tl=t.findByEmail(use.getEmail());
	hs.setAttribute("mytask", tl);
	
	
	return "task";
}

@RequestMapping("/updatetask")
public String updatetask(HttpServletRequest req, HttpServletResponse resp) {
	String tskno=req.getParameter("tskno");
	String tskid=req.getParameter("tskid");
	int taskno=Integer.parseInt(tskno);
	int taskid=Integer.parseInt(tskid);
	String task=req.getParameter("task");
	String email=req.getParameter("mail");
	String date=req.getParameter("date");
	Task ts=new Task();
	ts.setFinish("finish");
	ts.setTaskno(taskno);
	ts.setId(taskid);
	ts.setDate(date);
	ts.setEmail(email);
	ts.setTask(task);
	t.save(ts);
	
	HttpSession hs=req.getSession();
	List<Task>tas=t.findByEmail(email);
	hs.setAttribute("mytask", tas);
	
	return "task";
}

@RequestMapping("/finish")
public String finish(HttpServletRequest req, HttpServletResponse resp) {
	return "finish";
}

@RequestMapping("/todos")
public String todos(HttpServletRequest req, HttpServletResponse resp) {
	return "task";
}

@RequestMapping("/home")
public String homes(HttpServletRequest req,HttpServletResponse resp) {
	return "task";
}

@RequestMapping("/logout")
public String logout(HttpServletRequest req,HttpServletResponse resp) {
	HttpSession hs=req.getSession();
	hs.invalidate();
	return "login";
}

@RequestMapping("/profile")
public String Profile(HttpServletRequest req,HttpServletResponse resp) {
	return "updateprofile";
}

@RequestMapping("/updateprofile")
public String updateprofile(HttpServletRequest req, HttpServletResponse resp) {
	String email=req.getParameter("email");
	String name=req.getParameter("name");
	String con=req.getParameter("con");
	String check=req.getParameter("check");
	String pass1=req.getParameter("pass1");
	String pass2=req.getParameter("pass2");
	
	HttpSession hts=req.getSession();
   User us=(User)hts.getAttribute("user");
   User user=new User();
   
   String ret="";
   if(pass1.equals(pass2)) {
   
   user.setEmail(email);
   user.setName(name);
   long co=Long.parseLong(con);
   user.setContact(co);
   user.setPass(pass1);
   user.setConfpass(pass2);
   u.save(user);
		   ret="task";
	   }else {
		   ret="updateprofile";
	   }
   
   return ret;
}

@RequestMapping("/regtolog")
public String regtolog(HttpServletRequest req,HttpServletResponse resp){
	return "login";
}

}