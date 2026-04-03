package com.google.gson.internal.sql;

import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import n.NPStringFog;

/* JADX INFO: loaded from: classes69.dex */
final class SqlTimeTypeAdapter extends TypeAdapter<Time> {
    static final TypeAdapterFactory FACTORY = new TypeAdapterFactory() { // from class: com.google.gson.internal.sql.SqlTimeTypeAdapter.1
        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            if (typeToken.getRawType() == Time.class) {
                return new SqlTimeTypeAdapter();
            }
            return null;
        }
    };
    private final DateFormat format;

    private SqlTimeTypeAdapter() {
        this.format = new SimpleDateFormat(NPStringFog.decode(new byte[]{91, 11, 9, 92, 95, 91, 64, 16, 19, 80}, "3c312a", true));
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public Time read2(JsonReader jsonReader) throws IOException {
        Time time;
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        String strNextString = jsonReader.nextString();
        synchronized (this) {
            TimeZone timeZone = this.format.getTimeZone();
            try {
                try {
                    time = new Time(this.format.parse(strNextString).getTime());
                } catch (ParseException e) {
                    throw new JsonSyntaxException(NPStringFog.decode(new byte[]{118, 5, 89, 13, 83, 86, 16, 20, 81, 19, 69, 91, 94, 3, 16, 70}, "0d0a62", 1.5610897E9f) + strNextString + NPStringFog.decode(new byte[]{68, 70, 89, 17, 21, 48, 50, 42, 24, 54, 92, 14, 6, 93, 24, 3, 65, 67, 19, 7, 76, 10, 21}, "cf8b5c", 2.2743415E7d) + jsonReader.getPreviousPath(), e);
                }
            } finally {
                this.format.setTimeZone(timeZone);
            }
        }
        return time;
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, Time time) throws IOException {
        String str;
        if (time == null) {
            jsonWriter.nullValue();
            return;
        }
        synchronized (this) {
            str = this.format.format((Date) time);
        }
        jsonWriter.value(str);
    }
}
