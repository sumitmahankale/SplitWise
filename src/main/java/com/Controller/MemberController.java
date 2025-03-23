package com.Controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Model.Member;
import com.Service.GroupService;
import com.Service.MemberService;

@Controller
@RequestMapping("/members")
@CrossOrigin(origins="http://localhost:8080/")
public class MemberController {

    @Autowired
    private MemberService memberService;

 

  


    @GetMapping("/success")
    public String success() {
        return "success";
    }
   
//    @GetMapping("/display")
//    public ResponseEntity<?>getAllMember()
//    {
//    	try {
//    	List<Member>member=memberService.getAllMembers();
//		return ResponseEntity.ok(member);
//    	}catch(Exception e)
//    	{
//    		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Eror while"+e.getMessage());
//    	}
//    }
    @GetMapping("/display")
    public ResponseEntity<?>getAllMember()
    {
    	try {
    	List<Member>member=memberService.findAllMembers();
		return ResponseEntity.ok(member);
    	}catch(Exception e)
    	{
    		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Eror while"+e.getMessage());
    	}
    }
    
}
