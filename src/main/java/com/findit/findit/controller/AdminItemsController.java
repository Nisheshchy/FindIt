package com.findit.findit.controller;

import com.findit.findit.service.ItemService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/items")
public class AdminItemsController extends HttpServlet {
    private final ItemService itemService = new ItemService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("itemsList", itemService.getAllItems());
        request.getRequestDispatcher("/admin/manage-items.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        String itemIdStr = request.getParameter("itemId");
        String newStatus = request.getParameter("newStatus");

        if (itemIdStr != null && "UPDATE_STATUS".equals(action)) {
            itemService.updateItemStatus(Integer.parseInt(itemIdStr), newStatus);
        }
        response.sendRedirect(request.getContextPath() + "/admin/items");
    }
}
