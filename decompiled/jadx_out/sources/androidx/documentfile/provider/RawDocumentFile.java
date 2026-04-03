package androidx.documentfile.provider;

import android.net.Uri;
import android.util.Log;
import android.webkit.MimeTypeMap;
import androidx.annotation.Nullable;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes46.dex */
class RawDocumentFile extends DocumentFile {
    private File mFile;

    RawDocumentFile(@Nullable DocumentFile documentFile, File file) {
        super(documentFile);
        this.mFile = file;
    }

    private static boolean deleteContents(File file) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return true;
        }
        boolean zDeleteContents = true;
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                zDeleteContents &= deleteContents(file2);
            }
            if (!file2.delete()) {
                Log.w(NPStringFog.decode(new byte[]{124, 87, 82, 68, 92, 6, 86, 76, 119, 88, 93, 6}, "88111c", true, false), NPStringFog.decode(new byte[]{36, 7, 88, 9, 83, 85, 66, 18, 94, 69, 82, 84, 14, 3, 69, 0, 22}, "bf1e61", false, true) + file2);
                zDeleteContents = false;
            }
        }
        return zDeleteContents;
    }

    private static String getTypeForName(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str.substring(iLastIndexOf + 1).toLowerCase());
            if (mimeTypeFromExtension != null) {
                return mimeTypeFromExtension;
            }
        }
        return NPStringFog.decode(new byte[]{2, 72, 68, 84, 91, 6, 2, 76, 93, 87, 92, 74, 12, 91, 64, 93, 70, 72, 16, 76, 70, 93, 83, 8}, "c8482e", 1.8959037E9f);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canRead() {
        return this.mFile.canRead();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canWrite() {
        return this.mFile.canWrite();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public DocumentFile createDirectory(String str) {
        File file = new File(this.mFile, str);
        if (file.isDirectory() || file.mkdir()) {
            return new RawDocumentFile(this, file);
        }
        return null;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public DocumentFile createFile(String str, String str2) {
        String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(str);
        if (extensionFromMimeType != null) {
            str2 = str2 + NPStringFog.decode(new byte[]{79}, "a74c73", true) + extensionFromMimeType;
        }
        File file = new File(this.mFile, str2);
        try {
            file.createNewFile();
            return new RawDocumentFile(this, file);
        } catch (IOException e) {
            Log.w(NPStringFog.decode(new byte[]{32, 90, 80, 71, 84, 93, 10, 65, 117, 91, 85, 93}, "d53298", 9.50121302E8d), NPStringFog.decode(new byte[]{113, 85, 15, 91, 80, 87, 23, 64, 9, 23, 86, 65, 82, 85, 18, 82, 115, 90, 91, 81, 92, 23}, "74f753", -1.3848157E9f) + e);
            return null;
        }
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean delete() {
        deleteContents(this.mFile);
        return this.mFile.delete();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean exists() {
        return this.mFile.exists();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public String getName() {
        return this.mFile.getName();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public String getType() {
        if (this.mFile.isDirectory()) {
            return null;
        }
        return getTypeForName(this.mFile.getName());
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public Uri getUri() {
        return Uri.fromFile(this.mFile);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isDirectory() {
        return this.mFile.isDirectory();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isFile() {
        return this.mFile.isFile();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isVirtual() {
        return false;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long lastModified() {
        return this.mFile.lastModified();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long length() {
        return this.mFile.length();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public DocumentFile[] listFiles() {
        ArrayList arrayList = new ArrayList();
        File[] fileArrListFiles = this.mFile.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                arrayList.add(new RawDocumentFile(this, file));
            }
        }
        return (DocumentFile[]) arrayList.toArray(new DocumentFile[arrayList.size()]);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean renameTo(String str) {
        File file = new File(this.mFile.getParentFile(), str);
        if (!this.mFile.renameTo(file)) {
            return false;
        }
        this.mFile = file;
        return true;
    }
}
