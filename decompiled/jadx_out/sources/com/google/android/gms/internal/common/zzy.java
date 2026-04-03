package com.google.android.gms.internal.common;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;
import n.NPStringFog;
import org.jspecify.nullness.NullMarked;

/* JADX INFO: loaded from: classes55.dex */
@NullMarked
public final class zzy {
    public static String zza(@CheckForNull String str, @CheckForNull Object... objArr) {
        int length;
        int length2;
        int iIndexOf;
        String string;
        int i = 0;
        while (true) {
            int i2 = i;
            length = objArr.length;
            if (i2 >= length) {
                break;
            }
            Object obj = objArr[i2];
            if (obj == null) {
                string = NPStringFog.decode(new byte[]{93, 76, 95, 84}, "39387a", -1109127844L);
            } else {
                try {
                    string = obj.toString();
                } catch (Exception e) {
                    String str2 = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
                    Logger.getLogger(NPStringFog.decode(new byte[]{87, 87, 85, 23, 87, 89, 91, 95, 84, 92, 30, 85, 91, 85, 85, 86, 94, 24, 86, 89, 75, 92, 30, 101, 64, 74, 81, 87, 87, 69}, "488906", 1811818076L)).logp(Level.WARNING, NPStringFog.decode(new byte[]{0, 12, 14, 27, 84, 89, 12, 4, 15, 80, 29, 85, 12, 14, 14, 90, 93, 24, 1, 2, 16, 80, 29, 101, 23, 17, 10, 91, 84, 69}, "ccc536", 1.822596301E9d), NPStringFog.decode(new byte[]{84, 87, 88, 10, 80, 93, 76, 102, 89, 48, 65, 65, 81, 92, 81}, "826c53", 19204), NPStringFog.decode(new byte[]{33, 27, 90, 87, 72, 76, 13, 12, 87, 18, 92, 77, 22, 10, 87, 85, 24, 84, 1, 13, 80, 87, 86, 76, 34, 12, 75, 95, 89, 76, 68, 5, 86, 64, 24}, "dc9288", 3.75808458E8d).concat(str2), (Throwable) e);
                    string = NPStringFog.decode(new byte[]{8}, "46b408", -7.214638E8f) + str2 + NPStringFog.decode(new byte[]{21, 68, 92, 65, 80, 20, 21}, "50435c", true, true) + e.getClass().getName() + NPStringFog.decode(new byte[]{12}, "2b9c38", -9.1907584E8f);
                }
            }
            objArr[i2] = string;
            i = i2 + 1;
        }
        StringBuilder sb = new StringBuilder((length * 16) + str.length());
        int i3 = 0;
        int i4 = 0;
        while (true) {
            length2 = objArr.length;
            if (i4 >= length2 || (iIndexOf = str.indexOf(NPStringFog.decode(new byte[]{23, 68}, "27360e", -2.018322102E9d), i3)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i3, iIndexOf);
            sb.append(objArr[i4]);
            i3 = iIndexOf + 2;
            i4++;
        }
        sb.append((CharSequence) str, i3, str.length());
        if (i4 < length2) {
            sb.append(NPStringFog.decode(new byte[]{18, 62}, "2e985a", -1.0109357E9f));
            sb.append(objArr[i4]);
            for (int i5 = i4 + 1; i5 < objArr.length; i5++) {
                sb.append(NPStringFog.decode(new byte[]{72, 24}, "d85ed1", false, true));
                sb.append(objArr[i5]);
            }
            sb.append(']');
        }
        return sb.toString();
    }
}
