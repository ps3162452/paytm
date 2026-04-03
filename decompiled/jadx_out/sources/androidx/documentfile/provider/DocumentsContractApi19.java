package androidx.documentfile.provider;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.DocumentsContract;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import n.NPStringFog;

/* JADX INFO: loaded from: classes46.dex */
@RequiresApi(19)
class DocumentsContractApi19 {
    private static final int FLAG_VIRTUAL_DOCUMENT = 512;
    private static final String TAG = NPStringFog.decode(new byte[]{34, 86, 5, 71, 94, 4, 8, 77, 32, 91, 95, 4}, "f9f23a", true, false);

    private DocumentsContractApi19() {
    }

    public static boolean canRead(Context context, Uri uri) {
        return context.checkCallingOrSelfUriPermission(uri, 1) == 0 && !TextUtils.isEmpty(getRawType(context, uri));
    }

    public static boolean canWrite(Context context, Uri uri) {
        if (context.checkCallingOrSelfUriPermission(uri, 2) != 0) {
            return false;
        }
        String rawType = getRawType(context, uri);
        int iQueryForInt = queryForInt(context, uri, NPStringFog.decode(new byte[]{2, 9, 3, 86, 18}, "deb1ab", false, false), 0);
        if (TextUtils.isEmpty(rawType)) {
            return false;
        }
        if ((iQueryForInt & 4) != 0) {
            return true;
        }
        if (!NPStringFog.decode(new byte[]{18, 12, 6, 30, 2, 8, 0, 16, 13, 89, 7, 72, 0, 13, 1, 69, 14, 3, 10, 22, 77, 84, 10, 20, 1, 1, 22, 95, 17, 31}, "dbb0cf", -1.858102836E9d).equals(rawType) || (iQueryForInt & 8) == 0) {
            return (TextUtils.isEmpty(rawType) || (iQueryForInt & 2) == 0) ? false : true;
        }
        return true;
    }

    private static void closeQuietly(@Nullable AutoCloseable autoCloseable) {
        if (autoCloseable != null) {
            try {
                autoCloseable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    public static boolean exists(Context context, Uri uri) throws Throwable {
        Cursor cursorQuery;
        boolean z;
        ?? r1 = 1;
        try {
            try {
                cursorQuery = context.getContentResolver().query(uri, new String[]{NPStringFog.decode(new byte[]{86, 10, 90, 70, 88, 92, 92, 17, 102, 90, 81}, "2e9359", false)}, null, null, null);
                try {
                    z = cursorQuery.getCount() > 0;
                    closeQuietly(cursorQuery);
                    r1 = cursorQuery;
                } catch (Exception e) {
                    e = e;
                    Log.w(TAG, NPStringFog.decode(new byte[]{39, 85, 13, 14, 82, 92, 65, 69, 17, 7, 69, 65, 91, 20}, "a4db78", 2025862180L) + e);
                    closeQuietly(cursorQuery);
                    z = false;
                    r1 = cursorQuery;
                }
            } catch (Throwable th) {
                th = th;
                closeQuietly(r1);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            r1 = 0;
            closeQuietly(r1);
            throw th;
        }
        return z;
    }

    public static long getFlags(Context context, Uri uri) {
        return queryForLong(context, uri, NPStringFog.decode(new byte[]{7, 91, 84, 80, 21}, "a757fb", 6061), 0L);
    }

    @Nullable
    public static String getName(Context context, Uri uri) {
        return queryForString(context, uri, NPStringFog.decode(new byte[]{57, 2, 12, 18, 67, 85, 7, 31, 58, 15, 82, 84, 3}, "ffea39", false), null);
    }

    @Nullable
    private static String getRawType(Context context, Uri uri) {
        return queryForString(context, uri, NPStringFog.decode(new byte[]{11, 92, 90, 92, 59, 18, 31, 69, 82}, "f579df", 1.039113914E9d), null);
    }

    @Nullable
    public static String getType(Context context, Uri uri) {
        String rawType = getRawType(context, uri);
        if (NPStringFog.decode(new byte[]{68, 8, 80, 76, 4, 88, 86, 20, 91, 11, 1, 24, 86, 9, 87, 23, 8, 83, 92, 18, 27, 6, 12, 68, 87, 5, 64, 13, 23, 79}, "2f4be6", true, false).equals(rawType)) {
            return null;
        }
        return rawType;
    }

    public static boolean isDirectory(Context context, Uri uri) {
        return NPStringFog.decode(new byte[]{71, 95, 5, 23, 3, 91, 85, 67, 14, 80, 6, 27, 85, 94, 2, 76, 15, 80, 95, 69, 78, 93, 11, 71, 84, 82, 21, 86, 16, 76}, "11a9b5", -32013).equals(getRawType(context, uri));
    }

    public static boolean isFile(Context context, Uri uri) {
        String rawType = getRawType(context, uri);
        return (NPStringFog.decode(new byte[]{19, 91, 5, 29, 80, 87, 1, 71, 14, 90, 85, 23, 1, 90, 2, 70, 92, 92, 11, 65, 78, 87, 88, 75, 0, 86, 21, 92, 67, 64}, "e5a319", -1883597208L).equals(rawType) || TextUtils.isEmpty(rawType)) ? false : true;
    }

    public static boolean isVirtual(Context context, Uri uri) {
        return DocumentsContract.isDocumentUri(context, uri) && (getFlags(context, uri) & 512) != 0;
    }

    public static long lastModified(Context context, Uri uri) {
        return queryForLong(context, uri, NPStringFog.decode(new byte[]{91, 3, 69, 67, 59, 12, 88, 6, 95, 81, 13, 4, 83}, "7b67da", 2030116538L), 0L);
    }

    public static long length(Context context, Uri uri) {
        return queryForLong(context, uri, NPStringFog.decode(new byte[]{110, 21, 94, 78, 85}, "1f7404", 381), 0L);
    }

    private static int queryForInt(Context context, Uri uri, String str, int i) {
        return (int) queryForLong(context, uri, str, i);
    }

    private static long queryForLong(Context context, Uri uri, String str, long j) throws Throwable {
        Cursor cursorQuery;
        try {
            cursorQuery = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) {
                        closeQuietly(cursorQuery);
                    } else {
                        j = cursorQuery.getLong(0);
                        closeQuietly(cursorQuery);
                    }
                } catch (Exception e) {
                    e = e;
                    Log.w(TAG, NPStringFog.decode(new byte[]{114, 81, 94, 94, 7, 5, 20, 65, 66, 87, 16, 24, 14, 16}, "4072ba", -1.2080643E9f) + e);
                    closeQuietly(cursorQuery);
                }
            } catch (Throwable th) {
                th = th;
                closeQuietly(cursorQuery);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            cursorQuery = null;
            closeQuietly(cursorQuery);
            throw th;
        }
        return j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.AutoCloseable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    @Nullable
    private static String queryForString(Context context, Uri uri, String str, @Nullable String str2) throws Throwable {
        Cursor cursorQuery;
        ?? r1 = 1;
        try {
            try {
                cursorQuery = context.getContentResolver().query(uri, new String[]{str}, null, null, null);
                try {
                    if (!cursorQuery.moveToFirst() || cursorQuery.isNull(0)) {
                        closeQuietly(cursorQuery);
                        r1 = cursorQuery;
                    } else {
                        str2 = cursorQuery.getString(0);
                        closeQuietly(cursorQuery);
                        r1 = cursorQuery;
                    }
                } catch (Exception e) {
                    e = e;
                    Log.w(TAG, NPStringFog.decode(new byte[]{117, 5, 10, 8, 86, 80, 19, 21, 22, 1, 65, 77, 9, 68}, "3dcd34", 7.22234821E8d) + e);
                    closeQuietly(cursorQuery);
                    r1 = cursorQuery;
                }
            } catch (Throwable th) {
                th = th;
                closeQuietly(r1);
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            r1 = 0;
            closeQuietly(r1);
            throw th;
        }
        return str2;
    }
}
