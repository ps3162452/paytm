package n;

/* JADX WARN: Classes with same name are omitted, all sources:
  classes.dex
  classes10.dex
  classes11.dex
  classes12.dex
  classes13.dex
  classes14.dex
  classes15.dex
  classes16.dex
  classes17.dex
  classes18.dex
  classes19.dex
  classes2.dex
  classes20.dex
  classes21.dex
  classes22.dex
  classes23.dex
  classes24.dex
  classes25.dex
  classes26.dex
  classes27.dex
  classes28.dex
  classes29.dex
  classes3.dex
  classes30.dex
  classes31.dex
  classes32.dex
  classes33.dex
  classes34.dex
  classes35.dex
  classes36.dex
  classes37.dex
  classes38.dex
  classes39.dex
  classes4.dex
  classes40.dex
  classes41.dex
  classes42.dex
  classes43.dex
  classes44.dex
  classes45.dex
  classes46.dex
  classes47.dex
  classes48.dex
  classes49.dex
  classes5.dex
  classes50.dex
  classes51.dex
  classes52.dex
  classes53.dex
  classes54.dex
  classes55.dex
  classes56.dex
  classes57.dex
  classes58.dex
  classes59.dex
  classes6.dex
  classes60.dex
  classes61.dex
  classes62.dex
  classes63.dex
  classes64.dex
  classes65.dex
  classes66.dex
  classes67.dex
  classes68.dex
  classes69.dex
  classes7.dex
  classes70.dex
  classes71.dex
  classes72.dex
  classes8.dex
  classes9.dex
 */
/* JADX INFO: loaded from: classes.dex */
public class NPStringFog {
    public static String decode(byte[] bArr, String str) {
        int length = bArr.length;
        int length2 = str.length();
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) (bArr[i] ^ str.charAt(i % length2));
        }
        return new String(bArr);
    }

    public static String decode(byte[] bArr, String str, boolean z) {
        int length = bArr.length;
        int length2 = str.length();
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) (bArr[i] ^ str.charAt(i % length2));
        }
        return new String(bArr);
    }

    public static String decode(byte[] bArr, String str, boolean z, boolean z2) {
        int length = bArr.length;
        int length2 = str.length();
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) (bArr[i] ^ str.charAt(i % length2));
        }
        return new String(bArr);
    }

    public static String decode(byte[] bArr, String str, int i) {
        int length = bArr.length;
        int length2 = str.length();
        for (int i2 = 0; i2 < length; i2++) {
            bArr[i2] = (byte) (bArr[i2] ^ str.charAt(i2 % length2));
        }
        return new String(bArr);
    }

    public static String decode(byte[] bArr, String str, float f) {
        int length = bArr.length;
        int length2 = str.length();
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) (bArr[i] ^ str.charAt(i % length2));
        }
        return new String(bArr);
    }

    public static String decode(byte[] bArr, String str, double d) {
        int length = bArr.length;
        int length2 = str.length();
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) (bArr[i] ^ str.charAt(i % length2));
        }
        return new String(bArr);
    }

    public static String decode(byte[] bArr, String str, long j) {
        int length = bArr.length;
        int length2 = str.length();
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) (bArr[i] ^ str.charAt(i % length2));
        }
        return new String(bArr);
    }
}
