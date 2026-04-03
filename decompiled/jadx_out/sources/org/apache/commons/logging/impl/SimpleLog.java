package org.apache.commons.logging.impl;

import java.io.Serializable;
import java.text.DateFormat;
import java.util.Properties;
import n.NPStringFog;
import org.apache.commons.logging.Log;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class SimpleLog implements Log, Serializable {
    public static final int LOG_LEVEL_ALL = 0;
    public static final int LOG_LEVEL_DEBUG = 2;
    public static final int LOG_LEVEL_ERROR = 5;
    public static final int LOG_LEVEL_FATAL = 6;
    public static final int LOG_LEVEL_INFO = 3;
    public static final int LOG_LEVEL_OFF = 7;
    public static final int LOG_LEVEL_TRACE = 1;
    public static final int LOG_LEVEL_WARN = 4;
    protected static DateFormat dateFormatter;
    protected static String dateTimeFormat;
    protected static boolean showDateTime;
    protected static boolean showLogName;
    protected static boolean showShortName;
    protected int currentLogLevel;
    protected String logName;
    protected static final String DEFAULT_DATE_TIME_FORMAT = NPStringFog.decode(new byte[]{75, 31, 77, 74, 29, 46, 127, 73, 80, 87, 18, 43, 122, 92, 89, 94, 8, 16, 65, 92, 103, 96, 97, 67, 72, 28, 78}, "2f432c", true, true);
    protected static final String systemPrefix = NPStringFog.decode(new byte[]{91, 70, 85, 75, 89, 20, 85, 87, 90, 0, 22, 7, 91, 89, 95, 10, 86, 23, 26, 88, 93, 2, 95, 13, 90, 83, 28, 22, 81, 9, 68, 88, 87, 9, 87, 3, 26}, "442e8d", false, false);
    protected static final Properties simpleLogProps = null;

    public SimpleLog(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 68, 67, 90, 24}, "b0689d", false, true));
    }

    @Override // org.apache.commons.logging.Log
    public final void debug(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 66, 23, 90, 23}, "86b86f", 29534));
    }

    @Override // org.apache.commons.logging.Log
    public final void debug(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 76, 70, 82, 23}, "083067", 1701610472L));
    }

    @Override // org.apache.commons.logging.Log
    public final void error(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 67, 65, 85, 19}, "97472f", false));
    }

    @Override // org.apache.commons.logging.Log
    public final void error(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 70, 69, 3, 71}, "220af8", false, true));
    }

    @Override // org.apache.commons.logging.Log
    public final void fatal(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 77, 66, 84, 24}, "29769f", -700818719L));
    }

    @Override // org.apache.commons.logging.Log
    public final void fatal(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 67, 68, 1, 66}, "c71ccf", false, false));
    }

    public int getLevel() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 16, 19, 90, 69}, "adf8d5", 3062));
    }

    @Override // org.apache.commons.logging.Log
    public final void info(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 67, 23, 1, 20}, "47bc5c", 2.6651986E7d));
    }

    @Override // org.apache.commons.logging.Log
    public final void info(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 71, 67, 84, 20}, "f3665d", false, false));
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isDebugEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 70, 17, 87, 68}, "f2d5e5", false));
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isErrorEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 18, 65, 91, 18}, "6f493c", 2.136732667E9d));
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isFatalEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 21, 20, 1, 68}, "6aace3", 1.1068792E9f));
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isInfoEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 68, 65, 83, 16}, "f0411b", -3.27456304E8d));
    }

    protected boolean isLevelEnabled(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 23, 19, 85, 17}, "5cf70d", true));
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isTraceEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 23, 64, 3, 17}, "fc5a01", 1.3915369E9f));
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isWarnEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 68, 71, 86, 19}, "f0242e", 26976));
    }

    protected void log(int i, Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 65, 69, 84, 16}, "65061c", 1661311362L));
    }

    public void setLevel(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 70, 76, 83, 69}, "6291d8", -1.5315447E9f));
    }

    @Override // org.apache.commons.logging.Log
    public final void trace(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 70, 68, 91, 16}, "921917", -14183));
    }

    @Override // org.apache.commons.logging.Log
    public final void trace(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 64, 69, 81, 25}, "240388", 18076));
    }

    @Override // org.apache.commons.logging.Log
    public final void warn(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 68, 64, 87, 69}, "c055d0", -706281108L));
    }

    @Override // org.apache.commons.logging.Log
    public final void warn(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 23, 67, 80, 24}, "ec6294", -18039));
    }

    protected void write(StringBuffer stringBuffer) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 68, 65, 87, 24}, "d0459f", 280247126L));
    }
}
