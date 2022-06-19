package com.testing4everyone.userservice.service;

import com.testing4everyone.userservice.domain.Role;
import com.testing4everyone.userservice.domain.User;

import java.util.List;

public interface UserService {
    User saveUser(User user);
    Role saveRole(Role role);
    void addRoleToUser(String username, String roleName);
    User getUser(String username);
    List<User>getUsers();
}
