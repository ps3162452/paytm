package com.google.android.gms.common;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class ConnectionResult extends AbstractSafeParcelable {
    public static final int API_DISABLED = 23;
    public static final int API_DISABLED_FOR_CONNECTION = 24;
    public static final int API_UNAVAILABLE = 16;
    public static final int CANCELED = 13;
    public static final int DEVELOPER_ERROR = 10;

    @Deprecated
    public static final int DRIVE_EXTERNAL_STORAGE_REQUIRED = 1500;
    public static final int INTERNAL_ERROR = 8;
    public static final int INTERRUPTED = 15;
    public static final int INVALID_ACCOUNT = 5;
    public static final int LICENSE_CHECK_FAILED = 11;
    public static final int NETWORK_ERROR = 7;
    public static final int RESOLUTION_ACTIVITY_NOT_FOUND = 22;
    public static final int RESOLUTION_REQUIRED = 6;
    public static final int RESTRICTED_PROFILE = 20;
    public static final int SERVICE_DISABLED = 3;
    public static final int SERVICE_INVALID = 9;
    public static final int SERVICE_MISSING = 1;
    public static final int SERVICE_MISSING_PERMISSION = 19;
    public static final int SERVICE_UPDATING = 18;
    public static final int SERVICE_VERSION_UPDATE_REQUIRED = 2;
    public static final int SIGN_IN_FAILED = 17;
    public static final int SIGN_IN_REQUIRED = 4;
    public static final int SUCCESS = 0;
    public static final int TIMEOUT = 14;
    public static final int UNKNOWN = -1;
    final int zza;
    private final int zzb;
    private final PendingIntent zzc;
    private final String zzd;
    public static final ConnectionResult RESULT_SUCCESS = new ConnectionResult(0);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new zzb();

    public ConnectionResult(int i) {
        this(i, null, null);
    }

    ConnectionResult(int i, int i2, PendingIntent pendingIntent, String str) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = pendingIntent;
        this.zzd = str;
    }

    public ConnectionResult(int i, PendingIntent pendingIntent) {
        this(i, pendingIntent, null);
    }

    public ConnectionResult(int i, PendingIntent pendingIntent, String str) {
        this(1, i, pendingIntent, str);
    }

    static String zza(int i) {
        switch (i) {
            case -1:
                return NPStringFog.decode(new byte[]{100, 122, 127, 126, 125, 52, 127}, "14402c", false);
            case 0:
                return NPStringFog.decode(new byte[]{99, 55, 114, 112, 33, 106, 99}, "0b13d9", -20486);
            case 1:
                return NPStringFog.decode(new byte[]{55, 33, 106, 51, 43, 112, 33, 59, 117, 44, 49, 96, 45, 42, 127}, "dd8eb3", -1.0957723E9f);
            case 2:
                return NPStringFog.decode(new byte[]{98, 35, 51, 103, 126, 117, 116, 57, 55, 116, 101, 101, 120, 41, 47, 110, 98, 102, 117, 39, 53, 116, 104, 100, 116, 55, 52, 120, 101, 115, 117}, "1fa176", 333811040L);
            case 3:
                return NPStringFog.decode(new byte[]{100, 124, 101, 52, 122, 116, 114, 102, 115, 43, 96, 118, 117, 117, 114, 38}, "797b37", true, true);
            case 4:
                return NPStringFog.decode(new byte[]{48, 112, 117, 127, 58, 47, 45, 102, 96, 116, 52, 51, 42, 107, 119, 117}, "c921ef", -77290L);
            case 5:
                return NPStringFog.decode(new byte[]{45, 121, 103, 118, 45, 42, 32, 104, 112, 116, 34, 44, 49, 121, 101}, "d717ac", 1.1189286E9f);
            case 6:
                return NPStringFog.decode(new byte[]{99, 39, 97, 118, 127, 101, 101, 43, 125, 119, 108, 98, 116, 51, 103, 112, 97, 117, 117}, "1b2930", false, false);
            case 7:
                return NPStringFog.decode(new byte[]{124, 39, 97, 50, 44, 52, 121, 61, 112, 55, 49, 41, 96}, "2b5ecf", -595225353L);
            case 8:
                return NPStringFog.decode(new byte[]{123, 125, 53, 119, 55, 118, 115, 127, 62, 119, 55, 106, 125, 97}, "23a2e8", -1.684500279E9d);
            case 9:
                return NPStringFog.decode(new byte[]{98, 119, 99, 52, 124, 39, 116, 109, 120, 44, 99, 37, 125, 123, 117}, "121b5d", 19028);
            case 10:
                return NPStringFog.decode(new byte[]{116, 118, 51, 33, 122, 121, 96, 118, 55, 59, 115, 100, 98, 124, 55}, "03ed66", -6376);
            case 11:
                return NPStringFog.decode(new byte[]{122, 126, 118, 32, 126, 99, 115, 104, 118, 45, 117, 115, 125, 104, 115, 36, 121, 124, 115, 115}, "675e00", true);
            case 13:
                return NPStringFog.decode(new byte[]{118, 120, 125, 118, 125, 121, 112, 125}, "593585", 9.229833E8f);
            case 14:
                return NPStringFog.decode(new byte[]{109, 123, 117, 124, 118, 54, 109}, "92899c", 9.186192E7f);
            case 15:
                return NPStringFog.decode(new byte[]{112, 43, 101, 36, 48, 107, 108, 53, 101, 36, 38}, "9e1ab9", -3.83863053E8d);
            case 16:
                return NPStringFog.decode(new byte[]{115, 49, 113, 58, 103, 45, 115, 55, 121, 44, 126, 34, 112, 45, 125}, "2a8e2c", -709114475L);
            case 17:
                return NPStringFog.decode(new byte[]{107, 124, 113, 120, 110, 120, 118, 106, 112, 119, 120, 125, 125, 113}, "856611", -9.042856E7f);
            case 18:
                return NPStringFog.decode(new byte[]{99, 112, 100, 53, 127, 32, 117, 106, 99, 51, 114, 34, 100, 124, 120, 36}, "056c6c", -1.65300022E8d);
            case 19:
                return NPStringFog.decode(new byte[]{96, 112, 102, 110, 44, 114, 118, 106, 121, 113, 54, 98, 122, 123, 115, 103, 53, 116, 97, 120, 125, 107, 54, 120, 124, 123}, "3548e1", false);
            case 20:
                return NPStringFog.decode(new byte[]{55, 115, 53, 99, 54, 120, 38, 98, 35, 115, 59, 97, 55, 121, 32, 126, 40, 116}, "e6f7d1", -1746860780L);
            case 21:
                return NPStringFog.decode(new byte[]{121, 51, 47, 62, 53, 119, 106, 48, 47, 46, 45, 109, 109, 51, 34, 32, 55, 119, 103, 49, 35, 48, 54, 123, 106, 38, 34}, "8cfac2", 10786);
            case 22:
                return NPStringFog.decode(new byte[]{107, 114, 97, 121, 125, 101, 109, 126, 125, 120, 110, 113, 122, 99, 123, 96, 120, 100, 96, 104, 124, 121, 101, 111, 127, 120, 103, 120, 117}, "972610", false);
            case 23:
                return NPStringFog.decode(new byte[]{121, 101, 44, 106, 32, 45, 107, 116, 39, 121, 33, 32}, "85e5dd", false, false);
            case 24:
                return NPStringFog.decode(new byte[]{114, 50, 126, 104, 39, 113, 96, 35, 117, 123, 38, 124, 108, 36, 120, 101, 60, 123, 124, 44, 121, 114, 32, 108, 122, 45, 121}, "3b77c8", true);
            case 99:
                return NPStringFog.decode(new byte[]{99, 40, 115, 44, 125, 44, 101, 46, 112, 33}, "6f5e3e", -1968659880L);
            case DRIVE_EXTERNAL_STORAGE_REQUIRED /* 1500 */:
                return NPStringFog.decode(new byte[]{119, 99, 126, 103, 113, 59, 118, 105, 99, 116, 102, 42, 114, 125, 104, 98, 96, 43, 97, 112, 112, 116, 107, 54, 118, 96, 98, 120, 102, 33, 119}, "31714d", true, true);
            default:
                return NPStringFog.decode(new byte[]{108, 40, 114, 122, 121, 50, 119, 57, 124, 102, 100, 42, 107, 57, 122, 123, 114, 32, 17}, "9f946e", 2.0261958E9f) + i + NPStringFog.decode(new byte[]{30}, "7d457b", false, true);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        return this.zzb == connectionResult.zzb && Objects.equal(this.zzc, connectionResult.zzc) && Objects.equal(this.zzd, connectionResult.zzd);
    }

    public int getErrorCode() {
        return this.zzb;
    }

    public String getErrorMessage() {
        return this.zzd;
    }

    public PendingIntent getResolution() {
        return this.zzc;
    }

    public boolean hasResolution() {
        return (this.zzb == 0 || this.zzc == null) ? false : true;
    }

    public int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.zzb), this.zzc, this.zzd);
    }

    public boolean isSuccess() {
        return this.zzb == 0;
    }

    public void startResolutionForResult(Activity activity, int i) throws IntentSender.SendIntentException {
        if (hasResolution()) {
            PendingIntent pendingIntent = this.zzc;
            Preconditions.checkNotNull(pendingIntent);
            activity.startIntentSenderForResult(pendingIntent.getIntentSender(), i, null, 0, 0, 0);
        }
    }

    public String toString() {
        Objects.ToStringHelper stringHelper = Objects.toStringHelper(this);
        stringHelper.add(NPStringFog.decode(new byte[]{75, 69, 80, 77, 19, 64, 123, 94, 85, 92}, "8119f3", false), zza(this.zzb));
        stringHelper.add(NPStringFog.decode(new byte[]{74, 6, 23, 11, 14, 70, 76, 10, 11, 10}, "8cddb3", -1836201733L), this.zzc);
        stringHelper.add(NPStringFog.decode(new byte[]{11, 92, 18, 74, 5, 85, 3}, "f9a9d2", 1123347259L), this.zzd);
        return stringHelper.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zza);
        SafeParcelWriter.writeInt(parcel, 2, getErrorCode());
        SafeParcelWriter.writeParcelable(parcel, 3, getResolution(), i, false);
        SafeParcelWriter.writeString(parcel, 4, getErrorMessage(), false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
