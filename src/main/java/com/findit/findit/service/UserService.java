package com.findit.findit.service;

import com.findit.findit.model.User;
import java.util.ArrayList;
import java.util.List;

public class UserService {
    private static final List<User> users = new ArrayList<>();

    static {
        users.add(new User(1, "Admin User", "admin@findit.com", "9841234567", "ADMIN", "ACTIVE"));
        users.add(new User(2, "Nishesh Chaudhary", "nishesh@gmail.com", "9801234567", "USER", "ACTIVE"));
        users.add(new User(3, "John Doe", "john@example.com", "9812345678", "USER", "SUSPENDED"));
    }

    public List<User> getAllUsers() { return users; }
    public boolean updateUserStatus(int id, String status) {
        return users.stream().filter(u -> u.getId() == id).findFirst().map(u -> {
            u.setStatus(status);
            return true;
        }).orElse(false);
    }
}

