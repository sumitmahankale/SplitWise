package com.Controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Model.Member;
import com.Model.UserGroup;
import com.Service.MemberService;
import com.Service.UserGroupService;

@Controller
public class GroupController {

    @Autowired
    private UserGroupService userGroupService;

    @Autowired
    private MemberService memberService;

    @GetMapping("/addGroupWithMembers")
    public String showAddGroupForm() {
        return "addGroupWithMembers";
    }

    @PostMapping("/addGroupWithMembers")
    public String addGroupWithMembers(@RequestParam String groupName, @RequestParam List<String> memberEmails, Model model) {

        UserGroup group = new UserGroup();
        group.setName(groupName);
        userGroupService.save(group);

        
        for (String email : memberEmails) {
            Member member = new Member();
            member.setEmail(email);
            member.setGroup(group);
            memberService.save(member);
        }

        model.addAttribute("message", "Group and members added successfully!");
        return "SplitPage";  
    }

    @GetMapping("/group")
    public String showGroup(Model model) {
        model.addAttribute("group", "Test Group");
        return "group";  
    }
    
}
