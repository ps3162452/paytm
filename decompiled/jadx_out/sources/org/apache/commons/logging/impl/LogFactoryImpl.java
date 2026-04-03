package org.apache.commons.logging.impl;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Hashtable;
import n.NPStringFog;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogConfigurationException;
import org.apache.commons.logging.LogFactory;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class LogFactoryImpl extends LogFactory {
    public static final String ALLOW_FLAWED_CONTEXT_PROPERTY = NPStringFog.decode(new byte[]{87, 23, 4, 22, 5, 19, 89, 6, 11, 93, 74, 0, 87, 8, 14, 87, 10, 16, 22, 9, 12, 95, 3, 10, 86, 2, 77, 116, 11, 4, 22, 4, 15, 84, 11, 20, 126, 9, 2, 79, 1, 7, 123, 10, 13, 76, 1, 27, 76}, "8ec8dc", -1.4321352E9f);
    public static final String ALLOW_FLAWED_DISCOVERY_PROPERTY = NPStringFog.decode(new byte[]{86, 66, 87, 26, 80, 20, 88, 83, 88, 81, 31, 7, 86, 93, 93, 91, 95, 23, 23, 92, 95, 83, 86, 13, 87, 87, 30, 120, 94, 3, 23, 81, 92, 88, 94, 19, 127, 92, 81, 67, 84, 0, 125, 89, 67, 87, 94, 18, 92, 66, 73}, "90041d", -9.940848E8f);
    public static final String ALLOW_FLAWED_HIERARCHY_PROPERTY = NPStringFog.decode(new byte[]{9, 65, 94, 76, 5, 71, 7, 80, 81, 7, 74, 84, 9, 94, 84, 13, 10, 68, 72, 95, 86, 5, 3, 94, 8, 84, 23, 46, 11, 80, 72, 82, 85, 14, 11, 64, 32, 95, 88, 21, 1, 83, 46, 90, 92, 16, 5, 69, 5, 91, 64}, "f39bd7", 26920);
    public static final String LOG_PROPERTY = NPStringFog.decode(new byte[]{14, 16, 87, 24, 86, 65, 0, 1, 88, 83, 25, 82, 14, 15, 93, 89, 89, 66, 79, 14, 95, 81, 80, 88, 15, 5, 30, 122, 88, 86}, "ab0671", 2.6350965E8f);
    protected static final String LOG_PROPERTY_OLD = NPStringFog.decode(new byte[]{95, 66, 2, 74, 88, 64, 81, 83, 13, 1, 23, 83, 95, 93, 8, 11, 87, 67, 30, 92, 10, 3, 94, 89, 94, 87, 75, 8, 86, 87}, "00ed90", true);
    protected Hashtable attributes;
    protected Hashtable instances;
    protected Constructor logConstructor;
    protected Method logMethod;
    protected Class[] logConstructorSignature = null;
    protected Class[] logMethodSignature = null;

    public LogFactoryImpl() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 66, 66, 86, 22}, "d67470", false));
    }

    protected static ClassLoader getClassLoader(Class cls) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 64, 17, 85, 66}, "a4d7c3", -1.9624552E9f));
    }

    protected static ClassLoader getContextClassLoader() throws LogConfigurationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 67, 68, 80, 67}, "1712b7", true, false));
    }

    protected static boolean isDiagnosticsEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 16, 77, 82, 19}, "6d8027", -1.02498464E9f));
    }

    @Override // org.apache.commons.logging.LogFactory
    public Object getAttribute(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 65, 76, 7, 64}, "e59ea6", -33282508L));
    }

    @Override // org.apache.commons.logging.LogFactory
    public String[] getAttributeNames() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 77, 64, 87, 66}, "3955c9", -216708873L));
    }

    @Override // org.apache.commons.logging.LogFactory
    public Log getInstance(Class cls) throws LogConfigurationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 71, 66, 86, 18}, "73743f", 8337));
    }

    @Override // org.apache.commons.logging.LogFactory
    public Log getInstance(String str) throws LogConfigurationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 22, 22, 81, 71}, "6bc3fa", true, true));
    }

    @Deprecated
    protected String getLogClassName() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 67, 71, 1, 66}, "872cc5", false, false));
    }

    @Deprecated
    protected Constructor getLogConstructor() throws LogConfigurationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 21, 16, 4, 68}, "daefe5", -1.45040709E9d));
    }

    @Deprecated
    protected boolean isJdk13LumberjackAvailable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 68, 76, 91, 21}, "c0994e", -1.1082134E9f));
    }

    @Deprecated
    protected boolean isJdk14Available() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 68, 70, 7, 68}, "203eea", true, false));
    }

    @Deprecated
    protected boolean isLog4JAvailable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 17, 22, 1, 19}, "4ecc26", false));
    }

    protected void logDiagnostic(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 22, 65, 0, 69}, "3b4bd7", 1.1488661E9d));
    }

    protected Log newInstance(String str) throws LogConfigurationException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 67, 66, 84, 19}, "27762c", 8.629008E8f));
    }

    @Override // org.apache.commons.logging.LogFactory
    public void release() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 66, 76, 7, 18}, "c69e3a", 1737745714L));
    }

    @Override // org.apache.commons.logging.LogFactory
    public void removeAttribute(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 22, 66, 85, 20}, "fb7756", -7.77880318E8d));
    }

    @Override // org.apache.commons.logging.LogFactory
    public void setAttribute(String str, Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 70, 17, 4, 16}, "52df1c", -24751));
    }
}
