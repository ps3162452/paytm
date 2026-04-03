package org.apache.commons.logging.impl;

import java.io.Serializable;
import java.util.logging.Level;
import java.util.logging.Logger;
import n.NPStringFog;
import org.apache.commons.logging.Log;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class Jdk14Logger implements Log, Serializable {
    protected static final Level dummyLevel = null;
    protected transient Logger logger;
    protected String name;

    public Jdk14Logger(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 76, 66, 84, 17}, "b8760f", -12471));
    }

    @Override // org.apache.commons.logging.Log
    public void debug(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 76, 64, 6, 67}, "385dbd", false));
    }

    @Override // org.apache.commons.logging.Log
    public void debug(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 23, 71, 80, 18}, "4c223a", false));
    }

    @Override // org.apache.commons.logging.Log
    public void error(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 65, 66, 82, 67}, "c570b7", 21429));
    }

    @Override // org.apache.commons.logging.Log
    public void error(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 17, 69, 90, 66}, "4e08c5", -1.1051523E9f));
    }

    @Override // org.apache.commons.logging.Log
    public void fatal(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 77, 68, 87, 21}, "39154a", -9.13948096E8d));
    }

    @Override // org.apache.commons.logging.Log
    public void fatal(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 68, 17, 3, 25}, "20da8e", 1.288263683E9d));
    }

    public Logger getLogger() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 76, 71, 84, 69}, "c826db", -6296));
    }

    @Override // org.apache.commons.logging.Log
    public void info(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 64, 70, 84, 71}, "1436fd", -645929493L));
    }

    @Override // org.apache.commons.logging.Log
    public void info(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 66, 17, 81, 16}, "86d312", -19780));
    }

    @Override // org.apache.commons.logging.Log
    public boolean isDebugEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 67, 77, 90, 21}, "57884f", false));
    }

    @Override // org.apache.commons.logging.Log
    public boolean isErrorEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 16, 68, 91, 23}, "2d1967", -19749));
    }

    @Override // org.apache.commons.logging.Log
    public boolean isFatalEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 17, 17, 90, 18}, "ced832", 25826));
    }

    @Override // org.apache.commons.logging.Log
    public boolean isInfoEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 16, 22, 7, 20}, "4dce5b", -799197624L));
    }

    @Override // org.apache.commons.logging.Log
    public boolean isTraceEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 69, 17, 1, 19}, "a1dc25", -1.392195329E9d));
    }

    @Override // org.apache.commons.logging.Log
    public boolean isWarnEnabled() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 69, 19, 1, 16}, "01fc1d", -28238));
    }

    @Override // org.apache.commons.logging.Log
    public void trace(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 77, 64, 4, 19}, "695f20", -4.8590067E8f));
    }

    @Override // org.apache.commons.logging.Log
    public void trace(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 71, 65, 0, 22}, "934b76", -2.0199113E9f));
    }

    @Override // org.apache.commons.logging.Log
    public void warn(Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 17, 77, 83, 18}, "ce813d", -19269));
    }

    @Override // org.apache.commons.logging.Log
    public void warn(Object obj, Throwable th) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 18, 23, 81, 20}, "efb350", true, true));
    }
}
