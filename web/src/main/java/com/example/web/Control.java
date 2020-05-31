package com.example.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
	public class Control { 
	@Autowired
	   UserRepository person;
	

//schema               - >1
//index->logIn->choice-> hello 2 ->finalBill (nuse)
	       //          - >3
	
	//Action by index
	 @RequestMapping("/log")
	   public String printLog(HttpServletRequest user) {
		 //  HttpSession session = user.getSession();
		  // int[][] arr = (int[][]) session.getAttribute("chair");
		   
		 //  System.out.println(arr[0][0]);
		      return "logIn";
		   }
	//Action by logIn to log in
	 @RequestMapping("/logIn")
	   public String signIn(HttpServletRequest user) {
		 HttpSession session = user.getSession();  
		   	String   name =  (String) user.getParameter("Name");
		  session.setAttribute("Name", name);
		  // 	Integer  chair = Integer.parseInt(user.getParameter("chair")) ;
		//  	String   cinema =  (String) user.getParameter("cinema");
		  //  User U1 = new User(name);
		   // person.save(U1);
		   
		   	//user.setAttribute("name", name);
		   	
		 return "/choice";
	 }
	 
	 @RequestMapping("/choice")
	   public String choice(HttpServletRequest user) {
		//   HttpSession session = user.getSession();   
		  // int[][] arr = (int[][]) session.getAttribute("chair");
		  // String s = (String) session.getAttribute("cinema");
		   //   System.out.println(s);
			//  System.out.println(arr[0][0]);
	      return "/hello";
       }
	 

	   @RequestMapping("/hello")
	   public String printHello(HttpServletRequest user){
		   HttpSession session = user.getSession();   
		  //  int[][] arr = (int[][]) session.getAttribute("chair");
		  // String s = (String) session.getAttribute("cinema");
		  // System.out.println(tableValue);
		 //  String[] r = (String[]) user.getParameterValues("tableValue");
		   
		 //  session.setAttribute("tableValue", tableValue);
		   String r =  (String) user.getParameter("tableValue");

		     String strArr[] = r.split(",");
		     int numArr[] = new int[strArr.length];
		        for (int i = 0; i < strArr.length; i++) {
		            numArr[i] = Integer.parseInt(strArr[i]);
		        //    System.out.println(numArr[i]);
		        }

		     int raw[] = new int[numArr.length / 2];
			 int chairs[] = new int[numArr.length / 2];
				 
				 // отделяем пары ряд-стул
		     for (int i = 0; i < numArr.length / 2; i++) {
		    	 raw[i] = numArr[2*i];
		    	 chairs[i] = numArr[2*i+1];
		    	 System.out.println("Raw " + raw[i]);
		    	 System.out.println("Chair " + chairs[i]);
		     }
		     
			  session.setAttribute("chair", chairs);
			  session.setAttribute("raw", raw);
			//String   name =  (String) user.getParameter("Name");
		 	String name = (String) session.getAttribute("Name");
		 	System.out.println(name);
		   
		  // Object q =  user.getAttribute("tableValue");
		   
		 //  String sas = (String) session.getAttribute("Sas");
		 //  System.out.println(sas);
		   
		  //  System.out.println(q);
		  // System.out.println(r);
		     
			//  System.out.println(arr[0][0]);
	      return "finalBill";
         }
	   
	 //Looking for chair in the cinema
	 @RequestMapping("/finalBill")
	   public String finalBill(HttpServletRequest user) {
		 HttpSession session = user.getSession(); 
		   String name = (String) session.getAttribute("Name");
		   int[] raw = (int[]) session.getAttribute("chair");
		   int[] chair = (int[]) session.getAttribute("raw");
		   
		//  System.out.println(name);
		//   for(int i = 0; i < raw.length; i++) {
		//	   System.out.println("final receive" + raw[i]);
		//	   System.out.println(chair[i]);
		 //  }
		   
		  //   String[] r = (String[]) user.getParameterValues("tableValue");
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
