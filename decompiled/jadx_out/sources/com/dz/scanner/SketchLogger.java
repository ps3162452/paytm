package com.dz.scanner;

import android.content.Context;
import android.content.Intent;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

/* JADX INFO: loaded from: classes73.dex */
public class SketchLogger {
    private static volatile boolean isRunning;
    private static Thread loggerThread = new Thread() { // from class: com.dz.scanner.SketchLogger.1
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            SketchLogger.isRunning = true;
            try {
                Runtime.getRuntime().exec("logcat -c");
                Throwable th = null;
                try {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("logcat").getInputStream()));
                    try {
                        String line = bufferedReader.readLine();
                        do {
                            SketchLogger.broadcastLog(line);
                            if (!SketchLogger.isRunning) {
                                break;
                            } else {
                                line = bufferedReader.readLine();
                            }
                        } while (line != null);
                        if (SketchLogger.isRunning) {
                            SketchLogger.broadcastLog("Logger got killed. Restarting.");
                            SketchLogger.startLogging();
                        } else {
                            SketchLogger.broadcastLog("Logger stopped.");
                        }
                    } finally {
                        bufferedReader.close();
                    }
                } catch (Throwable th2) {
                    if (0 == 0) {
                        throw th2;
                    }
                    if (null == th2) {
                        throw null;
                    }
                    th.addSuppressed(th2);
                    throw null;
                }
            } catch (IOException e) {
                SketchLogger.broadcastLog(e.getMessage());
            }
        }
    };

    public static void broadcastLog(String str) {
        Context context = SketchApplication.getContext();
        Intent intent = new Intent();
        intent.setAction("pro.sketchware.ACTION_NEW_DEBUG_LOG");
        intent.putExtra("log", str);
        intent.putExtra("packageName", context.getPackageName());
        context.sendBroadcast(intent);
    }

    public static void startLogging() {
        synchronized (SketchLogger.class) {
            try {
                if (isRunning) {
                    broadcastLog("Logger already running");
                } else {
                    loggerThread.start();
                }
            } finally {
            }
        }
    }

    public static void stopLogging() {
        synchronized (SketchLogger.class) {
            try {
                if (isRunning) {
                    isRunning = false;
                    broadcastLog("Stopping logger by user request.");
                } else {
                    broadcastLog("Logger not running");
                }
            } finally {
            }
        }
    }
}
