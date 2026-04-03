package androidx.activity.result;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import n.NPStringFog;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityResult implements Parcelable {
    public static final Parcelable.Creator<ActivityResult> CREATOR = new Parcelable.Creator<ActivityResult>() { // from class: androidx.activity.result.ActivityResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ActivityResult createFromParcel(Parcel parcel) {
            return new ActivityResult(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ActivityResult[] newArray(int i) {
            return new ActivityResult[i];
        }
    };
    private final Intent mData;
    private final int mResultCode;

    public ActivityResult(int i, Intent intent) {
        this.mResultCode = i;
        this.mData = intent;
    }

    ActivityResult(Parcel parcel) {
        this.mResultCode = parcel.readInt();
        this.mData = parcel.readInt() == 0 ? null : (Intent) Intent.CREATOR.createFromParcel(parcel);
    }

    public static String resultCodeToString(int i) {
        switch (i) {
            case -1:
                return NPStringFog.decode(new byte[]{103, 33, 54, 109, 126, 97, 106, 43, 46}, "5de825", true);
            case 0:
                return NPStringFog.decode(new byte[]{101, 117, 97, 54, 117, 98, 104, 115, 115, 45, 122, 115, 123, 117, 118}, "702c96", false, false);
            default:
                return String.valueOf(i);
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Intent getData() {
        return this.mData;
    }

    public int getResultCode() {
        return this.mResultCode;
    }

    public String toString() {
        return NPStringFog.decode(new byte[]{37, 90, 17, 91, 69, 88, 16, 64, 55, 87, 64, 68, 8, 77, 30, 64, 86, 66, 17, 85, 17, 113, 92, 85, 1, 4}, "d9e231", 4.9582618E8f) + resultCodeToString(this.mResultCode) + NPStringFog.decode(new byte[]{78, 20, 5, 3, 18, 85, 95}, "b4abf4", -31292) + this.mData + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.mResultCode);
        parcel.writeInt(this.mData == null ? 0 : 1);
        Intent intent = this.mData;
        if (intent != null) {
            intent.writeToParcel(parcel, i);
        }
    }
}
