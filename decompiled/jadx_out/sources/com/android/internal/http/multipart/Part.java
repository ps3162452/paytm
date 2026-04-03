package com.android.internal.http.multipart;

import java.io.IOException;
import java.io.OutputStream;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
public abstract class Part {

    @Deprecated
    protected static final String BOUNDARY = NPStringFog.decode(new byte[]{72, 29, 79, 26, 28, 29, 72, 29, 79, 26, 28, 29, 72, 29, 79, 26, 2, 1, 81, 1, 87, 14, 3, 6, 80, 3, 87, 15, 8, 7, 92, 3, 80, 4, 9, 4, 83}, "e0b710", -2.1450495E9f);
    protected static final String CHARSET = NPStringFog.decode(new byte[]{94, 20, 85, 80, 87, 65, 22, 81, 66, 5}, "e46863", 272243468L);
    protected static final String CONTENT_DISPOSITION = NPStringFog.decode(new byte[]{114, 95, 94, 69, 87, 13, 69, 29, 116, 88, 65, 19, 94, 67, 89, 69, 91, 12, 95, 10, 16, 87, 93, 17, 92, 29, 84, 80, 70, 2, 10, 16, 94, 80, 95, 6, 12}, "10012c", -13610);
    protected static final String CONTENT_TRANSFER_ENCODING = NPStringFog.decode(new byte[]{112, 87, 87, 71, 7, 95, 71, 21, 109, 65, 3, 95, 64, 94, 92, 65, 79, 116, 93, 91, 86, 87, 11, 95, 84, 2, 25}, "3893b1", 1.3766081E9f);
    protected static final String CONTENT_TYPE = NPStringFog.decode(new byte[]{123, 87, 10, 71, 86, 13, 76, 21, 48, 74, 67, 6, 2, 24}, "88d33c", -279107855L);
    protected static final String CRLF = NPStringFog.decode(new byte[]{57, 63}, "459ce7", false, false);
    protected static final String EXTRA = NPStringFog.decode(new byte[]{25, 24}, "452360", 21304);
    protected static final String QUOTE = NPStringFog.decode(new byte[]{19}, "1f94ac", 9.45659103E8d);

    @Deprecated
    protected static final byte[] BOUNDARY_BYTES = null;
    protected static final byte[] CHARSET_BYTES = null;
    protected static final byte[] CONTENT_DISPOSITION_BYTES = null;
    protected static final byte[] CONTENT_TRANSFER_ENCODING_BYTES = null;
    protected static final byte[] CONTENT_TYPE_BYTES = null;
    protected static final byte[] CRLF_BYTES = null;
    protected static final byte[] EXTRA_BYTES = null;
    protected static final byte[] QUOTE_BYTES = null;

    public Part() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 76, 76, 90, 69}, "c898d5", 16423));
    }

    @Deprecated
    public static String getBoundary() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 76, 65, 86, 67}, "5844bb", 1842181763L));
    }

    public static long getLengthOfParts(Part[] partArr) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 71, 70, 86, 21}, "83344b", 8.17688109E8d));
    }

    public static long getLengthOfParts(Part[] partArr, byte[] bArr) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 16, 20, 0, 71}, "7dabf2", -968380069L));
    }

    public static void sendParts(OutputStream outputStream, Part[] partArr) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 77, 20, 86, 18}, "d9a43e", true, false));
    }

    public static void sendParts(OutputStream outputStream, Part[] partArr, byte[] bArr) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 18, 23, 86, 21}, "8fb447", false, false));
    }

    public abstract String getCharSet();

    public abstract String getContentType();

    public abstract String getName();

    protected byte[] getPartBoundary() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 71, 76, 3, 69}, "639add", 808051816L));
    }

    public abstract String getTransferEncoding();

    public boolean isRepeatable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 16, 22, 80, 68}, "5dc2e8", true, true));
    }

    public long length() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 21, 22, 6, 23}, "0acd6d", true, false));
    }

    protected abstract long lengthOfData() throws IOException;

    public void send(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 66, 20, 1, 21}, "d6ac46", false));
    }

    protected void sendContentTypeHeader(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 65, 77, 3, 20}, "658a5c", 523142812L));
    }

    protected abstract void sendData(OutputStream outputStream) throws IOException;

    protected void sendDispositionHeader(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 65, 66, 7, 22}, "b57e76", false, false));
    }

    protected void sendEnd(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 66, 76, 90, 64}, "1698a8", false));
    }

    protected void sendEndOfHeader(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 71, 66, 7, 68}, "c37ee4", true, true));
    }

    protected void sendStart(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 76, 76, 1, 25}, "c89c89", 21207));
    }

    protected void sendTransferEncodingHeader(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 16, 20, 82, 16}, "ada01c", 1434035096L));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 64, 70, 82, 16}, "e4301e", -2.85376481E8d));
    }
}
