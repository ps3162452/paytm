package com.airbnb.lottie.parser.moshi;

/* JADX INFO: loaded from: classes64.dex */
final class JsonScope {
    static final int CLOSED = 8;
    static final int DANGLING_NAME = 4;
    static final int EMPTY_ARRAY = 1;
    static final int EMPTY_DOCUMENT = 6;
    static final int EMPTY_OBJECT = 3;
    static final int NONEMPTY_ARRAY = 2;
    static final int NONEMPTY_DOCUMENT = 7;
    static final int NONEMPTY_OBJECT = 5;

    private JsonScope() {
    }

    static String getPath(int i, int[] iArr, String[] strArr, int[] iArr2) {
        StringBuilder sbAppend = new StringBuilder().append('$');
        for (int i2 = 0; i2 < i; i2++) {
            switch (iArr[i2]) {
                case 1:
                case 2:
                    sbAppend.append('[').append(iArr2[i2]).append(']');
                    break;
                case 3:
                case 4:
                case 5:
                    sbAppend.append('.');
                    if (strArr[i2] != null) {
                        sbAppend.append(strArr[i2]);
                    }
                    break;
            }
        }
        return sbAppend.toString();
    }
}
