package org.apache.commons.logging;

import java.lang.reflect.Constructor;
import java.util.Hashtable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class LogSource {
    protected static boolean jdk14IsAvailable;
    protected static boolean log4jIsAvailable;
    protected static Constructor logImplctor;
    protected static Hashtable logs;

    LogSource() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 70, 65, 91, 23}, "524967", 12391));
    }

    public static Log getInstance(Class cls) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 22, 65, 4, 20}, "eb4f50", 7.320706E8f));
    }

    public static Log getInstance(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 69, 16, 80, 16}, "11e21f", 1614264055L));
    }

    public static String[] getLogNames() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 69, 65, 1, 24}, "c14c91", -1.472446E9f));
    }

    public static Log makeNewLogInstance(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 67, 64, 86, 18}, "575439", 21924));
    }

    public static void setLogImplementation(Class cls) throws LinkageError, NoSuchMethodException, SecurityException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 77, 71, 87, 71}, "7925f3", -1.6605553E9f));
    }

    public static void setLogImplementation(String str) throws LinkageError, NoSuchMethodException, SecurityException, ClassNotFoundException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 18, 71, 4, 24}, "9f2f9d", true));
    }
}
