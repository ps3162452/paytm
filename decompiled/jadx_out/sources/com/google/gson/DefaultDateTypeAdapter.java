package com.google.gson;

import com.google.gson.internal.JavaVersion;
import com.google.gson.internal.PreJava9DateFormatProvider;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import n.NPStringFog;

/* JADX INFO: loaded from: classes61.dex */
final class DefaultDateTypeAdapter extends TypeAdapter<Date> {
    private static final String SIMPLE_NAME = NPStringFog.decode(new byte[]{112, 85, 85, 0, 77, 95, 64, 116, 82, 21, 93, 103, 77, 64, 86, 32, 92, 82, 68, 68, 86, 19}, "403a83", 4.1167178E8f);
    private final List<DateFormat> dateFormats;
    private final Class<? extends Date> dateType;

    public DefaultDateTypeAdapter(int i, int i2) {
        this(Date.class, i, i2);
    }

    DefaultDateTypeAdapter(Class<? extends Date> cls) {
        this.dateFormats = new ArrayList();
        this.dateType = verifyDateType(cls);
        this.dateFormats.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.dateFormats.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (JavaVersion.isJava9OrLater()) {
            this.dateFormats.add(PreJava9DateFormatProvider.getUSDateTimeFormat(2, 2));
        }
    }

    DefaultDateTypeAdapter(Class<? extends Date> cls, int i) {
        this.dateFormats = new ArrayList();
        this.dateType = verifyDateType(cls);
        this.dateFormats.add(DateFormat.getDateInstance(i, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.dateFormats.add(DateFormat.getDateInstance(i));
        }
        if (JavaVersion.isJava9OrLater()) {
            this.dateFormats.add(PreJava9DateFormatProvider.getUSDateFormat(i));
        }
    }

    public DefaultDateTypeAdapter(Class<? extends Date> cls, int i, int i2) {
        this.dateFormats = new ArrayList();
        this.dateType = verifyDateType(cls);
        this.dateFormats.add(DateFormat.getDateTimeInstance(i, i2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.dateFormats.add(DateFormat.getDateTimeInstance(i, i2));
        }
        if (JavaVersion.isJava9OrLater()) {
            this.dateFormats.add(PreJava9DateFormatProvider.getUSDateTimeFormat(i, i2));
        }
    }

    DefaultDateTypeAdapter(Class<? extends Date> cls, String str) {
        this.dateFormats = new ArrayList();
        this.dateType = verifyDateType(cls);
        this.dateFormats.add(new SimpleDateFormat(str, Locale.US));
        if (Locale.getDefault().equals(Locale.US)) {
            return;
        }
        this.dateFormats.add(new SimpleDateFormat(str));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
    
        r0 = com.google.gson.internal.bind.util.ISO8601Utils.parse(r4, new java.text.ParsePosition(0));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.Date deserializeToDate(java.lang.String r4) {
        /*
            r3 = this;
            java.util.List<java.text.DateFormat> r1 = r3.dateFormats
            monitor-enter(r1)
            java.util.List<java.text.DateFormat> r0 = r3.dateFormats     // Catch: java.lang.Throwable -> L27
            java.util.Iterator r2 = r0.iterator()     // Catch: java.lang.Throwable -> L27
        L9:
            boolean r0 = r2.hasNext()     // Catch: java.lang.Throwable -> L27
            if (r0 == 0) goto L1b
            java.lang.Object r0 = r2.next()     // Catch: java.lang.Throwable -> L27
            java.text.DateFormat r0 = (java.text.DateFormat) r0     // Catch: java.lang.Throwable -> L27
            java.util.Date r0 = r0.parse(r4)     // Catch: java.lang.Throwable -> L27 java.text.ParseException -> L31
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L27
        L1a:
            return r0
        L1b:
            java.text.ParsePosition r0 = new java.text.ParsePosition     // Catch: java.lang.Throwable -> L27 java.text.ParseException -> L2a
            r2 = 0
            r0.<init>(r2)     // Catch: java.lang.Throwable -> L27 java.text.ParseException -> L2a
            java.util.Date r0 = com.google.gson.internal.bind.util.ISO8601Utils.parse(r4, r0)     // Catch: java.lang.Throwable -> L27 java.text.ParseException -> L2a
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L27
            goto L1a
        L27:
            r0 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L27
            throw r0
        L2a:
            r0 = move-exception
            com.google.gson.JsonSyntaxException r2 = new com.google.gson.JsonSyntaxException     // Catch: java.lang.Throwable -> L27
            r2.<init>(r4, r0)     // Catch: java.lang.Throwable -> L27
            throw r2     // Catch: java.lang.Throwable -> L27
        L31:
            r0 = move-exception
            goto L9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.DefaultDateTypeAdapter.deserializeToDate(java.lang.String):java.util.Date");
    }

    private static Class<? extends Date> verifyDateType(Class<? extends Date> cls) {
        if (cls == Date.class || cls == java.sql.Date.class || cls == Timestamp.class) {
            return cls;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{33, 86, 64, 6, 18, 22, 28, 71, 81, 67, 95, 23, 22, 67, 20, 1, 87, 66, 10, 89, 81, 67, 93, 4, 69}, "e74c2b", 1782505074L) + Date.class + NPStringFog.decode(new byte[]{30, 17}, "216859", true) + Timestamp.class + NPStringFog.decode(new byte[]{25, 67, 95, 70, 16}, "5c040c", -6791) + java.sql.Date.class + NPStringFog.decode(new byte[]{67, 3, 66, 69, 16, 68, 2, 18, 23}, "ca7103", true) + cls);
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public Date read2(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        Date dateDeserializeToDate = deserializeToDate(jsonReader.nextString());
        if (this.dateType == Date.class) {
            return dateDeserializeToDate;
        }
        if (this.dateType == Timestamp.class) {
            return new Timestamp(dateDeserializeToDate.getTime());
        }
        if (this.dateType == java.sql.Date.class) {
            return new java.sql.Date(dateDeserializeToDate.getTime());
        }
        throw new AssertionError();
    }

    public String toString() {
        DateFormat dateFormat = this.dateFormats.get(0);
        return dateFormat instanceof SimpleDateFormat ? NPStringFog.decode(new byte[]{32, 93, 95, 5, 65, 90, 16, 124, 88, 16, 81, 98, 29, 72, 92, 37, 80, 87, 20, 76, 92, 22, 28}, "d89d46", -3.40115387E8d) + ((SimpleDateFormat) dateFormat).toPattern() + ')' : NPStringFog.decode(new byte[]{124, 6, 83, 5, 65, 89, 76, 39, 84, 16, 81, 97, 65, 19, 80, 37, 80, 84, 72, 23, 80, 22, 28}, "8c5d45", false, false) + dateFormat.getClass().getSimpleName() + ')';
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, Date date) throws IOException {
        if (date == null) {
            jsonWriter.nullValue();
            return;
        }
        synchronized (this.dateFormats) {
            jsonWriter.value(this.dateFormats.get(0).format(date));
        }
    }
}
