package com.google.firebase;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.util.Strings;
import n.NPStringFog;

/* JADX INFO: loaded from: classes53.dex */
public final class FirebaseOptions {
    private static final String API_KEY_RESOURCE_NAME = NPStringFog.decode(new byte[]{5, 90, 91, 80, 91, 83, 61, 84, 68, 94, 104, 93, 7, 76}, "b54776", -1.383114398E9d);
    private static final String APP_ID_RESOURCE_NAME = NPStringFog.decode(new byte[]{6, 87, 95, 80, 85, 1, 62, 89, 64, 71, 102, 13, 5}, "a8079d", 776761635L);
    private static final String DATABASE_URL_RESOURCE_NAME = NPStringFog.decode(new byte[]{84, 12, 19, 85, 85, 89, 65, 0, 62, 84, 86, 76, 83, 7, 0, 67, 82, 103, 71, 23, 13}, "2ea078", 290158074L);
    private static final String GA_TRACKING_ID_RESOURCE_NAME = NPStringFog.decode(new byte[]{85, 85, 109, 71, 69, 86, 81, 95, 91, 93, 80, 126, 86}, "242377", false, true);
    private static final String GCM_SENDER_ID_RESOURCE_NAME = NPStringFog.decode(new byte[]{84, 85, 94, 59, 6, 7, 85, 87, 70, 8, 22, 49, 86, 88, 87, 1, 16, 43, 87}, "363dbb", -20063);
    private static final String PROJECT_ID_RESOURCE_NAME = NPStringFog.decode(new byte[]{73, 65, 95, 88, 84, 91, 77, 108, 89, 86}, "930218", true);
    private static final String STORAGE_BUCKET_RESOURCE_NAME = NPStringFog.decode(new byte[]{83, 11, 93, 3, 88, 85, 107, 23, 70, 11, 70, 81, 83, 1, 109, 6, 65, 83, 95, 1, 70}, "4d2d40", 3684);
    private final String apiKey;
    private final String applicationId;
    private final String databaseUrl;
    private final String gaTrackingId;
    private final String gcmSenderId;
    private final String projectId;
    private final String storageBucket;

    public static final class Builder {
        private String apiKey;
        private String applicationId;
        private String databaseUrl;
        private String gaTrackingId;
        private String gcmSenderId;
        private String projectId;
        private String storageBucket;

        public Builder() {
        }

        public Builder(FirebaseOptions firebaseOptions) {
            this.applicationId = firebaseOptions.applicationId;
            this.apiKey = firebaseOptions.apiKey;
            this.databaseUrl = firebaseOptions.databaseUrl;
            this.gaTrackingId = firebaseOptions.gaTrackingId;
            this.gcmSenderId = firebaseOptions.gcmSenderId;
            this.storageBucket = firebaseOptions.storageBucket;
            this.projectId = firebaseOptions.projectId;
        }

        public FirebaseOptions build() {
            return new FirebaseOptions(this.applicationId, this.apiKey, this.databaseUrl, this.gaTrackingId, this.gcmSenderId, this.storageBucket, this.projectId);
        }

        public Builder setApiKey(String str) {
            this.apiKey = Preconditions.checkNotEmpty(str, NPStringFog.decode(new byte[]{39, 21, 93, 122, 85, 29, 70, 8, 65, 66, 68, 68, 4, 0, 20, 66, 85, 16, 72}, "fe410d", true, true));
            return this;
        }

        public Builder setApplicationId(String str) {
            this.applicationId = Preconditions.checkNotEmpty(str, NPStringFog.decode(new byte[]{114, 67, 67, 9, 8, 0, 82, 71, 90, 10, 15, 42, 87, 19, 94, 16, 18, 23, 19, 81, 86, 69, 18, 6, 71, 29}, "333eac", false, false));
            return this;
        }

        public Builder setDatabaseUrl(String str) {
            this.databaseUrl = str;
            return this;
        }

        public Builder setGaTrackingId(String str) {
            this.gaTrackingId = str;
            return this;
        }

        public Builder setGcmSenderId(String str) {
            this.gcmSenderId = str;
            return this;
        }

        public Builder setProjectId(String str) {
            this.projectId = str;
            return this;
        }

        public Builder setStorageBucket(String str) {
            this.storageBucket = str;
            return this;
        }
    }

    private FirebaseOptions(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        Preconditions.checkState(!Strings.isEmptyOrWhitespace(str), NPStringFog.decode(new byte[]{39, 70, 70, 85, 89, 90, 7, 66, 95, 86, 94, 112, 2, 22, 91, 76, 67, 77, 70, 84, 83, 25, 67, 92, 18, 24}, "f66909", 1.6424728E9f));
        this.applicationId = str;
        this.apiKey = str2;
        this.databaseUrl = str3;
        this.gaTrackingId = str4;
        this.gcmSenderId = str5;
        this.storageBucket = str6;
        this.projectId = str7;
    }

    public static FirebaseOptions fromResource(Context context) {
        StringResourceValueReader stringResourceValueReader = new StringResourceValueReader(context);
        String string = stringResourceValueReader.getString(APP_ID_RESOURCE_NAME);
        if (TextUtils.isEmpty(string)) {
            return null;
        }
        return new FirebaseOptions(string, stringResourceValueReader.getString(API_KEY_RESOURCE_NAME), stringResourceValueReader.getString(DATABASE_URL_RESOURCE_NAME), stringResourceValueReader.getString(GA_TRACKING_ID_RESOURCE_NAME), stringResourceValueReader.getString(GCM_SENDER_ID_RESOURCE_NAME), stringResourceValueReader.getString(STORAGE_BUCKET_RESOURCE_NAME), stringResourceValueReader.getString(PROJECT_ID_RESOURCE_NAME));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof FirebaseOptions)) {
            return false;
        }
        FirebaseOptions firebaseOptions = (FirebaseOptions) obj;
        return Objects.equal(this.applicationId, firebaseOptions.applicationId) && Objects.equal(this.apiKey, firebaseOptions.apiKey) && Objects.equal(this.databaseUrl, firebaseOptions.databaseUrl) && Objects.equal(this.gaTrackingId, firebaseOptions.gaTrackingId) && Objects.equal(this.gcmSenderId, firebaseOptions.gcmSenderId) && Objects.equal(this.storageBucket, firebaseOptions.storageBucket) && Objects.equal(this.projectId, firebaseOptions.projectId);
    }

    public String getApiKey() {
        return this.apiKey;
    }

    public String getApplicationId() {
        return this.applicationId;
    }

    public String getDatabaseUrl() {
        return this.databaseUrl;
    }

    public String getGaTrackingId() {
        return this.gaTrackingId;
    }

    public String getGcmSenderId() {
        return this.gcmSenderId;
    }

    public String getProjectId() {
        return this.projectId;
    }

    public String getStorageBucket() {
        return this.storageBucket;
    }

    public int hashCode() {
        return Objects.hashCode(this.applicationId, this.apiKey, this.databaseUrl, this.gaTrackingId, this.gcmSenderId, this.storageBucket, this.projectId);
    }

    public String toString() {
        return Objects.toStringHelper(this).add(NPStringFog.decode(new byte[]{7, 69, 18, 15, 93, 7, 7, 65, 11, 12, 90, 45, 2}, "f5bc4d", -1.105274916E9d), this.applicationId).add(NPStringFog.decode(new byte[]{88, 66, 94, 125, 6, 31}, "9276cf", 1.7518138E9f), this.apiKey).add(NPStringFog.decode(new byte[]{0, 89, 65, 89, 1, 83, 23, 93, 96, 74, 15}, "d858c2", -199052361L), this.databaseUrl).add(NPStringFog.decode(new byte[]{6, 85, 94, 54, 80, 95, 5, 83, 65, 44, 81}, "a63e51", -6.8791194E8f), this.gcmSenderId).add(NPStringFog.decode(new byte[]{70, 77, 12, 70, 3, 1, 80, 123, 22, 87, 9, 3, 65}, "59c4bf", 2.64216515E8d), this.storageBucket).add(NPStringFog.decode(new byte[]{19, 68, 86, 92, 0, 82, 23, 127, 93}, "c696e1", false, true), this.projectId).toString();
    }
}
