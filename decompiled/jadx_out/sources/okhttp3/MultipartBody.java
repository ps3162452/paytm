package okhttp3;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.annotation.Nullable;
import n.NPStringFog;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;

/* JADX INFO: loaded from: classes62.dex */
public final class MultipartBody extends RequestBody {
    private final ByteString boundary;
    private long contentLength = -1;
    private final MediaType contentType;
    private final MediaType originalType;
    private final List<Part> parts;
    public static final MediaType MIXED = MediaType.parse(NPStringFog.decode(new byte[]{90, 16, 9, 69, 8, 21, 86, 23, 17, 30, 12, 12, 79, 0, 1}, "7ee1ae", -68691584L));
    public static final MediaType ALTERNATIVE = MediaType.parse(NPStringFog.decode(new byte[]{14, 69, 85, 67, 8, 73, 2, 66, 77, 24, 0, 85, 23, 85, 75, 89, 0, 77, 10, 70, 92}, "c097a9", -11331));
    public static final MediaType DIGEST = MediaType.parse(NPStringFog.decode(new byte[]{12, 66, 14, 17, 95, 64, 0, 69, 22, 74, 82, 89, 6, 82, 17, 17}, "a7be60", 532288436L));
    public static final MediaType PARALLEL = MediaType.parse(NPStringFog.decode(new byte[]{11, 16, 91, 21, 80, 70, 7, 23, 67, 78, 73, 87, 20, 4, 91, 13, 92, 90}, "fe7a96", false, false));
    public static final MediaType FORM = MediaType.parse(NPStringFog.decode(new byte[]{92, 20, 15, 21, 8, 65, 80, 19, 23, 78, 7, 94, 67, 12, 78, 5, 0, 69, 80}, "1acaa1", true));
    private static final byte[] COLONSPACE = {58, 32};
    private static final byte[] CRLF = {13, 10};
    private static final byte[] DASHDASH = {45, 45};

    public static final class Builder {
        private final ByteString boundary;
        private final List<Part> parts;
        private MediaType type;

        public Builder() {
            this(UUID.randomUUID().toString());
        }

        public Builder(String str) {
            this.type = MultipartBody.MIXED;
            this.parts = new ArrayList();
            this.boundary = ByteString.encodeUtf8(str);
        }

        public Builder addFormDataPart(String str, String str2) {
            return addPart(Part.createFormData(str, str2));
        }

        public Builder addFormDataPart(String str, @Nullable String str2, RequestBody requestBody) {
            return addPart(Part.createFormData(str, str2, requestBody));
        }

        public Builder addPart(@Nullable Headers headers, RequestBody requestBody) {
            return addPart(Part.create(headers, requestBody));
        }

        public Builder addPart(Part part) {
            if (part == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{65, 4, 17, 76, 70, 95, 12, 69, 13, 77, 10, 14}, "1ec8fb", true, true));
            }
            this.parts.add(part);
            return this;
        }

        public Builder addPart(RequestBody requestBody) {
            return addPart(Part.create(requestBody));
        }

        public MultipartBody build() {
            if (this.parts.isEmpty()) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{43, 76, 88, 70, 88, 69, 7, 75, 64, 18, 83, 90, 2, 64, 20, 95, 68, 70, 18, 25, 92, 83, 71, 80, 70, 88, 64, 18, 93, 80, 7, 74, 64, 18, 94, 91, 3, 25, 68, 83, 67, 65, 72}, "f94215", -1.275788214E9d));
            }
            return new MultipartBody(this.boundary, this.type, this.parts);
        }

        public Builder setType(MediaType mediaType) {
            if (mediaType == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{71, 72, 22, 84, 69, 88, 14, 17, 8, 68, 9, 9}, "31f1ee", -5626));
            }
            if (!mediaType.type().equals(NPStringFog.decode(new byte[]{89, 19, 94, 77, 11, 20, 85, 20, 70}, "4f29bd", true, false))) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{12, 71, 93, 16, 10, 66, 0, 64, 69, 68, 66, 15, 65}, "a21dc2", false, false) + mediaType);
            }
            this.type = mediaType;
            return this;
        }
    }

    public static final class Part {
        final RequestBody body;

        @Nullable
        final Headers headers;

        private Part(@Nullable Headers headers, RequestBody requestBody) {
            this.headers = headers;
            this.body = requestBody;
        }

        public static Part create(@Nullable Headers headers, RequestBody requestBody) {
            if (requestBody == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{3, 91, 1, 79, 67, 8, 92, 20, 11, 67, 15, 89}, "a4e6c5", 1125287679L));
            }
            if (headers != null && headers.get(NPStringFog.decode(new byte[]{114, 9, 93, 65, 3, 12, 69, 75, 103, 76, 22, 7}, "1f35fb", 93602288L)) != null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{48, 11, 92, 75, 73, 81, 6, 17, 92, 87, 25, 92, 0, 4, 93, 86, 75, 14, 69, 38, 86, 93, 77, 81, 11, 17, 20, 103, 64, 68, 0}, "ee9394", false, false));
            }
            if (headers == null || headers.get(NPStringFog.decode(new byte[]{39, 95, 91, 65, 1, 13, 16, 29, 121, 80, 10, 4, 16, 88}, "d055dc", false)) == null) {
                return new Part(headers, requestBody);
            }
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{55, 10, 92, 74, 65, 92, 1, 16, 92, 86, 17, 81, 7, 5, 93, 87, 67, 3, 66, 39, 86, 92, 69, 92, 12, 16, 20, 126, 84, 87, 5, 16, 81}, "bd9219", 1.002740838E9d));
        }

        public static Part create(RequestBody requestBody) {
            return create(null, requestBody);
        }

        public static Part createFormData(String str, String str2) {
            return createFormData(str, null, RequestBody.create((MediaType) null, str2));
        }

        public static Part createFormData(String str, @Nullable String str2, RequestBody requestBody) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{87, 82, 85, 81, 68, 88, 4, 19, 86, 65, 8, 9}, "9384de", true, false));
            }
            StringBuilder sb = new StringBuilder(NPStringFog.decode(new byte[]{7, 86, 69, 15, 78, 7, 0, 77, 86, 89, 67, 13, 0, 84, 82, 95}, "a97bcc", 1.959587249E9d));
            MultipartBody.appendQuotedString(sb, str);
            if (str2 != null) {
                sb.append(NPStringFog.decode(new byte[]{10, 19, 4, 88, 9, 84, 95, 82, 15, 84, 88}, "13b1e1", -796813998L));
                MultipartBody.appendQuotedString(sb, str2);
            }
            return create(Headers.of(NPStringFog.decode(new byte[]{122, 89, 94, 65, 3, 8, 77, 27, 116, 92, 21, 22, 86, 69, 89, 65, 15, 9, 87}, "9605ff", 18755), sb.toString()), requestBody);
        }

        public RequestBody body() {
            return this.body;
        }

        @Nullable
        public Headers headers() {
            return this.headers;
        }
    }

    MultipartBody(ByteString byteString, MediaType mediaType, List<Part> list) {
        this.boundary = byteString;
        this.originalType = mediaType;
        this.contentType = MediaType.parse(mediaType + NPStringFog.decode(new byte[]{14, 24, 81, 10, 19, 94, 81, 89, 65, 28, 91}, "583ef0", true) + byteString.utf8());
        this.parts = Util.immutableList(list);
    }

    static StringBuilder appendQuotedString(StringBuilder sb, String str) {
        sb.append('\"');
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            switch (cCharAt) {
                case '\n':
                    sb.append(NPStringFog.decode(new byte[]{64, 1, 113}, "e10e9e", -1.8814095E9f));
                    break;
                case '\r':
                    sb.append(NPStringFog.decode(new byte[]{67, 9, 114}, "f96a36", 1.425752139E9d));
                    break;
                case '\"':
                    sb.append(NPStringFog.decode(new byte[]{28, 80, 86}, "9bd190", -3830));
                    break;
                default:
                    sb.append(cCharAt);
                    break;
            }
        }
        sb.append('\"');
        return sb;
    }

    private long writeOrCountBytes(@Nullable BufferedSink bufferedSink, boolean z) throws IOException {
        Buffer buffer;
        long j = 0;
        if (z) {
            Buffer buffer2 = new Buffer();
            buffer = buffer2;
            bufferedSink = buffer2;
        } else {
            buffer = null;
        }
        int size = this.parts.size();
        for (int i = 0; i < size; i++) {
            Part part = this.parts.get(i);
            Headers headers = part.headers;
            RequestBody requestBody = part.body;
            bufferedSink.write(DASHDASH);
            bufferedSink.write(this.boundary);
            bufferedSink.write(CRLF);
            if (headers != null) {
                int size2 = headers.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    bufferedSink.writeUtf8(headers.name(i2)).write(COLONSPACE).writeUtf8(headers.value(i2)).write(CRLF);
                }
            }
            MediaType mediaTypeContentType = requestBody.contentType();
            if (mediaTypeContentType != null) {
                bufferedSink.writeUtf8(NPStringFog.decode(new byte[]{123, 86, 90, 17, 80, 95, 76, 20, 96, 28, 69, 84, 2, 25}, "894e51", true)).writeUtf8(mediaTypeContentType.toString()).write(CRLF);
            }
            long jContentLength = requestBody.contentLength();
            if (jContentLength != -1) {
                bufferedSink.writeUtf8(NPStringFog.decode(new byte[]{33, 89, 13, 69, 92, 86, 22, 27, 47, 84, 87, 95, 22, 94, 89, 17}, "b6c198", 1.1921513E9f)).writeDecimalLong(jContentLength).write(CRLF);
            } else if (z) {
                buffer.clear();
                return -1L;
            }
            bufferedSink.write(CRLF);
            if (z) {
                j += jContentLength;
            } else {
                requestBody.writeTo(bufferedSink);
            }
            bufferedSink.write(CRLF);
        }
        bufferedSink.write(DASHDASH);
        bufferedSink.write(this.boundary);
        bufferedSink.write(DASHDASH);
        bufferedSink.write(CRLF);
        if (!z) {
            return j;
        }
        long size3 = j + buffer.size();
        buffer.clear();
        return size3;
    }

    public String boundary() {
        return this.boundary.utf8();
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws IOException {
        long j = this.contentLength;
        if (j != -1) {
            return j;
        }
        long jWriteOrCountBytes = writeOrCountBytes(null, true);
        this.contentLength = jWriteOrCountBytes;
        return jWriteOrCountBytes;
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return this.contentType;
    }

    public Part part(int i) {
        return this.parts.get(i);
    }

    public List<Part> parts() {
        return this.parts;
    }

    public int size() {
        return this.parts.size();
    }

    public MediaType type() {
        return this.originalType;
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink bufferedSink) throws IOException {
        writeOrCountBytes(bufferedSink, false);
    }
}
