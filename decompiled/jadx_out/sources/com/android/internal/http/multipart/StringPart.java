package com.android.internal.http.multipart;

import java.io.IOException;
import java.io.OutputStream;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
public class StringPart extends PartBase {
    public static final String DEFAULT_CHARSET = NPStringFog.decode(new byte[]{97, 99, 79, 36, 100, 33, 125, 121}, "40be7b", -6989);
    public static final String DEFAULT_CONTENT_TYPE = NPStringFog.decode(new byte[]{17, 0, 27, 21, 75, 70, 9, 4, 10, 15}, "eecad6", -9.1469606E8f);
    public static final String DEFAULT_TRANSFER_ENCODING = NPStringFog.decode(new byte[]{89, 0, 91, 68}, "ab2026", -526872302L);

    public StringPart(String str, String str2) {
        super((String) null, (String) null, (String) null, (String) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 70, 16, 83, 68}, "92e1ec", -19514));
    }

    public StringPart(String str, String str2, String str3) {
        super((String) null, (String) null, (String) null, (String) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 65, 69, 80, 25}, "35028d", 1.5780269E9f));
    }

    @Override // com.android.internal.http.multipart.Part
    protected long lengthOfData() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 22, 22, 7, 25}, "cbce8d", false));
    }

    @Override // com.android.internal.http.multipart.Part
    protected void sendData(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 17, 69, 83, 68}, "ee01e7", 6598));
    }

    @Override // com.android.internal.http.multipart.PartBase
    public void setCharSet(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 69, 76, 84, 20}, "b1965c", false));
    }
}
