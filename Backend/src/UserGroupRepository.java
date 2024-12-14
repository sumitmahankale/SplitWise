package com.Repository;

import com.Model.UserGroup;
import org.springframework.data.jpa.repository.JpaRepository;
import java.util.Optional;

public interface UserGroupRepository extends JpaRepository<UserGroup, Long> {

    // Custom query to find a group by its name
    Optional<UserGroup> findByName(String name);
}
