package okhttp3.internal.cache2;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import n.NPStringFog;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.ByteString;
import okio.Source;
import okio.Timeout;

/* JADX INFO: loaded from: classes62.dex */
final class Relay {
    private static final long FILE_HEADER_SIZE = 32;
    static final ByteString PREFIX_CLEAN = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{127, 10, 113, 21, 76, 19, 16, 2, 88, 2, 80, 6, 16, 23, 8, 107}, "0a9a8c", false));
    static final ByteString PREFIX_DIRTY = ByteString.encodeUtf8(NPStringFog.decode(new byte[]{120, 89, 121, 21, 21, 21, 23, 118, 120, 51, 53, 60, 23, 8, 25, 107}, "721aae", false));
    private static final int SOURCE_FILE = 2;
    private static final int SOURCE_UPSTREAM = 1;
    final long bufferMaxSize;
    boolean complete;
    RandomAccessFile file;
    private final ByteString metadata;
    int sourceCount;
    Source upstream;
    long upstreamPos;
    Thread upstreamReader;
    final Buffer upstreamBuffer = new Buffer();
    final Buffer buffer = new Buffer();

    class RelaySource implements Source {
        private FileOperator fileOperator;
        private long sourcePos;
        final Relay this$0;
        private final Timeout timeout = new Timeout();

        RelaySource(Relay relay) {
            this.this$0 = relay;
            this.fileOperator = new FileOperator(this.this$0.file.getChannel());
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            RandomAccessFile randomAccessFile = null;
            if (this.fileOperator == null) {
                return;
            }
            this.fileOperator = null;
            synchronized (this.this$0) {
                Relay relay = this.this$0;
                relay.sourceCount--;
                if (this.this$0.sourceCount == 0) {
                    randomAccessFile = this.this$0.file;
                    this.this$0.file = null;
                }
            }
            if (randomAccessFile != null) {
                Util.closeQuietly(randomAccessFile);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:24:0x004a, code lost:
        
            if (r0 != 2) goto L80;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x004c, code lost:
        
            r4 = java.lang.Math.min(r14, r8 - r12.sourcePos);
            r12.fileOperator.read(okhttp3.internal.cache2.Relay.FILE_HEADER_SIZE + r12.sourcePos, r13, r4);
            r12.sourcePos += r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0094, code lost:
        
            r10 = r12.this$0.upstream.read(r12.this$0.upstreamBuffer, r12.this$0.bufferMaxSize);
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00a8, code lost:
        
            if (r10 != (-1)) goto L45;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00aa, code lost:
        
            r12.this$0.commit(r8);
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00af, code lost:
        
            r1 = r12.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00b3, code lost:
        
            monitor-enter(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00b4, code lost:
        
            r12.this$0.upstreamReader = null;
            r12.this$0.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x00be, code lost:
        
            monitor-exit(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x00c4, code lost:
        
            r4 = java.lang.Math.min(r10, r14);
            r12.this$0.upstreamBuffer.copyTo(r13, 0, r4);
            r12.sourcePos += r4;
            r12.fileOperator.write(okhttp3.internal.cache2.Relay.FILE_HEADER_SIZE + r8, r12.this$0.upstreamBuffer.clone(), r10);
            r1 = r12.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x00ea, code lost:
        
            monitor-enter(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x00eb, code lost:
        
            r12.this$0.buffer.write(r12.this$0.upstreamBuffer, r10);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0104, code lost:
        
            if (r12.this$0.buffer.size() <= r12.this$0.bufferMaxSize) goto L50;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0106, code lost:
        
            r12.this$0.buffer.skip(r12.this$0.buffer.size() - r12.this$0.bufferMaxSize);
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x011a, code lost:
        
            r12.this$0.upstreamPos += r10;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x0121, code lost:
        
            monitor-exit(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x0122, code lost:
        
            r1 = r12.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x0124, code lost:
        
            monitor-enter(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x0125, code lost:
        
            r12.this$0.upstreamReader = null;
            r12.this$0.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x012f, code lost:
        
            monitor-exit(r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x0138, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x013b, code lost:
        
            monitor-enter(r12.this$0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x013c, code lost:
        
            r12.this$0.upstreamReader = null;
            r12.this$0.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:68:0x0147, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:85:?, code lost:
        
            return r4;
         */
        /* JADX WARN: Code restructure failed: missing block: B:86:?, code lost:
        
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:87:?, code lost:
        
            return r4;
         */
        @Override // okio.Source
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long read(okio.Buffer r13, long r14) throws java.io.IOException {
            /*
                Method dump skipped, instruction units count: 339
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache2.Relay.RelaySource.read(okio.Buffer, long):long");
        }

        @Override // okio.Source
        public Timeout timeout() {
            return this.timeout;
        }
    }

    private Relay(RandomAccessFile randomAccessFile, Source source, long j, ByteString byteString, long j2) {
        this.file = randomAccessFile;
        this.upstream = source;
        this.complete = source == null;
        this.upstreamPos = j;
        this.metadata = byteString;
        this.bufferMaxSize = j2;
    }

    public static Relay edit(File file, Source source, ByteString byteString, long j) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, NPStringFog.decode(new byte[]{20, 22}, "fa6926", -1.392145335E9d));
        Relay relay = new Relay(randomAccessFile, source, 0L, byteString, j);
        randomAccessFile.setLength(0L);
        relay.writeHeader(PREFIX_DIRTY, -1L, -1L);
        return relay;
    }

    public static Relay read(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, NPStringFog.decode(new byte[]{69, 79}, "78c223", true));
        FileOperator fileOperator = new FileOperator(randomAccessFile.getChannel());
        Buffer buffer = new Buffer();
        fileOperator.read(0L, buffer, FILE_HEADER_SIZE);
        if (!buffer.readByteString(PREFIX_CLEAN.size()).equals(PREFIX_CLEAN)) {
            throw new IOException(NPStringFog.decode(new byte[]{16, 12, 74, 80, 87, 7, 4, 0, 84, 80, 22, 0, 4, 1, 80, 80, 22, 5, 12, 14, 93}, "eb856c", 2.46086188E8d));
        }
        long j = buffer.readLong();
        long j2 = buffer.readLong();
        Buffer buffer2 = new Buffer();
        fileOperator.read(FILE_HEADER_SIZE + j, buffer2, j2);
        return new Relay(randomAccessFile, null, j, buffer2.readByteString(), 0L);
    }

    private void writeHeader(ByteString byteString, long j, long j2) throws IOException {
        Buffer buffer = new Buffer();
        buffer.write(byteString);
        buffer.writeLong(j);
        buffer.writeLong(j2);
        if (buffer.size() != FILE_HEADER_SIZE) {
            throw new IllegalArgumentException();
        }
        new FileOperator(this.file.getChannel()).write(0L, buffer, FILE_HEADER_SIZE);
    }

    private void writeMetadata(long j) throws IOException {
        Buffer buffer = new Buffer();
        buffer.write(this.metadata);
        new FileOperator(this.file.getChannel()).write(FILE_HEADER_SIZE + j, buffer, this.metadata.size());
    }

    void commit(long j) throws IOException {
        writeMetadata(j);
        this.file.getChannel().force(false);
        writeHeader(PREFIX_CLEAN, j, this.metadata.size());
        this.file.getChannel().force(false);
        synchronized (this) {
            this.complete = true;
        }
        Util.closeQuietly(this.upstream);
        this.upstream = null;
    }

    boolean isClosed() {
        return this.file == null;
    }

    public ByteString metadata() {
        return this.metadata;
    }

    public Source newSource() {
        synchronized (this) {
            if (this.file == null) {
                return null;
            }
            this.sourceCount++;
            return new RelaySource(this);
        }
    }
}
