package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.JavaVersion;
import com.google.gson.internal.PreJava9DateFormatProvider;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes61.dex */
public final class DateTypeAdapter extends TypeAdapter<Date> {
    public static final TypeAdapterFactory FACTORY = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.DateTypeAdapter.1
        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            if (typeToken.getRawType() == Date.class) {
                return new DateTypeAdapter();
            }
            return null;
        }
    };
    private final List<DateFormat> dateFormats = new ArrayList();

    public DateTypeAdapter() {
        this.dateFormats.add(DateFormat.getDateTimeInstance(2, 2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            this.dateFormats.add(DateFormat.getDateTimeInstance(2, 2));
        }
        if (JavaVersion.isJava9OrLater()) {
            this.dateFormats.add(PreJava9DateFormatProvider.getUSDateTimeFormat(2, 2));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0019, code lost:
    
        r0 = com.google.gson.internal.bind.util.ISO8601Utils.parse(r3, new java.text.ParsePosition(0));
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.util.Date deserializeToDate(java.lang.String r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            java.util.List<java.text.DateFormat> r0 = r2.dateFormats     // Catch: java.lang.Throwable -> L2b
            java.util.Iterator r1 = r0.iterator()     // Catch: java.lang.Throwable -> L2b
        L7:
            boolean r0 = r1.hasNext()     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto L19
            java.lang.Object r0 = r1.next()     // Catch: java.lang.Throwable -> L2b
            java.text.DateFormat r0 = (java.text.DateFormat) r0     // Catch: java.lang.Throwable -> L2b
            java.util.Date r0 = r0.parse(r3)     // Catch: java.lang.Throwable -> L2b java.text.ParseException -> L2e
        L17:
            monitor-exit(r2)
            return r0
        L19:
            java.text.ParsePosition r0 = new java.text.ParsePosition     // Catch: java.text.ParseException -> L24 java.lang.Throwable -> L2b
            r1 = 0
            r0.<init>(r1)     // Catch: java.text.ParseException -> L24 java.lang.Throwable -> L2b
            java.util.Date r0 = com.google.gson.internal.bind.util.ISO8601Utils.parse(r3, r0)     // Catch: java.text.ParseException -> L24 java.lang.Throwable -> L2b
            goto L17
        L24:
            r0 = move-exception
            com.google.gson.JsonSyntaxException r1 = new com.google.gson.JsonSyntaxException     // Catch: java.lang.Throwable -> L2b
            r1.<init>(r3, r0)     // Catch: java.lang.Throwable -> L2b
            throw r1     // Catch: java.lang.Throwable -> L2b
        L2b:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        L2e:
            r0 = move-exception
            goto L7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.bind.DateTypeAdapter.deserializeToDate(java.lang.String):java.util.Date");
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public Date read2(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() != JsonToken.NULL) {
            return deserializeToDate(jsonReader.nextString());
        }
        jsonReader.nextNull();
        return null;
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, Date date) throws IOException {
        synchronized (this) {
            if (date == null) {
                jsonWriter.nullValue();
            } else {
                jsonWriter.value(this.dateFormats.get(0).format(date));
            }
        }
    }
}
