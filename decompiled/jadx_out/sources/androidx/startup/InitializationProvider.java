package androidx.startup;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import n.NPStringFog;

/* JADX INFO: loaded from: classes29.dex */
public class InitializationProvider extends ContentProvider {
    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        throw new IllegalStateException(NPStringFog.decode(new byte[]{42, 92, 64, 70, 88, 94, 8, 92, 67, 3, 93, 28}, "d34f92", 17348));
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        throw new IllegalStateException(NPStringFog.decode(new byte[]{44, 13, 64, 65, 2, 88, 14, 13, 67, 4, 7, 26}, "bb4ac4", -1.1365659E9f));
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        throw new IllegalStateException(NPStringFog.decode(new byte[]{40, 90, 66, 18, 2, 9, 10, 90, 65, 87, 7, 75}, "f562ce", 1728840063L));
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        Context context = getContext();
        if (context == null) {
            throw new StartupException(NPStringFog.decode(new byte[]{119, 12, 86, 22, 85, 78, 64, 67, 91, 3, 94, 88, 91, 23, 24, 0, 85, 22, 90, 22, 84, 14}, "4c8b06", 15072994L));
        }
        AppInitializer.getInstance(context).discoverAndInitialize();
        return true;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        throw new IllegalStateException(NPStringFog.decode(new byte[]{120, 10, 77, 16, 89, 93, 90, 10, 78, 85, 92, 31}, "6e9081", -1.125752303E9d));
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        throw new IllegalStateException(NPStringFog.decode(new byte[]{124, 14, 69, 68, 81, 85, 94, 14, 70, 1, 84, 23}, "2a1d09", 4.498098E8f));
    }
}
