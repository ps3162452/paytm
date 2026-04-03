package com.google.firebase.heartbeatinfo;

import android.content.Context;
import android.content.SharedPreferences;
import n.NPStringFog;

/* JADX INFO: loaded from: classes53.dex */
class HeartBeatInfoStorage {
    private final SharedPreferences sharedPreferences;
    private static final String GLOBAL = NPStringFog.decode(new byte[]{82, 13, 64, 7, 31, 86, 88, 11, 80, 3, 94}, "4d2b21", 31708);
    private static final String preferencesName = NPStringFog.decode(new byte[]{127, 94, 69, 87, 6, 3, 74, 82, 118, 66, 20, 42, 92, 86, 69, 70, 38, 7, 88, 67}, "9772db", -30843);
    private static HeartBeatInfoStorage instance = null;

    private HeartBeatInfoStorage(Context context) {
        this.sharedPreferences = context.getSharedPreferences(NPStringFog.decode(new byte[]{119, 80, 67, 0, 1, 5, 66, 92, 112, 21, 19, 44, 84, 88, 67, 17, 33, 1, 80, 77}, "191ecd", -4916), 0);
    }

    HeartBeatInfoStorage(SharedPreferences sharedPreferences) {
        this.sharedPreferences = sharedPreferences;
    }

    static HeartBeatInfoStorage getInstance(Context context) {
        HeartBeatInfoStorage heartBeatInfoStorage;
        synchronized (HeartBeatInfoStorage.class) {
            try {
                if (instance == null) {
                    instance = new HeartBeatInfoStorage(context);
                }
                heartBeatInfoStorage = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return heartBeatInfoStorage;
    }

    boolean shouldSendGlobalHeartBeat(long j) {
        boolean zShouldSendSdkHeartBeat;
        synchronized (this) {
            zShouldSendSdkHeartBeat = shouldSendSdkHeartBeat(GLOBAL, j);
        }
        return zShouldSendSdkHeartBeat;
    }

    boolean shouldSendSdkHeartBeat(String str, long j) {
        synchronized (this) {
            if (!this.sharedPreferences.contains(str)) {
                this.sharedPreferences.edit().putLong(str, j).apply();
                return true;
            }
            if (j - this.sharedPreferences.getLong(str, -1L) < 86400000) {
                return false;
            }
            this.sharedPreferences.edit().putLong(str, j).apply();
            return true;
        }
    }
}
