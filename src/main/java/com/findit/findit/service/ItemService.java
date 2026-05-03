package com.findit.findit.service;

import com.findit.findit.model.Item;
import java.util.ArrayList;
import java.util.List;

public class ItemService {
    private static final List<Item> items = new ArrayList<>();

    static {
        items.add(new Item(1, "LOST", "Blue Wallet", "Wallets", "John Doe", "PENDING", "2026-05-01"));
        items.add(new Item(2, "FOUND", "iPhone 13", "Electronics", "Admin User", "ACTIVE", "2026-05-02"));
    }

    public List<Item> getAllItems() { return items; }
    public boolean updateItemStatus(int id, String status) {
        return items.stream().filter(i -> i.getId() == id).findFirst().map(i -> {
            i.setStatus(status);
            return true;
        }).orElse(false);
    }
}

