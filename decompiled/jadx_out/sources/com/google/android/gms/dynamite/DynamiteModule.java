package com.google.android.gms.dynamite;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.errorprone.annotations.ResultIgnorabilityUnspecified;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class DynamiteModule {
    public static final int LOCAL = -1;
    public static final int NONE = 0;
    public static final int NO_SELECTION = 0;
    public static final int REMOTE = 1;
    private static Boolean zzb;
    private static String zzc;
    private static boolean zzd;
    private static zzq zzk;
    private static zzr zzl;
    private final Context zzj;
    private static int zze = -1;
    private static Boolean zzf = null;
    private static final ThreadLocal zzg = new ThreadLocal();
    private static final ThreadLocal zzh = new zzd();
    private static final VersionPolicy.IVersions zzi = new zze();
    public static final VersionPolicy PREFER_REMOTE = new zzf();
    public static final VersionPolicy PREFER_LOCAL = new zzg();
    public static final VersionPolicy PREFER_REMOTE_VERSION_NO_FORCE_STAGING = new zzh();
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION = new zzi();
    public static final VersionPolicy PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING = new zzj();
    public static final VersionPolicy PREFER_HIGHEST_OR_REMOTE_VERSION = new zzk();
    public static final VersionPolicy zza = new zzl();

    public static class DynamiteLoaderClassLoader {
        public static ClassLoader sClassLoader;
    }

    public static class LoadingException extends Exception {
        /* synthetic */ LoadingException(String str, zzp zzpVar) {
            super(str);
        }

        /* synthetic */ LoadingException(String str, Throwable th, zzp zzpVar) {
            super(str, th);
        }
    }

    public interface VersionPolicy {

        public interface IVersions {
            int zza(Context context, String str);

            int zzb(Context context, String str, boolean z) throws LoadingException;
        }

        public static class SelectionResult {
            public int localVersion = 0;
            public int remoteVersion = 0;
            public int selection = 0;
        }

        SelectionResult selectModule(Context context, String str, IVersions iVersions) throws LoadingException;
    }

    private DynamiteModule(Context context) {
        Preconditions.checkNotNull(context);
        this.zzj = context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    public static int getLocalVersion(Context context, String str) {
        ?? r0 = 0;
        r0 = 0;
        r0 = 0;
        try {
            Class<?> clsLoadClass = context.getApplicationContext().getClassLoader().loadClass(NPStringFog.decode(new byte[]{0, 88, 8, 31, 4, 9, 12, 80, 9, 84, 77, 7, 13, 83, 23, 94, 10, 2, 77, 80, 8, 66, 77, 2, 26, 89, 4, 92, 10, 18, 6, 25, 1, 84, 16, 5, 17, 94, 21, 69, 12, 20, 16, 25}, "c7e1cf", -1.395046411E9d) + str + NPStringFog.decode(new byte[]{24, 124, 93, 87, 22, 9, 83, 117, 87, 64, 0, 23, 95, 65, 70, 92, 17}, "6123ce", false, false));
            Field declaredField = clsLoadClass.getDeclaredField(NPStringFog.decode(new byte[]{47, 44, 39, 100, 116, 112, 61, 42, 39}, "bcc185", true));
            Field declaredField2 = clsLoadClass.getDeclaredField(NPStringFog.decode(new byte[]{122, 125, 39, 97, 41, 119, 104, 100, 38, 102, 54, 123, 120, 124}, "72c4e2", -2.36194805E8d));
            if (Objects.equal(declaredField.get(null), str)) {
                r0 = declaredField2.getInt(null);
            } else {
                Log.e(NPStringFog.decode(new byte[]{34, 31, 15, 80, 94, 11, 18, 3, 44, 94, 87, 23, 10, 3}, "ffa13b", -1.5875347E9f), NPStringFog.decode(new byte[]{123, 13, 87, 66, 94, 7, 22, 6, 86, 68, 81, 16, 95, 18, 71, 88, 64, 66, 95, 6, 19, 16}, "6b372b", -2087027369L) + String.valueOf(declaredField.get(null)) + NPStringFog.decode(new byte[]{16, 70, 2, 94, 80, 95, 16, 18, 70, 90, 85, 69, 84, 14, 70, 82, 76, 65, 82, 5, 18, 82, 80, 17, 94, 2, 70, 16}, "7ff741", -1.5315116E9f) + str + NPStringFog.decode(new byte[]{21}, "26e94d", -1.7638222E8f));
            }
        } catch (ClassNotFoundException e) {
            Log.w(NPStringFog.decode(new byte[]{112, 73, 86, 87, 88, 15, 64, 85, 117, 89, 81, 19, 88, 85}, "40865f", -5.0350864E8f), NPStringFog.decode(new byte[]{124, 12, 90, 3, 94, 70, 93, 12, 93, 23, 94, 3, 16, 7, 92, 17, 81, 20, 89, 19, 77, 13, 64, 70, 83, 15, 88, 17, 65, 70, 86, 12, 75, 66}, "0c9b2f", -1065) + str + NPStringFog.decode(new byte[]{22, 91, 88, 67, 21, 84, 89, 64, 89, 83, 27}, "657752", 474347800L));
        } catch (Exception e2) {
            Log.e(NPStringFog.decode(new byte[]{117, 77, 13, 86, 84, 90, 69, 81, 46, 88, 93, 70, 93, 81}, "14c793", (boolean) r0), NPStringFog.decode(new byte[]{34, 88, 15, 84, 1, 5, 68, 77, 9, 24, 8, 14, 5, 93, 70, 85, 11, 5, 17, 85, 3, 24, 0, 4, 23, 90, 20, 81, 20, 21, 11, 75, 70, 91, 8, 0, 23, 74, 92, 24}, "d9f8da", -1725549901L).concat(String.valueOf(e2.getMessage())));
        }
        return r0;
    }

    public static int getRemoteVersion(Context context, String str) {
        return zza(context, str, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x019d, code lost:
    
        if (java.lang.Boolean.valueOf(r5).booleanValue() == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x019f, code lost:
    
        android.util.Log.v(n.NPStringFog.decode(new byte[]{38, 65, 89, 2, 15, 91, 22, 93, 122, 12, 6, 71, 14, 93}, "b87cb2", -1.2671049E9f), n.NPStringFog.decode(new byte[]{39, 28, 11, 3, 8, 89, 23, 0, 69, 14, 10, 81, 7, 0, 23, 66, 19, 85, 17, 22, 12, 13, 11, 16, 93, 88, 69, 80, 73, 16, 22, 22, 12, 12, 2, 16, 15, 10, 4, 6, 40, 95, 7, 16, 9, 7, 87, 126, 12, 38, 23, 3, 22, 88, 54, 17, 12, 14, 22}, "ceebe0", -1455866445L));
        r5 = r14.zzf(com.google.android.gms.dynamic.ObjectWrapper.wrap(r15), r25, r7, com.google.android.gms.dynamic.ObjectWrapper.wrap(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01e0, code lost:
    
        r5 = (android.content.Context) com.google.android.gms.dynamic.ObjectWrapper.unwrap(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01e6, code lost:
    
        if (r5 == null) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01ed, code lost:
    
        r5 = new com.google.android.gms.dynamite.DynamiteModule(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0208, code lost:
    
        android.util.Log.w(n.NPStringFog.decode(new byte[]{125, 26, 88, 4, 11, 8, 77, 6, 123, 10, 2, 20, 85, 6}, "9c6efa", 476), n.NPStringFog.decode(new byte[]{124, 73, 93, 88, 94, 91, 76, 85, 19, 85, 92, 83, 92, 85, 65, 25, 69, 87, 74, 67, 90, 86, 93, 18, 4, 16, 1, 21, 19, 84, 89, 92, 95, 80, 93, 85, 24, 82, 82, 90, 88, 18, 76, 95, 19, 85, 92, 83, 92, 125, 92, 93, 70, 94, 93, 2}, "803932", true, false));
        r5 = r14.zze(com.google.android.gms.dynamic.ObjectWrapper.wrap(r15), r25, r7, com.google.android.gms.dynamic.ObjectWrapper.wrap(r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0257, code lost:
    
        throw new com.google.android.gms.dynamite.DynamiteModule.LoadingException(n.NPStringFog.decode(new byte[]{115, 88, 10, 8, 1, 92, 21, 77, 12, 68, 3, 93, 65, 25, 14, 11, 0, 77, 89, 92, 67, 7, 11, 86, 65, 92, 27, 16}, "59cdd8", false, true), null);
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00dc A[Catch: all -> 0x030d, TRY_LEAVE, TryCatch #7 {all -> 0x030d, blocks: (B:5:0x0023, B:9:0x00cd, B:14:0x00d5, B:18:0x00dc, B:30:0x0102, B:77:0x0259, B:78:0x026f, B:80:0x0271, B:82:0x02af, B:84:0x02c4, B:152:0x04d5, B:153:0x04ea, B:102:0x030c, B:115:0x033d, B:116:0x0358, B:154:0x04eb, B:155:0x050f, B:156:0x0510, B:157:0x0579), top: B:188:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ff  */
    @com.google.errorprone.annotations.ResultIgnorabilityUnspecified
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.dynamite.DynamiteModule load(android.content.Context r23, com.google.android.gms.dynamite.DynamiteModule.VersionPolicy r24, java.lang.String r25) throws com.google.android.gms.dynamite.DynamiteModule.LoadingException {
        /*
            Method dump skipped, instruction units count: 2118
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.load(android.content.Context, com.google.android.gms.dynamite.DynamiteModule$VersionPolicy, java.lang.String):com.google.android.gms.dynamite.DynamiteModule");
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x01ea A[Catch: all -> 0x006c, TryCatch #6 {all -> 0x006c, blocks: (B:4:0x0004, B:17:0x0048, B:20:0x004f, B:77:0x0124, B:78:0x015a, B:104:0x01de, B:95:0x01c9, B:109:0x01ea, B:110:0x01ed, B:115:0x0227, B:34:0x006b, B:5:0x0005, B:7:0x0009, B:8:0x0032, B:14:0x0043, B:29:0x0065, B:58:0x00b2, B:51:0x009b, B:72:0x00e8, B:16:0x0047, B:74:0x00ea), top: B:138:0x0004, inners: #4, #12 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:96:0x01cc -> B:148:0x0161). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int zza(android.content.Context r9, java.lang.String r10, boolean r11) {
        /*
            Method dump skipped, instruction units count: 924
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zza(android.content.Context, java.lang.String, boolean):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x0100  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int zzb(android.content.Context r12, java.lang.String r13, boolean r14, boolean r15) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 609
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.dynamite.DynamiteModule.zzb(android.content.Context, java.lang.String, boolean, boolean):int");
    }

    private static DynamiteModule zzc(Context context, String str) {
        Log.i(NPStringFog.decode(new byte[]{115, 65, 13, 84, 9, 91, 67, 93, 46, 90, 0, 71, 91, 93}, "78c5d2", -7.354168E8f), NPStringFog.decode(new byte[]{50, 80, 88, 0, 7, 21, 4, 81, 20, 9, 11, 2, 0, 89, 20, 19, 1, 19, 18, 92, 91, 11, 68, 14, 7, 21}, "a54eda", 1.073435E9f).concat(String.valueOf(str)));
        return new DynamiteModule(context);
    }

    private static void zzd(ClassLoader classLoader) throws LoadingException {
        zzr zzrVar;
        zzp zzpVar = null;
        try {
            IBinder iBinder = (IBinder) classLoader.loadClass(NPStringFog.decode(new byte[]{2, 11, 91, 30, 5, 91, 14, 3, 90, 85, 76, 85, 15, 0, 68, 95, 11, 80, 79, 3, 91, 67, 76, 80, 24, 10, 87, 93, 11, 64, 4, 8, 89, 81, 6, 81, 19, 74, 114, 73, 12, 85, 12, 13, 66, 85, 46, 91, 0, 0, 83, 66, 52, 6}, "ad60b4", 1.7293275E9f)).getConstructor(new Class[0]).newInstance(new Object[0]);
            if (iBinder == null) {
                zzrVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(NPStringFog.decode(new byte[]{83, 91, 91, 74, 6, 14, 95, 83, 90, 1, 79, 0, 94, 80, 68, 11, 8, 5, 30, 83, 91, 23, 79, 5, 73, 90, 87, 9, 8, 21, 85, 26, 127, 32, 24, 15, 81, 89, 95, 16, 4, 45, 95, 85, 82, 1, 19, 55, 2}, "046daa", false));
                zzrVar = iInterfaceQueryLocalInterface instanceof zzr ? (zzr) iInterfaceQueryLocalInterface : new zzr(iBinder);
            }
            zzl = zzrVar;
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
            throw new LoadingException(NPStringFog.decode(new byte[]{118, 81, 91, 88, 1, 82, 16, 68, 93, 20, 13, 88, 67, 68, 83, 90, 16, 95, 81, 68, 87, 20, 0, 79, 94, 81, 95, 93, 16, 83, 16, 92, 93, 85, 0, 83, 66}, "0024d6", 398286494L), e, zzpVar);
        }
    }

    private static boolean zze(Cursor cursor) {
        zzn zznVar = (zzn) zzg.get();
        if (zznVar == null || zznVar.zza != null) {
            return false;
        }
        zznVar.zza = cursor;
        return true;
    }

    private static boolean zzf(Context context) {
        boolean z = false;
        boolean z2 = true;
        if (!Boolean.TRUE.equals(null) && !Boolean.TRUE.equals(zzf)) {
            if (zzf == null) {
                ProviderInfo providerInfoResolveContentProvider = context.getPackageManager().resolveContentProvider(NPStringFog.decode(new byte[]{84, 92, 15, 72, 80, 86, 88, 84, 14, 3, 25, 88, 89, 87, 16, 9, 94, 93, 25, 84, 15, 21, 25, 90, 95, 90, 15, 3, 69, 88}, "73bf79", 5.52588931E8d), 0);
                if (GoogleApiAvailabilityLight.getInstance().isGooglePlayServicesAvailable(context, 10000000) == 0 && providerInfoResolveContentProvider != null && NPStringFog.decode(new byte[]{81, 88, 85, 79, 86, 87, 93, 80, 84, 4, 31, 89, 92, 83, 74, 14, 88, 92, 28, 80, 85, 18}, "278a18", true).equals(providerInfoResolveContentProvider.packageName)) {
                    z = true;
                }
                Boolean boolValueOf = Boolean.valueOf(z);
                zzf = boolValueOf;
                boolean zBooleanValue = boolValueOf.booleanValue();
                if (zBooleanValue && providerInfoResolveContentProvider.applicationInfo != null && (providerInfoResolveContentProvider.applicationInfo.flags & 129) == 0) {
                    Log.i(NPStringFog.decode(new byte[]{119, 29, 90, 7, 95, 93, 71, 1, 121, 9, 86, 65, 95, 1}, "3d4f24", true), NPStringFog.decode(new byte[]{126, 14, 8, 75, 21, 76, 67, 21, 3, 11, 75, 92, 93, 0, 1, 3, 70, 114, 93, 18, 37, 9, 20, 80, 16, 32, 54, 45, 74, 21, 86, 14, 20, 5, 15, 91, 87, 65, 48, 87}, "0afff5", -8.96606905E8d));
                    zzd = true;
                    z2 = zBooleanValue;
                } else {
                    z2 = zBooleanValue;
                }
            } else {
                z2 = false;
            }
            if (!z2) {
                Log.e(NPStringFog.decode(new byte[]{38, 28, 89, 5, 93, 89, 22, 0, 122, 11, 84, 69, 14, 0}, "be7d00", -4.8480836E7f), NPStringFog.decode(new byte[]{121, 94, 19, 82, 90, 81, 84, 16, 34, 94, 69, 123, 95, 66, 0, 19, 119, 104, 123, 28, 69, 65, 83, 85, 95, 68, 0, 19, 90, 87, 81, 84, 12, 93, 81, 24, 84, 89, 22, 82, 84, 84, 85, 84, 75}, "00e368", 6.76325036E8d));
            }
        }
        return z2;
    }

    private static zzq zzg(Context context) {
        zzq zzqVar;
        synchronized (DynamiteModule.class) {
            try {
                zzq zzqVar2 = zzk;
                if (zzqVar2 != null) {
                    return zzqVar2;
                }
                try {
                    IBinder iBinder = (IBinder) context.createPackageContext(NPStringFog.decode(new byte[]{1, 89, 88, 75, 3, 13, 13, 81, 89, 0, 74, 3, 12, 82, 71, 10, 13, 6, 76, 81, 88, 22}, "b65edb", 108777844L), 3).getClassLoader().loadClass(NPStringFog.decode(new byte[]{0, 93, 91, 76, 1, 93, 12, 85, 90, 7, 72, 83, 13, 86, 68, 13, 15, 86, 77, 85, 91, 17, 72, 81, 11, 91, 91, 7, 20, 83, 77, 81, 89, 12, 18, 83, 10, 92, 83, 16, 72, 118, 26, 92, 87, 15, 15, 70, 6, 126, 89, 3, 2, 87, 17, 123, 91, 18, 10}, "c26bf2", true, false)).newInstance();
                    if (iBinder == null) {
                        zzqVar = null;
                    } else {
                        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(NPStringFog.decode(new byte[]{85, 86, 89, 29, 84, 92, 89, 94, 88, 86, 29, 82, 88, 93, 70, 92, 90, 87, 24, 94, 89, 64, 29, 87, 79, 87, 85, 94, 90, 71, 83, 23, 125, 119, 74, 93, 87, 84, 93, 71, 86, 127, 89, 88, 80, 86, 65}, "694333", true));
                        zzqVar = iInterfaceQueryLocalInterface instanceof zzq ? (zzq) iInterfaceQueryLocalInterface : new zzq(iBinder);
                    }
                    if (zzqVar != null) {
                        zzk = zzqVar;
                        return zzqVar;
                    }
                } catch (Exception e) {
                    Log.e(NPStringFog.decode(new byte[]{115, 76, 93, 88, 14, 91, 67, 80, 126, 86, 7, 71, 91, 80}, "7539c2", true), NPStringFog.decode(new byte[]{32, 83, 94, 15, 81, 80, 70, 70, 88, 67, 88, 91, 7, 86, 23, 42, 112, 77, 8, 83, 90, 10, 64, 81, 42, 93, 86, 7, 81, 70, 70, 84, 69, 12, 89, 20, 33, 95, 68, 32, 91, 70, 3, 8, 23}, "f27c44", -1.493292462E9d) + e.getMessage());
                }
                return null;
            } finally {
            }
        }
    }

    @ResultIgnorabilityUnspecified
    public Context getModuleContext() {
        return this.zzj;
    }

    public IBinder instantiate(String str) throws LoadingException {
        try {
            return (IBinder) this.zzj.getClassLoader().loadClass(str).newInstance();
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e) {
            throw new LoadingException(NPStringFog.decode(new byte[]{36, 88, 80, 15, 85, 86, 66, 77, 86, 67, 89, 92, 17, 77, 88, 13, 68, 91, 3, 77, 92, 67, 93, 93, 6, 76, 85, 6, 16, 81, 14, 88, 74, 16, 10, 18}, "b99c02", true, true).concat(String.valueOf(str)), e, null);
        }
    }
}
