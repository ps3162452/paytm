package com.google.android.gms.dynamite;

import dalvik.system.PathClassLoader;
import n.NPStringFog;

/* JADX INFO: loaded from: classes55.dex */
final class zzc extends PathClassLoader {
    zzc(String str, ClassLoader classLoader) {
        super(str, classLoader);
    }

    @Override // java.lang.ClassLoader
    protected final Class loadClass(String str, boolean z) throws ClassNotFoundException {
        if (!str.startsWith(NPStringFog.decode(new byte[]{9, 87, 20, 84, 25}, "c6b57c", true, true)) && !str.startsWith(NPStringFog.decode(new byte[]{86, 11, 6, 22, 91, 15, 83, 75}, "7ebd4f", 3.0200411E7d))) {
            try {
                return findClass(str);
            } catch (ClassNotFoundException e) {
            }
        }
        return super.loadClass(str, z);
    }
}
