package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.io.PrintStream;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.nio.CharBuffer;
import n.NPStringFog;

/* JADX INFO: loaded from: classes39.dex */
public class Debug {
    public static void dumpLayoutParams(ViewGroup.LayoutParams layoutParams, String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String fileName = stackTraceElement.getFileName();
        int lineNumber = stackTraceElement.getLineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 18 + String.valueOf(str).length());
        sb.append(NPStringFog.decode(new byte[]{27, 24}, "50d8a1", true, false));
        sb.append(fileName);
        sb.append(NPStringFog.decode(new byte[]{95}, "e310aa", -1321084320L));
        sb.append(lineNumber);
        sb.append(NPStringFog.decode(new byte[]{25, 66}, "0b0fb8", false));
        sb.append(str);
        sb.append("  ");
        String string = sb.toString();
        PrintStream printStream = System.out;
        String name = layoutParams.getClass().getName();
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 28 + String.valueOf(name).length());
        sb2.append(NPStringFog.decode(new byte[]{68, 13, 14, 95, 88, 8, 90, 13, 14, 95, 88, 8, 90, 13, 14, 95, 88, 8, 90, 29, 16, 5, 19, 91, 20, 19}, "d30af6", 5.3681983E7d));
        sb2.append(string);
        sb2.append("  ");
        sb2.append(name);
        printStream.println(sb2.toString());
        for (Field field : layoutParams.getClass().getFields()) {
            try {
                Object obj = field.get(layoutParams);
                String name2 = field.getName();
                if (name2.contains(NPStringFog.decode(new byte[]{103, 93}, "32ea07", -1731375171L)) && !obj.toString().equals(NPStringFog.decode(new byte[]{72, 6}, "e7b7be", -1298797590L))) {
                    PrintStream printStream2 = System.out;
                    String strValueOf = String.valueOf(obj);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(string).length() + 8 + String.valueOf(name2).length() + String.valueOf(strValueOf).length());
                    sb3.append(string);
                    sb3.append("       ");
                    sb3.append(name2);
                    sb3.append(" ");
                    sb3.append(strValueOf);
                    printStream2.println(sb3.toString());
                }
            } catch (IllegalAccessException e) {
            }
        }
        PrintStream printStream3 = System.out;
        String strValueOf2 = String.valueOf(string);
        printStream3.println(strValueOf2.length() != 0 ? NPStringFog.decode(new byte[]{70, 89, 95, 13, 9, 14, 90, 89, 95, 13, 9, 14, 90, 89, 95, 13, 9, 14, 70, 1, 22, 92, 69, 18}, "fec152", false).concat(strValueOf2) : new String(NPStringFog.decode(new byte[]{20, 12, 9, 90, 88, 90, 8, 12, 9, 90, 88, 90, 8, 12, 9, 90, 88, 90, 20, 84, 64, 11, 20, 70}, "405fdf", false)));
    }

    public static void dumpLayoutParams(ViewGroup viewGroup, String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String fileName = stackTraceElement.getFileName();
        int lineNumber = stackTraceElement.getLineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 18 + String.valueOf(str).length());
        sb.append(NPStringFog.decode(new byte[]{31, 30}, "16d0af", -4.2711443E8f));
        sb.append(fileName);
        sb.append(NPStringFog.decode(new byte[]{3}, "9cfd06", false, true));
        sb.append(lineNumber);
        sb.append(NPStringFog.decode(new byte[]{28, 70}, "5f7cc0", 1392037116L));
        sb.append(str);
        sb.append("  ");
        String string = sb.toString();
        int childCount = viewGroup.getChildCount();
        PrintStream printStream = System.out;
        StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 21);
        sb2.append(str);
        sb2.append(NPStringFog.decode(new byte[]{19, 87, 91, 81, 90, 81, 65, 81, 93, 24}, "343865", true));
        sb2.append(childCount);
        printStream.println(sb2.toString());
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            PrintStream printStream2 = System.out;
            String name = getName(childAt);
            StringBuilder sb3 = new StringBuilder(String.valueOf(string).length() + 5 + String.valueOf(name).length());
            sb3.append(string);
            sb3.append("     ");
            sb3.append(name);
            printStream2.println(sb3.toString());
            ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
            for (Field field : layoutParams.getClass().getFields()) {
                try {
                    Object obj = field.get(layoutParams);
                    if (field.getName().contains(NPStringFog.decode(new byte[]{98, 87}, "68b056", true, true)) && !obj.toString().equals(NPStringFog.decode(new byte[]{20, 80}, "9a80ce", 1191699978L))) {
                        PrintStream printStream3 = System.out;
                        String name2 = field.getName();
                        String strValueOf = String.valueOf(obj);
                        StringBuilder sb4 = new StringBuilder(String.valueOf(string).length() + 8 + String.valueOf(name2).length() + String.valueOf(strValueOf).length());
                        sb4.append(string);
                        sb4.append("       ");
                        sb4.append(name2);
                        sb4.append(" ");
                        sb4.append(strValueOf);
                        printStream3.println(sb4.toString());
                    }
                } catch (IllegalAccessException e) {
                }
            }
        }
    }

    public static void dumpPoc(Object obj) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String fileName = stackTraceElement.getFileName();
        int lineNumber = stackTraceElement.getLineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 15);
        sb.append(NPStringFog.decode(new byte[]{77, 16}, "c8a1d9", 16400));
        sb.append(fileName);
        sb.append(NPStringFog.decode(new byte[]{92}, "fba097", false));
        sb.append(lineNumber);
        sb.append(NPStringFog.decode(new byte[]{24}, "1c5c16", -1.0831919E9f));
        String string = sb.toString();
        Class<?> cls = obj.getClass();
        PrintStream printStream = System.out;
        String name = cls.getName();
        StringBuilder sb2 = new StringBuilder(String.valueOf(string).length() + 35 + String.valueOf(name).length());
        sb2.append(string);
        sb2.append(NPStringFog.decode(new byte[]{78, 31, 24, 73, 21, 20, 78, 31, 24, 73, 21, 20, 78, 18}, "c25d89", true, true));
        sb2.append(name);
        sb2.append(NPStringFog.decode(new byte[]{66, 27, 21, 76, 21, 31, 79, 27, 21, 76, 21, 31, 79, 27, 21, 76, 21, 31, 79, 27, 21}, "b68a82", 1.01369574E9f));
        printStream.println(sb2.toString());
        for (Field field : cls.getFields()) {
            try {
                Object obj2 = field.get(obj);
                if (field.getName().startsWith(NPStringFog.decode(new byte[]{84, 0, 29, 88, 67, 18, 103, 2, 11, 89, 69, 18, 74, 0, 13, 89, 66}, "8ad76f", true, true)) && ((!(obj2 instanceof Integer) || !obj2.toString().equals(NPStringFog.decode(new byte[]{20, 4}, "9593f2", -8435))) && ((!(obj2 instanceof Integer) || !obj2.toString().equals(NPStringFog.decode(new byte[]{84}, "df0667", 5737))) && ((!(obj2 instanceof Float) || !obj2.toString().equals(NPStringFog.decode(new byte[]{4, 22, 81}, "58a79c", 9542))) && (!(obj2 instanceof Float) || !obj2.toString().equals(NPStringFog.decode(new byte[]{86, 31, 84}, "f1a846", true))))))) {
                    PrintStream printStream2 = System.out;
                    String name2 = field.getName();
                    String strValueOf = String.valueOf(obj2);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(string).length() + 5 + String.valueOf(name2).length() + String.valueOf(strValueOf).length());
                    sb3.append(string);
                    sb3.append("    ");
                    sb3.append(name2);
                    sb3.append(" ");
                    sb3.append(strValueOf);
                    printStream2.println(sb3.toString());
                }
            } catch (IllegalAccessException e) {
            }
        }
        PrintStream printStream3 = System.out;
        String simpleName = cls.getSimpleName();
        StringBuilder sb4 = new StringBuilder(String.valueOf(string).length() + 35 + String.valueOf(simpleName).length());
        sb4.append(string);
        sb4.append(NPStringFog.decode(new byte[]{31, 28, 25, 78, 72, 21, 31, 28, 25, 78, 72, 21, 31, 17}, "214ce8", 23057));
        sb4.append(simpleName);
        sb4.append(NPStringFog.decode(new byte[]{22, 78, 30, 76, 30, 25, 27, 78, 30, 76, 30, 25, 27, 78, 30, 76, 30, 25, 27, 78, 30}, "6c3a34", -156071281L));
        printStream3.println(sb4.toString());
    }

    public static String getActionType(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        for (Field field : MotionEvent.class.getFields()) {
            try {
                if (Modifier.isStatic(field.getModifiers()) && field.getType().equals(Integer.TYPE) && field.getInt(null) == action) {
                    return field.getName();
                }
            } catch (IllegalAccessException e) {
            }
        }
        return NPStringFog.decode(new byte[]{21, 24, 73}, "85d7f1", -1954785685L);
    }

    public static String getCallFrom(int i) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[i + 2];
        String fileName = stackTraceElement.getFileName();
        int lineNumber = stackTraceElement.getLineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 15);
        sb.append(NPStringFog.decode(new byte[]{23, 73}, "9a6d36", -1.4718551E9f));
        sb.append(fileName);
        sb.append(NPStringFog.decode(new byte[]{8}, "297ef2", 239167882L));
        sb.append(lineNumber);
        sb.append(NPStringFog.decode(new byte[]{30}, "72c465", 1.224332E9f));
        return sb.toString();
    }

    public static String getLoc() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String fileName = stackTraceElement.getFileName();
        int lineNumber = stackTraceElement.getLineNumber();
        String methodName = stackTraceElement.getMethodName();
        StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 18 + String.valueOf(methodName).length());
        sb.append(NPStringFog.decode(new byte[]{72, 29}, "f561bd", -10940));
        sb.append(fileName);
        sb.append(NPStringFog.decode(new byte[]{92}, "f398b7", -669206752L));
        sb.append(lineNumber);
        sb.append(NPStringFog.decode(new byte[]{31, 18}, "62ea32", -3.82836016E8d));
        sb.append(methodName);
        sb.append(NPStringFog.decode(new byte[]{29, 72}, "5a5310", 3.19785E8f));
        return sb.toString();
    }

    public static String getLocation() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String fileName = stackTraceElement.getFileName();
        int lineNumber = stackTraceElement.getLineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 15);
        sb.append(NPStringFog.decode(new byte[]{23, 28}, "94e74b", 29942));
        sb.append(fileName);
        sb.append(NPStringFog.decode(new byte[]{89}, "c24ee1", -19987));
        sb.append(lineNumber);
        sb.append(NPStringFog.decode(new byte[]{25}, "01c4bd", true));
        return sb.toString();
    }

    public static String getLocation2() {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[2];
        String fileName = stackTraceElement.getFileName();
        int lineNumber = stackTraceElement.getLineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 15);
        sb.append(NPStringFog.decode(new byte[]{74, 16}, "d8a6e2", false, false));
        sb.append(fileName);
        sb.append(NPStringFog.decode(new byte[]{91}, "ae2297", true, true));
        sb.append(lineNumber);
        sb.append(NPStringFog.decode(new byte[]{77}, "dc84f1", false));
        return sb.toString();
    }

    public static String getName(Context context, int i) {
        if (i == -1) {
            return NPStringFog.decode(new byte[]{109, 122, 125, 118, 41, 54, 118}, "8468fa", 7.93196506E8d);
        }
        try {
            return context.getResources().getResourceEntryName(i);
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder(12);
            sb.append(NPStringFog.decode(new byte[]{13}, "251533", 1.755379E9f));
            sb.append(i);
            return sb.toString();
        }
    }

    public static String getName(Context context, int[] iArr) {
        String string;
        String string2;
        int i = 0;
        try {
            int length = iArr.length;
            StringBuilder sb = new StringBuilder(12);
            sb.append(length);
            sb.append(NPStringFog.decode(new byte[]{108}, "7b0299", -1931468649L));
            string = sb.toString();
        } catch (Exception e) {
            Log.v(NPStringFog.decode(new byte[]{125, 124, 123, 97, 38}, "9994aa", 1.019668513E9d), e.toString());
            return NPStringFog.decode(new byte[]{109, 43, 122, 40, 46, 52, 118}, "8e1fac", -9.81950382E8d);
        }
        while (true) {
            int i2 = i;
            if (i2 >= iArr.length) {
                return String.valueOf(string).concat(NPStringFog.decode(new byte[]{108}, "12d8d0", false));
            }
            String strValueOf = String.valueOf(string);
            String strValueOf2 = String.valueOf(i2 == 0 ? "" : " ");
            String strConcat = strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
            try {
                string2 = context.getResources().getResourceEntryName(iArr[i2]);
            } catch (Resources.NotFoundException e2) {
                int i3 = iArr[i2];
                StringBuilder sb2 = new StringBuilder(14);
                sb2.append(NPStringFog.decode(new byte[]{9, 70}, "6f2000", -1032976583L));
                sb2.append(i3);
                sb2.append(" ");
                string2 = sb2.toString();
            }
            String strValueOf3 = String.valueOf(strConcat);
            String strValueOf4 = String.valueOf(string2);
            string = strValueOf4.length() != 0 ? strValueOf3.concat(strValueOf4) : new String(strValueOf3);
            i = i2 + 1;
            Log.v(NPStringFog.decode(new byte[]{125, 124, 123, 97, 38}, "9994aa", 1.019668513E9d), e.toString());
            return NPStringFog.decode(new byte[]{109, 43, 122, 40, 46, 52, 118}, "8e1fac", -9.81950382E8d);
        }
    }

    public static String getName(View view) {
        try {
            return view.getContext().getResources().getResourceEntryName(view.getId());
        } catch (Exception e) {
            return NPStringFog.decode(new byte[]{100, 43, 125, 118, 127, 99, 127}, "1e6804", -3.92305353E8d);
        }
    }

    public static String getState(MotionLayout motionLayout, int i) {
        return getState(motionLayout, i, -1);
    }

    public static String getState(MotionLayout motionLayout, int i, int i2) {
        int length;
        if (i == -1) {
            return NPStringFog.decode(new byte[]{102, 118, 38, 119, 35, 43, 125, 125, 38}, "38b2eb", -10331);
        }
        String resourceEntryName = motionLayout.getContext().getResources().getResourceEntryName(i);
        if (i2 == -1) {
            return resourceEntryName;
        }
        if (resourceEntryName.length() > i2) {
            resourceEntryName = resourceEntryName.replaceAll(NPStringFog.decode(new byte[]{30, 105, 59, 109, 56, 31, 109, 83, 0, 91, 10, 67, 107, 25}, "62e2e6", -6942), NPStringFog.decode(new byte[]{66, 9}, "f8ad5c", 9.87854342E8d));
        }
        return (resourceEntryName.length() <= i2 || (length = resourceEntryName.replaceAll(NPStringFog.decode(new byte[]{111, 103, 104, 63}, "497b1e", false, true), "").length()) <= 0) ? resourceEntryName : resourceEntryName.replaceAll(String.valueOf(CharBuffer.allocate((resourceEntryName.length() - i2) / length).toString().replace((char) 0, '.')).concat(NPStringFog.decode(new byte[]{102}, "97e65c", -542462329L)), NPStringFog.decode(new byte[]{102}, "91cb4a", 2008556577L));
    }

    public static void logStack(String str, String str2, int i) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        String strConcat = " ";
        int iMin = Math.min(i, stackTrace.length - 1);
        for (int i2 = 1; i2 <= iMin; i2++) {
            StackTraceElement stackTraceElement = stackTrace[i2];
            String fileName = stackTrace[i2].getFileName();
            int lineNumber = stackTrace[i2].getLineNumber();
            String methodName = stackTrace[i2].getMethodName();
            StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 16 + String.valueOf(methodName).length());
            sb.append(NPStringFog.decode(new byte[]{76, 28}, "b49554", false));
            sb.append(fileName);
            sb.append(NPStringFog.decode(new byte[]{95}, "e1e8a8", false, false));
            sb.append(lineNumber);
            sb.append(NPStringFog.decode(new byte[]{75, 66}, "bb6549", -3.2969498E8f));
            sb.append(methodName);
            String string = sb.toString();
            strConcat = String.valueOf(strConcat).concat(" ");
            StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + String.valueOf(strConcat).length() + String.valueOf(string).length() + String.valueOf(strConcat).length());
            sb2.append(str2);
            sb2.append(strConcat);
            sb2.append(string);
            sb2.append(strConcat);
            Log.v(str, sb2.toString());
        }
    }

    public static void printStack(String str, int i) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        String strConcat = " ";
        int iMin = Math.min(i, stackTrace.length - 1);
        for (int i2 = 1; i2 <= iMin; i2++) {
            StackTraceElement stackTraceElement = stackTrace[i2];
            String fileName = stackTrace[i2].getFileName();
            int lineNumber = stackTrace[i2].getLineNumber();
            StringBuilder sb = new StringBuilder(String.valueOf(fileName).length() + 16);
            sb.append(NPStringFog.decode(new byte[]{77, 16}, "c866f7", -199512024L));
            sb.append(fileName);
            sb.append(NPStringFog.decode(new byte[]{91}, "a5d4f2", -2.0275917E8f));
            sb.append(lineNumber);
            sb.append(NPStringFog.decode(new byte[]{30, 67}, "7cfeaa", true));
            String string = sb.toString();
            strConcat = String.valueOf(strConcat).concat(" ");
            PrintStream printStream = System.out;
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + String.valueOf(strConcat).length() + String.valueOf(string).length() + String.valueOf(strConcat).length());
            sb2.append(str);
            sb2.append(strConcat);
            sb2.append(string);
            sb2.append(strConcat);
            printStream.println(sb2.toString());
        }
    }
}
