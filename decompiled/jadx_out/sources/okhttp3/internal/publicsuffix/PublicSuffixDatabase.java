package okhttp3.internal.publicsuffix;

import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import n.NPStringFog;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;

/* JADX INFO: loaded from: classes62.dex */
public final class PublicSuffixDatabase {
    private static final byte EXCEPTION_MARKER = 33;
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    public static final String PUBLIC_SUFFIX_RESOURCE = NPStringFog.decode(new byte[]{69, 77, 81, 93, 11, 7, 70, 77, 85, 87, 11, 28, 80, 75, 29, 86, 24}, "5831bd", -1.1683788E9f);
    private static final byte[] WILDCARD_LABEL = {42};
    private static final String[] EMPTY_RULE = new String[0];
    private static final String[] PREVAILING_RULE = {NPStringFog.decode(new byte[]{30}, "4f99ec", -1563212734L)};
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    private static String binarySearchBytes(byte[] bArr, byte[][] bArr2, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int length = bArr.length;
        int i7 = 0;
        while (i7 < length) {
            int i8 = (i7 + length) / 2;
            while (i8 > -1 && bArr[i8] != 10) {
                i8--;
            }
            int i9 = i8 + 1;
            int i10 = 1;
            while (bArr[i9 + i10] != 10) {
                i10++;
            }
            int i11 = (i9 + i10) - i9;
            int i12 = 0;
            boolean z = false;
            int i13 = 0;
            int i14 = i;
            while (true) {
                if (z) {
                    i2 = 46;
                    z = false;
                } else {
                    i2 = bArr2[i14][i12] & 255;
                }
                i3 = i2 - (bArr[i9 + i13] & 255);
                if (i3 != 0) {
                    i4 = i13;
                    i5 = i12;
                    break;
                }
                i4 = i13 + 1;
                i6 = i12 + 1;
                if (i4 == i11) {
                    break;
                }
                if (bArr2[i14].length != i6) {
                    i12 = i6;
                    i13 = i4;
                } else {
                    if (i14 == bArr2.length - 1) {
                        break;
                    }
                    i12 = -1;
                    z = true;
                    i14++;
                    i13 = i4;
                }
            }
            i5 = i6;
            if (i3 < 0) {
                length = i9 - 1;
            } else if (i3 > 0) {
                i7 = i10 + i9 + 1;
            } else {
                int i15 = i11 - i4;
                int length2 = bArr2[i14].length - i5;
                for (int i16 = i14 + 1; i16 < bArr2.length; i16++) {
                    length2 += bArr2[i16].length;
                }
                if (length2 < i15) {
                    length = i9 - 1;
                } else {
                    if (length2 <= i15) {
                        return new String(bArr, i9, i11, Util.UTF_8);
                    }
                    i7 = i10 + i9 + 1;
                }
            }
        }
        return null;
    }

    private String[] findMatchingRule(String[] strArr) {
        String str;
        String strBinarySearchBytes;
        String str2 = null;
        if (this.listRead.get() || !this.listRead.compareAndSet(false, true)) {
            try {
                this.readCompleteLatch.await();
            } catch (InterruptedException e) {
            }
        } else {
            readTheListUninterruptibly();
        }
        synchronized (this) {
            if (this.publicSuffixListBytes == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{101, 13, 5, 83, 9, 4, 16, 23, 11, 17, 9, 14, 81, 7, 68, 65, 16, 3, 92, 10, 7, 66, 16, 7, 86, 10, 28, 84, 22, 79, 87, 25, 68, 67, 0, 18, 95, 22, 22, 82, 0, 65, 86, 17, 11, 92, 69, 21, 88, 6, 68, 82, 9, 0, 67, 16, 20, 80, 17, 9, 30}, "0cd1ea", true));
            }
        }
        byte[][] bArr = new byte[strArr.length][];
        for (int i = 0; i < strArr.length; i++) {
            bArr[i] = strArr[i].getBytes(Util.UTF_8);
        }
        int i2 = 0;
        while (true) {
            if (i2 >= bArr.length) {
                str = null;
                break;
            }
            String strBinarySearchBytes2 = binarySearchBytes(this.publicSuffixListBytes, bArr, i2);
            if (strBinarySearchBytes2 != null) {
                str = strBinarySearchBytes2;
                break;
            }
            i2++;
        }
        if (bArr.length > 1) {
            byte[][] bArr2 = (byte[][]) bArr.clone();
            for (int i3 = 0; i3 < bArr2.length - 1; i3++) {
                bArr2[i3] = WILDCARD_LABEL;
                strBinarySearchBytes = binarySearchBytes(this.publicSuffixListBytes, bArr2, i3);
                if (strBinarySearchBytes != null) {
                    break;
                }
            }
            strBinarySearchBytes = null;
        } else {
            strBinarySearchBytes = null;
        }
        if (strBinarySearchBytes != null) {
            int i4 = 0;
            while (true) {
                if (i4 >= bArr.length - 1) {
                    break;
                }
                String strBinarySearchBytes3 = binarySearchBytes(this.publicSuffixExceptionListBytes, bArr, i4);
                if (strBinarySearchBytes3 != null) {
                    str2 = strBinarySearchBytes3;
                    break;
                }
                i4++;
            }
        }
        if (str2 != null) {
            return (NPStringFog.decode(new byte[]{16}, "141db0", -7.3471104E8f) + str2).split(NPStringFog.decode(new byte[]{109, 27}, "15e058", 982606178L));
        }
        if (str == null && strBinarySearchBytes == null) {
            return PREVAILING_RULE;
        }
        String[] strArrSplit = str != null ? str.split(NPStringFog.decode(new byte[]{101, 23}, "990f88", true)) : EMPTY_RULE;
        String[] strArrSplit2 = strBinarySearchBytes != null ? strBinarySearchBytes.split(NPStringFog.decode(new byte[]{109, 25}, "17efd7", true)) : EMPTY_RULE;
        return strArrSplit.length > strArrSplit2.length ? strArrSplit : strArrSplit2;
    }

    public static PublicSuffixDatabase get() {
        return instance;
    }

    private void readTheList() throws IOException {
        InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream == null) {
            return;
        }
        BufferedSource bufferedSourceBuffer = Okio.buffer(new GzipSource(Okio.source(resourceAsStream)));
        try {
            byte[] bArr = new byte[bufferedSourceBuffer.readInt()];
            bufferedSourceBuffer.readFully(bArr);
            byte[] bArr2 = new byte[bufferedSourceBuffer.readInt()];
            bufferedSourceBuffer.readFully(bArr2);
            synchronized (this) {
                this.publicSuffixListBytes = bArr;
                this.publicSuffixExceptionListBytes = bArr2;
            }
            this.readCompleteLatch.countDown();
        } finally {
            Util.closeQuietly(bufferedSourceBuffer);
        }
    }

    private void readTheListUninterruptibly() {
        boolean z;
        boolean z2 = false;
        while (true) {
            try {
                try {
                    z = z2;
                    readTheList();
                    break;
                } catch (InterruptedIOException e) {
                    z2 = true;
                } catch (IOException e2) {
                    Platform.get().log(5, NPStringFog.decode(new byte[]{32, 3, 15, 85, 0, 1, 70, 22, 9, 25, 23, 0, 7, 6, 70, 73, 16, 7, 10, 11, 5, 25, 22, 16, 0, 4, 15, 65, 69, 9, 15, 17, 18}, "fbf9ee", 1.771916296E9d), e2);
                    if (z) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
    }

    public String getEffectiveTldPlusOne(String str) {
        if (str == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{2, 86, 92, 87, 8, 86, 70, 4, 12, 22, 15, 77, 10, 85}, "f916a8", -1.7483427E9f));
        }
        String[] strArrSplit = IDN.toUnicode(str).split(NPStringFog.decode(new byte[]{57, 79}, "eaf99b", false, true));
        String[] strArrFindMatchingRule = findMatchingRule(strArrSplit);
        if (strArrSplit.length == strArrFindMatchingRule.length && strArrFindMatchingRule[0].charAt(0) != '!') {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        String[] strArrSplit2 = str.split(NPStringFog.decode(new byte[]{107, 23}, "7914ec", -9.80282942E8d));
        for (int length = strArrFindMatchingRule[0].charAt(0) == '!' ? strArrSplit.length - strArrFindMatchingRule.length : strArrSplit.length - (strArrFindMatchingRule.length + 1); length < strArrSplit2.length; length++) {
            sb.append(strArrSplit2[length]).append('.');
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    void setListBytes(byte[] bArr, byte[] bArr2) {
        this.publicSuffixListBytes = bArr;
        this.publicSuffixExceptionListBytes = bArr2;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }
}
