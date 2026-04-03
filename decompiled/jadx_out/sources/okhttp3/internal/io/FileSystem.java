package okhttp3.internal.io;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import n.NPStringFog;
import okio.Okio;
import okio.Sink;
import okio.Source;

/* JADX INFO: loaded from: classes62.dex */
public interface FileSystem {
    public static final FileSystem SYSTEM = new FileSystem() { // from class: okhttp3.internal.io.FileSystem.1
        @Override // okhttp3.internal.io.FileSystem
        public Sink appendingSink(File file) throws FileNotFoundException {
            try {
                return Okio.appendingSink(file);
            } catch (FileNotFoundException e) {
                file.getParentFile().mkdirs();
                return Okio.appendingSink(file);
            }
        }

        @Override // okhttp3.internal.io.FileSystem
        public void delete(File file) throws IOException {
            if (!file.delete() && file.exists()) {
                throw new IOException(NPStringFog.decode(new byte[]{87, 2, 13, 10, 84, 2, 17, 23, 11, 70, 85, 3, 93, 6, 16, 3, 17}, "1cdf1f", -5.0584186E8f) + file);
            }
        }

        @Override // okhttp3.internal.io.FileSystem
        public void deleteContents(File file) throws IOException {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles == null) {
                throw new IOException(NPStringFog.decode(new byte[]{95, 9, 71, 69, 88, 16, 67, 3, 82, 1, 88, 82, 93, 3, 19, 1, 80, 66, 84, 5, 71, 10, 75, 73, 11, 70}, "1f3e90", 1.6701954E8f) + file);
            }
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    deleteContents(file2);
                }
                if (!file2.delete()) {
                    throw new IOException(NPStringFog.decode(new byte[]{0, 86, 94, 13, 87, 5, 70, 67, 88, 65, 86, 4, 10, 82, 67, 4, 18}, "f77a2a", false, false) + file2);
                }
            }
        }

        @Override // okhttp3.internal.io.FileSystem
        public boolean exists(File file) {
            return file.exists();
        }

        @Override // okhttp3.internal.io.FileSystem
        public void rename(File file, File file2) throws IOException {
            delete(file2);
            if (!file.renameTo(file2)) {
                throw new IOException(NPStringFog.decode(new byte[]{80, 89, 93, 84, 3, 83, 22, 76, 91, 24, 20, 82, 88, 89, 89, 93, 70}, "6848f7", -1667345766L) + file + NPStringFog.decode(new byte[]{22, 69, 89, 69}, "616e68", -3.4034563E8f) + file2);
            }
        }

        @Override // okhttp3.internal.io.FileSystem
        public Sink sink(File file) throws FileNotFoundException {
            try {
                return Okio.sink(file);
            } catch (FileNotFoundException e) {
                file.getParentFile().mkdirs();
                return Okio.sink(file);
            }
        }

        @Override // okhttp3.internal.io.FileSystem
        public long size(File file) {
            return file.length();
        }

        @Override // okhttp3.internal.io.FileSystem
        public Source source(File file) throws FileNotFoundException {
            return Okio.source(file);
        }
    };

    Sink appendingSink(File file) throws FileNotFoundException;

    void delete(File file) throws IOException;

    void deleteContents(File file) throws IOException;

    boolean exists(File file);

    void rename(File file, File file2) throws IOException;

    Sink sink(File file) throws FileNotFoundException;

    long size(File file);

    Source source(File file) throws FileNotFoundException;
}
