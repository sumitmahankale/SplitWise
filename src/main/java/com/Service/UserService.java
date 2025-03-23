package com.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Model.Member;
import com.Model.UserGroup;
import com.Repository.MemberRepository;
import com.Repository.UserGroupRepository;

@Service
public class UserService {

    @Autowired
    private UserGroupRepository userGroupRepository;

    @Autowired
    private MemberRepository memberRepository;

    public List<UserGroup> getAllGroupsWithMembers() {
        List<UserGroup> groups = userGroupRepository.findAll();
        
        // Load members for each group using the group ID
        for (UserGroup group : groups) {
            List<Member> members = memberRepository.findByGroupId(group.getId());
            group.setMembers(members);  // Set the members for the group
        }

        return groups;
    }
}

