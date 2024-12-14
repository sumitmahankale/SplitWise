package com.Service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Model.UserGroup;
import com.Repository.UserGroupRepository;

@Service
public class GroupService {

    @Autowired
    private UserGroupRepository groupRepository;
    
    @Autowired
    private UserGroupRepository userGroupRepository;

    public List<UserGroup> getAllGroups() {
        return groupRepository.findAll();
    }

    public UserGroup getGroupById(Long id) {
        return groupRepository.findById(id).orElse(null);
    }

    public UserGroup saveGroup(UserGroup group) {
        return groupRepository.save(group);
    }
    public List<UserGroup> findAllGroups() {
        return userGroupRepository.findAll();
    }
    public UserGroup findById(Long groupId) {
        Optional<UserGroup> optionalGroup =groupRepository.findById(groupId);
        if (optionalGroup.isPresent()) {
            return optionalGroup.get();
        } else {
            // Handle the case where the group is not found (could throw an exception or return null)
            throw new IllegalArgumentException("Group not found with id: " + groupId);
        }
    }

  
}
