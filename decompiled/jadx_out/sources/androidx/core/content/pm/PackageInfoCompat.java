package androidx.core.content.pm;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class PackageInfoCompat {

    private static class Api28Impl {
        private Api28Impl() {
        }

        static Signature[] getApkContentsSigners(SigningInfo signingInfo) {
            return signingInfo.getApkContentsSigners();
        }

        static Signature[] getSigningCertificateHistory(SigningInfo signingInfo) {
            return signingInfo.getSigningCertificateHistory();
        }

        static boolean hasMultipleSigners(SigningInfo signingInfo) {
            return signingInfo.hasMultipleSigners();
        }

        static boolean hasSigningCertificate(PackageManager packageManager, String str, byte[] bArr, int i) {
            return packageManager.hasSigningCertificate(str, bArr, i);
        }
    }

    private PackageInfoCompat() {
    }

    private static boolean byteArrayContains(byte[][] bArr, byte[] bArr2) {
        for (byte[] bArr3 : bArr) {
            if (Arrays.equals(bArr2, bArr3)) {
                return true;
            }
        }
        return false;
    }

    private static byte[] computeSHA256Digest(byte[] bArr) {
        try {
            return MessageDigest.getInstance(NPStringFog.decode(new byte[]{50, 127, 34, 3, 0, 2}, "a7c154", false, true)).digest(bArr);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{116, 81, 66, 95, 84, 81, 16, 80, 91, 83, 68, 90, 23, 64, 20, 69, 66, 68, 64, 91, 70, 66, 23, 103, 120, 117, 6, 3, 1, 20, 83, 81, 70, 66, 23, 87, 88, 81, 87, 93, 94, 90, 87}, "044674", 1531754861L), e);
        }
    }

    public static long getLongVersionCode(PackageInfo packageInfo) {
        return Build.VERSION.SDK_INT >= 28 ? packageInfo.getLongVersionCode() : packageInfo.versionCode;
    }

    public static List<Signature> getSignatures(PackageManager packageManager, String str) throws PackageManager.NameNotFoundException {
        Signature[] apkContentsSigners;
        if (Build.VERSION.SDK_INT >= 28) {
            SigningInfo signingInfo = packageManager.getPackageInfo(str, 134217728).signingInfo;
            apkContentsSigners = Api28Impl.hasMultipleSigners(signingInfo) ? Api28Impl.getApkContentsSigners(signingInfo) : Api28Impl.getSigningCertificateHistory(signingInfo);
        } else {
            apkContentsSigners = packageManager.getPackageInfo(str, 64).signatures;
        }
        return apkContentsSigners == null ? Collections.emptyList() : Arrays.asList(apkContentsSigners);
    }

    public static boolean hasSignatures(PackageManager packageManager, String str, Map<byte[], Integer> map, boolean z) throws PackageManager.NameNotFoundException {
        byte[][] bArr;
        if (map.isEmpty()) {
            return false;
        }
        Set<byte[]> setKeySet = map.keySet();
        for (byte[] bArr2 : setKeySet) {
            if (bArr2 == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{39, 4, 20, 68, 65, 0, 29, 21, 3, 16, 0, 16, 22, 0, 31, 16, 2, 3, 10, 15, 9, 68, 65, 0, 1, 65, 8, 69, 13, 14, 68, 22, 14, 85, 15, 66, 18, 4, 20, 89, 7, 27, 13, 15, 1, 16}, "daf0ab", false, true) + str);
            }
            Integer num = map.get(bArr2);
            if (num == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{55, 75, 20, 85, 67, 89, 22, 65, 16, 16, 1, 81, 67, 65, 20, 85, 0, 93, 5, 91, 1, 84, 67, 82, 12, 64, 68, 83, 6, 70, 23, 18, 19, 88, 6, 90, 67, 68, 1, 66, 10, 82, 26, 91, 10, 87, 67}, "c2d0c4", true) + str);
            }
            switch (num.intValue()) {
                case 0:
                case 1:
                    break;
                default:
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{99, 88, 66, 65, 66, 70, 89, 68, 69, 81, 86, 22, 85, 83, 67, 64, 91, 80, 95, 85, 80, 64, 87, 22, 66, 79, 65, 81, 18}, "661426", -9.004287E8f) + num + NPStringFog.decode(new byte[]{16, 71, 89, 84, 89, 21, 70, 85, 67, 88, 81, 76, 89, 94, 86, 17}, "001175", -7.9404984E7f) + str);
            }
        }
        List<Signature> signatures = getSignatures(packageManager, str);
        if (!z && Build.VERSION.SDK_INT >= 28) {
            for (byte[] bArr3 : setKeySet) {
                if (!Api28Impl.hasSigningCertificate(packageManager, str, bArr3, map.get(bArr3).intValue())) {
                    return false;
                }
            }
            return true;
        }
        if (signatures.size() == 0 || map.size() > signatures.size()) {
            return false;
        }
        if (z && map.size() != signatures.size()) {
            return false;
        }
        if (map.containsValue(1)) {
            bArr = new byte[signatures.size()][];
            for (int i = 0; i < signatures.size(); i++) {
                bArr[i] = computeSHA256Digest(signatures.get(i).toByteArray());
            }
        } else {
            bArr = null;
        }
        Iterator<byte[]> it = setKeySet.iterator();
        if (!it.hasNext()) {
            return false;
        }
        byte[] next = it.next();
        Integer num2 = map.get(next);
        switch (num2.intValue()) {
            case 0:
                if (!signatures.contains(new Signature(next))) {
                    return false;
                }
                break;
            case 1:
                if (!byteArrayContains(bArr, next)) {
                    return false;
                }
                break;
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{97, 91, 70, 67, 71, 69, 91, 71, 65, 83, 83, 21, 87, 80, 71, 66, 94, 83, 93, 86, 84, 66, 82, 21, 64, 76, 69, 83, 23}, "455675", -7447) + num2);
        }
        return true;
    }
}
