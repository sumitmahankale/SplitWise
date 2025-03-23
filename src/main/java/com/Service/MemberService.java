package com.Service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Model.Member;
import com.Model.UserGroup;
import com.Repository.MemberRepository;
import com.Repository.UserGroupRepository;

@Service
public class MemberService {

    @Autowired
    private MemberRepository memberRepository;

    @Autowired
    private UserGroupRepository userGroupRepository;
    /**
     * Save a new Member to the database.
     * @param member - the Member entity to save.
     */
    public void save(Member member) {
        memberRepository.save(member);
    }
    public Member findById(Long memberId) {
        return memberRepository.findById(memberId).orElse(null);
    }
//    public void addMemberToGroup(Member member, Long groupId) {
//      
//        UserGroup group = userGroupRepository.findById(groupId).orElse(null);
//
//        if (group != null) {
//          
//            member.setGroup(group);
//
//
//            memberRepository.save(member);
//        } else {
//      
//            throw new IllegalArgumentException("Group with ID " + groupId + " does not exist.");
//        }
//    }
    public List<Member> findAllMembers() {
        return memberRepository.findAll();  
    }
    
    

    
    
}
