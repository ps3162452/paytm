package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import android.util.Log;
import androidx.core.content.ContextCompat;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class WorkSourceUtil {
    private static final int zza = Process.myUid();
    private static final Method zzb;
    private static final Method zzc;
    private static final Method zzd;
    private static final Method zze;
    private static final Method zzf;
    private static final Method zzg;
    private static final Method zzh;
    private static final Method zzi;
    private static Boolean zzj;

    static {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Method method6;
        Method method7;
        Method method8;
        try {
            method = WorkSource.class.getMethod(NPStringFog.decode(new byte[]{2, 92, 85}, "c815b3", true), Integer.TYPE);
        } catch (Exception e) {
            method = null;
        }
        zzb = method;
        if (PlatformVersion.isAtLeastJellyBeanMR2()) {
            try {
                method2 = WorkSource.class.getMethod(NPStringFog.decode(new byte[]{89, 2, 5}, "8faa77", 15028), Integer.TYPE, String.class);
            } catch (Exception e2) {
                method2 = null;
            }
        } else {
            method2 = null;
        }
        zzc = method2;
        try {
            method3 = WorkSource.class.getMethod(NPStringFog.decode(new byte[]{65, 13, 78, 4}, "2d4a3b", true, true), new Class[0]);
        } catch (Exception e3) {
            method3 = null;
        }
        zzd = method3;
        try {
            method4 = WorkSource.class.getMethod(NPStringFog.decode(new byte[]{4, 81, 66}, "c46669", false), Integer.TYPE);
        } catch (Exception e4) {
            method4 = null;
        }
        zze = method4;
        if (PlatformVersion.isAtLeastJellyBeanMR2()) {
            try {
                method5 = WorkSource.class.getMethod(NPStringFog.decode(new byte[]{83, 85, 16, 127, 3, 12, 81}, "40d1ba", -5.7189235E8f), Integer.TYPE);
            } catch (Exception e5) {
                method5 = null;
            }
        } else {
            method5 = null;
        }
        zzf = method5;
        if (PlatformVersion.isAtLeastP()) {
            try {
                method6 = WorkSource.class.getMethod(NPStringFog.decode(new byte[]{1, 66, 81, 89, 21, 6, 53, 95, 70, 83, 34, 11, 3, 89, 90}, "b048ac", false), new Class[0]);
            } catch (Exception e6) {
                Log.w(NPStringFog.decode(new byte[]{102, 90, 69, 82, 100, 11, 68, 71, 84, 92, 98, 16, 88, 89}, "15797d", true, false), NPStringFog.decode(new byte[]{46, 81, 67, 66, 8, 90, 4, 24, 103, 94, 19, 95, 32, 80, 81, 88, 15, 20, 34, 104, 121, 17, 2, 70, 6, 89, 68, 84, 54, 91, 17, 83, 115, 89, 0, 93, 13}, "c801a4", 11864), e6);
                method6 = null;
            }
        } else {
            method6 = null;
        }
        zzg = method6;
        if (PlatformVersion.isAtLeastP()) {
            try {
                method7 = Class.forName(NPStringFog.decode(new byte[]{88, 13, 0, 71, 13, 92, 93, 77, 11, 70, 76, 98, 86, 17, 15, 102, 13, 64, 75, 0, 1, 17, 53, 90, 75, 8, 39, 93, 3, 92, 87}, "9cd5b5", -1.172869448E9d)).getMethod(NPStringFog.decode(new byte[]{81, 81, 6, 122, 90, 84, 85}, "05b450", false, false), Integer.TYPE, String.class);
            } catch (Exception e7) {
                Log.w(NPStringFog.decode(new byte[]{103, 88, 75, 9, 48, 90, 69, 69, 90, 7, 54, 65, 89, 91}, "079bc5", false, true), NPStringFog.decode(new byte[]{123, 95, 68, 17, 8, 93, 81, 22, 96, 13, 19, 88, 117, 94, 86, 11, 15, 19, 85, 90, 86, 17, 18}, "667ba3", -1877705786L), e7);
                method7 = null;
            }
        } else {
            method7 = null;
        }
        zzh = method7;
        if (PlatformVersion.isAtLeastP()) {
            try {
                method8 = WorkSource.class.getMethod(NPStringFog.decode(new byte[]{94, 18, 32, 91, 18, 65, 78}, "7ae6b5", true, true), new Class[0]);
                try {
                    method8.setAccessible(true);
                } catch (Exception e8) {
                }
            } catch (Exception e9) {
                method8 = null;
            }
        } else {
            method8 = null;
        }
        zzi = method8;
        zzj = null;
    }

    private WorkSourceUtil() {
    }

    public static void add(WorkSource workSource, int i, String str) {
        Method method = zzc;
        if (method != null) {
            if (str == null) {
                str = "";
            }
            try {
                method.invoke(workSource, Integer.valueOf(i), str);
                return;
            } catch (Exception e) {
                Log.wtf(NPStringFog.decode(new byte[]{102, 88, 68, 14, 101, 10, 68, 69, 85, 0, 99, 17, 88, 91}, "176e6e", 16314), NPStringFog.decode(new byte[]{48, 86, 85, 1, 93, 7, 69, 76, 91, 67, 80, 17, 22, 81, 83, 13, 17, 0, 9, 89, 89, 6, 17, 22, 13, 74, 91, 22, 86, 10, 69, 111, 91, 17, 90, 49, 10, 77, 70, 0, 84}, "e84c1b", true), e);
                return;
            }
        }
        Method method2 = zzb;
        if (method2 != null) {
            try {
                method2.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e2) {
                Log.wtf(NPStringFog.decode(new byte[]{98, 12, 16, 83, 96, 87, 64, 17, 1, 93, 102, 76, 92, 15}, "5cb838", 1170586955L), NPStringFog.decode(new byte[]{109, 86, 80, 82, 14, 84, 24, 76, 94, 16, 3, 66, 75, 81, 86, 94, 66, 83, 84, 89, 92, 85, 66, 69, 80, 74, 94, 69, 5, 89, 24, 111, 94, 66, 9, 98, 87, 77, 67, 83, 7}, "8810b1", true), e2);
            }
        }
    }

    public static WorkSource fromPackage(Context context, String str) {
        if (context == null || context.getPackageManager() == null || str == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
            if (applicationInfo == null) {
                Log.e(NPStringFog.decode(new byte[]{53, 91, 19, 14, 55, 94, 23, 70, 2, 0, 49, 69, 11, 88}, "b4aed1", true, true), NPStringFog.decode(new byte[]{112, 90, 77, 9, 93, 65, 93, 90, 76, 69, 94, 4, 71, 21, 89, 21, 73, 13, 90, 86, 89, 17, 80, 14, 93, 124, 86, 3, 86, 65, 85, 71, 87, 8, 25, 17, 82, 86, 83, 4, 94, 4, 9, 21}, "358e9a", -3684).concat(str));
                return null;
            }
            int i = applicationInfo.uid;
            WorkSource workSource = new WorkSource();
            add(workSource, i, str);
            return workSource;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(NPStringFog.decode(new byte[]{110, 93, 67, 90, 102, 94, 76, 64, 82, 84, 96, 69, 80, 94}, "921151", -4.82584731E8d), NPStringFog.decode(new byte[]{114, 12, 70, 91, 84, 69, 95, 12, 71, 23, 86, 12, 95, 7, 19, 71, 81, 6, 90, 2, 84, 82, 10, 69}, "1c370e", 1.157277242E9d).concat(str));
            return null;
        }
    }

    public static WorkSource fromPackageAndModuleExperimentalPi(Context context, String str, String str2) {
        Method method;
        WorkSource workSource = null;
        if (context == null || context.getPackageManager() == null || str2 == null || str == null) {
            Log.w(NPStringFog.decode(new byte[]{101, 88, 70, 90, 97, 11, 71, 69, 87, 84, 103, 16, 91, 91}, "27412d", false), NPStringFog.decode(new byte[]{54, 91, 93, 29, 64, 4, 0, 65, 93, 1, 16, 15, 22, 89, 84, 69, 81, 19, 4, 64, 85, 0, 94, 21, 16}, "c58e0a", true, false));
        } else {
            int i = -1;
            try {
                ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
                if (applicationInfo == null) {
                    Log.e(NPStringFog.decode(new byte[]{103, 94, 74, 9, 99, 10, 69, 67, 91, 7, 101, 17, 89, 93}, "018b0e", -7.96030023E8d), NPStringFog.decode(new byte[]{118, 95, 77, 15, 82, 70, 91, 95, 76, 67, 81, 3, 65, 16, 89, 19, 70, 10, 92, 83, 89, 23, 95, 9, 91, 121, 86, 5, 89, 70, 83, 66, 87, 14, 22, 22, 84, 83, 83, 2, 81, 3, 15, 16}, "508c6f", -18150).concat(str));
                } else {
                    i = applicationInfo.uid;
                }
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(NPStringFog.decode(new byte[]{110, 95, 74, 15, 99, 90, 76, 66, 91, 1, 101, 65, 80, 92}, "908d05", 4.58788787E8d), NPStringFog.decode(new byte[]{113, 13, 67, 88, 5, 69, 92, 13, 66, 20, 7, 12, 92, 6, 22, 68, 0, 6, 89, 3, 81, 81, 91, 69}, "2b64ae", true).concat(str));
            }
            if (i >= 0) {
                workSource = new WorkSource();
                Method method2 = zzg;
                if (method2 == null || (method = zzh) == null) {
                    add(workSource, i, str);
                } else {
                    try {
                        Object objInvoke = method2.invoke(workSource, new Object[0]);
                        int i2 = zza;
                        if (i != i2) {
                            method.invoke(objInvoke, Integer.valueOf(i), str);
                        }
                        method.invoke(objInvoke, Integer.valueOf(i2), str2);
                    } catch (Exception e2) {
                        Log.w(NPStringFog.decode(new byte[]{103, 13, 22, 93, 49, 87, 69, 16, 7, 83, 55, 76, 89, 14}, "0bd6b8", -166229625L), NPStringFog.decode(new byte[]{54, 8, 2, 1, 89, 86, 67, 18, 12, 67, 84, 64, 16, 15, 4, 13, 21, 80, 11, 7, 10, 13, 80, 87, 67, 4, 15, 2, 88, 86, 67, 18, 11, 17, 90, 70, 4, 14, 67, 52, 90, 65, 8, 53, 12, 22, 71, 80, 6}, "cfcc53", 15688), e2);
                    }
                }
            }
        }
        return workSource;
    }

    public static int get(WorkSource workSource, int i) {
        Method method = zze;
        if (method != null) {
            try {
                Object objInvoke = method.invoke(workSource, Integer.valueOf(i));
                Preconditions.checkNotNull(objInvoke);
                return ((Integer) objInvoke).intValue();
            } catch (Exception e) {
                Log.wtf(NPStringFog.decode(new byte[]{50, 93, 66, 94, 101, 90, 16, 64, 83, 80, 99, 65, 12, 94}, "e20565", true), NPStringFog.decode(new byte[]{108, 15, 3, 83, 94, 93, 25, 21, 13, 17, 83, 75, 74, 8, 5, 95, 18, 90, 85, 0, 15, 84, 18, 76, 81, 19, 13, 68, 85, 80, 25, 54, 13, 67, 89, 107, 86, 20, 16, 82, 87}, "9ab128", -3.047747E8f), e);
            }
        }
        return 0;
    }

    public static String getName(WorkSource workSource, int i) {
        Method method = zzf;
        if (method != null) {
            try {
                return (String) method.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e) {
                Log.wtf(NPStringFog.decode(new byte[]{102, 14, 70, 95, 54, 13, 68, 19, 87, 81, 48, 22, 88, 13}, "1a44eb", true, false), NPStringFog.decode(new byte[]{101, 11, 86, 82, 94, 3, 16, 17, 88, 16, 83, 21, 67, 12, 80, 94, 18, 4, 92, 4, 90, 85, 18, 18, 88, 23, 88, 69, 85, 14, 16, 50, 88, 66, 89, 53, 95, 16, 69, 83, 87}, "0e702f", -1.8627423E9f), e);
            }
        }
        return null;
    }

    public static List<String> getNames(WorkSource workSource) {
        ArrayList arrayList = new ArrayList();
        int size = workSource == null ? 0 : size(workSource);
        if (size != 0) {
            for (int i = 0; i < size; i++) {
                String name = getName(workSource, i);
                if (!Strings.isEmptyOrWhitespace(name)) {
                    Preconditions.checkNotNull(name);
                    arrayList.add(name);
                }
            }
        }
        return arrayList;
    }

    public static boolean hasWorkSourcePermission(Context context) {
        synchronized (WorkSourceUtil.class) {
            try {
                Boolean bool = zzj;
                if (bool != null) {
                    zBooleanValue = bool.booleanValue();
                } else if (context != null) {
                    Boolean boolValueOf = Boolean.valueOf(ContextCompat.checkSelfPermission(context, NPStringFog.decode(new byte[]{81, 8, 1, 65, 89, 11, 84, 72, 21, 86, 68, 15, 89, 21, 22, 90, 89, 12, 30, 51, 53, 119, 119, 54, 117, 57, 33, 118, 96, 43, 115, 35, 58, 96, 98, 35, 100, 53}, "0fe36b", -1.01166266E9f)) == 0);
                    zzj = boolValueOf;
                    zBooleanValue = boolValueOf.booleanValue();
                }
            } finally {
            }
        }
        return zBooleanValue;
    }

    public static boolean isEmpty(WorkSource workSource) {
        Method method = zzi;
        if (method != null) {
            try {
                Object objInvoke = method.invoke(workSource, new Object[0]);
                Preconditions.checkNotNull(objInvoke);
                return ((Boolean) objInvoke).booleanValue();
            } catch (Exception e) {
                Log.e(NPStringFog.decode(new byte[]{101, 93, 67, 13, 49, 92, 71, 64, 82, 3, 55, 71, 91, 94}, "221fb3", 1.04623722E9d), NPStringFog.decode(new byte[]{49, 91, 3, 0, 13, 1, 68, 65, 13, 66, 2, 12, 1, 86, 9, 66, 54, 11, 22, 94, 49, 13, 20, 22, 7, 80, 66, 7, 12, 20, 16, 92, 12, 7, 18, 23}, "d5bbad", -2.13101809E9d), e);
            }
        }
        return size(workSource) == 0;
    }

    public static int size(WorkSource workSource) {
        Method method = zzd;
        if (method != null) {
            try {
                Object objInvoke = method.invoke(workSource, new Object[0]);
                Preconditions.checkNotNull(objInvoke);
                return ((Integer) objInvoke).intValue();
            } catch (Exception e) {
                Log.wtf(NPStringFog.decode(new byte[]{99, 89, 74, 15, 106, 10, 65, 68, 91, 1, 108, 17, 93, 90}, "468d9e", 1.724587595E9d), NPStringFog.decode(new byte[]{51, 11, 5, 6, 89, 84, 70, 17, 11, 68, 84, 66, 21, 12, 3, 10, 21, 83, 10, 4, 9, 1, 21, 69, 14, 23, 11, 17, 82, 89, 70, 50, 11, 22, 94, 98, 9, 16, 22, 7, 80}, "fedd51", -1.0870828E9f), e);
            }
        }
        return 0;
    }
}
