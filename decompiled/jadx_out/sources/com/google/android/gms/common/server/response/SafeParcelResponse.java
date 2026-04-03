package com.google.android.gms.common.server.response;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.JsonUtils;
import com.google.android.gms.common.util.MapUtils;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public class SafeParcelResponse extends FastSafeParcelableJsonResponse {
    public static final Parcelable.Creator<SafeParcelResponse> CREATOR = new zaq();
    private final int zaa;
    private final Parcel zab;
    private final int zac;
    private final zan zad;
    private final String zae;
    private int zaf;
    private int zag;

    SafeParcelResponse(int i, Parcel parcel, zan zanVar) {
        this.zaa = i;
        this.zab = (Parcel) Preconditions.checkNotNull(parcel);
        this.zac = 2;
        this.zad = zanVar;
        this.zae = zanVar == null ? null : zanVar.zaa();
        this.zaf = 2;
    }

    private SafeParcelResponse(SafeParcelable safeParcelable, zan zanVar, String str) {
        this.zaa = 1;
        Parcel parcelObtain = Parcel.obtain();
        this.zab = parcelObtain;
        safeParcelable.writeToParcel(parcelObtain, 0);
        this.zac = 1;
        this.zad = (zan) Preconditions.checkNotNull(zanVar);
        this.zae = (String) Preconditions.checkNotNull(str);
        this.zaf = 2;
    }

    public SafeParcelResponse(zan zanVar, String str) {
        this.zaa = 1;
        this.zab = Parcel.obtain();
        this.zac = 0;
        this.zad = (zan) Preconditions.checkNotNull(zanVar);
        this.zae = (String) Preconditions.checkNotNull(str);
        this.zaf = 0;
    }

    public static <T extends FastJsonResponse & SafeParcelable> SafeParcelResponse from(T t) {
        String str = (String) Preconditions.checkNotNull(t.getClass().getCanonicalName());
        zan zanVar = new zan(t.getClass());
        zaF(zanVar, t);
        zanVar.zac();
        zanVar.zad();
        return new SafeParcelResponse(t, zanVar, str);
    }

    private static void zaF(zan zanVar, FastJsonResponse fastJsonResponse) {
        Class<?> cls = fastJsonResponse.getClass();
        if (zanVar.zaf(cls)) {
            return;
        }
        Map<String, FastJsonResponse.Field<?, ?>> fieldMappings = fastJsonResponse.getFieldMappings();
        zanVar.zae(cls, fieldMappings);
        Iterator<String> it = fieldMappings.keySet().iterator();
        while (it.hasNext()) {
            FastJsonResponse.Field<?, ?> field = fieldMappings.get(it.next());
            Class cls2 = field.zag;
            if (cls2 != null) {
                try {
                    zaF(zanVar, (FastJsonResponse) cls2.newInstance());
                } catch (IllegalAccessException e) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{39, 93, 70, 88, 0, 24, 10, 93, 71, 20, 5, 91, 7, 87, 64, 71, 68, 87, 6, 88, 86, 87, 16, 24, 11, 84, 19, 64, 29, 72, 1, 18}, "d234d8", true).concat(String.valueOf(((Class) Preconditions.checkNotNull(field.zag)).getCanonicalName())), e);
                } catch (InstantiationException e2) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{122, 89, 23, 85, 2, 25, 87, 89, 22, 25, 15, 87, 74, 66, 3, 87, 18, 80, 88, 66, 7, 25, 7, 87, 25, 89, 0, 83, 3, 90, 77, 22, 13, 95, 70, 77, 64, 70, 7, 25}, "96b9f9", 23817).concat(String.valueOf(((Class) Preconditions.checkNotNull(field.zag)).getCanonicalName())), e2);
                }
            }
        }
    }

    private final void zaG(FastJsonResponse.Field field) {
        if (field.zaf == -1) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{37, 91, 84, 13, 6, 67, 7, 93, 84, 18, 66, 13, 12, 70, 17, 9, 3, 21, 6, 18, 80, 65, 20, 2, 15, 91, 85, 65, 17, 2, 5, 87, 17, 17, 3, 17, 0, 87, 93, 0, 0, 15, 6, 18, 87, 8, 7, 15, 7, 18, 88, 5, 76}, "c21abc", -13125));
        }
        Parcel parcel = this.zab;
        if (parcel == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{45, 8, 76, 93, 68, 93, 5, 10, 24, 104, 87, 65, 7, 3, 84, 24, 89, 81, 14, 3, 91, 76, 22, 90, 23, 70, 86, 77, 90, 95, 74}, "df8863", -2.0150629E9f));
        }
        switch (this.zaf) {
            case 0:
                this.zag = SafeParcelWriter.beginObjectHeader(parcel);
                this.zaf = 1;
                return;
            case 1:
                return;
            default:
                throw new IllegalStateException(NPStringFog.decode(new byte[]{112, 70, 23, 1, 12, 69, 69, 87, 7, 68, 21, 90, 17, 66, 2, 22, 18, 80, 17, 120, 48, 43, 47, 21, 70, 91, 23, 12, 65, 84, 17, 97, 2, 2, 4, 101, 80, 64, 0, 1, 13, 103, 84, 65, 19, 11, 15, 70, 84, 18, 12, 6, 11, 80, 82, 70, 67, 16, 9, 84, 69, 18, 10, 23, 65, 84, 93, 64, 6, 5, 5, 76, 17, 84, 10, 8, 13, 80, 85, 18, 20, 13, 21, 93, 17, 86, 2, 16, 0, 27}, "12cda5", 1.599696798E9d));
        }
    }

    private final void zaH(StringBuilder sb, Map map, Parcel parcel) {
        SparseArray sparseArray = new SparseArray();
        for (Map.Entry entry : map.entrySet()) {
            sparseArray.put(((FastJsonResponse.Field) entry.getValue()).getSafeParcelableFieldId(), entry);
        }
        sb.append('{');
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        boolean z = false;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            Map.Entry entry2 = (Map.Entry) sparseArray.get(SafeParcelReader.getFieldId(header));
            if (entry2 != null) {
                if (z) {
                    sb.append(NPStringFog.decode(new byte[]{28}, "070b8e", -1.341202281E9d));
                }
                String str = (String) entry2.getKey();
                FastJsonResponse.Field field = (FastJsonResponse.Field) entry2.getValue();
                sb.append(NPStringFog.decode(new byte[]{17}, "30683c", false, false));
                sb.append(str);
                sb.append(NPStringFog.decode(new byte[]{20, 10}, "60d6ff", 4.93154066E8d));
                if (field.zaj()) {
                    int i = field.zac;
                    switch (i) {
                        case 0:
                            zaJ(sb, field, zaD(field, Integer.valueOf(SafeParcelReader.readInt(parcel, header))));
                            z = true;
                            break;
                        case 1:
                            zaJ(sb, field, zaD(field, SafeParcelReader.createBigInteger(parcel, header)));
                            z = true;
                            break;
                        case 2:
                            zaJ(sb, field, zaD(field, Long.valueOf(SafeParcelReader.readLong(parcel, header))));
                            z = true;
                            break;
                        case 3:
                            zaJ(sb, field, zaD(field, Float.valueOf(SafeParcelReader.readFloat(parcel, header))));
                            z = true;
                            break;
                        case 4:
                            zaJ(sb, field, zaD(field, Double.valueOf(SafeParcelReader.readDouble(parcel, header))));
                            z = true;
                            break;
                        case 5:
                            zaJ(sb, field, zaD(field, SafeParcelReader.createBigDecimal(parcel, header)));
                            z = true;
                            break;
                        case 6:
                            zaJ(sb, field, zaD(field, Boolean.valueOf(SafeParcelReader.readBoolean(parcel, header))));
                            z = true;
                            break;
                        case 7:
                            zaJ(sb, field, zaD(field, SafeParcelReader.createString(parcel, header)));
                            z = true;
                            break;
                        case 8:
                        case 9:
                            zaJ(sb, field, zaD(field, SafeParcelReader.createByteArray(parcel, header)));
                            z = true;
                            break;
                        case 10:
                            Bundle bundleCreateBundle = SafeParcelReader.createBundle(parcel, header);
                            HashMap map2 = new HashMap();
                            for (String str2 : bundleCreateBundle.keySet()) {
                                map2.put(str2, (String) Preconditions.checkNotNull(bundleCreateBundle.getString(str2)));
                            }
                            zaJ(sb, field, zaD(field, map2));
                            z = true;
                            break;
                        case 11:
                            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{123, 7, 64, 90, 9, 92, 22, 6, 91, 87, 21, 24, 88, 13, 64, 18, 7, 91, 85, 7, 68, 70, 70, 91, 89, 12, 87, 64, 3, 76, 83, 66, 64, 75, 22, 93, 24}, "6b42f8", -20232));
                        default:
                            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{98, 13, 95, 8, 86, 64, 89, 67, 82, 15, 92, 91, 83, 67, 91, 19, 77, 23, 67, 26, 68, 3, 25, 10, 23}, "7c4f97", true, false) + i);
                    }
                } else if (field.zad) {
                    sb.append(NPStringFog.decode(new byte[]{111}, "4ae20e", false, false));
                    switch (field.zac) {
                        case 0:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createIntArray(parcel, header));
                            break;
                        case 1:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createBigIntegerArray(parcel, header));
                            break;
                        case 2:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createLongArray(parcel, header));
                            break;
                        case 3:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createFloatArray(parcel, header));
                            break;
                        case 4:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createDoubleArray(parcel, header));
                            break;
                        case 5:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createBigDecimalArray(parcel, header));
                            break;
                        case 6:
                            ArrayUtils.writeArray(sb, SafeParcelReader.createBooleanArray(parcel, header));
                            break;
                        case 7:
                            ArrayUtils.writeStringArray(sb, SafeParcelReader.createStringArray(parcel, header));
                            break;
                        case 8:
                        case 9:
                        case 10:
                            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{46, 15, 21, 76, 68, 9, 4, 70, 18, 65, 20, 3, 66, 36, 39, 107, 33, 80, 86, 74, 70, 122, 37, 53, 39, 80, 82, 103, 49, 52, 46, 57, 53, 121, 34, 35, 78, 70, 9, 74, 68, 53, 54, 52, 47, 118, 35, 57, 47, 39, 54, 24, 13, 21, 66, 8, 9, 76, 68, 21, 23, 22, 22, 87, 22, 18, 7, 2}, "bff8df", -18419));
                        case 11:
                            Parcel[] parcelArrCreateParcelArray = SafeParcelReader.createParcelArray(parcel, header);
                            int length = parcelArrCreateParcelArray.length;
                            for (int i2 = 0; i2 < length; i2++) {
                                if (i2 > 0) {
                                    sb.append(NPStringFog.decode(new byte[]{28}, "0e919e", -22944));
                                }
                                parcelArrCreateParcelArray[i2].setDataPosition(0);
                                zaH(sb, field.zah(), parcelArrCreateParcelArray[i2]);
                            }
                            break;
                        default:
                            throw new IllegalStateException(NPStringFog.decode(new byte[]{103, 92, 94, 95, 88, 66, 92, 18, 83, 88, 82, 89, 86, 18, 65, 72, 71, 80, 18, 93, 64, 69, 25}, "225175", -10927));
                    }
                    sb.append(NPStringFog.decode(new byte[]{108}, "1b0714", -422162152L));
                    z = true;
                } else {
                    switch (field.zac) {
                        case 0:
                            sb.append(SafeParcelReader.readInt(parcel, header));
                            z = true;
                            break;
                        case 1:
                            sb.append(SafeParcelReader.createBigInteger(parcel, header));
                            z = true;
                            break;
                        case 2:
                            sb.append(SafeParcelReader.readLong(parcel, header));
                            z = true;
                            break;
                        case 3:
                            sb.append(SafeParcelReader.readFloat(parcel, header));
                            z = true;
                            break;
                        case 4:
                            sb.append(SafeParcelReader.readDouble(parcel, header));
                            z = true;
                            break;
                        case 5:
                            sb.append(SafeParcelReader.createBigDecimal(parcel, header));
                            z = true;
                            break;
                        case 6:
                            sb.append(SafeParcelReader.readBoolean(parcel, header));
                            z = true;
                            break;
                        case 7:
                            String strCreateString = SafeParcelReader.createString(parcel, header);
                            sb.append(NPStringFog.decode(new byte[]{70}, "dc75f1", 8.2195E8f));
                            sb.append(JsonUtils.escapeString(strCreateString));
                            sb.append(NPStringFog.decode(new byte[]{68}, "f9ca49", -6.16488E8f));
                            z = true;
                            break;
                        case 8:
                            byte[] bArrCreateByteArray = SafeParcelReader.createByteArray(parcel, header);
                            sb.append(NPStringFog.decode(new byte[]{64}, "b79a2f", -16621));
                            sb.append(Base64Utils.encode(bArrCreateByteArray));
                            sb.append(NPStringFog.decode(new byte[]{64}, "b08f46", -9.3865823E8d));
                            z = true;
                            break;
                        case 9:
                            byte[] bArrCreateByteArray2 = SafeParcelReader.createByteArray(parcel, header);
                            sb.append(NPStringFog.decode(new byte[]{23}, "5aec39", -21367));
                            sb.append(Base64Utils.encodeUrlSafe(bArrCreateByteArray2));
                            sb.append(NPStringFog.decode(new byte[]{67}, "a094f8", 1.3906543E9f));
                            z = true;
                            break;
                        case 10:
                            Bundle bundleCreateBundle2 = SafeParcelReader.createBundle(parcel, header);
                            Set<String> setKeySet = bundleCreateBundle2.keySet();
                            sb.append(NPStringFog.decode(new byte[]{79}, "4e92df", false));
                            Iterator<String> it = setKeySet.iterator();
                            boolean z2 = true;
                            while (true) {
                                boolean z3 = z2;
                                if (!it.hasNext()) {
                                    sb.append(NPStringFog.decode(new byte[]{79}, "2d8525", true, false));
                                    z = true;
                                } else {
                                    String next = it.next();
                                    if (!z3) {
                                        sb.append(NPStringFog.decode(new byte[]{77}, "aa5534", -1617965680L));
                                    }
                                    sb.append(NPStringFog.decode(new byte[]{68}, "fb2595", false));
                                    sb.append(next);
                                    sb.append(NPStringFog.decode(new byte[]{18, 11, 17}, "013bce", -1.45524667E8d));
                                    sb.append(JsonUtils.escapeString(bundleCreateBundle2.getString(next)));
                                    sb.append(NPStringFog.decode(new byte[]{20}, "6e474c", -8.27144099E8d));
                                    z2 = false;
                                }
                                break;
                            }
                            break;
                        case 11:
                            Parcel parcelCreateParcel = SafeParcelReader.createParcel(parcel, header);
                            parcelCreateParcel.setDataPosition(0);
                            zaH(sb, field.zah(), parcelCreateParcel);
                            z = true;
                            break;
                        default:
                            throw new IllegalStateException(NPStringFog.decode(new byte[]{97, 8, 91, 89, 11, 68, 90, 70, 86, 94, 1, 95, 80, 70, 68, 78, 20, 86, 20, 9, 69, 67}, "4f07d3", true));
                    }
                }
            }
        }
        if (parcel.dataPosition() == iValidateObjectHeader) {
            sb.append('}');
            return;
        }
        throw new SafeParcelReader.ParseException(NPStringFog.decode(new byte[]{42, 67, 85, 71, 68, 87, 4, 81, 16, 84, 90, 94, 10, 66, 85, 81, 22, 65, 12, 79, 85, 21, 83, 92, 1, 8}, "e50562", -1.4328698E9f) + iValidateObjectHeader, parcel);
    }

    private static final void zaI(StringBuilder sb, int i, Object obj) {
        switch (i) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                sb.append(obj);
                return;
            case 7:
                sb.append(NPStringFog.decode(new byte[]{16}, "244a25", true));
                sb.append(JsonUtils.escapeString(Preconditions.checkNotNull(obj).toString()));
                sb.append(NPStringFog.decode(new byte[]{67}, "aa65d3", false, false));
                return;
            case 8:
                sb.append(NPStringFog.decode(new byte[]{16}, "286e02", 9.467589E8f));
                sb.append(Base64Utils.encode((byte[]) obj));
                sb.append(NPStringFog.decode(new byte[]{22}, "4fcfec", 2.1045998E9f));
                return;
            case 9:
                sb.append(NPStringFog.decode(new byte[]{22}, "4076cf", -2096));
                sb.append(Base64Utils.encodeUrlSafe((byte[]) obj));
                sb.append(NPStringFog.decode(new byte[]{16}, "22c759", 6.92194779E8d));
                return;
            case 10:
                MapUtils.writeStringMapToJson(sb, (HashMap) Preconditions.checkNotNull(obj));
                return;
            case 11:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{120, 83, 18, 80, 95, 84, 21, 82, 9, 93, 67, 16, 91, 89, 18, 24, 81, 83, 86, 83, 22, 76, 16, 83, 90, 88, 5, 74, 85, 68, 80, 22, 18, 65, 64, 85, 27}, "56f800", 307135000L));
            default:
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{55, 93, 83, 94, 11, 70, 12, 19, 76, 73, 20, 84, 66, 14, 24}, "b380d1", false, false) + i);
        }
    }

    private static final void zaJ(StringBuilder sb, FastJsonResponse.Field field, Object obj) {
        if (!field.zab) {
            zaI(sb, field.zaa, obj);
            return;
        }
        ArrayList arrayList = (ArrayList) obj;
        sb.append(NPStringFog.decode(new byte[]{56}, "c7ee30", -515031192L));
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i != 0) {
                sb.append(NPStringFog.decode(new byte[]{26}, "67fac6", true, true));
            }
            zaI(sb, field.zaa, arrayList.get(i));
        }
        sb.append(NPStringFog.decode(new byte[]{63}, "b624a0", true));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final <T extends FastJsonResponse> void addConcreteTypeArrayInternal(FastJsonResponse.Field field, String str, ArrayList<T> arrayList) {
        zaG(field);
        ArrayList arrayList2 = new ArrayList();
        ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            arrayList2.add(((SafeParcelResponse) arrayList.get(i)).zaE());
        }
        SafeParcelWriter.writeParcelList(this.zab, field.getSafeParcelableFieldId(), arrayList2, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final <T extends FastJsonResponse> void addConcreteTypeInternal(FastJsonResponse.Field field, String str, T t) {
        zaG(field);
        SafeParcelWriter.writeParcel(this.zab, field.getSafeParcelableFieldId(), ((SafeParcelResponse) t).zaE(), true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final Map<String, FastJsonResponse.Field<?, ?>> getFieldMappings() {
        zan zanVar = this.zad;
        if (zanVar == null) {
            return null;
        }
        return zanVar.zab((String) Preconditions.checkNotNull(this.zae));
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final Object getValueObject(String str) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{115, 88, 88, 69, 85, 75, 68, 94, 88, 84, 16, 77, 95, 23, 124, 96, 127, 119, 16, 83, 89, 86, 67, 25, 94, 88, 66, 19, 66, 92, 65, 66, 95, 65, 85, 25, 68, 95, 95, 64, 16, 84, 85, 67, 94, 92, 84, 23}, "076309", -10055));
    }

    @Override // com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse, com.google.android.gms.common.server.response.FastJsonResponse
    public final boolean isPrimitiveFieldSet(String str) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{33, 89, 90, 20, 0, 68, 22, 95, 90, 5, 69, 66, 13, 22, 126, 49, 42, 120, 66, 82, 91, 7, 22, 22, 12, 89, 64, 66, 23, 83, 19, 67, 93, 16, 0, 22, 22, 94, 93, 17, 69, 91, 7, 66, 92, 13, 1, 24}, "b64be6", 1184188043L));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setBooleanInternal(FastJsonResponse.Field<?, ?> field, String str, boolean z) {
        zaG(field);
        SafeParcelWriter.writeBoolean(this.zab, field.getSafeParcelableFieldId(), z);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setDecodedBytesInternal(FastJsonResponse.Field<?, ?> field, String str, byte[] bArr) {
        zaG(field);
        SafeParcelWriter.writeByteArray(this.zab, field.getSafeParcelableFieldId(), bArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setIntegerInternal(FastJsonResponse.Field<?, ?> field, String str, int i) {
        zaG(field);
        SafeParcelWriter.writeInt(this.zab, field.getSafeParcelableFieldId(), i);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setLongInternal(FastJsonResponse.Field<?, ?> field, String str, long j) {
        zaG(field);
        SafeParcelWriter.writeLong(this.zab, field.getSafeParcelableFieldId(), j);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setStringInternal(FastJsonResponse.Field<?, ?> field, String str, String str2) {
        zaG(field);
        SafeParcelWriter.writeString(this.zab, field.getSafeParcelableFieldId(), str2, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setStringMapInternal(FastJsonResponse.Field<?, ?> field, String str, Map<String, String> map) {
        zaG(field);
        Bundle bundle = new Bundle();
        for (String str2 : ((Map) Preconditions.checkNotNull(map)).keySet()) {
            bundle.putString(str2, map.get(str2));
        }
        SafeParcelWriter.writeBundle(this.zab, field.getSafeParcelableFieldId(), bundle, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void setStringsInternal(FastJsonResponse.Field<?, ?> field, String str, ArrayList<String> arrayList) {
        zaG(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        String[] strArr = new String[size];
        for (int i = 0; i < size; i++) {
            strArr[i] = arrayList.get(i);
        }
        SafeParcelWriter.writeStringArray(this.zab, field.getSafeParcelableFieldId(), strArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    public final String toString() {
        Preconditions.checkNotNull(this.zad, NPStringFog.decode(new byte[]{112, 86, 15, 13, 91, 65, 19, 84, 14, 13, 66, 80, 65, 67, 65, 23, 91, 21, 121, 100, 46, 45, 20, 90, 93, 23, 2, 15, 93, 80, 93, 67, 65, 16, 93, 81, 86, 25}, "37ac45", true, false));
        Parcel parcelZaE = zaE();
        parcelZaE.setDataPosition(0);
        StringBuilder sb = new StringBuilder(100);
        zaH(sb, (Map) Preconditions.checkNotNull(this.zad.zab((String) Preconditions.checkNotNull(this.zae))), parcelZaE);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        zan zanVar;
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        SafeParcelWriter.writeParcel(parcel, 2, zaE(), false);
        switch (this.zac) {
            case 0:
                zanVar = null;
                break;
            case 1:
                zanVar = this.zad;
                break;
            default:
                zanVar = this.zad;
                break;
        }
        SafeParcelWriter.writeParcelable(parcel, 3, zanVar, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final Parcel zaE() {
        switch (this.zaf) {
            case 0:
                int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(this.zab);
                this.zag = iBeginObjectHeader;
                SafeParcelWriter.finishObjectHeader(this.zab, iBeginObjectHeader);
                this.zaf = 2;
                break;
            case 1:
                SafeParcelWriter.finishObjectHeader(this.zab, this.zag);
                this.zaf = 2;
                break;
        }
        return this.zab;
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zab(FastJsonResponse.Field field, String str, BigDecimal bigDecimal) {
        zaG(field);
        SafeParcelWriter.writeBigDecimal(this.zab, field.getSafeParcelableFieldId(), bigDecimal, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zad(FastJsonResponse.Field field, String str, ArrayList arrayList) {
        zaG(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        BigDecimal[] bigDecimalArr = new BigDecimal[size];
        for (int i = 0; i < size; i++) {
            bigDecimalArr[i] = (BigDecimal) arrayList.get(i);
        }
        SafeParcelWriter.writeBigDecimalArray(this.zab, field.getSafeParcelableFieldId(), bigDecimalArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zaf(FastJsonResponse.Field field, String str, BigInteger bigInteger) {
        zaG(field);
        SafeParcelWriter.writeBigInteger(this.zab, field.getSafeParcelableFieldId(), bigInteger, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zah(FastJsonResponse.Field field, String str, ArrayList arrayList) {
        zaG(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        BigInteger[] bigIntegerArr = new BigInteger[size];
        for (int i = 0; i < size; i++) {
            bigIntegerArr[i] = (BigInteger) arrayList.get(i);
        }
        SafeParcelWriter.writeBigIntegerArray(this.zab, field.getSafeParcelableFieldId(), bigIntegerArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zak(FastJsonResponse.Field field, String str, ArrayList arrayList) {
        zaG(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        boolean[] zArr = new boolean[size];
        for (int i = 0; i < size; i++) {
            zArr[i] = ((Boolean) arrayList.get(i)).booleanValue();
        }
        SafeParcelWriter.writeBooleanArray(this.zab, field.getSafeParcelableFieldId(), zArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zan(FastJsonResponse.Field field, String str, double d) {
        zaG(field);
        SafeParcelWriter.writeDouble(this.zab, field.getSafeParcelableFieldId(), d);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zap(FastJsonResponse.Field field, String str, ArrayList arrayList) {
        zaG(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = ((Double) arrayList.get(i)).doubleValue();
        }
        SafeParcelWriter.writeDoubleArray(this.zab, field.getSafeParcelableFieldId(), dArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zar(FastJsonResponse.Field field, String str, float f) {
        zaG(field);
        SafeParcelWriter.writeFloat(this.zab, field.getSafeParcelableFieldId(), f);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zat(FastJsonResponse.Field field, String str, ArrayList arrayList) {
        zaG(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        float[] fArr = new float[size];
        for (int i = 0; i < size; i++) {
            fArr[i] = ((Float) arrayList.get(i)).floatValue();
        }
        SafeParcelWriter.writeFloatArray(this.zab, field.getSafeParcelableFieldId(), fArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zaw(FastJsonResponse.Field field, String str, ArrayList arrayList) {
        zaG(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = ((Integer) arrayList.get(i)).intValue();
        }
        SafeParcelWriter.writeIntArray(this.zab, field.getSafeParcelableFieldId(), iArr, true);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected final void zaz(FastJsonResponse.Field field, String str, ArrayList arrayList) {
        zaG(field);
        int size = ((ArrayList) Preconditions.checkNotNull(arrayList)).size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            jArr[i] = ((Long) arrayList.get(i)).longValue();
        }
        SafeParcelWriter.writeLongArray(this.zab, field.getSafeParcelableFieldId(), jArr, true);
    }
}
