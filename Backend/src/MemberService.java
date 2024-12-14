package com.Service;



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

    /**
     * Find a Member by its ID.
     * @param memberId - the ID of the Member.
     * @return Member - the member with the given ID.
     */
    public Member findById(Long memberId) {
        return memberRepository.findById(memberId).orElse(null);
    }
    public void addMemberToGroup(Member member, Long groupId) {
        // Find the group by its ID
        UserGroup group = userGroupRepository.findById(groupId).orElse(null);

        if (group != null) {
            // Set the group for the member
            member.setGroup(group);

            // Save the member to the database
            memberRepository.save(member);
        } else {
            // Handle the case where the group is not found (optional)
            throw new IllegalArgumentException("Group with ID " + groupId + " does not exist.");
        }
    }
}
