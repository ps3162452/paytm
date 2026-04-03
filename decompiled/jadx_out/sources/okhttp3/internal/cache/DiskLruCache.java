package okhttp3.internal.cache;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.NoSuchElementException;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import javax.annotation.Nullable;
import n.NPStringFog;
import okhttp3.internal.Util;
import okhttp3.internal.io.FileSystem;
import okhttp3.internal.platform.Platform;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.Okio;
import okio.Sink;
import okio.Source;

/* JADX INFO: loaded from: classes62.dex */
public final class DiskLruCache implements Closeable, Flushable {
    static final boolean $assertionsDisabled;
    static final long ANY_SEQUENCE_NUMBER = -1;
    static final Pattern LEGAL_KEY_PATTERN;
    private final int appVersion;
    boolean closed;
    final File directory;
    private final Executor executor;
    final FileSystem fileSystem;
    boolean hasJournalErrors;
    boolean initialized;
    private final File journalFile;
    private final File journalFileBackup;
    private final File journalFileTmp;
    BufferedSink journalWriter;
    private long maxSize;
    boolean mostRecentRebuildFailed;
    boolean mostRecentTrimFailed;
    int redundantOpCount;
    final int valueCount;
    private static final String CLEAN = NPStringFog.decode(new byte[]{118, 125, 118, 120, 121}, "51397e", 1633411435L);
    private static final String DIRTY = NPStringFog.decode(new byte[]{124, 123, 101, 48, 96}, "827d9e", 4.36967542E8d);
    static final String JOURNAL_FILE = NPStringFog.decode(new byte[]{8, 87, 65, 17, 11, 84, 14}, "b84ce5", -3983556.0f);
    static final String JOURNAL_FILE_BACKUP = NPStringFog.decode(new byte[]{92, 91, 19, 23, 90, 82, 90, 26, 4, 14, 68}, "64fe43", true);
    static final String JOURNAL_FILE_TEMP = NPStringFog.decode(new byte[]{90, 92, 66, 70, 10, 82, 92, 29, 67, 89, 20}, "0374d3", true);
    static final String MAGIC = NPStringFog.decode(new byte[]{90, 89, 6, 87, 88, 74, 83, 30, 13, 91, 25, 124, 95, 67, 15, 120, 69, 77, 117, 81, 7, 92, 82}, "60d478", false);
    private static final String READ = NPStringFog.decode(new byte[]{98, 116, 39, 38}, "01fb20", true);
    private static final String REMOVE = NPStringFog.decode(new byte[]{99, 35, 41, 43, 53, 117}, "1fddc0", false);
    static final String VERSION_1 = NPStringFog.decode(new byte[]{0}, "167c98", 1.954587574E9d);
    private long size = 0;
    final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap<>(0, 0.75f, true);
    private long nextSequenceNumber = 0;
    private final Runnable cleanupRunnable = new Runnable(this) { // from class: okhttp3.internal.cache.DiskLruCache.1
        final DiskLruCache this$0;

        {
            this.this$0 = this;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.this$0) {
                if ((this.this$0.initialized ? false : true) || this.this$0.closed) {
                    return;
                }
                try {
                    this.this$0.trimToSize();
                } catch (IOException e) {
                    this.this$0.mostRecentTrimFailed = true;
                }
                try {
                    if (this.this$0.journalRebuildRequired()) {
                        this.this$0.rebuildJournal();
                        this.this$0.redundantOpCount = 0;
                    }
                } catch (IOException e2) {
                    this.this$0.mostRecentRebuildFailed = true;
                    this.this$0.journalWriter = Okio.buffer(Okio.blackhole());
                }
            }
        }
    };

    public final class Editor {
        private boolean done;
        final Entry entry;
        final DiskLruCache this$0;
        final boolean[] written;

        Editor(DiskLruCache diskLruCache, Entry entry) {
            this.this$0 = diskLruCache;
            this.entry = entry;
            this.written = entry.readable ? null : new boolean[diskLruCache.valueCount];
        }

        public void abort() throws IOException {
            synchronized (this.this$0) {
                if (this.done) {
                    throw new IllegalStateException();
                }
                if (this.entry.currentEditor == this) {
                    this.this$0.completeEdit(this, false);
                }
                this.done = true;
            }
        }

        public void abortUnlessCommitted() {
            synchronized (this.this$0) {
                if (!this.done && this.entry.currentEditor == this) {
                    try {
                        this.this$0.completeEdit(this, false);
                    } catch (IOException e) {
                    }
                }
            }
        }

        public void commit() throws IOException {
            synchronized (this.this$0) {
                if (this.done) {
                    throw new IllegalStateException();
                }
                if (this.entry.currentEditor == this) {
                    this.this$0.completeEdit(this, true);
                }
                this.done = true;
            }
        }

        void detach() {
            if (this.entry.currentEditor == this) {
                for (int i = 0; i < this.this$0.valueCount; i++) {
                    try {
                        this.this$0.fileSystem.delete(this.entry.dirtyFiles[i]);
                    } catch (IOException e) {
                    }
                }
                this.entry.currentEditor = null;
            }
        }

        public Sink newSink(int i) {
            Sink sinkBlackhole;
            synchronized (this.this$0) {
                if (this.done) {
                    throw new IllegalStateException();
                }
                if (this.entry.currentEditor != this) {
                    sinkBlackhole = Okio.blackhole();
                } else {
                    if (!this.entry.readable) {
                        this.written[i] = true;
                    }
                    try {
                        sinkBlackhole = new FaultHidingSink(this, this.this$0.fileSystem.sink(this.entry.dirtyFiles[i])) { // from class: okhttp3.internal.cache.DiskLruCache.Editor.1
                            final Editor this$1;

                            {
                                this.this$1 = this;
                            }

                            @Override // okhttp3.internal.cache.FaultHidingSink
                            protected void onException(IOException iOException) {
                                synchronized (this.this$1.this$0) {
                                    this.this$1.detach();
                                }
                            }
                        };
                    } catch (FileNotFoundException e) {
                        sinkBlackhole = Okio.blackhole();
                    }
                }
                return sinkBlackhole;
            }
        }

        public Source newSource(int i) {
            Source source = null;
            synchronized (this.this$0) {
                if (this.done) {
                    throw new IllegalStateException();
                }
                if (this.entry.readable && this.entry.currentEditor == this) {
                    try {
                        source = this.this$0.fileSystem.source(this.entry.cleanFiles[i]);
                    } catch (FileNotFoundException e) {
                    }
                }
                return source;
            }
        }
    }

    private final class Entry {
        final File[] cleanFiles;
        Editor currentEditor;
        final File[] dirtyFiles;
        final String key;
        final long[] lengths;
        boolean readable;
        long sequenceNumber;
        final DiskLruCache this$0;

        Entry(DiskLruCache diskLruCache, String str) {
            this.this$0 = diskLruCache;
            this.key = str;
            this.lengths = new long[diskLruCache.valueCount];
            this.cleanFiles = new File[diskLruCache.valueCount];
            this.dirtyFiles = new File[diskLruCache.valueCount];
            StringBuilder sbAppend = new StringBuilder(str).append('.');
            int length = sbAppend.length();
            for (int i = 0; i < diskLruCache.valueCount; i++) {
                sbAppend.append(i);
                this.cleanFiles[i] = new File(diskLruCache.directory, sbAppend.toString());
                sbAppend.append(NPStringFog.decode(new byte[]{30, 77, 92, 22}, "091fec", true));
                this.dirtyFiles[i] = new File(diskLruCache.directory, sbAppend.toString());
                sbAppend.setLength(length);
            }
        }

        private IOException invalidLengths(String[] strArr) throws IOException {
            throw new IOException(NPStringFog.decode(new byte[]{16, 8, 0, 26, 64, 87, 6, 18, 0, 6, 16, 88, 10, 19, 23, 12, 81, 94, 69, 10, 12, 12, 85, 8, 69}, "efeb02", -838208193L) + Arrays.toString(strArr));
        }

        void setLengths(String[] strArr) throws IOException {
            if (strArr.length != this.this$0.valueCount) {
                throw invalidLengths(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.lengths[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException e) {
                    throw invalidLengths(strArr);
                }
            }
        }

        Snapshot snapshot() {
            if (!Thread.holdsLock(this.this$0)) {
                throw new AssertionError();
            }
            Source[] sourceArr = new Source[this.this$0.valueCount];
            long[] jArr = (long[]) this.lengths.clone();
            for (int i = 0; i < this.this$0.valueCount; i++) {
                try {
                    sourceArr[i] = this.this$0.fileSystem.source(this.cleanFiles[i]);
                } catch (FileNotFoundException e) {
                    for (int i2 = 0; i2 < this.this$0.valueCount && sourceArr[i2] != null; i2++) {
                        Util.closeQuietly(sourceArr[i2]);
                    }
                    try {
                        this.this$0.removeEntry(this);
                    } catch (IOException e2) {
                    }
                    return null;
                }
            }
            return new Snapshot(this.this$0, this.key, this.sequenceNumber, sourceArr, jArr);
        }

        void writeLengths(BufferedSink bufferedSink) throws IOException {
            for (long j : this.lengths) {
                bufferedSink.writeByte(32).writeDecimalLong(j);
            }
        }
    }

    public final class Snapshot implements Closeable {
        private final String key;
        private final long[] lengths;
        private final long sequenceNumber;
        private final Source[] sources;
        final DiskLruCache this$0;

        Snapshot(DiskLruCache diskLruCache, String str, long j, Source[] sourceArr, long[] jArr) {
            this.this$0 = diskLruCache;
            this.key = str;
            this.sequenceNumber = j;
            this.sources = sourceArr;
            this.lengths = jArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (Source source : this.sources) {
                Util.closeQuietly(source);
            }
        }

        @Nullable
        public Editor edit() throws IOException {
            return this.this$0.edit(this.key, this.sequenceNumber);
        }

        public long getLength(int i) {
            return this.lengths[i];
        }

        public Source getSource(int i) {
            return this.sources[i];
        }

        public String key() {
            return this.key;
        }
    }

    static {
        $assertionsDisabled = !DiskLruCache.class.desiredAssertionStatus();
        LEGAL_KEY_PATTERN = Pattern.compile(NPStringFog.decode(new byte[]{61, 4, 73, 77, 0, 76, 95, 58, 73, 106, 75, 80, 74, 84, 86, 7, 77}, "fed70a", true, false));
    }

    DiskLruCache(FileSystem fileSystem, File file, int i, int i2, long j, Executor executor) {
        this.fileSystem = fileSystem;
        this.directory = file;
        this.appVersion = i;
        this.journalFile = new File(file, NPStringFog.decode(new byte[]{90, 89, 77, 71, 94, 80, 92}, "068501", 1.9679261E9f));
        this.journalFileTmp = new File(file, NPStringFog.decode(new byte[]{91, 9, 70, 22, 88, 89, 93, 72, 71, 9, 70}, "1f3d68", true, true));
        this.journalFileBackup = new File(file, NPStringFog.decode(new byte[]{11, 89, 23, 16, 86, 88, 13, 24, 0, 9, 72}, "a6bb89", 1.905192938E9d));
        this.valueCount = i2;
        this.maxSize = j;
        this.executor = executor;
    }

    private void checkNotClosed() {
        synchronized (this) {
            if (isClosed()) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{83, 7, 80, 92, 84, 21, 89, 21, 19, 87, 93, 90, 67, 3, 87}, "0f3415", -5.06790033E8d));
            }
        }
    }

    public static DiskLruCache create(FileSystem fileSystem, File file, int i, int i2, long j) {
        if (j <= 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{12, 87, 30, 50, 93, 30, 4, 22, 90, 92, 20, 84}, "a6fa4d", false, true));
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{21, 3, 13, 77, 7, 38, 12, 23, 15, 76, 66, 89, 94, 66, 81}, "cba8be", -3.1330748E7f));
        }
        return new DiskLruCache(fileSystem, file, i, i2, j, new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory(NPStringFog.decode(new byte[]{120, 90, 123, 77, 21, 22, 23, 117, 90, 74, 10, 42, 69, 68, 112, 88, 2, 14, 82}, "7139af", -801847050L), true)));
    }

    private BufferedSink newJournalWriter() throws FileNotFoundException {
        return Okio.buffer(new FaultHidingSink(this, this.fileSystem.appendingSink(this.journalFile)) { // from class: okhttp3.internal.cache.DiskLruCache.2
            static final boolean $assertionsDisabled;
            final DiskLruCache this$0;

            static {
                $assertionsDisabled = !DiskLruCache.class.desiredAssertionStatus();
            }

            {
                this.this$0 = this;
            }

            @Override // okhttp3.internal.cache.FaultHidingSink
            protected void onException(IOException iOException) {
                if (!$assertionsDisabled && !Thread.holdsLock(this.this$0)) {
                    throw new AssertionError();
                }
                this.this$0.hasJournalErrors = true;
            }
        });
    }

    private void processJournal() throws IOException {
        this.fileSystem.delete(this.journalFileTmp);
        Iterator<Entry> it = this.lruEntries.values().iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            if (next.currentEditor == null) {
                for (int i = 0; i < this.valueCount; i++) {
                    this.size += next.lengths[i];
                }
            } else {
                next.currentEditor = null;
                for (int i2 = 0; i2 < this.valueCount; i2++) {
                    this.fileSystem.delete(next.cleanFiles[i2]);
                    this.fileSystem.delete(next.dirtyFiles[i2]);
                }
                it.remove();
            }
        }
    }

    private void readJournal() throws IOException {
        int i = 0;
        BufferedSource bufferedSourceBuffer = Okio.buffer(this.fileSystem.source(this.journalFile));
        try {
            String utf8LineStrict = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict2 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict3 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict4 = bufferedSourceBuffer.readUtf8LineStrict();
            String utf8LineStrict5 = bufferedSourceBuffer.readUtf8LineStrict();
            if (!MAGIC.equals(utf8LineStrict) || !VERSION_1.equals(utf8LineStrict2) || !Integer.toString(this.appVersion).equals(utf8LineStrict3) || !Integer.toString(this.valueCount).equals(utf8LineStrict4) || !"".equals(utf8LineStrict5)) {
                throw new IOException(NPStringFog.decode(new byte[]{65, 11, 84, 79, 66, 82, 87, 17, 84, 83, 18, 93, 91, 16, 67, 89, 83, 91, 20, 13, 84, 86, 86, 82, 70, 95, 17, 108}, "4e1727", 1.449888289E9d) + utf8LineStrict + NPStringFog.decode(new byte[]{74, 65}, "fa669e", 2.99007439E8d) + utf8LineStrict2 + NPStringFog.decode(new byte[]{31, 20}, "347e71", false, false) + utf8LineStrict4 + NPStringFog.decode(new byte[]{74, 23}, "f7017e", -1.0221841E8f) + utf8LineStrict5 + NPStringFog.decode(new byte[]{62}, "c7b384", false, false));
            }
            while (true) {
                try {
                    readJournalLine(bufferedSourceBuffer.readUtf8LineStrict());
                    i++;
                } catch (EOFException e) {
                    this.redundantOpCount = i - this.lruEntries.size();
                    if (bufferedSourceBuffer.exhausted()) {
                        this.journalWriter = newJournalWriter();
                    } else {
                        rebuildJournal();
                    }
                    Util.closeQuietly(bufferedSourceBuffer);
                    return;
                }
            }
        } catch (Throwable th) {
            Util.closeQuietly(bufferedSourceBuffer);
            throw th;
        }
    }

    private void readJournalLine(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException(NPStringFog.decode(new byte[]{17, 13, 7, 27, 65, 1, 7, 23, 7, 7, 17, 14, 11, 22, 16, 13, 80, 8, 68, 15, 11, 13, 84, 94, 68}, "dcbc1d", 1.4804831E9f) + str);
        }
        int i = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i);
        if (iIndexOf2 == -1) {
            String strSubstring2 = str.substring(i);
            if (iIndexOf == REMOVE.length() && str.startsWith(REMOVE)) {
                this.lruEntries.remove(strSubstring2);
                return;
            }
            strSubstring = strSubstring2;
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        Entry entry = this.lruEntries.get(strSubstring);
        if (entry == null) {
            entry = new Entry(this, strSubstring);
            this.lruEntries.put(strSubstring, entry);
        }
        if (iIndexOf2 != -1 && iIndexOf == CLEAN.length() && str.startsWith(CLEAN)) {
            String[] strArrSplit = str.substring(iIndexOf2 + 1).split(" ");
            entry.readable = true;
            entry.currentEditor = null;
            entry.setLengths(strArrSplit);
            return;
        }
        if (iIndexOf2 == -1 && iIndexOf == DIRTY.length() && str.startsWith(DIRTY)) {
            entry.currentEditor = new Editor(this, entry);
        } else if (iIndexOf2 != -1 || iIndexOf != READ.length() || !str.startsWith(READ)) {
            throw new IOException(NPStringFog.decode(new byte[]{71, 12, 3, 74, 22, 83, 81, 22, 3, 86, 70, 92, 93, 23, 20, 92, 7, 90, 18, 14, 15, 92, 3, 12, 18}, "2bf2f6", false, true) + str);
        }
    }

    private void validateKey(String str) {
        if (!LEGAL_KEY_PATTERN.matcher(str).matches()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{15, 93, 74, 66, 19, 89, 17, 75, 71, 17, 94, 85, 16, 91, 91, 17, 65, 81, 3, 93, 75, 17, 104, 85, 73, 66, 3, 28, 10, 107, 73, 101, 72, 0, 31, 5, 86, 8, 78, 11, 19, 22}, "d83134", true, true) + str + NPStringFog.decode(new byte[]{16}, "222604", false, true));
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            if (!this.initialized || this.closed) {
                this.closed = true;
            } else {
                for (Entry entry : (Entry[]) this.lruEntries.values().toArray(new Entry[this.lruEntries.size()])) {
                    if (entry.currentEditor != null) {
                        entry.currentEditor.abort();
                    }
                }
                trimToSize();
                this.journalWriter.close();
                this.journalWriter = null;
                this.closed = true;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0066 A[Catch: all -> 0x000e, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0008, B:7:0x000d, B:12:0x0013, B:15:0x0018, B:17:0x001c, B:19:0x0022, B:20:0x004d, B:21:0x004e, B:23:0x005a, B:27:0x0062, B:29:0x0066, B:31:0x006c, B:33:0x0074, B:34:0x0092, B:35:0x0095, B:36:0x009b, B:38:0x00a9, B:40:0x00ce, B:41:0x00d7, B:43:0x00e4, B:45:0x00ea, B:46:0x00f3), top: B:48:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a9 A[Catch: all -> 0x000e, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0008, B:7:0x000d, B:12:0x0013, B:15:0x0018, B:17:0x001c, B:19:0x0022, B:20:0x004d, B:21:0x004e, B:23:0x005a, B:27:0x0062, B:29:0x0066, B:31:0x006c, B:33:0x0074, B:34:0x0092, B:35:0x0095, B:36:0x009b, B:38:0x00a9, B:40:0x00ce, B:41:0x00d7, B:43:0x00e4, B:45:0x00ea, B:46:0x00f3), top: B:48:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00ea A[Catch: all -> 0x000e, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0008, B:7:0x000d, B:12:0x0013, B:15:0x0018, B:17:0x001c, B:19:0x0022, B:20:0x004d, B:21:0x004e, B:23:0x005a, B:27:0x0062, B:29:0x0066, B:31:0x006c, B:33:0x0074, B:34:0x0092, B:35:0x0095, B:36:0x009b, B:38:0x00a9, B:40:0x00ce, B:41:0x00d7, B:43:0x00e4, B:45:0x00ea, B:46:0x00f3), top: B:48:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00f3 A[Catch: all -> 0x000e, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x0008, B:7:0x000d, B:12:0x0013, B:15:0x0018, B:17:0x001c, B:19:0x0022, B:20:0x004d, B:21:0x004e, B:23:0x005a, B:27:0x0062, B:29:0x0066, B:31:0x006c, B:33:0x0074, B:34:0x0092, B:35:0x0095, B:36:0x009b, B:38:0x00a9, B:40:0x00ce, B:41:0x00d7, B:43:0x00e4, B:45:0x00ea, B:46:0x00f3), top: B:48:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void completeEdit(okhttp3.internal.cache.DiskLruCache.Editor r11, boolean r12) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.DiskLruCache.completeEdit(okhttp3.internal.cache.DiskLruCache$Editor, boolean):void");
    }

    public void delete() throws IOException {
        close();
        this.fileSystem.deleteContents(this.directory);
    }

    @Nullable
    public Editor edit(String str) throws IOException {
        return edit(str, -1L);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0075 A[ADDED_TO_REGION, REMOVE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    okhttp3.internal.cache.DiskLruCache.Editor edit(java.lang.String r5, long r6) throws java.io.IOException {
        /*
            r4 = this;
            r1 = 0
            monitor-enter(r4)
            r4.initialize()     // Catch: java.lang.Throwable -> L3b
            r4.checkNotClosed()     // Catch: java.lang.Throwable -> L3b
            r4.validateKey(r5)     // Catch: java.lang.Throwable -> L3b
            java.util.LinkedHashMap<java.lang.String, okhttp3.internal.cache.DiskLruCache$Entry> r0 = r4.lruEntries     // Catch: java.lang.Throwable -> L3b
            java.lang.Object r0 = r0.get(r5)     // Catch: java.lang.Throwable -> L3b
            okhttp3.internal.cache.DiskLruCache$Entry r0 = (okhttp3.internal.cache.DiskLruCache.Entry) r0     // Catch: java.lang.Throwable -> L3b
            r2 = -1
            int r2 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r2 == 0) goto L24
            if (r0 == 0) goto L75
            long r2 = r0.sequenceNumber     // Catch: java.lang.Throwable -> L3b
            int r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r2 == 0) goto L24
            r0 = r1
        L22:
            monitor-exit(r4)
            return r0
        L24:
            if (r0 == 0) goto L2a
            okhttp3.internal.cache.DiskLruCache$Editor r2 = r0.currentEditor     // Catch: java.lang.Throwable -> L3b
            if (r2 != 0) goto L75
        L2a:
            boolean r2 = r4.mostRecentTrimFailed     // Catch: java.lang.Throwable -> L3b
            if (r2 != 0) goto L32
            boolean r2 = r4.mostRecentRebuildFailed     // Catch: java.lang.Throwable -> L3b
            if (r2 == 0) goto L3e
        L32:
            java.util.concurrent.Executor r0 = r4.executor     // Catch: java.lang.Throwable -> L3b
            java.lang.Runnable r2 = r4.cleanupRunnable     // Catch: java.lang.Throwable -> L3b
            r0.execute(r2)     // Catch: java.lang.Throwable -> L3b
            r0 = r1
            goto L22
        L3b:
            r0 = move-exception
            monitor-exit(r4)
            throw r0
        L3e:
            okio.BufferedSink r2 = r4.journalWriter     // Catch: java.lang.Throwable -> L3b
            java.lang.String r3 = okhttp3.internal.cache.DiskLruCache.DIRTY     // Catch: java.lang.Throwable -> L3b
            okio.BufferedSink r2 = r2.writeUtf8(r3)     // Catch: java.lang.Throwable -> L3b
            r3 = 32
            okio.BufferedSink r2 = r2.writeByte(r3)     // Catch: java.lang.Throwable -> L3b
            okio.BufferedSink r2 = r2.writeUtf8(r5)     // Catch: java.lang.Throwable -> L3b
            r3 = 10
            r2.writeByte(r3)     // Catch: java.lang.Throwable -> L3b
            okio.BufferedSink r2 = r4.journalWriter     // Catch: java.lang.Throwable -> L3b
            r2.flush()     // Catch: java.lang.Throwable -> L3b
            boolean r2 = r4.hasJournalErrors     // Catch: java.lang.Throwable -> L3b
            if (r2 != 0) goto L75
            if (r0 != 0) goto L73
            okhttp3.internal.cache.DiskLruCache$Entry r0 = new okhttp3.internal.cache.DiskLruCache$Entry     // Catch: java.lang.Throwable -> L3b
            r0.<init>(r4, r5)     // Catch: java.lang.Throwable -> L3b
            java.util.LinkedHashMap<java.lang.String, okhttp3.internal.cache.DiskLruCache$Entry> r1 = r4.lruEntries     // Catch: java.lang.Throwable -> L3b
            r1.put(r5, r0)     // Catch: java.lang.Throwable -> L3b
            r1 = r0
        L6b:
            okhttp3.internal.cache.DiskLruCache$Editor r0 = new okhttp3.internal.cache.DiskLruCache$Editor     // Catch: java.lang.Throwable -> L3b
            r0.<init>(r4, r1)     // Catch: java.lang.Throwable -> L3b
            r1.currentEditor = r0     // Catch: java.lang.Throwable -> L3b
            goto L22
        L73:
            r1 = r0
            goto L6b
        L75:
            r0 = r1
            goto L22
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache.DiskLruCache.edit(java.lang.String, long):okhttp3.internal.cache.DiskLruCache$Editor");
    }

    public void evictAll() throws IOException {
        synchronized (this) {
            initialize();
            for (Entry entry : (Entry[]) this.lruEntries.values().toArray(new Entry[this.lruEntries.size()])) {
                removeEntry(entry);
            }
            this.mostRecentTrimFailed = false;
        }
    }

    @Override // java.io.Flushable
    public void flush() throws IOException {
        synchronized (this) {
            if (this.initialized) {
                checkNotClosed();
                trimToSize();
                this.journalWriter.flush();
            }
        }
    }

    public Snapshot get(String str) throws IOException {
        Snapshot snapshot;
        synchronized (this) {
            initialize();
            checkNotClosed();
            validateKey(str);
            Entry entry = this.lruEntries.get(str);
            if (entry == null || !entry.readable || (snapshot = entry.snapshot()) == null) {
                snapshot = null;
            } else {
                this.redundantOpCount++;
                this.journalWriter.writeUtf8(READ).writeByte(32).writeUtf8(str).writeByte(10);
                if (journalRebuildRequired()) {
                    this.executor.execute(this.cleanupRunnable);
                }
            }
        }
        return snapshot;
    }

    public File getDirectory() {
        return this.directory;
    }

    public long getMaxSize() {
        long j;
        synchronized (this) {
            j = this.maxSize;
        }
        return j;
    }

    public void initialize() throws IOException {
        synchronized (this) {
            if (!$assertionsDisabled && !Thread.holdsLock(this)) {
                throw new AssertionError();
            }
            if (!this.initialized) {
                if (this.fileSystem.exists(this.journalFileBackup)) {
                    if (this.fileSystem.exists(this.journalFile)) {
                        this.fileSystem.delete(this.journalFileBackup);
                    } else {
                        this.fileSystem.rename(this.journalFileBackup, this.journalFile);
                    }
                }
                if (this.fileSystem.exists(this.journalFile)) {
                    try {
                        readJournal();
                        processJournal();
                        this.initialized = true;
                    } catch (IOException e) {
                        Platform.get().log(5, NPStringFog.decode(new byte[]{112, 8, 75, 93, 125, 70, 65, 34, 89, 85, 89, 81, 20}, "4a8614", 6.88745158E8d) + this.directory + NPStringFog.decode(new byte[]{67, 80, 71, 68, 91, 95, 17, 75, 65, 20, 76, 10, 67}, "c94d80", 1864777585L) + e.getMessage() + NPStringFog.decode(new byte[]{26, 66, 68, 81, 91, 10, 64, 11, 88, 83}, "6b646e", 1.555918237E9d), e);
                        try {
                            delete();
                            this.closed = false;
                            rebuildJournal();
                            this.initialized = true;
                        } catch (Throwable th) {
                            this.closed = false;
                            throw th;
                        }
                    }
                } else {
                    rebuildJournal();
                    this.initialized = true;
                }
            }
        }
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.closed;
        }
        return z;
    }

    boolean journalRebuildRequired() {
        return this.redundantOpCount >= 2000 && this.redundantOpCount >= this.lruEntries.size();
    }

    void rebuildJournal() throws IOException {
        synchronized (this) {
            if (this.journalWriter != null) {
                this.journalWriter.close();
            }
            BufferedSink bufferedSinkBuffer = Okio.buffer(this.fileSystem.sink(this.journalFileTmp));
            try {
                bufferedSinkBuffer.writeUtf8(MAGIC).writeByte(10);
                bufferedSinkBuffer.writeUtf8(VERSION_1).writeByte(10);
                bufferedSinkBuffer.writeDecimalLong(this.appVersion).writeByte(10);
                bufferedSinkBuffer.writeDecimalLong(this.valueCount).writeByte(10);
                bufferedSinkBuffer.writeByte(10);
                for (Entry entry : this.lruEntries.values()) {
                    if (entry.currentEditor != null) {
                        bufferedSinkBuffer.writeUtf8(DIRTY).writeByte(32);
                        bufferedSinkBuffer.writeUtf8(entry.key);
                        bufferedSinkBuffer.writeByte(10);
                    } else {
                        bufferedSinkBuffer.writeUtf8(CLEAN).writeByte(32);
                        bufferedSinkBuffer.writeUtf8(entry.key);
                        entry.writeLengths(bufferedSinkBuffer);
                        bufferedSinkBuffer.writeByte(10);
                    }
                }
                bufferedSinkBuffer.close();
                if (this.fileSystem.exists(this.journalFile)) {
                    this.fileSystem.rename(this.journalFile, this.journalFileBackup);
                }
                this.fileSystem.rename(this.journalFileTmp, this.journalFile);
                this.fileSystem.delete(this.journalFileBackup);
                this.journalWriter = newJournalWriter();
                this.hasJournalErrors = false;
                this.mostRecentRebuildFailed = false;
            } catch (Throwable th) {
                bufferedSinkBuffer.close();
                throw th;
            }
        }
    }

    public boolean remove(String str) throws IOException {
        boolean zRemoveEntry;
        synchronized (this) {
            initialize();
            checkNotClosed();
            validateKey(str);
            Entry entry = this.lruEntries.get(str);
            if (entry == null) {
                zRemoveEntry = false;
            } else {
                zRemoveEntry = removeEntry(entry);
                if (zRemoveEntry && this.size <= this.maxSize) {
                    this.mostRecentTrimFailed = false;
                }
            }
        }
        return zRemoveEntry;
    }

    boolean removeEntry(Entry entry) throws IOException {
        if (entry.currentEditor != null) {
            entry.currentEditor.detach();
        }
        for (int i = 0; i < this.valueCount; i++) {
            this.fileSystem.delete(entry.cleanFiles[i]);
            this.size -= entry.lengths[i];
            entry.lengths[i] = 0;
        }
        this.redundantOpCount++;
        this.journalWriter.writeUtf8(REMOVE).writeByte(32).writeUtf8(entry.key).writeByte(10);
        this.lruEntries.remove(entry.key);
        if (!journalRebuildRequired()) {
            return true;
        }
        this.executor.execute(this.cleanupRunnable);
        return true;
    }

    public void setMaxSize(long j) {
        synchronized (this) {
            this.maxSize = j;
            if (this.initialized) {
                this.executor.execute(this.cleanupRunnable);
            }
        }
    }

    public long size() throws IOException {
        long j;
        synchronized (this) {
            initialize();
            j = this.size;
        }
        return j;
    }

    public Iterator<Snapshot> snapshots() throws IOException {
        Iterator<Snapshot> it;
        synchronized (this) {
            initialize();
            it = new Iterator<Snapshot>(this) { // from class: okhttp3.internal.cache.DiskLruCache.3
                final Iterator<Entry> delegate;
                Snapshot nextSnapshot;
                Snapshot removeSnapshot;
                final DiskLruCache this$0;

                {
                    this.this$0 = this;
                    this.delegate = new ArrayList(this.this$0.lruEntries.values()).iterator();
                }

                @Override // java.util.Iterator
                public boolean hasNext() {
                    boolean z;
                    if (this.nextSnapshot != null) {
                        return true;
                    }
                    synchronized (this.this$0) {
                        if (!this.this$0.closed) {
                            while (true) {
                                if (!this.delegate.hasNext()) {
                                    z = false;
                                    break;
                                }
                                Snapshot snapshot = this.delegate.next().snapshot();
                                if (snapshot != null) {
                                    this.nextSnapshot = snapshot;
                                    z = true;
                                    break;
                                }
                            }
                        } else {
                            z = false;
                        }
                    }
                    return z;
                }

                @Override // java.util.Iterator
                public Snapshot next() {
                    if (!hasNext()) {
                        throw new NoSuchElementException();
                    }
                    this.removeSnapshot = this.nextSnapshot;
                    this.nextSnapshot = null;
                    return this.removeSnapshot;
                }

                @Override // java.util.Iterator
                public void remove() {
                    if (this.removeSnapshot == null) {
                        throw new IllegalStateException(NPStringFog.decode(new byte[]{67, 83, 94, 91, 70, 83, 25, 31, 19, 86, 85, 80, 94, 68, 86, 20, 94, 83, 73, 66, 27, 29}, "163406", -1.1195008E8f));
                    }
                    try {
                        this.this$0.remove(this.removeSnapshot.key);
                    } catch (IOException e) {
                    } finally {
                        this.removeSnapshot = null;
                    }
                }
            };
        }
        return it;
    }

    void trimToSize() throws IOException {
        while (this.size > this.maxSize) {
            removeEntry(this.lruEntries.values().iterator().next());
        }
        this.mostRecentTrimFailed = false;
    }
}
