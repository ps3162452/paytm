package com.android.internal.http.multipart;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
public class FilePartSource implements PartSource {
    public FilePartSource(File file) throws FileNotFoundException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 66, 17, 6, 24}, "46dd91", 4.173364E8f));
    }

    public FilePartSource(String str, File file) throws FileNotFoundException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 23, 71, 81, 22}, "5c2376", 7245));
    }

    @Override // com.android.internal.http.multipart.PartSource
    public InputStream createInputStream() throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 16, 69, 90, 64}, "6d08a0", 77620640L));
    }

    @Override // com.android.internal.http.multipart.PartSource
    public String getFileName() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 22, 68, 7, 19}, "db1e21", 8.20649214E8d));
    }

    @Override // com.android.internal.http.multipart.PartSource
    public long getLength() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 23, 68, 83, 16}, "7c1115", 5.0502205E8f));
    }
}
