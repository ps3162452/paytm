package com.google.android.gms.dynamite;

import android.os.Looper;
import android.util.Log;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public final class zzb {
    private static ClassLoader zza = null;
    private static Thread zzb = null;

    public static ClassLoader zza() {
        ClassLoader classLoader;
        Thread thread;
        ClassLoader contextClassLoader;
        SecurityException securityException;
        Thread thread2;
        ThreadGroup threadGroup;
        Thread thread3;
        zza zzaVar;
        synchronized (zzb.class) {
            try {
                if (zza == null) {
                    Thread thread4 = zzb;
                    if (thread4 == null) {
                        ThreadGroup threadGroup2 = Looper.getMainLooper().getThread().getThreadGroup();
                        if (threadGroup2 == null) {
                            thread2 = null;
                        } else {
                            synchronized (Void.class) {
                                try {
                                    try {
                                        int iActiveGroupCount = threadGroup2.activeGroupCount();
                                        ThreadGroup[] threadGroupArr = new ThreadGroup[iActiveGroupCount];
                                        threadGroup2.enumerate(threadGroupArr);
                                        int i = 0;
                                        while (true) {
                                            if (i >= iActiveGroupCount) {
                                                threadGroup = null;
                                                break;
                                            }
                                            threadGroup = threadGroupArr[i];
                                            if (NPStringFog.decode(new byte[]{93, 29, 15, 86, 85, 94, 77, 1, 45, 88, 89, 83, 92, 22}, "9da787", -1.707002198E9d).equals(threadGroup.getName())) {
                                                break;
                                            }
                                            i++;
                                        }
                                        ThreadGroup threadGroup3 = threadGroup == null ? new ThreadGroup(threadGroup2, NPStringFog.decode(new byte[]{81, 65, 88, 82, 88, 93, 65, 93, 122, 92, 84, 80, 80, 74}, "586354", -1928821799L)) : threadGroup;
                                        int iActiveCount = threadGroup3.activeCount();
                                        Thread[] threadArr = new Thread[iActiveCount];
                                        threadGroup3.enumerate(threadArr);
                                        int i2 = 0;
                                        while (true) {
                                            if (i2 >= iActiveCount) {
                                                thread3 = null;
                                                break;
                                            }
                                            thread3 = threadArr[i2];
                                            if (NPStringFog.decode(new byte[]{127, 91, 74, 34, 64, 92, 89, 91, 80, 18, 92}, "869f92", true).equals(thread3.getName())) {
                                                break;
                                            }
                                            i2++;
                                        }
                                        if (thread3 == null) {
                                            try {
                                                zzaVar = new zza(threadGroup3, NPStringFog.decode(new byte[]{35, 84, 75, 125, 77, 90, 5, 84, 81, 77, 81}, "d98944", 1.5576164E9f));
                                            } catch (SecurityException e) {
                                                securityException = e;
                                                thread2 = thread3;
                                            }
                                            try {
                                                zzaVar.setContextClassLoader(null);
                                                zzaVar.start();
                                                thread2 = zzaVar;
                                            } catch (SecurityException e2) {
                                                thread2 = zzaVar;
                                                securityException = e2;
                                                Log.w(NPStringFog.decode(new byte[]{34, 64, 91, 84, 15, 8, 18, 92, 121, 90, 3, 5, 3, 75, 99, 7, 33, 45}, "f955ba", false), NPStringFog.decode(new byte[]{34, 4, 91, 13, 80, 93, 68, 17, 93, 65, 80, 87, 17, 8, 87, 19, 84, 77, 1, 69, 70, 9, 71, 92, 5, 1, 29, 21, 93, 75, 1, 4, 86, 6, 71, 86, 17, 21, 18}, "de2a59", false, true) + securityException.getMessage());
                                            }
                                        } else {
                                            thread2 = thread3;
                                        }
                                    } finally {
                                    }
                                } catch (SecurityException e3) {
                                    securityException = e3;
                                    thread2 = null;
                                }
                            }
                        }
                        zzb = thread2;
                        if (thread2 == null) {
                            contextClassLoader = null;
                            zza = contextClassLoader;
                        } else {
                            thread = thread2;
                        }
                    } else {
                        thread = thread4;
                    }
                    synchronized (thread) {
                        try {
                            contextClassLoader = zzb.getContextClassLoader();
                        } catch (SecurityException e4) {
                            Log.w(NPStringFog.decode(new byte[]{118, 64, 8, 3, 92, 80, 70, 92, 42, 13, 80, 93, 87, 75, 48, 80, 114, 117}, "29fb19", false), NPStringFog.decode(new byte[]{34, 7, 15, 88, 85, 84, 68, 18, 9, 20, 87, 85, 16, 70, 18, 92, 66, 85, 5, 2, 70, 87, 95, 94, 16, 3, 30, 64, 16, 83, 8, 7, 21, 71, 92, 95, 5, 2, 3, 70, 16}, "dff400", 1.1495949E9f) + e4.getMessage());
                            contextClassLoader = null;
                        }
                    }
                    zza = contextClassLoader;
                }
                classLoader = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return classLoader;
    }
}
