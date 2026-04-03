package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import n.NPStringFog;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: loaded from: classes63.dex */
public final class Okio {
    static final Logger logger = Logger.getLogger(Okio.class.getName());

    private Okio() {
    }

    public static Sink appendingSink(File file) throws FileNotFoundException {
        if (file == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{85, 15, 84, 83, 66, 88, 14, 70, 86, 67, 14, 9}, "3f86be", -5.7281754E8f));
        }
        return sink(new FileOutputStream(file, true));
    }

    public static Sink blackhole() {
        return new Sink() { // from class: okio.Okio.3
            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
            }

            @Override // okio.Sink, java.io.Flushable
            public void flush() throws IOException {
            }

            @Override // okio.Sink
            public Timeout timeout() {
                return Timeout.NONE;
            }

            @Override // okio.Sink
            public void write(Buffer buffer, long j) throws IOException {
                buffer.skip(j);
            }
        };
    }

    public static BufferedSink buffer(Sink sink) {
        return new RealBufferedSink(sink);
    }

    public static BufferedSource buffer(Source source) {
        return new RealBufferedSource(source);
    }

    static boolean isAndroidGetsocknameError(AssertionError assertionError) {
        return (assertionError.getCause() == null || assertionError.getMessage() == null || !assertionError.getMessage().contains(NPStringFog.decode(new byte[]{5, 92, 66, 71, 11, 5, 9, 87, 87, 89, 1, 70, 4, 88, 95, 88, 1, 2}, "b964df", true, false))) ? false : true;
    }

    public static Sink sink(File file) throws FileNotFoundException {
        if (file == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{80, 94, 14, 82, 22, 4, 11, 23, 12, 66, 90, 85}, "67b769", 2.014148146E9d));
        }
        return sink(new FileOutputStream(file));
    }

    public static Sink sink(OutputStream outputStream) {
        return sink(outputStream, new Timeout());
    }

    private static Sink sink(OutputStream outputStream, Timeout timeout) {
        if (outputStream == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{89, 66, 66, 65, 9, 89, 22, 89, 67, 13, 88}, "676a4d", 1.111516831E9d));
        }
        if (timeout == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{23, 12, 94, 81, 93, 69, 23, 69, 14, 9, 18, 94, 22, 9, 95}, "ce3420", false, false));
        }
        return new Sink(timeout, outputStream) { // from class: okio.Okio.1
            final OutputStream val$out;
            final Timeout val$timeout;

            {
                this.val$timeout = timeout;
                this.val$out = outputStream;
            }

            @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                this.val$out.close();
            }

            @Override // okio.Sink, java.io.Flushable
            public void flush() throws IOException {
                this.val$out.flush();
            }

            @Override // okio.Sink
            public Timeout timeout() {
                return this.val$timeout;
            }

            public String toString() {
                return NPStringFog.decode(new byte[]{70, 10, 91, 8, 16}, "5c5c86", 16011) + this.val$out + NPStringFog.decode(new byte[]{28}, "522016", false);
            }

            @Override // okio.Sink
            public void write(Buffer buffer, long j) throws IOException {
                Util.checkOffsetAndCount(buffer.size, 0L, j);
                while (j > 0) {
                    this.val$timeout.throwIfReached();
                    Segment segment = buffer.head;
                    int iMin = (int) Math.min(j, segment.limit - segment.pos);
                    this.val$out.write(segment.data, segment.pos, iMin);
                    segment.pos += iMin;
                    j -= (long) iMin;
                    buffer.size -= (long) iMin;
                    if (segment.pos == segment.limit) {
                        buffer.head = segment.pop();
                        SegmentPool.recycle(segment);
                    }
                }
            }
        };
    }

    public static Sink sink(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{74, 13, 6, 95, 81, 23, 25, 95, 88, 20, 90, 22, 85, 14}, "9be44c", true));
        }
        if (socket.getOutputStream() == null) {
            throw new IOException(NPStringFog.decode(new byte[]{68, 12, 86, 94, 1, 16, 16, 16, 21, 90, 17, 16, 71, 22, 65, 21, 23, 16, 69, 6, 84, 88, 68, 89, 10, 67, 91, 64, 8, 8}, "7c55dd", 1.8494107E9f));
        }
        AsyncTimeout asyncTimeoutTimeout = timeout(socket);
        return asyncTimeoutTimeout.sink(sink(socket.getOutputStream(), asyncTimeoutTimeout));
    }

    @IgnoreJRERequirement
    public static Sink sink(Path path, OpenOption... openOptionArr) throws IOException {
        if (path == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{18, 87, 70, 88, 24, 10, 95, 22, 92, 69, 84, 91}, "b62087", true, false));
        }
        return sink(Files.newOutputStream(path, openOptionArr));
    }

    public static Source source(File file) throws FileNotFoundException {
        if (file == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{7, 91, 9, 92, 16, 8, 92, 18, 11, 76, 92, 89}, "a2e905", 1995821528L));
        }
        return source(new FileInputStream(file));
    }

    public static Source source(InputStream inputStream) {
        return source(inputStream, new Timeout());
    }

    private static Source source(InputStream inputStream, Timeout timeout) {
        if (inputStream == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{80, 95, 24, 92, 10, 25, 87, 68, 84, 13}, "918a79", 22149));
        }
        if (timeout == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{65, 13, 15, 83, 92, 70, 65, 68, 95, 11, 19, 93, 64, 8, 14}, "5db633", 9.0352966E8d));
        }
        return new Source(timeout, inputStream) { // from class: okio.Okio.2
            final InputStream val$in;
            final Timeout val$timeout;

            {
                this.val$timeout = timeout;
                this.val$in = inputStream;
            }

            @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                this.val$in.close();
            }

            @Override // okio.Source
            public long read(Buffer buffer, long j) throws IOException {
                if (j < 0) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{0, 26, 18, 81, 112, 87, 23, 13, 18, 20, 15, 24, 82, 89, 70}, "bcf438", 29457) + j);
                }
                if (j == 0) {
                    return 0L;
                }
                try {
                    this.val$timeout.throwIfReached();
                    Segment segmentWritableSegment = buffer.writableSegment(1);
                    int i = this.val$in.read(segmentWritableSegment.data, segmentWritableSegment.limit, (int) Math.min(j, 8192 - segmentWritableSegment.limit));
                    if (i == -1) {
                        return -1L;
                    }
                    segmentWritableSegment.limit += i;
                    buffer.size += (long) i;
                    return i;
                } catch (AssertionError e) {
                    if (Okio.isAndroidGetsocknameError(e)) {
                        throw new IOException(e);
                    }
                    throw e;
                }
            }

            @Override // okio.Source
            public Timeout timeout() {
                return this.val$timeout;
            }

            public String toString() {
                return NPStringFog.decode(new byte[]{21, 86, 76, 75, 91, 6, 78}, "f9998c", -2035594118L) + this.val$in + NPStringFog.decode(new byte[]{79}, "ffbeb6", false);
            }
        };
    }

    public static Source source(Socket socket) throws IOException {
        if (socket == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{67, 93, 7, 13, 87, 21, 16, 15, 89, 70, 92, 20, 92, 94}, "02df2a", false, true));
        }
        if (socket.getInputStream() == null) {
            throw new IOException(NPStringFog.decode(new byte[]{75, 86, 84, 13, 85, 67, 31, 74, 23, 15, 94, 71, 77, 77, 23, 21, 68, 69, 93, 88, 90, 70, 13, 10, 24, 87, 66, 10, 92}, "897f07", true));
        }
        AsyncTimeout asyncTimeoutTimeout = timeout(socket);
        return asyncTimeoutTimeout.source(source(socket.getInputStream(), asyncTimeoutTimeout));
    }

    @IgnoreJRERequirement
    public static Source source(Path path, OpenOption... openOptionArr) throws IOException {
        if (path == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{22, 89, 76, 9, 21, 12, 91, 24, 86, 20, 89, 93}, "f88a51", -28832));
        }
        return source(Files.newInputStream(path, openOptionArr));
    }

    private static AsyncTimeout timeout(Socket socket) {
        return new AsyncTimeout(socket) { // from class: okio.Okio.4
            final Socket val$socket;

            {
                this.val$socket = socket;
            }

            @Override // okio.AsyncTimeout
            protected IOException newTimeoutException(@Nullable IOException iOException) {
                SocketTimeoutException socketTimeoutException = new SocketTimeoutException(NPStringFog.decode(new byte[]{67, 11, 91, 87, 86, 17, 67}, "7b629d", 178506722L));
                if (iOException != null) {
                    socketTimeoutException.initCause(iOException);
                }
                return socketTimeoutException;
            }

            @Override // okio.AsyncTimeout
            protected void timedOut() {
                try {
                    this.val$socket.close();
                } catch (AssertionError e) {
                    if (!Okio.isAndroidGetsocknameError(e)) {
                        throw e;
                    }
                    Okio.logger.log(Level.WARNING, NPStringFog.decode(new byte[]{117, 5, 95, 90, 7, 92, 19, 16, 89, 22, 1, 84, 92, 23, 83, 22, 22, 81, 94, 1, 82, 22, 13, 77, 71, 68, 69, 89, 1, 83, 86, 16, 22}, "3d66b8", 2131164394L) + this.val$socket, (Throwable) e);
                } catch (Exception e2) {
                    Okio.logger.log(Level.WARNING, NPStringFog.decode(new byte[]{112, 3, 92, 91, 93, 85, 22, 22, 90, 23, 91, 93, 89, 17, 80, 23, 76, 88, 91, 7, 81, 23, 87, 68, 66, 66, 70, 88, 91, 90, 83, 22, 21}, "6b5781", false) + this.val$socket, (Throwable) e2);
                }
            }
        };
    }
}
