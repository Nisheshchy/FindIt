package com.findit.findit.controller;

import com.findit.findit.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/users")
public class AdminUsersController extends HttpServlet {
    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("usersList", userService.getAllUsers());
        request.getRequestDispatcher("/admin/manage-users.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String userIdStr = request.getParameter("userId");

        if (userIdStr != null && action != null) {
            int userId = Integer.parseInt(userIdStr);
            if ("SUSPEND".equals(action)) {
                userService.updateUserStatus(userId, "SUSPENDED");
            } else if ("ACTIVATE".equals(action)) {
                userService.updateUserStatus(userId, "ACTIVE");
            }
        }
        response.sendRedirect(request.getContextPath() + "/admin/users");
    }
}
