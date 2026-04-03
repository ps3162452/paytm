package com.android.internal.http.multipart;

import java.io.InputStream;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
public class ByteArrayPartSource implements PartSource {
    public ByteArrayPartSource(String str, byte[] bArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 71, 19, 87, 66}, "73f5c1", -25699));
    }

    @Override // com.android.internal.http.multipart.PartSource
    public InputStream createInputStream() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 21, 16, 80, 67}, "7ae2b5", false, true));
    }

    @Override // com.android.internal.http.multipart.PartSource
    public String getFileName() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 77, 67, 4, 68}, "096fe1", -1.187143665E9d));
    }

    @Override // com.android.internal.http.multipart.PartSource
    public long getLength() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 67, 16, 85, 18}, "67e73d", 1.68181129E9d));
    }
}
