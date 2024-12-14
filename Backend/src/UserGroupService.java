package com.Service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Model.UserGroup;
import com.Repository.UserGroupRepository;

@Service
public class UserGroupService {

    @Autowired
    private UserGroupRepository userGroupRepository;

    /**
     * Save a new UserGroup to the database.
     * @param group - the UserGroup entity to save.
     */
    public void save(UserGroup group) {
        userGroupRepository.save(group);
    }

    /**
     * Find a UserGroup by its ID.
     * @param groupId - the ID of the UserGroup.
     * @return UserGroup - the group with the given ID.
     */
    public UserGroup findById(Long groupId) {
        return userGroupRepository.findById(groupId).orElse(null);
    }
}
