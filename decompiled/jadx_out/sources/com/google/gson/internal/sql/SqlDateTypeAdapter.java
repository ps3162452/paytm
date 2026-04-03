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
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.TimeZone;
import n.NPStringFog;

/* JADX INFO: loaded from: classes69.dex */
final class SqlDateTypeAdapter extends TypeAdapter<Date> {
    static final TypeAdapterFactory FACTORY = new TypeAdapterFactory() { // from class: com.google.gson.internal.sql.SqlDateTypeAdapter.1
        @Override // com.google.gson.TypeAdapterFactory
        public <T> TypeAdapter<T> create(Gson gson, TypeToken<T> typeToken) {
            if (typeToken.getRawType() == Date.class) {
                return new SqlDateTypeAdapter();
            }
            return null;
        }
    };
    private final DateFormat format;

    private SqlDateTypeAdapter() {
        this.format = new SimpleDateFormat(NPStringFog.decode(new byte[]{40, 123, 127, 66, 84, 24, 69, 79, 75, 27, 73}, "e62b04", -2.051338638E9d));
    }

    @Override // com.google.gson.TypeAdapter
    /* JADX INFO: renamed from: read, reason: avoid collision after fix types in other method */
    public Date read2(JsonReader jsonReader) throws IOException {
        Date date;
        if (jsonReader.peek() == JsonToken.NULL) {
            jsonReader.nextNull();
            return null;
        }
        String strNextString = jsonReader.nextString();
        synchronized (this) {
            TimeZone timeZone = this.format.getTimeZone();
            try {
                try {
                    date = new Date(this.format.parse(strNextString).getTime());
                } catch (ParseException e) {
                    throw new JsonSyntaxException(NPStringFog.decode(new byte[]{113, 84, 12, 92, 85, 84, 23, 69, 4, 66, 67, 89, 89, 82, 69, 23}, "75e000", false, false) + strNextString + NPStringFog.decode(new byte[]{17, 70, 86, 66, 20, 49, 103, 42, 23, 117, 85, 22, 83, 93, 23, 80, 64, 66, 70, 7, 67, 89, 20}, "6f714b", false, true) + jsonReader.getPreviousPath(), e);
                }
            } finally {
                this.format.setTimeZone(timeZone);
            }
        }
        return date;
    }

    @Override // com.google.gson.TypeAdapter
    public void write(JsonWriter jsonWriter, Date date) throws IOException {
        String str;
        if (date == null) {
            jsonWriter.nullValue();
            return;
        }
        synchronized (this) {
            str = this.format.format((java.util.Date) date);
        }
        jsonWriter.value(str);
    }
}
