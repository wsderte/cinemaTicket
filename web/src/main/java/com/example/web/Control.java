package com.example.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
	public class Control { 
	@Autowired
	   UserRepository person;
	

//schema       ->1
//index->logIn-> hello 2 ->result (nuse)
	       //  ->3
	
	//Action by index
	 @RequestMapping("/log")
	   public String printLog(HttpServletRequest user) {
		   HttpSession session = user.getSession();
		  // int[][] arr = (int[][]) session.getAttribute("chair");
		   
		 //  System.out.println(arr[0][0]);
		      return "logIn";
		   }
	//Action by logIn to log in
	 @RequestMapping("/logIn")
	   public String signIn(HttpServletRequest user) {
		   	String   name =  (String) user.getParameter("Name");
		  // 	Integer  chair = Integer.parseInt(user.getParameter("chair")) ;
		//  	String   cinema =  (String) user.getParameter("cinema");
		  //  User U1 = new User(name);
		   // person.save(U1);
		   
		   	//user.setAttribute("name", name);
		   	
		 return "redirect:/hello";
		 }
	 

	   @RequestMapping("/hello")
	   public String printHello(HttpServletRequest user) {
		   HttpSession session = user.getSession();   
		   int[][] arr = (int[][]) session.getAttribute("chair");
		   String s = (String) session.getAttribute("cinema");
		      System.out.println(s);
			  System.out.println(arr[0][0]);
	      return "hello";
         }
	   
	 //Looking for chair in the cinema
	 @RequestMapping("/finalBill")
	   public String finalBill(HttpServletRequest user) {
		 //  System.out.println((String) user.getParameter("name"));
		      return "finalBill";
		   }
	   
	   
	  //Add to DataBase (end)
	//   @RequestMapping("/result")
	//   public String finalRes(HttpServletRequest user) {
	//	   HttpSession session = user.getSession();
	//	   
	//	      return "result";
	//	   }
	   
	 
	 
	//   @RequestMapping("/hi")
	//   public String printHo(ModelMap model) {
	//	      model.addAttribute("message", "Hello ");
	//	      return "hi";
	//	   }
	   
	  
	   
	//   @RequestMapping("/hi")
	//   public String printHi(HttpServletRequest user) {
	//	     System.out.println((String) user.getParameter("Name"));
	//	      return "finalBill";
	//	   }
	   
	   
	   
	}
