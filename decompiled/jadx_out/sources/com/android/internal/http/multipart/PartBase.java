package com.android.internal.http.multipart;

import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
public abstract class PartBase extends Part {
    public PartBase(String str, String str2, String str3, String str4) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 69, 66, 80, 20}, "117254", 9.8978355E8f));
    }

    @Override // com.android.internal.http.multipart.Part
    public String getCharSet() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 71, 77, 81, 17}, "538301", 23096));
    }

    @Override // com.android.internal.http.multipart.Part
    public String getContentType() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 68, 70, 1, 22}, "403c76", 1609339651L));
    }

    @Override // com.android.internal.http.multipart.Part
    public String getName() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 69, 20, 82, 68}, "61a0ee", 1.171945879E9d));
    }

    @Override // com.android.internal.http.multipart.Part
    public String getTransferEncoding() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 18, 64, 7, 71}, "4f5efb", 4.6273155E8f));
    }

    public void setCharSet(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 18, 65, 3, 18}, "bf4a34", -6168));
    }

    public void setContentType(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 70, 76, 90, 16}, "92981c", false, true));
    }

    public void setName(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 68, 64, 3, 67}, "d05ab7", 1010659688L));
    }

    public void setTransferEncoding(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 64, 65, 82, 20}, "544057", 22724));
    }
}
