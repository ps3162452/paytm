package com.google.gson;

import com.google.gson.internal.C$Gson$Preconditions;
import com.google.gson.internal.LazilyParsedNumber;
import java.math.BigDecimal;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes61.dex */
public final class JsonPrimitive extends JsonElement {
    private final Object value;

    public JsonPrimitive(Boolean bool) {
        this.value = C$Gson$Preconditions.checkNotNull(bool);
    }

    public JsonPrimitive(Character ch) {
        this.value = ((Character) C$Gson$Preconditions.checkNotNull(ch)).toString();
    }

    public JsonPrimitive(Number number) {
        this.value = C$Gson$Preconditions.checkNotNull(number);
    }

    public JsonPrimitive(String str) {
        this.value = C$Gson$Preconditions.checkNotNull(str);
    }

    private static boolean isIntegral(JsonPrimitive jsonPrimitive) {
        if (jsonPrimitive.value instanceof Number) {
            Number number = (Number) jsonPrimitive.value;
            if ((number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.gson.JsonElement
    public JsonPrimitive deepCopy() {
        return this;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            JsonPrimitive jsonPrimitive = (JsonPrimitive) obj;
            if (this.value == null) {
                if (jsonPrimitive.value != null) {
                    return false;
                }
            } else {
                if (!isIntegral(this) || !isIntegral(jsonPrimitive)) {
                    if (!(this.value instanceof Number) || !(jsonPrimitive.value instanceof Number)) {
                        return this.value.equals(jsonPrimitive.value);
                    }
                    double dDoubleValue = getAsNumber().doubleValue();
                    double dDoubleValue2 = jsonPrimitive.getAsNumber().doubleValue();
                    return dDoubleValue == dDoubleValue2 || (Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2));
                }
                if (getAsNumber().longValue() != jsonPrimitive.getAsNumber().longValue()) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // com.google.gson.JsonElement
    public BigDecimal getAsBigDecimal() {
        return this.value instanceof BigDecimal ? (BigDecimal) this.value : new BigDecimal(this.value.toString());
    }

    @Override // com.google.gson.JsonElement
    public BigInteger getAsBigInteger() {
        return this.value instanceof BigInteger ? (BigInteger) this.value : new BigInteger(this.value.toString());
    }

    @Override // com.google.gson.JsonElement
    public boolean getAsBoolean() {
        return isBoolean() ? ((Boolean) this.value).booleanValue() : Boolean.parseBoolean(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public byte getAsByte() {
        return isNumber() ? getAsNumber().byteValue() : Byte.parseByte(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public char getAsCharacter() {
        return getAsString().charAt(0);
    }

    @Override // com.google.gson.JsonElement
    public double getAsDouble() {
        return isNumber() ? getAsNumber().doubleValue() : Double.parseDouble(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public float getAsFloat() {
        return isNumber() ? getAsNumber().floatValue() : Float.parseFloat(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public int getAsInt() {
        return isNumber() ? getAsNumber().intValue() : Integer.parseInt(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public long getAsLong() {
        return isNumber() ? getAsNumber().longValue() : Long.parseLong(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public Number getAsNumber() {
        return this.value instanceof String ? new LazilyParsedNumber((String) this.value) : (Number) this.value;
    }

    @Override // com.google.gson.JsonElement
    public short getAsShort() {
        return isNumber() ? getAsNumber().shortValue() : Short.parseShort(getAsString());
    }

    @Override // com.google.gson.JsonElement
    public String getAsString() {
        return isNumber() ? getAsNumber().toString() : isBoolean() ? ((Boolean) this.value).toString() : (String) this.value;
    }

    public int hashCode() {
        if (this.value == null) {
            return 31;
        }
        if (isIntegral(this)) {
            long jLongValue = getAsNumber().longValue();
            return (int) (jLongValue ^ (jLongValue >>> 32));
        }
        if (!(this.value instanceof Number)) {
            return this.value.hashCode();
        }
        long jDoubleToLongBits = Double.doubleToLongBits(getAsNumber().doubleValue());
        return (int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32));
    }

    public boolean isBoolean() {
        return this.value instanceof Boolean;
    }

    public boolean isNumber() {
        return this.value instanceof Number;
    }

    public boolean isString() {
        return this.value instanceof String;
    }
}
