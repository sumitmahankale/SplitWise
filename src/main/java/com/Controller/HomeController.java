package com.Controller;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Model.Admin;
import com.Model.UserCreation;
import com.Service.SplitwiseService;


@Controller
public class HomeController {

	@Autowired
	private SplitwiseService service; 
	
	
    @GetMapping("/my-endpoint")
    public ResponseEntity<String> getMyEndpoint() {
        return ResponseEntity.ok("Success");
    }

    // Correct method for POST requests
    @PostMapping("/my-endpoint")
    public ResponseEntity<String> postMyEndpoint() {
        return ResponseEntity.ok("Posted successfully");
    }
     
   
    
	@RequestMapping("loginpage")
	private String openPage()
	{
		return "Index";
	}
	@RequestMapping("/")
	private String LandingPage()
	{
		return "LandingPage";
	}
	
	@RequestMapping("/createaccount")
	private String CreateAccountPage()
	{
		return "CreateAccount";
	}
	@RequestMapping("forgotpass")
	private String ForgotPassWordPage()
	{
		return "ForgotPass";
	}
	@RequestMapping("/createnewuser")
	private String CreateNewUSer(@ModelAttribute UserCreation usercreation)
	{
		service.SaveUser(usercreation);
		return "CreateAccount";
	}
	
	@PostMapping("/log")
	@ResponseBody 
	public String login(@RequestParam String username, @RequestParam String password, HttpSession session) {
	    boolean isAuthenticated = service.authenticateUser(username, password);
	    if (isAuthenticated) {
	        session.setAttribute("loggedInUser", username); 
	        return "success"; 
	    } else {
	        return "failure"; 
	    }
	}
	    @RequestMapping("/home")
	    public String home(HttpSession session, Model model) {
	        String loggedInUser = (String) session.getAttribute("loggedInUser");

	        if (loggedInUser != null) {
	            model.addAttribute("username", loggedInUser); 
	            return "MainPage";
	        } else {
	            return "redirect:/"; 
	        }
	    }
	    
	    @RequestMapping("homepage")
	    private String returnhome()
	    {
	    	return "MainPage";
	    }
	    
	    @RequestMapping("notification")
	    private String notificationpage()
	    {
	    	return "NotificationPage";
	    }
	    
	    
	    
	    @RequestMapping("creategroup")
	    private String creategroup()
	    {
	    	return "CreateGroup";
	    }
	    
	    @RequestMapping("splitpage")
	    private String splitpage()
	    {
	    	return "SplitPage";
	    }
	   @RequestMapping("/report")
	   private String report()
	   {
		   return "Report";
	   }
	 @RequestMapping("/account")
	 private String account()
	   {
		   return "CurrentUser";
	   }
	 
		@RequestMapping("/adminpage")
		 private String admin()
		   {
			   return "AdminPage";
		   }
		
		@RequestMapping("/loginadmin")
		public String LoginPage(@RequestParam("name") String username,@RequestParam("password") String password, 
				Model model)
		{List<UserCreation>sList=service.loginCheckAdmin(username,password);
		if(sList!=null)
		{
			model.addAttribute("data",sList);
		 return "admindata";
		}
		else
		{
			return "AdminPage";
		}
		}
		@RequestMapping("/deleteuser")
		public String DeleteData(@RequestParam String user,Model model)
		{
			List<UserCreation> sList = service.deleteData(user);
			System.out.println(sList);
			model.addAttribute("data", sList);
			return "admindata";
		}
}


