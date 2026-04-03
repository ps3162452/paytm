package com.google.gson.internal.bind;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.internal.JavaVersion;
import com.google.gson.internal.PreJava9DateFormatProvider;
import com.google.gson.internal.bind.util.ISO8601Utils;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import n.NPStringFog;

/* JADX INFO: loaded from: classes69.dex */
public final class DefaultDateTypeAdapter<T extends Date> extends TypeAdapter<T> {
    private final List<DateFormat> dateFormats;
    private final DateType<T> dateType;
    private static final String SIMPLE_NAME = NPStringFog.decode(new byte[]{116, 83, 7, 3, 71, 90, 68, 114, 0, 22, 87, 98, 73, 70, 4, 35, 86, 87, 64, 66, 4, 16}, "06ab26", false);
    public static final TypeAdapterFactory DEFAULT_STYLE_FACTORY = new TypeAdapterFactory() { // from class: com.google.gson.internal.bind.DefaultDateTypeAdapter.1
        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            int i = 2;
            if (typeToken.getRawType() == Date.class) {
                return new DefaultDateTypeAdapter(DateType.DATE, i, i);
            }
            return null;
        }

        public String toString() {
            return NPStringFog.decode(new byte[]{114, 92, 4, 80, 19, 10, 66, 125, 3, 69, 3, 50, 79, 73, 7, 112, 2, 7, 70, 77, 7, 67, 69, 34, 115, 127, 35, 100, 42, 50, 105, 106, 54, 104, 42, 35, 105, 127, 35, 114, 50, 41, 100, 96}, "69b1ff", -1.2161773E9f);
        }
    };

    public static abstract class DateType<T extends Date> {
        public static final DateType<Date> DATE = new DateType<Date>(Date.class) { // from class: com.google.gson.internal.bind.DefaultDateTypeAdapter.DateType.1
            @Override // com.google.gson.internal.bind.DefaultDateTypeAdapter.DateType
            protected Date deserialize(Date date) {
                return date;
            }
        };
        private final Class<T> dateClass;

        protected DateType(Class<T> cls) {
            this.dateClass = cls;
        }

        private TypeAdapterFactory createFactory(DefaultDateTypeAdapter<T> defaultDateTypeAdapter) {
            return TypeAdapters.newFactory(this.dateClass, defaultDateTypeAdapter);
        }

        public final TypeAdapterFactory createAdapterFactory(int i, int i2) {
            return createFactory(new DefaultDateTypeAdapter<>(this, i, i2));
        }

        public final TypeAdapterFactory createAdapterFactory(String str) {
            return createFactory(new DefaultDateTypeAdapter<>(this, str));
        }

        protected abstract T deserialize(Date date);
    }

    private DefaultDateTypeAdapter(DateType<T> dateType, int i, int i2) {
        ArrayList arrayList = new ArrayList();
        this.dateFormats = arrayList;
        dateType.getClass();
        this.dateType = dateType;
        arrayList.add(DateFormat.getDateTimeInstance(i, i2, Locale.US));
        if (!Locale.getDefault().equals(Locale.US)) {
            arrayList.add(DateFormat.getDateTimeInstance(i, i2));
        }
        if (JavaVersion.isJava9OrLater()) {
            arrayList.add(PreJava9DateFormatProvider.getUsDateTimeFormat(i, i2));
        }
    }

    private DefaultDateTypeAdapter(DateType<T> dateType, String str) {
        ArrayList arrayList = new ArrayList();
        this.dateFormats = arrayList;
        dateType.getClass();
        this.dateType = dateType;
        arrayList.add(new SimpleDateFormat(str, Locale.US));
        if (Locale.getDefault().equals(Locale.US)) {
            return;
        }
        arrayList.add(new SimpleDateFormat(str));
    }

    private Date deserializeToDate(JsonReader jsonReader) throws IOException {
        String strNextString = jsonReader.nextString();
        synchronized (this.dateFormats) {
            for (DateFormat dateFormat : this.dateFormats) {
                TimeZone timeZone = dateFormat.getTimeZone();
                try {
                    Date date = dateFormat.parse(strNextString);
                    dateFormat.setTimeZone(timeZone);
                    return date;
                } catch (ParseException e) {
                    dateFormat.setTimeZone(timeZone);
                } catch (Throwable th) {
                    dateFormat.setTimeZone(timeZone);
                    throw th;
                }
            }
            try {
                return ISO8601Utils.parse(strNextString, new ParsePosition(0));
            } catch (ParseException e2) {
                throw new JsonSyntaxException(NPStringFog.decode(new byte[]{35, 85, 13, 84, 86, 1, 69, 68, 5, 74, 64, 12, 11, 83, 68, 31}, "e4d83e", -1.7759341E9f) + strNextString + NPStringFog.decode(new byte[]{21, 21, 88, 69, 23, 119, 83, 65, 92, 13, 23, 82, 70, 21, 73, 87, 67, 91, 18}, "259673", -1166) + jsonReader.getPreviousPath(), e2);
            }
        }
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read */
    public T read2(JsonReader jsonReader) throws IOException {
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        return (T) this.dateType.deserialize(deserializeToDate(jsonReader));
    }

    public String toString() {
        DateFormat dateFormat = this.dateFormats.get(0);
        if (dateFormat instanceof SimpleDateFormat) {
            return NPStringFog.decode(new byte[]{39, 86, 5, 5, 67, 95, 23, 119, 2, 16, 83, 103, 26, 67, 6, 37, 82, 82, 19, 71, 6, 22, 30}, "c3cd63", 7.4776896E8f) + ((SimpleDateFormat) dateFormat).toPattern() + ')';
        }
        return NPStringFog.decode(new byte[]{113, 93, 7, 85, 20, 91, 65, 124, 0, 64, 4, 99, 76, 72, 4, 117, 5, 86, 69, 76, 4, 70, 73}, "58a4a7", 18898) + dateFormat.getClass().getSimpleName() + ')';
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, Date date) throws IOException {
        String str;
        if (date == null) {
            jsonWriter.nullValue();
            return;
        }
        DateFormat dateFormat = this.dateFormats.get(0);
        synchronized (this.dateFormats) {
            str = dateFormat.format(date);
        }
        jsonWriter.value(str);
    }
}
