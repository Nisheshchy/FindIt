package com.findit.findit.util;

public class ValidationUtil {
    public static boolean isNotEmpty(String str) {
        return str != null && !str.trim().isEmpty();
    }
}
