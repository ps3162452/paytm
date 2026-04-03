package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.R;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.StringResourceValueReader;
import com.google.android.gms.common.internal.zzah;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
@Deprecated
public final class GoogleServices {
    private static final Object zza = new Object();
    private static GoogleServices zzb;
    private final String zzc;
    private final Status zzd;
    private final boolean zze;
    private final boolean zzf;

    GoogleServices(Context context) {
        boolean z;
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier(NPStringFog.decode(new byte[]{4, 14, 13, 3, 84, 86, 60, 0, 18, 20, 103, 94, 6, 0, 17, 17, 74, 86, 14, 4, 12, 16, 103, 86, 13, 0, 0, 8, 93}, "cabd83", 22032), NPStringFog.decode(new byte[]{80, 8, 21, 92, 86, 6, 75}, "9fa91c", false, false), resources.getResourcePackageName(R.string.common_google_play_services_unknown_issue));
        if (identifier != 0) {
            int integer = resources.getInteger(identifier);
            boolean z2 = integer == 0;
            z = integer != 0;
            this.zzf = z2;
        } else {
            this.zzf = false;
            z = true;
        }
        this.zze = z;
        String strZzb = zzah.zzb(context);
        strZzb = strZzb == null ? new StringResourceValueReader(context).getString(NPStringFog.decode(new byte[]{4, 92, 10, 85, 94, 81, 60, 82, 21, 66, 109, 93, 7}, "c3e224", false, true)) : strZzb;
        if (TextUtils.isEmpty(strZzb)) {
            this.zzd = new Status(10, NPStringFog.decode(new byte[]{41, 81, 17, 21, 93, 92, 3, 24, 5, 9, 91, 85, 8, 93, 66, 7, 68, 66, 68, 81, 6, 70, 66, 83, 8, 77, 7, 70, 82, 64, 11, 85, 66, 0, 70, 93, 9, 24, 17, 18, 70, 91, 10, 95, 66, 20, 81, 65, 11, 77, 16, 5, 81, 65, 68, 79, 11, 18, 92, 18, 10, 89, 15, 3, 20, 85, 11, 87, 5, 10, 81, 109, 5, 72, 18, 57, 93, 86, 74}, "d8bf42", false));
            this.zzc = null;
        } else {
            this.zzc = strZzb;
            this.zzd = Status.RESULT_SUCCESS;
        }
    }

    GoogleServices(String str, boolean z) {
        this.zzc = str;
        this.zzd = Status.RESULT_SUCCESS;
        this.zze = z;
        this.zzf = !z;
    }

    private static GoogleServices checkInitialized(String str) {
        GoogleServices googleServices;
        synchronized (zza) {
            googleServices = zzb;
            if (googleServices == null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{121, 88, 10, 76, 8, 3, 92, 95, 25, 93, 65, 15, 69, 69, 23, 24, 3, 7, 16, 85, 2, 84, 13, 7, 84, 22, 1, 93, 7, 13, 66, 83, 67}, "06c8ab", 1.812575872E9d) + str + NPStringFog.decode(new byte[]{75}, "ecb62d", true, false));
            }
        }
        return googleServices;
    }

    static void clearInstanceForTest() {
        synchronized (zza) {
            zzb = null;
        }
    }

    public static String getGoogleAppId() {
        return checkInitialized(NPStringFog.decode(new byte[]{85, 1, 65, 113, 87, 10, 85, 8, 80, 119, 72, 21, 123, 0}, "2d568e", 8.706657E8f)).zzc;
    }

    public static Status initialize(Context context) {
        Status status;
        Preconditions.checkNotNull(context, NPStringFog.decode(new byte[]{32, 90, 88, 18, 84, 72, 23, 21, 91, 19, 66, 68, 67, 91, 89, 18, 17, 82, 6, 21, 88, 19, 93, 92, 77}, "c56f10", -3.5407997E8f));
        synchronized (zza) {
            if (zzb == null) {
                zzb = new GoogleServices(context);
            }
            status = zzb.zzd;
        }
        return status;
    }

    @ResultIgnorabilityUnspecified
    public static Status initialize(Context context, String str, boolean z) {
        Status statusCheckGoogleAppId;
        Preconditions.checkNotNull(context, NPStringFog.decode(new byte[]{39, 89, 92, 68, 80, 73, 16, 22, 95, 69, 70, 69, 68, 88, 93, 68, 21, 83, 1, 22, 92, 69, 89, 93, 74}, "d62051", false, true));
        Preconditions.checkNotEmpty(str, NPStringFog.decode(new byte[]{36, 66, 21, 68, 42, 119, 69, 95, 16, 23, 23, 19, 7, 87, 69, 10, 12, 93, 0, 95, 21, 16, 26, 29}, "e2edc3", 1.4848554E9f));
        synchronized (zza) {
            GoogleServices googleServices = zzb;
            if (googleServices != null) {
                statusCheckGoogleAppId = googleServices.checkGoogleAppId(str);
            } else {
                GoogleServices googleServices2 = new GoogleServices(str, z);
                zzb = googleServices2;
                statusCheckGoogleAppId = googleServices2.zzd;
            }
        }
        return statusCheckGoogleAppId;
    }

    public static boolean isMeasurementEnabled() {
        GoogleServices googleServicesCheckInitialized = checkInitialized(NPStringFog.decode(new byte[]{94, 65, 46, 0, 4, 64, 66, 64, 6, 8, 0, 93, 67, 119, 13, 4, 7, 95, 82, 86}, "72cee3", -847));
        return googleServicesCheckInitialized.zzd.isSuccess() && googleServicesCheckInitialized.zze;
    }

    public static boolean isMeasurementExplicitlyDisabled() {
        return checkInitialized(NPStringFog.decode(new byte[]{93, 22, 127, 4, 80, 75, 65, 23, 87, 12, 84, 86, 64, 32, 74, 17, 93, 81, 87, 12, 70, 13, 72, 124, 93, 22, 83, 3, 93, 93, 80}, "4e2a18", false)).zzf;
    }

    Status checkGoogleAppId(String str) {
        String str2 = this.zzc;
        if (str2 == null || str2.equals(str)) {
            return Status.RESULT_SUCCESS;
        }
        return new Status(10, NPStringFog.decode(new byte[]{121, 89, 92, 66, 95, 89, 92, 94, 79, 83, 22, 79, 81, 68, 21, 85, 87, 84, 92, 82, 81, 22, 65, 81, 68, 95, 21, 66, 65, 87, 16, 83, 92, 80, 80, 93, 66, 82, 91, 66, 22, 127, 95, 88, 82, 90, 83, 24, 113, 71, 69, 22, 127, 124, 67, 25, 21, 22, 121, 86, 92, 78, 21, 66, 94, 93, 16, 81, 92, 68, 69, 76, 16, 86, 69, 70, 22, 113, 116, 23, 66, 95, 90, 84, 16, 85, 80, 22, 67, 75, 85, 83, 15, 22, 17}, "075668", false, false) + this.zzc + NPStringFog.decode(new byte[]{16, 27}, "7585d8", true));
    }
}
