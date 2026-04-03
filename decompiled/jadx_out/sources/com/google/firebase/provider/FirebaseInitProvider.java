package com.google.firebase.provider;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.firebase.FirebaseApp;
import n.NPStringFog;

/* JADX INFO: loaded from: classes53.dex */
public class FirebaseInitProvider extends ContentProvider {
    static final String EMPTY_APPLICATION_ID_PROVIDER_AUTHORITY = NPStringFog.decode(new byte[]{2, 14, 94, 24, 94, 89, 14, 6, 95, 83, 23, 80, 8, 19, 86, 84, 88, 69, 4, 79, 85, 95, 75, 83, 3, 0, 64, 83, 80, 88, 8, 21, 67, 68, 86, 64, 8, 5, 86, 68}, "aa3696", 16164);
    private static final String TAG = NPStringFog.decode(new byte[]{115, 94, 74, 4, 1, 80, 70, 82, 113, 15, 10, 69, 101, 69, 87, 23, 10, 85, 80, 69}, "578ac1", false, false);

    private static void checkContentProviderAuthority(ProviderInfo providerInfo) {
        Preconditions.checkNotNull(providerInfo, NPStringFog.decode(new byte[]{118, 80, 20, 1, 1, 2, 67, 92, 47, 10, 10, 23, 96, 75, 9, 18, 10, 7, 85, 75, 70, 52, 17, 12, 70, 80, 2, 1, 17, 42, 94, 95, 9, 68, 0, 2, 94, 87, 9, 16, 67, 1, 85, 25, 8, 17, 15, 15, 30}, "09fdcc", false, true));
        if (EMPTY_APPLICATION_ID_PROVIDER_AUTHORITY.equals(providerInfo.authority)) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{122, 11, 81, 12, 74, 23, 86, 6, 70, 67, 72, 23, 92, 19, 91, 7, 93, 23, 19, 4, 71, 23, 80, 10, 65, 12, 70, 26, 24, 12, 93, 69, 95, 2, 86, 12, 85, 0, 65, 23, 22, 69, 126, 10, 65, 23, 24, 9, 90, 14, 87, 15, 65, 69, 87, 16, 87, 67, 76, 10, 19, 4, 18, 14, 81, 22, 64, 12, 92, 4, 24, 4, 67, 21, 94, 10, 91, 4, 71, 12, 93, 13, 113, 1, 19, 19, 83, 17, 81, 4, 81, 9, 87, 67, 81, 11, 19, 4, 66, 19, 84, 12, 80, 4, 70, 10, 87, 11, 20, 22, 18, 1, 77, 12, 95, 1, 28, 4, 74, 4, 87, 9, 87, 77}, "3e2c8e", 23905));
        }
    }

    @Override // android.content.ContentProvider
    public void attachInfo(Context context, ProviderInfo providerInfo) {
        checkContentProviderAuthority(providerInfo);
        super.attachInfo(context, providerInfo);
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        if (FirebaseApp.initializeApp(getContext()) == null) {
            Log.i(TAG, NPStringFog.decode(new byte[]{114, 12, 19, 81, 84, 2, 71, 0, 32, 68, 70, 67, 93, 11, 8, 64, 95, 2, 88, 12, 27, 85, 66, 10, 91, 11, 65, 65, 88, 16, 65, 6, 2, 81, 69, 16, 82, 16, 13}, "4ea46c", 18807));
            return false;
        }
        Log.i(TAG, NPStringFog.decode(new byte[]{36, 89, 66, 93, 82, 89, 17, 85, 113, 72, 64, 24, 11, 94, 89, 76, 89, 89, 14, 89, 74, 89, 68, 81, 13, 94, 16, 75, 69, 91, 1, 85, 67, 75, 86, 77, 14}, "b00808", 9268));
        return false;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
