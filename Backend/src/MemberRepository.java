package com.Repository;

import com.Model.Member;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;

public interface MemberRepository extends JpaRepository<Member, Long> {

    // Custom query to find members by the group ID
    List<Member> findByGroupId(Long groupId);
    List<Member> findByIdIn(List<Long> memberIds);
}
