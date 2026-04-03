package com.google.gson;

import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.internal.NumberLimits;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.MalformedJsonException;
import java.io.IOException;
import java.math.BigDecimal;
import n.NPStringFog;

/* JADX INFO: loaded from: classes69.dex */
public enum ToNumberPolicy implements ToNumberStrategy {
    DOUBLE { // from class: com.google.gson.ToNumberPolicy.1
        @Override // com.google.gson.ToNumberStrategy
        public Double readNumber(JsonReader jsonReader) throws IOException {
            return Double.valueOf(jsonReader.nextDouble());
        }
    },
    LAZILY_PARSED_NUMBER { // from class: com.google.gson.ToNumberPolicy.2
        @Override // com.google.gson.ToNumberStrategy
        public Number readNumber(JsonReader jsonReader) throws IOException {
            return new LazilyParsedNumber(jsonReader.nextString());
        }
    },
    LONG_OR_DOUBLE { // from class: com.google.gson.ToNumberPolicy.3
        private Number parseAsDouble(String str, JsonReader jsonReader) throws IOException {
            try {
                Double dValueOf = Double.valueOf(str);
                if ((!dValueOf.isInfinite() && !dValueOf.isNaN()) || jsonReader.isLenient()) {
                    return dValueOf;
                }
                throw new MalformedJsonException(NPStringFog.decode(new byte[]{121, 55, 46, 40, 68, 0, 92, 22, 3, 15, 0, 21, 19, 42, 0, 40, 68, 7, 93, 0, 65, 15, 10, 0, 90, 10, 8, 18, 13, 3, 64, 94, 65}, "3dafdf", 23969) + dValueOf + NPStringFog.decode(new byte[]{15, 25, 4, 76, 68, 70, 85, 77, 13, 24}, "49e8d6", -1.6994349E9f) + jsonReader.getPreviousPath());
            } catch (NumberFormatException e) {
                throw new JsonParseException(NPStringFog.decode(new byte[]{33, 81, 95, 92, 93, 17, 66, 64, 80, 64, 65, 0, 66}, "b0122e", true, false) + str + NPStringFog.decode(new byte[]{14, 22, 82, 71, 21, 21, 84, 66, 91, 19}, "56335e", -32476) + jsonReader.getPreviousPath(), e);
            }
        }

        @Override // com.google.gson.ToNumberStrategy
        public Number readNumber(JsonReader jsonReader) throws JsonParseException, IOException {
            String strNextString = jsonReader.nextString();
            if (strNextString.indexOf(46) >= 0) {
                return parseAsDouble(strNextString, jsonReader);
            }
            try {
                return Long.valueOf(Long.parseLong(strNextString));
            } catch (NumberFormatException e) {
                return parseAsDouble(strNextString, jsonReader);
            }
        }
    },
    BIG_DECIMAL { // from class: com.google.gson.ToNumberPolicy.4
        @Override // com.google.gson.ToNumberStrategy
        public BigDecimal readNumber(JsonReader jsonReader) throws IOException {
            String strNextString = jsonReader.nextString();
            try {
                return NumberLimits.parseBigDecimal(strNextString);
            } catch (NumberFormatException e) {
                throw new JsonParseException(NPStringFog.decode(new byte[]{114, 83, 93, 11, 11, 67, 17, 66, 82, 23, 23, 82, 17}, "123ed7", -7695) + strNextString + NPStringFog.decode(new byte[]{13, 20, 80, 71, 17, 67, 87, 64, 89, 19}, "641313", -1.7913532E9f) + jsonReader.getPreviousPath(), e);
            }
        }
    }
}
