package com.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.Model.UserGroup;
import com.Service.UserService;

@RestController
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/groups")
    public List<UserGroup> getAllGroupsWithMembers() {
        return userService.getAllGroupsWithMembers();
    }
}
