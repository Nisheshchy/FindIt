package com.findit.findit.controller;

import com.findit.findit.model.Category;
import com.findit.findit.service.CategoryService;
import com.findit.findit.util.ValidationUtil;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/categories")
public class AdminCategoryController extends HttpServlet {
    private final CategoryService categoryService = new CategoryService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setAttribute("categoriesList", categoryService.getAllCategories());
        request.getRequestDispatcher("/admin/manage-categories.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        HttpSession session = request.getSession();

        if ("CREATE".equalsIgnoreCase(action)) {
            String name = request.getParameter("categoryName");
            if (ValidationUtil.isNotEmpty(name)) {
                categoryService.addCategory(name);
                session.setAttribute("successMessage", "Category added!");
            }
        } else if ("DELETE".equalsIgnoreCase(action)) {
            String idStr = request.getParameter("categoryId");
            if (idStr != null) {
                categoryService.deleteCategory(Integer.parseInt(idStr));
                session.setAttribute("successMessage", "Category deleted!");
            }
        }
        response.sendRedirect(request.getContextPath() + "/admin/categories");
    }
}
