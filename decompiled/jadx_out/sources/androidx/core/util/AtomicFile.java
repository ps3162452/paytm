package androidx.core.util;

import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class AtomicFile {
    private static final String LOG_TAG = NPStringFog.decode(new byte[]{118, 77, 12, 15, 11, 0, 113, 80, 15, 7}, "79cbbc", 7.46286926E8d);
    private final File mBaseName;
    private final File mLegacyBackupName;
    private final File mNewName;

    public AtomicFile(File file) {
        this.mBaseName = file;
        this.mNewName = new File(file.getPath() + NPStringFog.decode(new byte[]{75, 89, 92, 17}, "e79fdf", 6.43081486E8d));
        this.mLegacyBackupName = new File(file.getPath() + NPStringFog.decode(new byte[]{22, 0, 89, 14}, "8b8eaa", false, false));
    }

    private static void rename(File file, File file2) {
        if (file2.isDirectory() && !file2.delete()) {
            Log.e(LOG_TAG, NPStringFog.decode(new byte[]{115, 80, 8, 14, 81, 84, 21, 69, 14, 66, 80, 85, 89, 84, 21, 7, 20, 86, 92, 93, 4, 66, 67, 88, 92, 82, 9, 66, 93, 67, 21, 80, 65, 6, 93, 66, 80, 82, 21, 13, 70, 73, 21}, "51ab40", 1.890174034E9d) + file2);
        }
        if (file.renameTo(file2)) {
            return;
        }
        Log.e(LOG_TAG, NPStringFog.decode(new byte[]{34, 86, 94, 90, 6, 2, 68, 67, 88, 22, 17, 3, 10, 86, 90, 83, 67}, "d776cf", -287) + file + NPStringFog.decode(new byte[]{24, 16, 90, 18}, "8d528a", true, true) + file2);
    }

    private static boolean sync(FileOutputStream fileOutputStream) {
        try {
            fileOutputStream.getFD().sync();
            return true;
        } catch (IOException e) {
            return false;
        }
    }

    public void delete() {
        this.mBaseName.delete();
        this.mNewName.delete();
        this.mLegacyBackupName.delete();
    }

    public void failWrite(FileOutputStream fileOutputStream) {
        if (fileOutputStream == null) {
            return;
        }
        if (!sync(fileOutputStream)) {
            Log.e(LOG_TAG, NPStringFog.decode(new byte[]{126, 7, 93, 8, 87, 85, 24, 18, 91, 68, 65, 72, 86, 5, 20, 2, 91, 93, 93, 70, 91, 17, 70, 65, 77, 18, 20, 23, 70, 67, 93, 7, 89}, "8f4d21", 819499306L));
        }
        try {
            fileOutputStream.close();
        } catch (IOException e) {
            Log.e(LOG_TAG, NPStringFog.decode(new byte[]{39, 84, 92, 10, 92, 2, 65, 65, 90, 70, 90, 10, 14, 70, 80, 70, 95, 15, 13, 80, 21, 9, 76, 18, 17, 64, 65, 70, 74, 18, 19, 80, 84, 11}, "a55f9f", 25030), e);
        }
        if (this.mNewName.delete()) {
            return;
        }
        Log.e(LOG_TAG, NPStringFog.decode(new byte[]{127, 0, 11, 95, 93, 6, 25, 21, 13, 19, 92, 7, 85, 4, 22, 86, 24, 12, 92, 22, 66, 85, 81, 14, 92, 65}, "9ab38b", 17750) + this.mNewName);
    }

    public void finishWrite(FileOutputStream fileOutputStream) {
        if (fileOutputStream == null) {
            return;
        }
        if (!sync(fileOutputStream)) {
            Log.e(LOG_TAG, NPStringFog.decode(new byte[]{115, 89, 81, 88, 6, 7, 21, 76, 87, 20, 16, 26, 91, 91, 24, 82, 10, 15, 80, 24, 87, 65, 23, 19, 64, 76, 24, 71, 23, 17, 80, 89, 85}, "5884cc", 23871));
        }
        try {
            fileOutputStream.close();
        } catch (IOException e) {
            Log.e(LOG_TAG, NPStringFog.decode(new byte[]{127, 85, 13, 9, 3, 86, 25, 64, 11, 69, 5, 94, 86, 71, 1, 69, 0, 91, 85, 81, 68, 10, 19, 70, 73, 65, 16, 69, 21, 70, 75, 81, 5, 8}, "94def2", true), e);
        }
        rename(this.mNewName, this.mBaseName);
    }

    public File getBaseFile() {
        return this.mBaseName;
    }

    public FileInputStream openRead() throws FileNotFoundException {
        if (this.mLegacyBackupName.exists()) {
            rename(this.mLegacyBackupName, this.mBaseName);
        }
        if (this.mNewName.exists() && this.mBaseName.exists() && !this.mNewName.delete()) {
            Log.e(LOG_TAG, NPStringFog.decode(new byte[]{126, 82, 88, 88, 93, 85, 24, 71, 94, 20, 92, 84, 84, 86, 69, 81, 24, 94, 77, 71, 85, 85, 76, 84, 92, 19, 95, 81, 79, 17, 94, 90, 93, 81, 24}, "831481", false, false) + this.mNewName);
        }
        return new FileInputStream(this.mBaseName);
    }

    public byte[] readFully() throws IOException {
        byte[] bArr;
        int i = 0;
        FileInputStream fileInputStreamOpenRead = openRead();
        try {
            byte[] bArr2 = new byte[fileInputStreamOpenRead.available()];
            while (true) {
                int i2 = fileInputStreamOpenRead.read(bArr2, i, bArr2.length - i);
                if (i2 <= 0) {
                    return bArr2;
                }
                int i3 = i2 + i;
                int iAvailable = fileInputStreamOpenRead.available();
                if (iAvailable > bArr2.length - i3) {
                    bArr = new byte[iAvailable + i3];
                    System.arraycopy(bArr2, 0, bArr, 0, i3);
                } else {
                    bArr = bArr2;
                }
                bArr2 = bArr;
                i = i3;
            }
        } finally {
            fileInputStreamOpenRead.close();
        }
    }

    public FileOutputStream startWrite() throws IOException {
        if (this.mLegacyBackupName.exists()) {
            rename(this.mLegacyBackupName, this.mBaseName);
        }
        try {
            return new FileOutputStream(this.mNewName);
        } catch (FileNotFoundException e) {
            if (!this.mNewName.getParentFile().mkdirs()) {
                throw new IOException(NPStringFog.decode(new byte[]{117, 3, 91, 89, 92, 0, 19, 22, 93, 21, 90, 22, 86, 3, 70, 80, 25, 0, 90, 16, 87, 86, 77, 11, 65, 27, 18, 83, 86, 22, 19}, "3b259d", true, false) + this.mNewName);
            }
            try {
                return new FileOutputStream(this.mNewName);
            } catch (FileNotFoundException e2) {
                throw new IOException(NPStringFog.decode(new byte[]{36, 81, 11, 89, 83, 0, 66, 68, 13, 21, 85, 22, 7, 81, 22, 80, 22, 10, 7, 71, 66, 83, 95, 8, 7, 16}, "b0b56d", 9.35241749E8d) + this.mNewName, e2);
            }
        }
    }
}
