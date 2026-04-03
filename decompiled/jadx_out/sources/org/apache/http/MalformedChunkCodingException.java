package org.apache.http;

import java.io.IOException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class MalformedChunkCodingException extends IOException {
    public MalformedChunkCodingException() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 65, 23, 87, 21}, "e5b54f", true, true));
    }

    public MalformedChunkCodingException(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 16, 68, 84, 24}, "bd169a", false));
    }
}
