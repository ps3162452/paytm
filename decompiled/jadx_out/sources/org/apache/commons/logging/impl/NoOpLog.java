package org.apache.commons.logging.impl;

import java.io.Serializable;
import n.NPStringFog;
import org.apache.commons.logging.Log;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class NoOpLog implements Log, Serializable {
    public NoOpLog() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 21, 70, 3, 68}, "1a3ae1", -1689));
    }

    public NoOpLog(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 22, 65, 86, 21}, "bb4443", true, false));
    }

    @Override // org.apache.commons.logging.Log
    public void debug(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 71, 68, 90, 69}, "2318df", -22178));
    }

    @Override // org.apache.commons.logging.Log
    public void debug(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 64, 65, 1, 69}, "344cd6", false, true));
    }

    @Override // org.apache.commons.logging.Log
    public void error(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 76, 66, 82, 18}, "f8703f", -19328));
    }

    @Override // org.apache.commons.logging.Log
    public void error(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 65, 22, 87, 20}, "25c554", -6007));
    }

    @Override // org.apache.commons.logging.Log
    public void fatal(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 70, 64, 87, 71}, "1255f4", -1.3963195E9f));
    }

    @Override // org.apache.commons.logging.Log
    public void fatal(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 67, 69, 81, 24}, "07039e", 16576));
    }

    @Override // org.apache.commons.logging.Log
    public void info(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 69, 17, 91, 19}, "41d92e", 1408156536L));
    }

    @Override // org.apache.commons.logging.Log
    public void info(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 70, 77, 86, 66}, "5284c6", false, false));
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isDebugEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 17, 76, 87, 18}, "1e9532", 1.06743936E9f));
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isErrorEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 65, 17, 7, 69}, "95dede", 859728966L));
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isFatalEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 77, 19, 80, 67}, "e9f2bd", -1915536768L));
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isInfoEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 68, 66, 90, 67}, "a078ba", 1933532171L));
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isTraceEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 18, 64, 1, 68}, "4f5ced", -1.75868177E8d));
    }

    @Override // org.apache.commons.logging.Log
    public final boolean isWarnEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 68, 20, 81, 18}, "20a331", 1.706710436E9d));
    }

    @Override // org.apache.commons.logging.Log
    public void trace(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 16, 69, 7, 18}, "ed0e30", false));
    }

    @Override // org.apache.commons.logging.Log
    public void trace(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 66, 20, 90, 17}, "e6a80f", -4.65632338E8d));
    }

    @Override // org.apache.commons.logging.Log
    public void warn(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 21, 69, 0, 21}, "ba0b42", 32241));
    }

    @Override // org.apache.commons.logging.Log
    public void warn(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 70, 16, 3, 17}, "d2ea00", -31855));
    }
}
