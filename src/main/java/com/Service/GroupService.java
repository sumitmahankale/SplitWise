package com.Service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Model.Member;
import com.Model.UserGroup;
import com.Repository.MemberRepository;
import com.Repository.UserGroupRepository;

@Service
public class GroupService {

    @Autowired
    private UserGroupRepository groupRepository;
    
    @Autowired
    private UserGroupRepository userGroupRepository;
    
    @Autowired
    private MemberRepository memberRepository;

    public List<UserGroup> getAllGroups() {
        return groupRepository.findAll();
    }

//    public UserGroup getGroupById(Long id) {
//        return groupRepository.findById(id).orElse(null);
//    }

    public UserGroup saveGroup(UserGroup group) {
        return groupRepository.save(group);
    }
    public List<UserGroup> findAllGroups() {
        return userGroupRepository.findAll();
    }
    public List<UserGroup> getAllGroupsWithMembers() {
        return userGroupRepository.findAll();
    }

   
//    public UserGroup getGroupWithMembers(Long groupId) {
//        return userGroupRepository.findById(groupId).orElseThrow(() -> new RuntimeException("Group not found"));
//    }
//    public Optional<UserGroup> getGroupById1(Long groupId) {
//        return groupRepository.findById(groupId);
//    }
//    
    public List<Member> getMembersByGroupId(Long groupId) {
        return memberRepository.findByGroupId(groupId);
    }
}
