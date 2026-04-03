package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.server.response.FastJsonResponse;
import n.NPStringFog;

/* JADX INFO: loaded from: classes59.dex */
public final class zaa extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zaa> CREATOR = new zab();
    final int zaa;
    private final StringToIntConverter zab;

    zaa(int i, StringToIntConverter stringToIntConverter) {
        this.zaa = i;
        this.zab = stringToIntConverter;
    }

    private zaa(StringToIntConverter stringToIntConverter) {
        this.zaa = 1;
        this.zab = stringToIntConverter;
    }

    public static zaa zaa(FastJsonResponse.FieldConverter fieldConverter) {
        if (fieldConverter instanceof StringToIntConverter) {
            return new zaa((StringToIntConverter) fieldConverter);
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{97, 88, 69, 20, 21, 22, 91, 68, 66, 4, 1, 70, 71, 87, 80, 4, 69, 22, 85, 68, 85, 4, 9, 7, 86, 90, 83, 65, 3, 15, 81, 90, 82, 65, 6, 9, 90, 64, 83, 19, 17, 3, 70, 22, 85, 13, 4, 21, 71, 24}, "466aef", -1.4599846E9f));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        SafeParcelWriter.writeParcelable(parcel, 2, this.zab, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }

    public final FastJsonResponse.FieldConverter zab() {
        StringToIntConverter stringToIntConverter = this.zab;
        if (stringToIntConverter != null) {
            return stringToIntConverter;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{53, 13, 3, 19, 4, 19, 22, 4, 21, 65, 15, 92, 65, 6, 9, 15, 23, 86, 19, 17, 3, 19, 65, 68, 19, 4, 22, 17, 4, 87, 65, 12, 8, 65, 21, 91, 8, 22, 70, 34, 14, 93, 23, 0, 20, 21, 4, 65, 54, 23, 7, 17, 17, 86, 19, 75}, "aefaa3", false));
    }
}
