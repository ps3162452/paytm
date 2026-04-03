package com.google.firebase.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import androidx.core.content.ContextCompat;
import com.google.firebase.DataCollectionDefaultChange;
import com.google.firebase.events.Event;
import com.google.firebase.events.Publisher;
import n.NPStringFog;

/* JADX INFO: loaded from: classes53.dex */
public class DataCollectionConfigStorage {
    public static final String DATA_COLLECTION_DEFAULT_ENABLED = NPStringFog.decode(new byte[]{3, 80, 22, 83, 86, 5, 22, 92, 59, 82, 85, 16, 4, 102, 7, 89, 88, 8, 0, 90, 16, 95, 91, 10, 58, 93, 1, 80, 85, 17, 9, 77, 59, 83, 90, 5, 7, 85, 1, 82}, "e9d64d", true, false);
    private static final String FIREBASE_APP_PREFS = NPStringFog.decode(new byte[]{91, 92, 85, 31, 82, 11, 87, 84, 84, 84, 27, 2, 81, 65, 93, 83, 84, 23, 93, 29, 91, 94, 88, 9, 87, 93, 22, 65, 71, 1, 94, 64, 2}, "83815d", -1948103575L);
    private boolean dataCollectionDefaultEnabled;
    private final Context deviceProtectedContext;
    private final Publisher publisher;
    private final SharedPreferences sharedPreferences;

    public DataCollectionConfigStorage(Context context, String str, Publisher publisher) {
        Context contextDirectBootSafe = directBootSafe(context);
        this.deviceProtectedContext = contextDirectBootSafe;
        this.sharedPreferences = contextDirectBootSafe.getSharedPreferences(NPStringFog.decode(new byte[]{84, 93, 95, 28, 86, 87, 88, 85, 94, 87, 31, 94, 94, 64, 87, 80, 80, 75, 82, 28, 81, 93, 92, 85, 88, 92, 28, 66, 67, 93, 81, 65, 8}, "722218", -1.001410302E9d) + str, 0);
        this.publisher = publisher;
        this.dataCollectionDefaultEnabled = readAutoDataCollectionEnabled();
    }

    private static Context directBootSafe(Context context) {
        return Build.VERSION.SDK_INT < 24 ? context : ContextCompat.createDeviceProtectedStorageContext(context);
    }

    private boolean readAutoDataCollectionEnabled() {
        return this.sharedPreferences.contains(DATA_COLLECTION_DEFAULT_ENABLED) ? this.sharedPreferences.getBoolean(DATA_COLLECTION_DEFAULT_ENABLED, true) : readManifestDataCollectionEnabled();
    }

    private boolean readManifestDataCollectionEnabled() {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = this.deviceProtectedContext.getPackageManager();
            if (packageManager != null && (applicationInfo = packageManager.getApplicationInfo(this.deviceProtectedContext.getPackageName(), 128)) != null && applicationInfo.metaData != null && applicationInfo.metaData.containsKey(DATA_COLLECTION_DEFAULT_ENABLED)) {
                return applicationInfo.metaData.getBoolean(DATA_COLLECTION_DEFAULT_ENABLED);
            }
        } catch (PackageManager.NameNotFoundException e) {
        }
        return true;
    }

    private void updateDataCollectionDefaultEnabled(boolean z) {
        synchronized (this) {
            if (this.dataCollectionDefaultEnabled != z) {
                this.dataCollectionDefaultEnabled = z;
                this.publisher.publish(new Event<>(DataCollectionDefaultChange.class, new DataCollectionDefaultChange(z)));
            }
        }
    }

    public boolean isEnabled() {
        boolean z;
        synchronized (this) {
            z = this.dataCollectionDefaultEnabled;
        }
        return z;
    }

    public void setEnabled(Boolean bool) {
        synchronized (this) {
            if (bool == null) {
                this.sharedPreferences.edit().remove(DATA_COLLECTION_DEFAULT_ENABLED).apply();
                updateDataCollectionDefaultEnabled(readManifestDataCollectionEnabled());
            } else {
                boolean zEquals = Boolean.TRUE.equals(bool);
                this.sharedPreferences.edit().putBoolean(DATA_COLLECTION_DEFAULT_ENABLED, zEquals).apply();
                updateDataCollectionDefaultEnabled(zEquals);
            }
        }
    }
}
