package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public abstract class FastJsonResponse {

    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final zaj CREATOR = new zaj();
        protected final int zaa;
        protected final boolean zab;
        protected final int zac;
        protected final boolean zad;
        protected final String zae;
        protected final int zaf;
        protected final Class zag;
        protected final String zah;
        private final int zai;
        private zan zaj;
        private final FieldConverter zak;

        Field(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, com.google.android.gms.common.server.converter.zaa zaaVar) {
            this.zai = i;
            this.zaa = i2;
            this.zab = z;
            this.zac = i3;
            this.zad = z2;
            this.zae = str;
            this.zaf = i4;
            if (str2 == null) {
                this.zag = null;
                this.zah = null;
            } else {
                this.zag = SafeParcelResponse.class;
                this.zah = str2;
            }
            if (zaaVar == null) {
                this.zak = null;
            } else {
                this.zak = zaaVar.zab();
            }
        }

        protected Field(int i, boolean z, int i2, boolean z2, String str, int i3, Class cls, FieldConverter fieldConverter) {
            this.zai = 1;
            this.zaa = i;
            this.zab = z;
            this.zac = i2;
            this.zad = z2;
            this.zae = str;
            this.zaf = i3;
            this.zag = cls;
            if (cls == null) {
                this.zah = null;
            } else {
                this.zah = cls.getCanonicalName();
            }
            this.zak = fieldConverter;
        }

        public static Field<byte[], byte[]> forBase64(String str, int i) {
            return new Field<>(8, false, 8, false, str, i, null, null);
        }

        public static Field<Boolean, Boolean> forBoolean(String str, int i) {
            return new Field<>(6, false, 6, false, str, i, null, null);
        }

        public static <T extends FastJsonResponse> Field<T, T> forConcreteType(String str, int i, Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i, cls, null);
        }

        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> forConcreteTypeArray(String str, int i, Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i, cls, null);
        }

        public static Field<Double, Double> forDouble(String str, int i) {
            return new Field<>(4, false, 4, false, str, i, null, null);
        }

        public static Field<Float, Float> forFloat(String str, int i) {
            return new Field<>(3, false, 3, false, str, i, null, null);
        }

        public static Field<Integer, Integer> forInteger(String str, int i) {
            return new Field<>(0, false, 0, false, str, i, null, null);
        }

        public static Field<Long, Long> forLong(String str, int i) {
            return new Field<>(2, false, 2, false, str, i, null, null);
        }

        public static Field<String, String> forString(String str, int i) {
            return new Field<>(7, false, 7, false, str, i, null, null);
        }

        public static Field<HashMap<String, String>, HashMap<String, String>> forStringMap(String str, int i) {
            return new Field<>(10, false, 10, false, str, i, null, null);
        }

        public static Field<ArrayList<String>, ArrayList<String>> forStrings(String str, int i) {
            return new Field<>(7, true, 7, true, str, i, null, null);
        }

        public static Field withConverter(String str, int i, FieldConverter<?, ?> fieldConverter, boolean z) {
            fieldConverter.zaa();
            fieldConverter.zab();
            return new Field(7, z, 0, false, str, i, null, fieldConverter);
        }

        public int getSafeParcelableFieldId() {
            return this.zaf;
        }

        public final String toString() {
            Objects.ToStringHelper toStringHelperAdd = Objects.toStringHelper(this).add(NPStringFog.decode(new byte[]{18, 4, 22, 71, 15, 90, 10, 34, 11, 80, 3}, "dad4f5", -167062836L), Integer.valueOf(this.zai)).add(NPStringFog.decode(new byte[]{17, 24, 68, 0, 112, 12}, "ea4e9b", false), Integer.valueOf(this.zaa)).add(NPStringFog.decode(new byte[]{21, 29, 64, 84, 121, 8, 32, 22, 66, 80, 73}, "ad010f", -1230678348L), Boolean.valueOf(this.zab)).add(NPStringFog.decode(new byte[]{21, 75, 17, 93, 124, 71, 21}, "a2a832", true, false), Integer.valueOf(this.zac)).add(NPStringFog.decode(new byte[]{21, 73, 21, 0, 46, 71, 21, 113, 23, 23, 0, 75}, "a0eea2", -1.8560844E9f), Boolean.valueOf(this.zad)).add(NPStringFog.decode(new byte[]{87, 20, 16, 73, 67, 16, 126, 8, 1, 85, 82, 42, 89, 12, 1}, "8ad96d", 1.4054515E9f), this.zae).add(NPStringFog.decode(new byte[]{21, 84, 82, 82, 101, 86, 20, 86, 81, 91, 115, 94, 3, 89, 80, 126, 81}, "f54757", 1.362849E9f), Integer.valueOf(this.zaf)).add(NPStringFog.decode(new byte[]{2, 12, 15, 5, 22, 4, 21, 6, 53, 31, 20, 4, 47, 2, 12, 3}, "acafda", false), zag());
            Class cls = this.zag;
            if (cls != null) {
                toStringHelperAdd.add(NPStringFog.decode(new byte[]{1, 9, 15, 82, 19, 83, 22, 3, 53, 72, 17, 83, 76, 5, 13, 80, 18, 69}, "bfa1a6", false, true), cls.getCanonicalName());
            }
            FieldConverter fieldConverter = this.zak;
            if (fieldConverter != null) {
                toStringHelperAdd.add(NPStringFog.decode(new byte[]{85, 91, 8, 23, 4, 19, 66, 81, 20, 47, 0, 12, 83}, "64faaa", true), fieldConverter.getClass().getCanonicalName());
            }
            return toStringHelperAdd.toString();
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeInt(parcel, 1, this.zai);
            SafeParcelWriter.writeInt(parcel, 2, this.zaa);
            SafeParcelWriter.writeBoolean(parcel, 3, this.zab);
            SafeParcelWriter.writeInt(parcel, 4, this.zac);
            SafeParcelWriter.writeBoolean(parcel, 5, this.zad);
            SafeParcelWriter.writeString(parcel, 6, this.zae, false);
            SafeParcelWriter.writeInt(parcel, 7, getSafeParcelableFieldId());
            SafeParcelWriter.writeString(parcel, 8, zag(), false);
            SafeParcelWriter.writeParcelable(parcel, 9, zaa(), i, false);
            SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
        }

        final com.google.android.gms.common.server.converter.zaa zaa() {
            FieldConverter fieldConverter = this.zak;
            if (fieldConverter == null) {
                return null;
            }
            return com.google.android.gms.common.server.converter.zaa.zaa(fieldConverter);
        }

        public final Field zab() {
            return new Field(this.zai, this.zaa, this.zab, this.zac, this.zad, this.zae, this.zaf, this.zah, zaa());
        }

        public final FastJsonResponse zad() throws IllegalAccessException, InstantiationException {
            Preconditions.checkNotNull(this.zag);
            Class cls = this.zag;
            if (cls != SafeParcelResponse.class) {
                return (FastJsonResponse) cls.newInstance();
            }
            Preconditions.checkNotNull(this.zah);
            Preconditions.checkNotNull(this.zaj, NPStringFog.decode(new byte[]{55, 11, 85, 68, 82, 93, 6, 15, 84, 68, 89, 85, 19, 19, 89, 10, 83, 20, 7, 10, 83, 16, 93, 91, 13, 2, 66, 29, 20, 89, 22, 16, 68, 68, 86, 81, 67, 16, 85, 16, 20, 93, 5, 67, 68, 12, 81, 20, 0, 12, 94, 7, 70, 81, 23, 6, 16, 16, 77, 68, 6, 67, 89, 23, 20, 85, 67, 48, 81, 2, 81, 100, 2, 17, 83, 1, 88, 102, 6, 16, 64, 11, 90, 71, 6, 67, 95, 6, 94, 81, 0, 23, 30}, "cc0d44", false));
            return new SafeParcelResponse(this.zaj, this.zah);
        }

        public final Object zae(Object obj) {
            Preconditions.checkNotNull(this.zak);
            return Preconditions.checkNotNull(this.zak.zac(obj));
        }

        public final Object zaf(Object obj) {
            Preconditions.checkNotNull(this.zak);
            return this.zak.zad(obj);
        }

        final String zag() {
            String str = this.zah;
            if (str == null) {
                return null;
            }
            return str;
        }

        public final Map zah() {
            Preconditions.checkNotNull(this.zah);
            Preconditions.checkNotNull(this.zaj);
            return (Map) Preconditions.checkNotNull(this.zaj.zab(this.zah));
        }

        public final void zai(zan zanVar) {
            this.zaj = zanVar;
        }

        public final boolean zaj() {
            return this.zak != null;
        }
    }

    public interface FieldConverter<I, O> {
        int zaa();

        int zab();

        Object zac(Object obj);

        Object zad(Object obj);
    }

    protected static final Object zaD(Field field, Object obj) {
        return field.zak != null ? field.zaf(obj) : obj;
    }

    private final void zaE(Field field, Object obj) {
        String str = field.zae;
        Object objZae = field.zae(obj);
        int i = field.zac;
        switch (i) {
            case 0:
                if (objZae != null) {
                    setIntegerInternal(field, str, ((Integer) objZae).intValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 1:
                zaf(field, str, (BigInteger) objZae);
                return;
            case 2:
                if (objZae != null) {
                    setLongInternal(field, str, ((Long) objZae).longValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 3:
            default:
                throw new IllegalStateException(NPStringFog.decode(new byte[]{48, 15, 17, 16, 64, 69, 10, 19, 22, 0, 84, 21, 17, 24, 18, 0, 16, 83, 10, 19, 66, 6, 95, 91, 19, 4, 16, 22, 89, 90, 11, 91, 66}, "eabe05", true, false) + i);
            case 4:
                if (objZae != null) {
                    zan(field, str, ((Double) objZae).doubleValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 5:
                zab(field, str, (BigDecimal) objZae);
                return;
            case 6:
                if (objZae != null) {
                    setBooleanInternal(field, str, ((Boolean) objZae).booleanValue());
                    return;
                } else {
                    zaG(str);
                    return;
                }
            case 7:
                setStringInternal(field, str, (String) objZae);
                return;
            case 8:
            case 9:
                if (objZae != null) {
                    setDecodedBytesInternal(field, str, (byte[]) objZae);
                    return;
                } else {
                    zaG(str);
                    return;
                }
        }
    }

    private static final void zaF(StringBuilder sb, Field field, Object obj) {
        int i = field.zaa;
        if (i == 11) {
            Class cls = field.zag;
            Preconditions.checkNotNull(cls);
            sb.append(((FastJsonResponse) cls.cast(obj)).toString());
        } else {
            if (i != 7) {
                sb.append(obj);
                return;
            }
            sb.append(NPStringFog.decode(new byte[]{16}, "2817bb", true));
            sb.append(JsonUtils.escapeString((String) obj));
            sb.append(NPStringFog.decode(new byte[]{26}, "872dab", false));
        }
    }

    private static final void zaG(String str) {
        if (Log.isLoggable(NPStringFog.decode(new byte[]{119, 84, 17, 18, 127, 18, 94, 91, 48, 3, 70, 17, 94, 91, 17, 3}, "15bf5a", true, false), 6)) {
            Log.e(NPStringFog.decode(new byte[]{39, 88, 68, 76, 120, 68, 14, 87, 101, 93, 65, 71, 14, 87, 68, 93}, "a97827", 1.4457033E9d), NPStringFog.decode(new byte[]{121, 22, 68, 69, 76, 76, 22, 5, 89, 80, 85, 92, 22, 75}, "6c0598", 1705209962L) + str + NPStringFog.decode(new byte[]{77, 22, 93, 80, 69, 70, 5, 22, 91, 68, 90, 10, 68, 64, 84, 93, 67, 3, 72, 22, 87, 68, 66, 70, 1, 78, 69, 84, 85, 18, 1, 82, 21, 80, 22, 22, 22, 95, 88, 88, 66, 15, 18, 83}, "d6516f", true, true));
        }
    }

    public <T extends FastJsonResponse> void addConcreteTypeArrayInternal(Field field, String str, ArrayList<T> arrayList) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{122, 12, 15, 87, 65, 80, 77, 6, 65, 64, 74, 69, 92, 67, 0, 70, 65, 84, 64, 67, 15, 91, 71, 21, 74, 22, 17, 68, 92, 71, 77, 6, 5}, "9ca435", 54502448L));
    }

    public <T extends FastJsonResponse> void addConcreteTypeInternal(Field field, String str, T t) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{116, 9, 94, 84, 20, 7, 67, 3, 16, 67, 31, 18, 82, 70, 94, 88, 18, 66, 68, 19, 64, 71, 9, 16, 67, 3, 84}, "7f07fb", -466611336L));
    }

    public abstract Map<String, Field<?, ?>> getFieldMappings();

    protected Object getFieldValue(Field field) {
        String str = field.zae;
        if (field.zag == null) {
            return getValueObject(str);
        }
        Preconditions.checkState(getValueObject(str) == null, NPStringFog.decode(new byte[]{114, 12, 10, 7, 70, 1, 69, 6, 68, 2, 93, 1, 93, 7, 68, 23, 92, 11, 68, 15, 0, 10, 19, 16, 17, 1, 1, 68, 66, 5, 93, 22, 1, 68, 91, 6, 91, 6, 7, 16, 14, 68, 20, 16}, "1cdd4d", -846875740L), field.zae);
        boolean z = field.zad;
        try {
            return getClass().getMethod(NPStringFog.decode(new byte[]{3, 82, 70}, "d72335", true, true) + Character.toUpperCase(str.charAt(0)) + str.substring(1), new Class[0]).invoke(this, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    protected abstract Object getValueObject(String str);

    protected boolean isFieldSet(Field field) {
        if (field.zac != 11) {
            return isPrimitiveFieldSet(field.zae);
        }
        boolean z = field.zad;
        String str = field.zae;
        if (z) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{123, 89, 15, 84, 19, 81, 76, 83, 65, 67, 24, 68, 93, 22, 0, 69, 19, 85, 65, 69, 65, 89, 14, 64, 24, 69, 20, 71, 17, 91, 74, 66, 4, 83}, "86a7a4", true, false));
        }
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{119, 11, 10, 5, 66, 85, 64, 1, 68, 18, 73, 64, 81, 23, 68, 8, 95, 68, 20, 23, 17, 22, 64, 95, 70, 16, 1, 2}, "4ddf00", 1.5444232E9f));
    }

    protected abstract boolean isPrimitiveFieldSet(String str);

    protected void setBooleanInternal(Field<?, ?> field, String str, boolean z) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{35, 90, 89, 94, 81, 4, 15, 21, 88, 93, 64, 69, 18, 64, 70, 66, 91, 23, 21, 80, 82}, "a5624e", -4.60050343E8d));
    }

    protected void setDecodedBytesInternal(Field<?, ?> field, String str, byte[] bArr) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{85, 75, 21, 81, 107, 106, 23, 92, 14, 64, 16, 68, 66, 66, 17, 91, 66, 67, 82, 86}, "72a407", -10696));
    }

    protected void setIntegerInternal(Field<?, ?> field, String str, int i) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{126, 94, 22, 4, 80, 82, 69, 16, 12, 14, 67, 23, 68, 69, 18, 17, 88, 69, 67, 85, 6}, "70ba77", -5587));
    }

    protected void setLongInternal(Field<?, ?> field, String str, long j) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{123, 13, 8, 5, 68, 91, 88, 22, 70, 17, 17, 69, 71, 13, 20, 22, 1, 81}, "7bfbd5", 540579507L));
    }

    protected void setStringInternal(Field<?, ?> field, String str, String str2) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{53, 67, 67, 15, 12, 95, 70, 89, 94, 18, 66, 75, 19, 71, 65, 9, 16, 76, 3, 83}, "f71fb8", false, false));
    }

    protected void setStringMapInternal(Field<?, ?> field, String str, Map<String, String> map) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{55, 69, 74, 80, 12, 6, 68, 92, 89, 73, 66, 15, 11, 69, 24, 74, 23, 17, 20, 94, 74, 77, 7, 5}, "d189ba", -23879));
    }

    protected void setStringsInternal(Field<?, ?> field, String str, ArrayList<String> arrayList) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{97, 65, 17, 8, 13, 80, 18, 89, 10, 18, 23, 23, 92, 90, 23, 65, 16, 66, 66, 69, 12, 19, 23, 82, 86}, "25cac7", -18434));
    }

    public String toString() {
        Map<String, Field<?, ?>> fieldMappings = getFieldMappings();
        StringBuilder sb = new StringBuilder(100);
        for (String str : fieldMappings.keySet()) {
            Field<?, ?> field = fieldMappings.get(str);
            if (isFieldSet(field)) {
                Object objZaD = zaD(field, getFieldValue(field));
                if (sb.length() == 0) {
                    sb.append(NPStringFog.decode(new byte[]{72}, "3af646", false, false));
                } else {
                    sb.append(NPStringFog.decode(new byte[]{77}, "a337a6", -32349608L));
                }
                sb.append(NPStringFog.decode(new byte[]{68}, "f6c024", 1.794617196E9d));
                sb.append(str);
                sb.append(NPStringFog.decode(new byte[]{19, 94}, "1d5c7d", 6363));
                if (objZaD != null) {
                    switch (field.zac) {
                        case 8:
                            sb.append(NPStringFog.decode(new byte[]{70}, "d83638", -82720899L));
                            sb.append(Base64Utils.encode((byte[]) objZaD));
                            sb.append(NPStringFog.decode(new byte[]{64}, "b11608", 1235589884L));
                            break;
                        case 9:
                            sb.append(NPStringFog.decode(new byte[]{71}, "e91a53", true));
                            sb.append(Base64Utils.encodeUrlSafe((byte[]) objZaD));
                            sb.append(NPStringFog.decode(new byte[]{21}, "7d6a9f", 1.7699692E8d));
                            break;
                        case 10:
                            MapUtils.writeStringMapToJson(sb, (HashMap) objZaD);
                            break;
                        default:
                            if (field.zab) {
                                ArrayList arrayList = (ArrayList) objZaD;
                                sb.append(NPStringFog.decode(new byte[]{58}, "af1558", 1967));
                                int size = arrayList.size();
                                for (int i = 0; i < size; i++) {
                                    if (i > 0) {
                                        sb.append(NPStringFog.decode(new byte[]{24}, "4e5235", true, false));
                                    }
                                    Object obj = arrayList.get(i);
                                    if (obj != null) {
                                        zaF(sb, field, obj);
                                    }
                                }
                                sb.append(NPStringFog.decode(new byte[]{100}, "94781c", 440150368L));
                            } else {
                                zaF(sb, field, objZaD);
                            }
                            break;
                    }
                } else {
                    sb.append(NPStringFog.decode(new byte[]{8, 70, 92, 9}, "f30ef2", true, true));
                }
            }
        }
        if (sb.length() > 0) {
            sb.append(NPStringFog.decode(new byte[]{25}, "db4459", -7.620623E8f));
        } else {
            sb.append(NPStringFog.decode(new byte[]{76, 79}, "72590d", -1.655487681E9d));
        }
        return sb.toString();
    }

    public final void zaA(Field field, String str) {
        if (field.zak != null) {
            zaE(field, str);
        } else {
            setStringInternal(field, field.zae, str);
        }
    }

    public final void zaB(Field field, Map map) {
        if (field.zak != null) {
            zaE(field, map);
        } else {
            setStringMapInternal(field, field.zae, map);
        }
    }

    public final void zaC(Field field, ArrayList arrayList) {
        if (field.zak != null) {
            zaE(field, arrayList);
        } else {
            setStringsInternal(field, field.zae, arrayList);
        }
    }

    public final void zaa(Field field, BigDecimal bigDecimal) {
        if (field.zak != null) {
            zaE(field, bigDecimal);
        } else {
            zab(field, field.zae, bigDecimal);
        }
    }

    protected void zab(Field field, String str, BigDecimal bigDecimal) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{115, 91, 83, 117, 6, 85, 88, 95, 85, 93, 67, 88, 94, 70, 20, 66, 22, 70, 65, 93, 70, 69, 6, 82}, "1241c6", -1.1456616E9f));
    }

    public final void zac(Field field, ArrayList arrayList) {
        if (field.zak != null) {
            zaE(field, arrayList);
        } else {
            zad(field, field.zae, arrayList);
        }
    }

    protected void zad(Field field, String str, ArrayList arrayList) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{32, 93, 6, 113, 84, 1, 11, 89, 0, 89, 17, 14, 11, 71, 21, 21, 95, 13, 22, 20, 18, 64, 65, 18, 13, 70, 21, 80, 85}, "b4a51b", false));
    }

    public final void zae(Field field, BigInteger bigInteger) {
        if (field.zak != null) {
            zaE(field, bigInteger);
        } else {
            zaf(field, field.zae, bigInteger);
        }
    }

    protected void zaf(Field field, String str, BigInteger bigInteger) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{118, 88, 84, 122, 86, 66, 81, 86, 86, 65, 24, 88, 91, 69, 19, 64, 77, 70, 68, 94, 65, 71, 93, 82}, "413386", -10701));
    }

    public final void zag(Field field, ArrayList arrayList) {
        if (field.zak != null) {
            zaE(field, arrayList);
        } else {
            zah(field, field.zae, arrayList);
        }
    }

    protected void zah(Field field, String str, ArrayList arrayList) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{35, 92, 1, 127, 89, 76, 4, 82, 3, 68, 23, 84, 8, 70, 18, 22, 89, 87, 21, 21, 21, 67, 71, 72, 14, 71, 18, 83, 83}, "a5f678", 8808));
    }

    public final void zai(Field field, boolean z) {
        if (field.zak != null) {
            zaE(field, Boolean.valueOf(z));
        } else {
            setBooleanInternal(field, field.zae, z);
        }
    }

    public final void zaj(Field field, ArrayList arrayList) {
        if (field.zak != null) {
            zaE(field, arrayList);
        } else {
            zak(field, field.zae, arrayList);
        }
    }

    protected void zak(Field field, String str, ArrayList arrayList) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{32, 91, 91, 95, 3, 84, 12, 20, 88, 90, 21, 65, 66, 90, 91, 71, 70, 70, 23, 68, 68, 92, 20, 65, 7, 80}, "b443f5", 7.7667085E8f));
    }

    public final void zal(Field field, byte[] bArr) {
        if (field.zak != null) {
            zaE(field, bArr);
        } else {
            setDecodedBytesInternal(field, field.zae, bArr);
        }
    }

    public final void zam(Field field, double d) {
        if (field.zak != null) {
            zaE(field, Double.valueOf(d));
        } else {
            zan(field, field.zae, d);
        }
    }

    protected void zan(Field field, String str, double d) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{118, 95, 23, 86, 93, 85, 18, 94, 13, 64, 17, 67, 71, 64, 18, 91, 67, 68, 87, 84}, "20b410", 4943));
    }

    public final void zao(Field field, ArrayList arrayList) {
        if (field.zak != null) {
            zaE(field, arrayList);
        } else {
            zap(field, field.zae, arrayList);
        }
    }

    protected void zap(Field field, String str, ArrayList arrayList) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{112, 87, 70, 82, 85, 80, 20, 84, 90, 67, 77, 21, 90, 87, 71, 16, 74, 64, 68, 72, 92, 66, 77, 80, 80}, "483095", -25970));
    }

    public final void zaq(Field field, float f) {
        if (field.zak != null) {
            zaE(field, Float.valueOf(f));
        } else {
            zar(field, field.zae, f);
        }
    }

    protected void zar(Field field, String str, float f) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{127, 94, 12, 5, 66, 67, 87, 93, 23, 68, 69, 22, 73, 66, 12, 22, 66, 6, 93}, "92cd6c", true, false));
    }

    public final void zas(Field field, ArrayList arrayList) {
        if (field.zak != null) {
            zaE(field, arrayList);
        } else {
            zat(field, field.zae, arrayList);
        }
    }

    protected void zat(Field field, String str, ArrayList arrayList) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{39, 10, 86, 0, 67, 24, 13, 15, 74, 21, 23, 86, 14, 18, 25, 18, 66, 72, 17, 9, 75, 21, 82, 92}, "af9a78", -6.48048143E8d));
    }

    public final void zau(Field field, int i) {
        if (field.zak != null) {
            zaE(field, Integer.valueOf(i));
        } else {
            setIntegerInternal(field, field.zae, i);
        }
    }

    public final void zav(Field field, ArrayList arrayList) {
        if (field.zak != null) {
            zaE(field, arrayList);
        } else {
            zaw(field, field.zae, arrayList);
        }
    }

    protected void zaw(Field field, String str, ArrayList arrayList) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{121, 95, 16, 81, 5, 93, 66, 17, 8, 93, 17, 76, 16, 95, 11, 64, 66, 75, 69, 65, 20, 91, 16, 76, 85, 85}, "01d4b8", 1396));
    }

    public final void zax(Field field, long j) {
        if (field.zak != null) {
            zaE(field, Long.valueOf(j));
        } else {
            setLongInternal(field, field.zae, j);
        }
    }

    public final void zay(Field field, ArrayList arrayList) {
        if (field.zak != null) {
            zaE(field, arrayList);
        } else {
            zaz(field, field.zae, arrayList);
        }
    }

    protected void zaz(Field field, String str, ArrayList arrayList) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{42, 88, 15, 82, 69, 89, 15, 68, 21, 21, 11, 90, 18, 23, 18, 64, 21, 69, 9, 69, 21, 80, 1}, "f7a5e5", -32527));
    }
}
