package com.findit.findit.service;

import com.findit.findit.model.Category;
import java.util.ArrayList;
import java.util.List;

public class CategoryService {
    private static final List<Category> categories = new ArrayList<>();

    static {
        categories.add(new Category(1, "Electronics"));
        categories.add(new Category(2, "Documents"));
        categories.add(new Category(3, "Pets"));
    }

    public List<Category> getAllCategories() { return categories; }
    public Category getCategoryById(int id) { return categories.stream().filter(c -> c.getId() == id).findFirst().orElse(null); }
    public boolean addCategory(String name) { return categories.add(new Category(categories.size() + 1, name)); }
    public boolean updateCategory(int id, String name) {
        Category c = getCategoryById(id);
        if (c != null) { c.setName(name); return true; }
        return false;
    }
    public boolean deleteCategory(int id) { return categories.removeIf(c -> c.getId() == id); }
    public boolean categoryExists(String name) { return categories.stream().anyMatch(c -> c.getName().equalsIgnoreCase(name)); }
    public boolean hasLinkedItems(int id) { return false; }
}

