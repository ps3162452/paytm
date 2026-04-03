package com.google.android.gms.common.util;

import android.app.Application;
import android.os.Build;
import android.os.Process;
import android.os.StrictMode;
import com.google.android.gms.common.internal.Preconditions;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import javax.annotation.Nullable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
public class ProcessUtils {

    @Nullable
    private static String zza = null;
    private static int zzb = 0;

    private ProcessUtils() {
    }

    public static String getMyProcessName() throws Throwable {
        BufferedReader bufferedReader;
        String strTrim = null;
        if (zza == null) {
            if (Build.VERSION.SDK_INT >= 28) {
                zza = Application.getProcessName();
            } else {
                int iMyPid = zzb;
                if (iMyPid == 0) {
                    iMyPid = Process.myPid();
                    zzb = iMyPid;
                }
                if (iMyPid > 0) {
                    try {
                        String str = NPStringFog.decode(new byte[]{26, 22, 17, 13, 83, 78}, "5fcb0a", true, false) + iMyPid + NPStringFog.decode(new byte[]{77, 1, 8, 2, 14, 81, 12, 7}, "bbefb8", true, true);
                        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            bufferedReader = new BufferedReader(new FileReader(str));
                            try {
                                String line = bufferedReader.readLine();
                                Preconditions.checkNotNull(line);
                                strTrim = line.trim();
                            } catch (IOException e) {
                            } catch (Throwable th) {
                                th = th;
                                IOUtils.closeQuietly(bufferedReader);
                                throw th;
                            }
                        } finally {
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                        }
                    } catch (IOException e2) {
                        bufferedReader = null;
                    } catch (Throwable th2) {
                        th = th2;
                        bufferedReader = null;
                    }
                    IOUtils.closeQuietly(bufferedReader);
                }
                zza = strTrim;
            }
        }
        return zza;
    }
}
