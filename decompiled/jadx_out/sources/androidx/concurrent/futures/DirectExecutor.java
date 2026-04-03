package androidx.concurrent.futures;

import java.util.concurrent.Executor;
import n.NPStringFog;

/* JADX INFO: loaded from: classes8.dex */
public enum DirectExecutor implements Executor {
    INSTANCE;

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public String toString() {
        return NPStringFog.decode(new byte[]{34, 90, 17, 92, 86, 77, 35, 75, 6, 90, 64, 77, 9, 65}, "f3c959", 6661);
    }
}
