package com.airbnb.lottie.utils;

import android.util.Log;
import com.airbnb.lottie.L;
import com.airbnb.lottie.LottieLogger;
import java.util.HashSet;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes64.dex */
public class LogcatLogger implements LottieLogger {
    private static final Set<String> loggedMessages = new HashSet();

    @Override // com.airbnb.lottie.LottieLogger
    public void debug(String str) {
        debug(str, null);
    }

    @Override // com.airbnb.lottie.LottieLogger
    public void debug(String str, Throwable th) {
        if (L.DBG) {
            Log.d(NPStringFog.decode(new byte[]{45, 120, 50, 54, 45, 113}, "a7fbd4", 23999), str, th);
        }
    }

    @Override // com.airbnb.lottie.LottieLogger
    public void error(String str, Throwable th) {
        if (L.DBG) {
            Log.d(NPStringFog.decode(new byte[]{124, 124, 53, 97, 126, 33}, "03a57d", 3.92410574E8d), str, th);
        }
    }

    @Override // com.airbnb.lottie.LottieLogger
    public void warning(String str) {
        warning(str, null);
    }

    @Override // com.airbnb.lottie.LottieLogger
    public void warning(String str, Throwable th) {
        if (loggedMessages.contains(str)) {
            return;
        }
        Log.w(NPStringFog.decode(new byte[]{122, 118, 98, 103, 120, 116}, "696311", -1036817326L), str, th);
        loggedMessages.add(str);
    }
}
