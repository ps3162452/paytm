package okhttp3;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import javax.annotation.Nullable;
import n.NPStringFog;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;

/* JADX INFO: loaded from: classes62.dex */
public abstract class ResponseBody implements Closeable {
    private Reader reader;

    static final class BomAwareReader extends Reader {
        private final Charset charset;
        private boolean closed;
        private Reader delegate;
        private final BufferedSource source;

        BomAwareReader(BufferedSource bufferedSource, Charset charset) {
            this.source = bufferedSource;
            this.charset = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.closed = true;
            if (this.delegate != null) {
                this.delegate.close();
            } else {
                this.source.close();
            }
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            if (this.closed) {
                throw new IOException(NPStringFog.decode(new byte[]{53, 21, 71, 4, 82, 88, 70, 2, 89, 14, 64, 80, 2}, "fa5a35", false));
            }
            Reader inputStreamReader = this.delegate;
            if (inputStreamReader == null) {
                inputStreamReader = new InputStreamReader(this.source.inputStream(), Util.bomAwareCharset(this.source, this.charset));
                this.delegate = inputStreamReader;
            }
            return inputStreamReader.read(cArr, i, i2);
        }
    }

    private Charset charset() {
        MediaType mediaTypeContentType = contentType();
        return mediaTypeContentType != null ? mediaTypeContentType.charset(Util.UTF_8) : Util.UTF_8;
    }

    public static ResponseBody create(@Nullable MediaType mediaType, long j, BufferedSource bufferedSource) {
        if (bufferedSource == null) {
            throw new NullPointerException(NPStringFog.decode(new byte[]{74, 95, 77, 75, 90, 83, 25, 13, 5, 25, 87, 67, 85, 92}, "908996", 1.053669554E9d));
        }
        return new ResponseBody(mediaType, j, bufferedSource) { // from class: okhttp3.ResponseBody.1
            final BufferedSource val$content;
            final long val$contentLength;
            final MediaType val$contentType;

            {
                this.val$contentType = mediaType;
                this.val$contentLength = j;
                this.val$content = bufferedSource;
            }

            @Override // okhttp3.ResponseBody
            public long contentLength() {
                return this.val$contentLength;
            }

            @Override // okhttp3.ResponseBody
            @Nullable
            public MediaType contentType() {
                return this.val$contentType;
            }

            @Override // okhttp3.ResponseBody
            public BufferedSource source() {
                return this.val$content;
            }
        };
    }

    public static ResponseBody create(@Nullable MediaType mediaType, String str) {
        Charset charset = Util.UTF_8;
        if (mediaType != null && (charset = mediaType.charset()) == null) {
            charset = Util.UTF_8;
            mediaType = MediaType.parse(mediaType + NPStringFog.decode(new byte[]{15, 70, 81, 80, 7, 65, 71, 3, 70, 5, 19, 71, 82, 75, 10}, "4f28f3", true));
        }
        Buffer bufferWriteString = new Buffer().writeString(str, charset);
        return create(mediaType, bufferWriteString.size(), bufferWriteString);
    }

    public static ResponseBody create(@Nullable MediaType mediaType, byte[] bArr) {
        return create(mediaType, bArr.length, new Buffer().write(bArr));
    }

    public final InputStream byteStream() {
        return source().inputStream();
    }

    public final byte[] bytes() throws IOException {
        long jContentLength = contentLength();
        if (jContentLength > 2147483647L) {
            throw new IOException(NPStringFog.decode(new byte[]{32, 81, 11, 10, 91, 68, 67, 82, 16, 2, 82, 85, 17, 16, 0, 10, 64, 89, 17, 85, 69, 6, 91, 84, 26, 16, 3, 11, 70, 16, 0, 95, 11, 16, 81, 94, 23, 16, 9, 1, 90, 87, 23, 88, 95, 68}, "c0ed40", false, false) + jContentLength);
        }
        BufferedSource bufferedSourceSource = source();
        try {
            byte[] byteArray = bufferedSourceSource.readByteArray();
            Util.closeQuietly(bufferedSourceSource);
            if (jContentLength == -1 || jContentLength == byteArray.length) {
                return byteArray;
            }
            throw new IOException(NPStringFog.decode(new byte[]{118, 86, 11, 76, 1, 95, 65, 20, 41, 93, 10, 86, 65, 81, 69, 16}, "59e8d1", -548405324L) + jContentLength + NPStringFog.decode(new byte[]{30, 16, 5, 11, 7, 69, 68, 68, 22, 0, 2, 8, 23, 92, 1, 11, 4, 17, 95, 16, 76}, "70dece", 3076) + byteArray.length + NPStringFog.decode(new byte[]{27, 69, 86, 88, 71, 83, 85, 23, 87, 84}, "2e2142", -4.8847904E8f));
        } catch (Throwable th) {
            Util.closeQuietly(bufferedSourceSource);
            throw th;
        }
    }

    public final Reader charStream() {
        Reader reader = this.reader;
        if (reader != null) {
            return reader;
        }
        BomAwareReader bomAwareReader = new BomAwareReader(source(), charset());
        this.reader = bomAwareReader;
        return bomAwareReader;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Util.closeQuietly(source());
    }

    public abstract long contentLength();

    @Nullable
    public abstract MediaType contentType();

    public abstract BufferedSource source();

    public final String string() throws IOException {
        BufferedSource bufferedSourceSource = source();
        try {
            return bufferedSourceSource.readString(Util.bomAwareCharset(bufferedSourceSource, charset()));
        } finally {
            Util.closeQuietly(bufferedSourceSource);
        }
    }
}
