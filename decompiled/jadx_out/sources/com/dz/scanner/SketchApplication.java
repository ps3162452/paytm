package com.dz.scanner;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import android.util.Log;
import java.lang.Thread;

/* JADX INFO: loaded from: classes73.dex */
public class SketchApplication extends Application {
    private static Context mApplicationContext;

    public static Context getContext() {
        return mApplicationContext;
    }

    @Override // android.app.Application
    public void onCreate() {
        mApplicationContext = getApplicationContext();
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler(this) { // from class: com.dz.scanner.SketchApplication.1
            final SketchApplication this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                Intent intent = new Intent(this.this$0.getApplicationContext(), (Class<?>) DebugActivity.class);
                intent.setFlags(268468224);
                intent.putExtra("error", Log.getStackTraceString(th));
                this.this$0.startActivity(intent);
                SketchLogger.broadcastLog(Log.getStackTraceString(th));
                Process.killProcess(Process.myPid());
                System.exit(1);
            }
        });
        SketchLogger.startLogging();
        super.onCreate();
    }
}
