package okhttp3;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import javax.annotation.Nullable;
import n.NPStringFog;
import okhttp3.internal.Util;
import okio.BufferedSink;
import okio.ByteString;
import okio.Okio;
import okio.Source;

/* JADX INFO: loaded from: classes62.dex */
public abstract class RequestBody {
    public static RequestBody create(@Nullable MediaType mediaType, File file) {
        if (file == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{91, 12, 92, 71, 93, 10, 76, 67, 15, 14, 24, 10, 77, 15, 94}, "8c238d", 23142));
        }
        return new RequestBody(mediaType, file) { // from class: okhttp3.RequestBody.3
            final MediaType val$contentType;
            final File val$file;

            {
                this.val$contentType = mediaType;
                this.val$file = file;
            }

            @Override // okhttp3.RequestBody
            public long contentLength() {
                return this.val$file.length();
            }

            @Override // okhttp3.RequestBody
            @Nullable
            public MediaType contentType() {
                return this.val$contentType;
            }

            @Override // okhttp3.RequestBody
            public void writeTo(BufferedSink bufferedSink) throws IOException {
                Source source = null;
                try {
                    source = Okio.source(this.val$file);
                    bufferedSink.writeAll(source);
                } finally {
                    Util.closeQuietly(source);
                }
            }
        };
    }

    public static RequestBody create(@Nullable MediaType mediaType, String str) {
        Charset charset = Util.UTF_8;
        if (mediaType != null && (charset = mediaType.charset()) == null) {
            charset = Util.UTF_8;
            mediaType = MediaType.parse(mediaType + NPStringFog.decode(new byte[]{14, 65, 83, 94, 4, 67, 70, 4, 68, 11, 16, 69, 83, 76, 8}, "5a06e1", -308733877L));
        }
        return create(mediaType, str.getBytes(charset));
    }

    public static RequestBody create(@Nullable MediaType mediaType, ByteString byteString) {
        return new RequestBody(mediaType, byteString) { // from class: okhttp3.RequestBody.1
            final ByteString val$content;
            final MediaType val$contentType;

            {
                this.val$contentType = mediaType;
                this.val$content = byteString;
            }

            @Override // okhttp3.RequestBody
            public long contentLength() throws IOException {
                return this.val$content.size();
            }

            @Override // okhttp3.RequestBody
            @Nullable
            public MediaType contentType() {
                return this.val$contentType;
            }

            @Override // okhttp3.RequestBody
            public void writeTo(BufferedSink bufferedSink) throws IOException {
                bufferedSink.write(this.val$content);
            }
        };
    }

    public static RequestBody create(@Nullable MediaType mediaType, byte[] bArr) {
        return create(mediaType, bArr, 0, bArr.length);
    }

    public static RequestBody create(@Nullable MediaType mediaType, byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{90, 88, 15, 22, 6, 89, 77, 23, 92, 95, 67, 89, 76, 91, 13}, "97abc7", -20096));
        }
        Util.checkOffsetAndCount(bArr.length, i, i2);
        return new RequestBody(mediaType, i2, bArr, i) { // from class: okhttp3.RequestBody.2
            final int val$byteCount;
            final byte[] val$content;
            final MediaType val$contentType;
            final int val$offset;

            {
                this.val$contentType = mediaType;
                this.val$byteCount = i2;
                this.val$content = bArr;
                this.val$offset = i;
            }

            @Override // okhttp3.RequestBody
            public long contentLength() {
                return this.val$byteCount;
            }

            @Override // okhttp3.RequestBody
            @Nullable
            public MediaType contentType() {
                return this.val$contentType;
            }

            @Override // okhttp3.RequestBody
            public void writeTo(BufferedSink bufferedSink) throws IOException {
                bufferedSink.write(this.val$content, this.val$offset, this.val$byteCount);
            }
        };
    }

    public long contentLength() throws IOException {
        return -1L;
    }

    @Nullable
    public abstract MediaType contentType();

    public abstract void writeTo(BufferedSink bufferedSink) throws IOException;
}
