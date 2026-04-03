package androidx.core.content;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import n.NPStringFog;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes6.dex */
public class FileProvider extends ContentProvider {
    private PathStrategy mStrategy;
    private static final String ATTR_NAME = NPStringFog.decode(new byte[]{91, 84, 15, 84}, "55b179", true);
    private static final String ATTR_PATH = NPStringFog.decode(new byte[]{18, 81, 76, 93}, "b0855e", 1.719447663E9d);
    private static final String DISPLAYNAME_FIELD = NPStringFog.decode(new byte[]{85, 93, 18, 66, 94, 81, 72, 122, 0, 95, 87}, "14a220", -10059);
    private static final String META_DATA_FILE_PROVIDER_PATHS = NPStringFog.decode(new byte[]{0, 8, 87, 66, 93, 91, 5, 72, 64, 69, 66, 66, 14, 20, 71, 30, 116, 123, 45, 35, 108, 96, 96, 125, 55, 47, 119, 117, 96, 109, 49, 39, 103, 120, 97}, "af3022", -273924053L);
    private static final String TAG_CACHE_PATH = NPStringFog.decode(new byte[]{81, 81, 86, 14, 81, 24, 66, 81, 65, 14}, "205f45", -6.14336757E8d);
    private static final String TAG_EXTERNAL = NPStringFog.decode(new byte[]{80, 74, 17, 6, 20, 12, 84, 94, 72, 19, 7, 22, 93}, "52ecfb", true, true);
    private static final String TAG_EXTERNAL_CACHE = NPStringFog.decode(new byte[]{84, 29, 77, 93, 20, 92, 80, 9, 20, 91, 7, 81, 89, 0, 20, 72, 7, 70, 89}, "1e98f2", -2020716874L);
    private static final String TAG_EXTERNAL_FILES = NPStringFog.decode(new byte[]{1, 64, 66, 82, 23, 88, 5, 84, 27, 81, 12, 90, 1, 75, 27, 71, 4, 66, 12}, "d867e6", 1.488868414E9d);
    private static final String TAG_EXTERNAL_MEDIA = NPStringFog.decode(new byte[]{3, 79, 66, 4, 70, 94, 7, 91, 27, 12, 81, 84, 15, 86, 27, 17, 85, 68, 14}, "f76a40", -1.132749898E9d);
    private static final String TAG_FILES_PATH = NPStringFog.decode(new byte[]{5, 12, 92, 84, 66, 26, 19, 4, 68, 89}, "ce0117", 11325);
    private static final String TAG_ROOT_PATH = NPStringFog.decode(new byte[]{64, 86, 89, 70, 31, 69, 83, 77, 94}, "296225", true);
    private static final String[] COLUMNS = {NPStringFog.decode(new byte[]{111, 83, 89, 71, 72, 90, 81, 78, 111, 90, 89, 91, 85}, "070486", false, true), NPStringFog.decode(new byte[]{110, 18, 95, 79, 6}, "1a65c2", true, true)};
    private static final File DEVICE_ROOT = new File(NPStringFog.decode(new byte[]{31}, "0fbccb", 1258559342L));
    private static HashMap<String, PathStrategy> sCache = new HashMap<>();

    interface PathStrategy {
        File getFileForUri(Uri uri);

        Uri getUriForFile(File file);
    }

    static class SimplePathStrategy implements PathStrategy {
        private final String mAuthority;
        private final HashMap<String, File> mRoots = new HashMap<>();

        SimplePathStrategy(String str) {
            this.mAuthority = str;
        }

        void addRoot(String str, File file) {
            if (TextUtils.isEmpty(str)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{118, 86, 92, 82, 21, 84, 77, 68, 69, 23, 91, 86, 76, 23, 83, 82, 21, 92, 85, 71, 69, 78}, "871759", false));
            }
            try {
                this.mRoots.put(str, file.getCanonicalFile());
            } catch (IOException e) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{32, 0, 90, 15, 6, 5, 70, 21, 92, 67, 17, 4, 21, 14, 95, 21, 6, 65, 5, 0, 93, 12, 13, 8, 5, 0, 95, 67, 19, 0, 18, 9, 19, 5, 12, 19, 70}, "fa3cca", 4.0345161E7d) + file, e);
            }
        }

        @Override // androidx.core.content.FileProvider.PathStrategy
        public File getFileForUri(Uri uri) {
            String encodedPath = uri.getEncodedPath();
            int iIndexOf = encodedPath.indexOf(47, 1);
            String strDecode = Uri.decode(encodedPath.substring(1, iIndexOf));
            String strDecode2 = Uri.decode(encodedPath.substring(iIndexOf + 1));
            File file = this.mRoots.get(strDecode);
            if (file == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{101, 90, 0, 7, 88, 86, 16, 64, 14, 69, 82, 90, 94, 80, 65, 6, 91, 93, 86, 93, 6, 16, 70, 86, 84, 20, 19, 10, 91, 71, 16, 82, 14, 23, 20}, "04ae43", 1.2844306E9f) + uri);
            }
            File file2 = new File(file, strDecode2);
            try {
                File canonicalFile = file2.getCanonicalFile();
                if (canonicalFile.getPath().startsWith(file.getPath())) {
                    return canonicalFile;
                }
                throw new SecurityException(NPStringFog.decode(new byte[]{52, 85, 16, 9, 89, 79, 3, 84, 67, 22, 84, 77, 14, 16, 9, 19, 88, 73, 3, 84, 67, 4, 80, 64, 9, 94, 7, 70, 86, 86, 8, 86, 10, 1, 64, 75, 3, 84, 67, 20, 90, 86, 18}, "f0cf59", true, false));
            } catch (IOException e) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{116, 86, 93, 89, 84, 81, 18, 67, 91, 21, 67, 80, 65, 88, 88, 67, 84, 21, 81, 86, 90, 90, 95, 92, 81, 86, 88, 21, 65, 84, 70, 95, 20, 83, 94, 71, 18}, "274515", -21290) + file2);
            }
        }

        @Override // androidx.core.content.FileProvider.PathStrategy
        public Uri getUriForFile(File file) {
            Map.Entry<String, File> entry;
            try {
                String canonicalPath = file.getCanonicalPath();
                Map.Entry<String, File> next = null;
                Iterator<Map.Entry<String, File>> it = this.mRoots.entrySet().iterator();
                while (true) {
                    entry = next;
                    if (!it.hasNext()) {
                        break;
                    }
                    next = it.next();
                    String path = next.getValue().getPath();
                    if (!canonicalPath.startsWith(path) || (entry != null && path.length() <= entry.getValue().getPath().length())) {
                        next = entry;
                    }
                }
                if (entry == null) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{114, 4, 11, 91, 84, 87, 20, 17, 13, 23, 87, 90, 90, 1, 66, 84, 94, 93, 82, 12, 5, 66, 67, 86, 80, 69, 16, 88, 94, 71, 20, 17, 10, 86, 69, 19, 87, 10, 12, 67, 80, 90, 90, 22, 66}, "4eb713", -9.99008604E8d) + canonicalPath);
                }
                String path2 = entry.getValue().getPath();
                return new Uri.Builder().scheme(NPStringFog.decode(new byte[]{87, 95, 8, 23, 4, 12, 64}, "40fcab", 12747)).authority(this.mAuthority).encodedPath(Uri.encode(entry.getKey()) + '/' + Uri.encode(path2.endsWith(NPStringFog.decode(new byte[]{22}, "96edc0", 2070924553L)) ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1), NPStringFog.decode(new byte[]{31}, "0ad2b2", false, true))).build();
            } catch (IOException e) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{115, 81, 11, 88, 86, 82, 21, 68, 13, 20, 65, 83, 70, 95, 14, 66, 86, 22, 86, 81, 12, 91, 93, 95, 86, 81, 14, 20, 67, 87, 65, 88, 66, 82, 92, 68, 21}, "50b436", false, false) + file);
            }
        }
    }

    private static File buildPath(File file, String... strArr) {
        int length = strArr.length;
        File file2 = file;
        int i = 0;
        while (i < length) {
            String str = strArr[i];
            i++;
            file2 = str != null ? new File(file2, str) : file2;
        }
        return file2;
    }

    private static Object[] copyOf(Object[] objArr, int i) {
        Object[] objArr2 = new Object[i];
        System.arraycopy(objArr, 0, objArr2, 0, i);
        return objArr2;
    }

    private static String[] copyOf(String[] strArr, int i) {
        String[] strArr2 = new String[i];
        System.arraycopy(strArr, 0, strArr2, 0, i);
        return strArr2;
    }

    private static PathStrategy getPathStrategy(Context context, String str) {
        PathStrategy pathStrategy;
        synchronized (sCache) {
            pathStrategy = sCache.get(str);
            if (pathStrategy == null) {
                try {
                    pathStrategy = parsePathStrategy(context, str);
                    sCache.put(str, pathStrategy);
                } catch (IOException e) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{34, 2, 88, 91, 82, 5, 68, 23, 94, 23, 71, 0, 22, 16, 84, 23, 86, 15, 0, 17, 94, 94, 83, 79, 23, 22, 65, 71, 88, 19, 16, 77, 119, 126, 123, 36, 59, 51, 99, 120, 97, 40, 32, 38, 99, 104, 103, 32, 48, 43, 98, 23, 90, 4, 16, 2, 28, 83, 86, 21, 5}, "dc177a", false), e);
                } catch (XmlPullParserException e2) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{119, 82, 89, 94, 0, 0, 17, 71, 95, 18, 21, 5, 67, 64, 85, 18, 4, 10, 85, 65, 95, 91, 1, 74, 66, 70, 64, 66, 10, 22, 69, 29, 118, 123, 41, 33, 110, 99, 98, 125, 51, 45, 117, 118, 98, 109, 53, 37, 101, 123, 99, 18, 8, 1, 69, 82, 29, 86, 4, 16, 80}, "1302ed", -1.5083391E9f), e2);
                }
            }
        }
        return pathStrategy;
    }

    public static Uri getUriForFile(Context context, String str, File file) {
        return getPathStrategy(context, str).getUriForFile(file);
    }

    public static Uri getUriForFile(Context context, String str, File file, String str2) {
        return getUriForFile(context, str, file).buildUpon().appendQueryParameter(DISPLAYNAME_FIELD, str2).build();
    }

    private static int modeToMode(String str) {
        if (NPStringFog.decode(new byte[]{66}, "065b29", false, true).equals(str)) {
            return 268435456;
        }
        if (NPStringFog.decode(new byte[]{70}, "1fef0b", 9.52145189E8d).equals(str) || NPStringFog.decode(new byte[]{65, 71}, "63d78d", -30552).equals(str)) {
            return 738197504;
        }
        if (NPStringFog.decode(new byte[]{21, 82}, "b35406", false).equals(str)) {
            return 704643072;
        }
        if (NPStringFog.decode(new byte[]{17, 69}, "c2ada6", 2.1459978E8f).equals(str)) {
            return 939524096;
        }
        if (NPStringFog.decode(new byte[]{16, 64, 70}, "b72ef0", false, true).equals(str)) {
            return 1006632960;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{123, 93, 79, 81, 90, 92, 86, 19, 84, 95, 82, 80, 8, 19}, "239065", -4302) + str);
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00f1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static androidx.core.content.FileProvider.PathStrategy parsePathStrategy(android.content.Context r10, java.lang.String r11) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instruction units count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.FileProvider.parsePathStrategy(android.content.Context, java.lang.String):androidx.core.content.FileProvider$PathStrategy");
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        super.attachInfo(context, providerInfo);
        if (providerInfo.exported) {
            throw new SecurityException(NPStringFog.decode(new byte[]{101, 65, 92, 19, 15, 80, 80, 65, 19, 8, 19, 71, 65, 19, 93, 10, 18, 20, 87, 86, 19, 0, 30, 68, 90, 65, 71, 0, 2}, "533ef4", false, false));
        }
        if (!providerInfo.grantUriPermissions) {
            throw new SecurityException(NPStringFog.decode(new byte[]{104, 74, 93, 18, 10, 93, 93, 74, 18, 9, 22, 74, 76, 24, 85, 22, 2, 87, 76, 24, 71, 22, 10, 25, 72, 93, 64, 9, 10, 74, 75, 81, 93, 10, 16}, "882dc9", 19743));
        }
        this.mStrategy = getPathStrategy(context, providerInfo.authority.split(NPStringFog.decode(new byte[]{88}, "c4bfeb", 306772691L))[0]);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return this.mStrategy.getFileForUri(uri).delete() ? 1 : 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        File fileForUri = this.mStrategy.getFileForUri(uri);
        int iLastIndexOf = fileForUri.getName().lastIndexOf(46);
        if (iLastIndexOf >= 0) {
            String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(fileForUri.getName().substring(iLastIndexOf + 1));
            if (mimeTypeFromExtension != null) {
                return mimeTypeFromExtension;
            }
        }
        return NPStringFog.decode(new byte[]{89, 68, 19, 94, 89, 87, 89, 64, 10, 93, 94, 27, 87, 87, 23, 87, 68, 25, 75, 64, 17, 87, 81, 89}, "84c204", -11686);
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{40, 92, 70, 1, 28, 23, 3, 65, 8, 5, 8, 67, 15, 93, 21, 1, 22, 23, 21}, "f3fddc", -1.910629529E9d));
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        return true;
    }

    @Override // android.content.ContentProvider
    public ParcelFileDescriptor openFile(Uri uri, String str) throws FileNotFoundException {
        return ParcelFileDescriptor.open(this.mStrategy.getFileForUri(uri), modeToMode(str));
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        File fileForUri = this.mStrategy.getFileForUri(uri);
        String queryParameter = uri.getQueryParameter(DISPLAYNAME_FIELD);
        if (strArr == null) {
            strArr = COLUMNS;
        }
        String[] strArr3 = new String[strArr.length];
        Object[] objArr = new Object[strArr.length];
        int i2 = 0;
        int length = strArr.length;
        int i3 = 0;
        while (i3 < length) {
            String str3 = strArr[i3];
            if (NPStringFog.decode(new byte[]{104, 82, 12, 74, 64, 8, 86, 79, 58, 87, 81, 9, 82}, "76e90d", 8.544304E8f).equals(str3)) {
                strArr3[i2] = NPStringFog.decode(new byte[]{106, 93, 81, 71, 19, 84, 84, 64, 103, 90, 2, 85, 80}, "5984c8", 1.339638214E9d);
                objArr[i2] = queryParameter == null ? fileForUri.getName() : queryParameter;
                i = i2 + 1;
            } else if (NPStringFog.decode(new byte[]{102, 23, 93, 79, 7}, "9d45b5", true).equals(str3)) {
                strArr3[i2] = NPStringFog.decode(new byte[]{59, 65, 11, 72, 92}, "d2b290", true, false);
                objArr[i2] = Long.valueOf(fileForUri.length());
                i = i2 + 1;
            } else {
                i = i2;
            }
            i3++;
            i2 = i;
        }
        String[] strArrCopyOf = copyOf(strArr3, i2);
        Object[] objArrCopyOf = copyOf(objArr, i2);
        MatrixCursor matrixCursor = new MatrixCursor(strArrCopyOf, 1);
        matrixCursor.addRow(objArrCopyOf);
        return matrixCursor;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{44, 9, 17, 81, 25, 64, 7, 20, 95, 85, 13, 20, 23, 22, 85, 85, 21, 81, 17}, "bf14a4", true));
    }
}
