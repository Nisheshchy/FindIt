package com.findit.findit.controller;

import com.findit.findit.service.ItemService;
import com.findit.findit.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/adminDashboard")
public class AdminDashboardController extends HttpServlet {
    private final UserService userService = new UserService();
    private final ItemService itemService = new ItemService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("totalUsers", userService.getAllUsers().size());
        request.setAttribute("totalLost", itemService.getAllItems().stream().filter(i -> "LOST".equals(i.getType())).count());
        request.setAttribute("totalFound", itemService.getAllItems().stream().filter(i -> "FOUND".equals(i.getType())).count());
        request.setAttribute("pendingItems", itemService.getAllItems().stream().filter(i -> "PENDING".equals(i.getStatus())).count());
        request.setAttribute("recentItems", itemService.getAllItems());

        request.getRequestDispatcher("/admin/adminDashboard.jsp").forward(request, response);
    }
}
