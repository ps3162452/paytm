package org.apache.commons.logging;

import java.util.Hashtable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public abstract class LogFactory {
    public static final String DIAGNOSTICS_DEST_PROPERTY = NPStringFog.decode(new byte[]{88, 22, 94, 72, 85, 69, 86, 7, 81, 3, 26, 86, 88, 9, 84, 9, 90, 70, 25, 8, 86, 1, 83, 92, 89, 3, 23, 2, 93, 84, 80, 10, 86, 21, 64, 92, 84, 23, 23, 2, 81, 70, 67}, "7d9f45", -1.234958985E9d);
    public static final String FACTORY_DEFAULT = NPStringFog.decode(new byte[]{93, 22, 84, 77, 87, 64, 83, 7, 91, 6, 24, 83, 93, 9, 94, 12, 88, 67, 28, 8, 92, 4, 81, 89, 92, 3, 29, 10, 91, 64, 94, 74, 127, 12, 81, 118, 83, 7, 71, 12, 68, 73, 123, 9, 67, 15}, "2d3c60", -14386);
    public static final String FACTORY_PROPERTIES = NPStringFog.decode(new byte[]{80, 93, 84, 95, 12, 87, 64, 31, 85, 93, 4, 94, 90, 92, 94, 28, 19, 75, 92, 66, 92, 64, 23, 80, 86, 65}, "3292c9", -27093);
    public static final String FACTORY_PROPERTY = NPStringFog.decode(new byte[]{88, 19, 3, 23, 3, 72, 86, 2, 12, 92, 76, 91, 88, 12, 9, 86, 12, 75, 25, 13, 11, 94, 5, 81, 89, 6, 74, 117, 13, 95, 113, 0, 7, 77, 13, 74, 78}, "7ad9b8", 27254);
    public static final String HASHTABLE_IMPLEMENTATION_PROPERTY = NPStringFog.decode(new byte[]{87, 16, 6, 22, 81, 72, 89, 1, 9, 93, 30, 91, 87, 15, 12, 87, 94, 75, 22, 14, 14, 95, 87, 81, 86, 5, 79, 116, 95, 95, 126, 3, 2, 76, 95, 74, 65, 76, 41, 89, 67, 80, 76, 3, 3, 84, 85, 113, 85, 18, 13}, "8ba808", -1511574692L);
    public static final String PRIORITY_KEY = NPStringFog.decode(new byte[]{17, 74, 89, 9, 74, 89, 21, 65}, "a80f80", -656911553L);
    protected static final String SERVICE_ID = NPStringFog.decode(new byte[]{43, 117, 49, 116, 24, 42, 40, 118, 74, 70, 80, 17, 16, 89, 6, 80, 70, 76, 9, 66, 2, 27, 84, 19, 7, 83, 13, 80, 27, 0, 9, 93, 8, 90, 91, 16, 72, 92, 10, 82, 82, 10, 8, 87, 75, 121, 90, 4, 32, 81, 6, 65, 90, 17, 31}, "f0e55c", 1822815158L);
    public static final String TCCL_KEY = NPStringFog.decode(new byte[]{23, 17, 85, 58, 18, 82, 1, 14}, "bb0ef1", -397446459L);
    protected static Hashtable factories;
    protected static LogFactory nullClassLoaderFactory;

    protected LogFactory() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 65, 16, 86, 17}, "a5e405", -1.5760589E9f));
    }

    protected static Object createFactory(String str, ClassLoader classLoader) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 68, 23, 84, 67}, "b0b6bb", false, true));
    }

    protected static ClassLoader directGetContextClassLoader() throws LogConfigurationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 22, 67, 1, 24}, "0b6c9a", true));
    }

    protected static ClassLoader getClassLoader(Class cls) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 67, 77, 4, 71}, "c78ff8", -3.73056872E8d));
    }

    protected static ClassLoader getContextClassLoader() throws LogConfigurationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 68, 66, 80, 22}, "90727c", 9.7245504E8f));
    }

    public static LogFactory getFactory() throws LogConfigurationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 71, 68, 83, 17}, "d31106", true, true));
    }

    public static Log getLog(Class cls) throws LogConfigurationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 17, 76, 4, 19}, "ee9f26", -1.801915312E9d));
    }

    public static Log getLog(String str) throws LogConfigurationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 18, 23, 81, 19}, "cfb329", -3428));
    }

    protected static boolean isDiagnosticsEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 18, 19, 90, 64}, "dff8ad", 2109482909L));
    }

    protected static final void logRawDiagnostic(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 68, 77, 0, 66}, "c08bc2", -4.2005661E8d));
    }

    protected static LogFactory newFactory(String str, ClassLoader classLoader) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 21, 66, 0, 71}, "aa7bff", -26800));
    }

    protected static LogFactory newFactory(String str, ClassLoader classLoader, ClassLoader classLoader2) throws LogConfigurationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 18, 20, 6, 17}, "1fad0e", 1.2549211E9f));
    }

    public static String objectId(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 77, 68, 84, 69}, "2916d2", 12513));
    }

    public static void release(ClassLoader classLoader) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 66, 77, 91, 69}, "2689d2", -1528938289L));
    }

    public static void releaseAll() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 17, 65, 84, 17}, "ce4609", 5.75399823E8d));
    }

    public abstract Object getAttribute(String str);

    public abstract String[] getAttributeNames();

    public abstract Log getInstance(Class cls) throws LogConfigurationException;

    public abstract Log getInstance(String str) throws LogConfigurationException;

    public abstract void release();

    public abstract void removeAttribute(String str);

    public abstract void setAttribute(String str, Object obj);
}
