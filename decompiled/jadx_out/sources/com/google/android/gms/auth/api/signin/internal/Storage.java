package com.google.android.gms.auth.api.signin.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import n.NPStringFog;
import org.json.JSONException;

/* JADX INFO: loaded from: classes59.dex */
public class Storage {
    private static final Lock zaa = new ReentrantLock();
    private static Storage zab;
    private final Lock zac = new ReentrantLock();
    private final SharedPreferences zad;

    Storage(Context context) {
        this.zad = context.getSharedPreferences(NPStringFog.decode(new byte[]{87, 89, 90, 74, 87, 12, 91, 81, 91, 1, 30, 2, 90, 82, 69, 11, 89, 7, 26, 81, 90, 23, 30, 16, 93, 81, 89, 13, 94}, "467d0c", -772127090L), 0);
    }

    public static Storage getInstance(Context context) {
        Preconditions.checkNotNull(context);
        Lock lock = zaa;
        lock.lock();
        try {
            if (zab == null) {
                zab = new Storage(context.getApplicationContext());
            }
            Storage storage = zab;
            lock.unlock();
            return storage;
        } catch (Throwable th) {
            zaa.unlock();
            throw th;
        }
    }

    private static final String zae(String str, String str2) {
        return str + NPStringFog.decode(new byte[]{8}, "2f2ceb", -9.579951E8f) + str2;
    }

    public void clear() {
        this.zac.lock();
        try {
            this.zad.edit().clear().apply();
        } finally {
            this.zac.unlock();
        }
    }

    public GoogleSignInAccount getSavedDefaultGoogleSignInAccount() {
        String strZaa;
        String strZaa2 = zaa(NPStringFog.decode(new byte[]{93, 6, 81, 83, 16, 88, 77, 36, 88, 93, 2, 88, 92, 48, 94, 85, 11, 125, 87, 34, 84, 81, 10, 65, 87, 23}, "9c72e4", true, false));
        if (TextUtils.isEmpty(strZaa2) || (strZaa = zaa(zae(NPStringFog.decode(new byte[]{1, 13, 88, 6, 8, 84, 53, 11, 80, 15, 45, 95, 39, 1, 84, 14, 17, 95, 18}, "fb7ad1", true), strZaa2))) == null) {
            return null;
        }
        try {
            return GoogleSignInAccount.zab(strZaa);
        } catch (JSONException e) {
            return null;
        }
    }

    public GoogleSignInOptions getSavedDefaultGoogleSignInOptions() {
        String strZaa;
        String strZaa2 = zaa(NPStringFog.decode(new byte[]{92, 92, 4, 83, 22, 88, 76, 126, 13, 93, 4, 88, 93, 106, 11, 85, 13, 125, 86, 120, 1, 81, 12, 65, 86, 77}, "89b2c4", -1507558677L));
        if (TextUtils.isEmpty(strZaa2) || (strZaa = zaa(zae(NPStringFog.decode(new byte[]{3, 9, 92, 80, 8, 84, 55, 15, 84, 89, 45, 95, 43, 22, 71, 94, 11, 95, 23}, "df37d1", 1439440114L), strZaa2))) == null) {
            return null;
        }
        try {
            return GoogleSignInOptions.zab(strZaa);
        } catch (JSONException e) {
            return null;
        }
    }

    public String getSavedRefreshToken() {
        return zaa(NPStringFog.decode(new byte[]{19, 7, 3, 16, 6, 68, 9, 54, 10, 9, 6, 89}, "abebc7", false));
    }

    public void saveDefaultGoogleSignInAccount(GoogleSignInAccount googleSignInAccount, GoogleSignInOptions googleSignInOptions) {
        Preconditions.checkNotNull(googleSignInAccount);
        Preconditions.checkNotNull(googleSignInOptions);
        zad(NPStringFog.decode(new byte[]{86, 80, 86, 3, 68, 14, 70, 114, 95, 13, 86, 14, 87, 102, 89, 5, 95, 43, 92, 116, 83, 1, 94, 23, 92, 65}, "250b1b", -1327509840L), googleSignInAccount.zac());
        Preconditions.checkNotNull(googleSignInAccount);
        Preconditions.checkNotNull(googleSignInOptions);
        String strZac = googleSignInAccount.zac();
        zad(zae(NPStringFog.decode(new byte[]{83, 91, 86, 94, 15, 7, 103, 93, 94, 87, 42, 12, 117, 87, 90, 86, 22, 12, 64}, "4499cb", 5798), strZac), googleSignInAccount.zad());
        zad(zae(NPStringFog.decode(new byte[]{83, 89, 91, 86, 84, 80, 103, 95, 83, 95, 113, 91, 123, 70, 64, 88, 87, 91, 71}, "464185", -2.1801373E8d), strZac), googleSignInOptions.zaf());
    }

    protected final String zaa(String str) {
        this.zac.lock();
        try {
            return this.zad.getString(str, null);
        } finally {
            this.zac.unlock();
        }
    }

    protected final void zab(String str) {
        this.zac.lock();
        try {
            this.zad.edit().remove(str).apply();
        } finally {
            this.zac.unlock();
        }
    }

    public final void zac() {
        String strZaa = zaa(NPStringFog.decode(new byte[]{0, 3, 80, 89, 22, 94, 16, 33, 89, 87, 4, 94, 1, 53, 95, 95, 13, 123, 10, 39, 85, 91, 12, 71, 10, 18}, "df68c2", false, false));
        zab(NPStringFog.decode(new byte[]{5, 87, 82, 88, 67, 91, 21, 117, 91, 86, 81, 91, 4, 97, 93, 94, 88, 126, 15, 115, 87, 90, 89, 66, 15, 70}, "a24967", 1.903925817E9d));
        if (TextUtils.isEmpty(strZaa)) {
            return;
        }
        zab(zae(NPStringFog.decode(new byte[]{86, 92, 94, 3, 92, 87, 98, 90, 86, 10, 121, 92, 112, 80, 82, 11, 69, 92, 69}, "131d02", -1.7527383E9f), strZaa));
        zab(zae(NPStringFog.decode(new byte[]{1, 86, 11, 81, 91, 85, 53, 80, 3, 88, 126, 94, 41, 73, 16, 95, 88, 94, 21}, "f9d670", 440769462L), strZaa));
    }

    protected final void zad(String str, String str2) {
        this.zac.lock();
        try {
            this.zad.edit().putString(str, str2).apply();
        } finally {
            this.zac.unlock();
        }
    }
}
