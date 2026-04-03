package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes55.dex */
public final class zza implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int iValidateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        long j = 0;
        String strCreateString = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        boolean z = false;
        String strCreateString2 = null;
        String strCreateString3 = null;
        String strCreateString4 = null;
        ArrayList<String> arrayListCreateStringList = null;
        String strCreateString5 = null;
        long j2 = 0;
        long j3 = 0;
        while (parcel.dataPosition() < iValidateObjectHeader) {
            int header = SafeParcelReader.readHeader(parcel);
            switch (SafeParcelReader.getFieldId(header)) {
                case 1:
                    i = SafeParcelReader.readInt(parcel, header);
                    break;
                case 2:
                    j3 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 3:
                case 7:
                case 9:
                default:
                    SafeParcelReader.skipUnknownField(parcel, header);
                    break;
                case 4:
                    strCreateString5 = SafeParcelReader.createString(parcel, header);
                    break;
                case 5:
                    i3 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 6:
                    arrayListCreateStringList = SafeParcelReader.createStringList(parcel, header);
                    break;
                case 8:
                    j2 = SafeParcelReader.readLong(parcel, header);
                    break;
                case 10:
                    strCreateString3 = SafeParcelReader.createString(parcel, header);
                    break;
                case 11:
                    i2 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 12:
                    strCreateString4 = SafeParcelReader.createString(parcel, header);
                    break;
                case 13:
                    strCreateString2 = SafeParcelReader.createString(parcel, header);
                    break;
                case 14:
                    i4 = SafeParcelReader.readInt(parcel, header);
                    break;
                case 15:
                    f = SafeParcelReader.readFloat(parcel, header);
                    break;
                case 16:
                    j = SafeParcelReader.readLong(parcel, header);
                    break;
                case 17:
                    strCreateString = SafeParcelReader.createString(parcel, header);
                    break;
                case 18:
                    z = SafeParcelReader.readBoolean(parcel, header);
                    break;
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, iValidateObjectHeader);
        return new WakeLockEvent(i, j3, i2, strCreateString5, i3, arrayListCreateStringList, strCreateString4, j2, i4, strCreateString3, strCreateString2, f, j, strCreateString, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new WakeLockEvent[i];
    }
}
