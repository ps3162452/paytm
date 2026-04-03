package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Locale;
import n.NPStringFog;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes59.dex */
public final class WebImage extends AbstractSafeParcelable {
    public static final Parcelable.Creator<WebImage> CREATOR = new zah();
    final int zaa;
    private final Uri zab;
    private final int zac;
    private final int zad;

    WebImage(int i, Uri uri, int i2, int i3) {
        this.zaa = i;
        this.zab = uri;
        this.zac = i2;
        this.zad = i3;
    }

    public WebImage(Uri uri) throws IllegalArgumentException {
        this(uri, 0, 0);
    }

    public WebImage(Uri uri, int i, int i2) throws IllegalArgumentException {
        this(1, uri, i, i2);
        if (uri == null) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{71, 17, 85, 69, 0, 84, 92, 13, 86, 17, 67, 87, 87, 67, 87, 16, 15, 89}, "2c9ec5", 1.736893657E9d));
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{69, 10, 83, 21, 9, 70, 83, 13, 83, 65, 9, 3, 91, 4, 95, 21, 65, 11, 71, 16, 67, 65, 15, 9, 70, 67, 85, 4, 65, 8, 87, 4, 86, 21, 8, 16, 87}, "2c7aaf", 567014731L));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public WebImage(JSONObject jSONObject) throws IllegalArgumentException {
        Uri uri = Uri.EMPTY;
        if (jSONObject.has(NPStringFog.decode(new byte[]{20, 67, 15}, "a1ca5d", 2021958143L))) {
            try {
                uri = Uri.parse(jSONObject.getString(NPStringFog.decode(new byte[]{20, 66, 13}, "a0af32", -12673)));
            } catch (JSONException e) {
            }
        }
        this(uri, jSONObject.optInt(NPStringFog.decode(new byte[]{21, 90, 1, 77, 11}, "b3e9c4", 147252637L), 0), jSONObject.optInt(NPStringFog.decode(new byte[]{93, 83, 88, 94, 88, 17}, "56190e", -1.1366998E9f), 0));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof WebImage)) {
            return false;
        }
        WebImage webImage = (WebImage) obj;
        return Objects.equal(this.zab, webImage.zab) && this.zac == webImage.zac && this.zad == webImage.zad;
    }

    public int getHeight() {
        return this.zad;
    }

    public Uri getUrl() {
        return this.zab;
    }

    public int getWidth() {
        return this.zac;
    }

    public int hashCode() {
        return Objects.hashCode(this.zab, Integer.valueOf(this.zac), Integer.valueOf(this.zad));
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(NPStringFog.decode(new byte[]{76, 22, 95}, "9d396f", 9.79113148E8d), this.zab.toString());
            jSONObject.put(NPStringFog.decode(new byte[]{20, 12, 5, 17, 11}, "ceaec9", true, true), this.zac);
            jSONObject.put(NPStringFog.decode(new byte[]{95, 1, 88, 2, 90, 70}, "7d1e22", 1.019120444E9d), this.zad);
        } catch (JSONException e) {
        }
        return jSONObject;
    }

    public String toString() {
        return String.format(Locale.US, NPStringFog.decode(new byte[]{113, 12, 4, 86, 92, 23, 29, 5, 29, 20, 93, 23, 29, 18}, "8ae197", 4.01709166E8d), Integer.valueOf(this.zac), Integer.valueOf(this.zad), this.zab.toString());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.zaa);
        SafeParcelWriter.writeParcelable(parcel, 2, getUrl(), i, false);
        SafeParcelWriter.writeInt(parcel, 3, getWidth());
        SafeParcelWriter.writeInt(parcel, 4, getHeight());
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
    }
}
