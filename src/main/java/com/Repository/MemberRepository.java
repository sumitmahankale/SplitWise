package com.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Model.Member;
import com.Model.UserGroup;

public interface MemberRepository extends JpaRepository<Member, Long> {

	List<Member> findByGroup(UserGroup group);
	 List<Member> findByGroupId(Long groupId);
}
