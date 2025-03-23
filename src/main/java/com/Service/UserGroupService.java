package com.Service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Model.UserGroup;
import com.Repository.UserGroupRepository;

@Service
public class UserGroupService {

    @Autowired
    private UserGroupRepository userGroupRepository;
    public void save(UserGroup group) {
        userGroupRepository.save(group);
    }
//    public UserGroup findById(Long groupId) {
//        return userGroupRepository.findById(groupId).orElse(null);
//    }
//   
//    public List<UserGroup> getAllGroups() {
//        return userGroupRepository.findAll();  
//    }
//    
}
