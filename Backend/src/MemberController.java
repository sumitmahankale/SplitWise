package com.Controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Model.Member;
import com.Service.MemberService;
import com.Service.GroupService;

@Controller
@RequestMapping("/members")
public class MemberController {

    @Autowired
    private MemberService memberService;

    @Autowired
    private GroupService groupService;

    @GetMapping("/add")
    public String showMemberForm(Model model) {
        model.addAttribute("groups", groupService.findAllGroups());
        model.addAttribute("member", new Member());
        return "addMember";
    }

    @PostMapping("/add")
    public String addMember(@ModelAttribute Member member, @RequestParam Long groupId) {
        memberService.addMemberToGroup(member, groupId);  // Call the service method
        return "redirect:/members/success";  // Redirect after success
    }


    @GetMapping("/success")
    public String success() {
        return "success";
    }
}
