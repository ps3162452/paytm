package androidx.constraintlayout.core.motion.utils;

import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import n.NPStringFog;

/* JADX INFO: loaded from: classes40.dex */
public class Utils {
    private static int clamp(int i) {
        int i2 = (((i >> 31) ^ (-1)) & i) - 255;
        return (i2 & (i2 >> 31)) + 255;
    }

    public static void log(String str) {
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        String strSubstring = (stackTraceElement.getMethodName() + "                  ").substring(0, 17);
        String str2 = NPStringFog.decode(new byte[]{72, 25}, "f1dfd7", true) + stackTraceElement.getFileName() + NPStringFog.decode(new byte[]{11}, "152b49", -22253) + stackTraceElement.getLineNumber() + NPStringFog.decode(new byte[]{16}, "9139fd", true) + "    ".substring(Integer.toString(stackTraceElement.getLineNumber()).length()) + strSubstring;
        System.out.println(str2 + " " + str);
    }

    public static void log(String str, String str2) {
        System.out.println(str + NPStringFog.decode(new byte[]{67, 9, 20}, "c3460d", -623902509L) + str2);
    }

    public static void logStack(String str, int i) {
        StackTraceElement[] stackTrace = new Throwable().getStackTrace();
        String str2 = " ";
        int iMin = Math.min(i, stackTrace.length - 1);
        for (int i2 = 1; i2 <= iMin; i2++) {
            StackTraceElement stackTraceElement = stackTrace[i2];
            String str3 = NPStringFog.decode(new byte[]{77, 16}, "c85725", 21240) + stackTrace[i2].getFileName() + NPStringFog.decode(new byte[]{88}, "b3dc44", 1.343725E9f) + stackTrace[i2].getLineNumber() + NPStringFog.decode(new byte[]{25, 70}, "0fb224", 8.5940304E7d) + stackTrace[i2].getMethodName();
            str2 = str2 + " ";
            System.out.println(str + str2 + str3 + str2);
        }
    }

    public static void loge(String str, String str2) {
        System.err.println(str + NPStringFog.decode(new byte[]{23, 89, 22}, "7c60b6", -13889) + str2);
    }

    public static int rgbaTocColor(float f, float f2, float f3, float f4) {
        int iClamp = clamp((int) (f * 255.0f));
        int iClamp2 = clamp((int) (f2 * 255.0f));
        return (iClamp << 16) | (clamp((int) (255.0f * f4)) << 24) | (iClamp2 << 8) | clamp((int) (f3 * 255.0f));
    }

    public static void socketSend(String str) {
        try {
            OutputStream outputStream = new Socket(NPStringFog.decode(new byte[]{0, 3, 83, 22, 86, 22, 1, 31, 85}, "11d8f8", -971121120L), 5327).getOutputStream();
            outputStream.write(str.getBytes());
            outputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public int getInterpolatedColor(float[] fArr) {
        return (clamp((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (clamp((int) (fArr[3] * 255.0f)) << 24) | (clamp((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | clamp((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
    }
}
