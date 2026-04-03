package com.android.internal.http.multipart;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
public class FilePart extends PartBase {
    public static final String DEFAULT_CHARSET = NPStringFog.decode(new byte[]{126, 98, 44, 20, 10, 12, 2, 8, 78, 8}, "71c924", 1.214338781E9d);
    public static final String DEFAULT_CONTENT_TYPE = NPStringFog.decode(new byte[]{2, 19, 66, 85, 8, 0, 2, 23, 91, 86, 15, 76, 12, 0, 70, 92, 21, 78, 16, 23, 64, 92, 0, 14}, "cc29ac", false);
    public static final String DEFAULT_TRANSFER_ENCODING = NPStringFog.decode(new byte[]{87, 88, 91, 0, 75, 75}, "515a92", -1783647337L);
    protected static final String FILE_NAME = NPStringFog.decode(new byte[]{3, 21, 85, 88, 14, 6, 86, 84, 94, 84, 95}, "8531bc", -8348);

    public FilePart(String str, PartSource partSource) {
        super((String) null, (String) null, (String) null, (String) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 68, 67, 87, 71}, "c065f5", true));
    }

    public FilePart(String str, PartSource partSource, String str2, String str3) {
        super((String) null, (String) null, (String) null, (String) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 71, 19, 1, 25}, "c3fc84", false, false));
    }

    public FilePart(String str, File file) throws FileNotFoundException {
        super((String) null, (String) null, (String) null, (String) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 64, 66, 0, 17}, "647b06", 1205209545L));
    }

    public FilePart(String str, File file, String str2, String str3) throws FileNotFoundException {
        super((String) null, (String) null, (String) null, (String) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 23, 71, 85, 71}, "bc27f4", -9.29320316E8d));
    }

    public FilePart(String str, String str2, File file) throws FileNotFoundException {
        super((String) null, (String) null, (String) null, (String) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 66, 64, 3, 69}, "a65adc", -2674));
    }

    public FilePart(String str, String str2, File file, String str3, String str4) throws FileNotFoundException {
        super((String) null, (String) null, (String) null, (String) null);
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 76, 71, 81, 17}, "982309", true));
    }

    protected PartSource getSource() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 21, 19, 82, 69}, "eaf0dc", true));
    }

    @Override // com.android.internal.http.multipart.Part
    protected long lengthOfData() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 22, 19, 6, 18}, "abfd38", true, false));
    }

    @Override // com.android.internal.http.multipart.Part
    protected void sendData(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 76, 19, 0, 20}, "08fb5c", false));
    }

    @Override // com.android.internal.http.multipart.Part
    protected void sendDispositionHeader(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 66, 20, 84, 66}, "06a6cf", -1.4904632E9f));
    }
}
