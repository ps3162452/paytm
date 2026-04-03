package com.dz.scanner;

import java.security.SecureRandom;

/* JADX INFO: loaded from: classes73.dex */
public class UTRGenerator {
    public static String generate() {
        SecureRandom secureRandom = new SecureRandom();
        StringBuilder sb = new StringBuilder(12);
        for (int i = 0; i < 12; i++) {
            sb.append(secureRandom.nextInt(10));
        }
        return sb.toString();
    }
}
