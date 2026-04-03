package com.google.gson;

import java.lang.reflect.Field;
import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes61.dex */
public enum FieldNamingPolicy implements FieldNamingStrategy {
    IDENTITY { // from class: com.google.gson.FieldNamingPolicy.1
        @Override // com.google.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return field.getName();
        }
    },
    UPPER_CAMEL_CASE { // from class: com.google.gson.FieldNamingPolicy.2
        @Override // com.google.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return upperCaseFirstLetter(field.getName());
        }
    },
    UPPER_CAMEL_CASE_WITH_SPACES { // from class: com.google.gson.FieldNamingPolicy.3
        @Override // com.google.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return upperCaseFirstLetter(separateCamelCase(field.getName(), " "));
        }
    },
    LOWER_CASE_WITH_UNDERSCORES { // from class: com.google.gson.FieldNamingPolicy.4
        @Override // com.google.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return separateCamelCase(field.getName(), NPStringFog.decode(new byte[]{59}, "db3fc2", 4.57564222E8d)).toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DASHES { // from class: com.google.gson.FieldNamingPolicy.5
        @Override // com.google.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return separateCamelCase(field.getName(), NPStringFog.decode(new byte[]{76}, "a6a4e7", 2099983289L)).toLowerCase(Locale.ENGLISH);
        }
    },
    LOWER_CASE_WITH_DOTS { // from class: com.google.gson.FieldNamingPolicy.6
        @Override // com.google.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return separateCamelCase(field.getName(), NPStringFog.decode(new byte[]{30}, "02ae5d", false)).toLowerCase(Locale.ENGLISH);
        }
    };

    /* JADX INFO: renamed from: com.google.gson.FieldNamingPolicy$7, reason: invalid class name */
    /* JADX INFO: loaded from: classes69.dex */
    enum AnonymousClass7 extends FieldNamingPolicy {
        AnonymousClass7(String str, int i) {
            super();
        }

        @Override // com.google.gson.FieldNamingStrategy
        public String translateName(Field field) {
            return separateCamelCase(field.getName(), '.').toLowerCase(Locale.ENGLISH);
        }
    }

    static String separateCamelCase(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if (Character.isUpperCase(cCharAt) && sb.length() != 0) {
                sb.append(str2);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    static String upperCaseFirstLetter(String str) {
        int length = str.length();
        int i = 0;
        while (!Character.isLetter(str.charAt(i)) && i < length - 1) {
            i++;
        }
        char cCharAt = str.charAt(i);
        if (Character.isUpperCase(cCharAt)) {
            return str;
        }
        char upperCase = Character.toUpperCase(cCharAt);
        return i == 0 ? upperCase + str.substring(1) : str.substring(0, i) + upperCase + str.substring(i + 1);
    }
}
