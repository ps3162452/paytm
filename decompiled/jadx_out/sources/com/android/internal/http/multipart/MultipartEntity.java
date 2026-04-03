package com.android.internal.http.multipart;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import n.NPStringFog;
import org.apache.http.Header;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
public class MultipartEntity extends AbstractHttpEntity {
    public static final String MULTIPART_BOUNDARY = NPStringFog.decode(new byte[]{92, 69, 77, 70, 25, 85, 81, 69, 81, 89, 83, 22, 89, 68, 85, 66, 94, 72, 85, 67, 77, 24, 85, 87, 65, 95, 93, 87, 69, 65}, "419678", -1.861809514E9d);
    protected Part[] parts = null;

    public MultipartEntity(Part[] partArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 17, 65, 85, 24}, "be4794", 1.680584452E9d));
    }

    public MultipartEntity(Part[] partArr, HttpParams httpParams) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 65, 16, 84, 24}, "c5e696", -17669));
    }

    @Override // org.apache.http.HttpEntity
    public InputStream getContent() throws IllegalStateException, IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 68, 76, 83, 68}, "b091ed", 7997902L));
    }

    @Override // org.apache.http.HttpEntity
    public long getContentLength() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 22, 66, 90, 69}, "8b78dd", false, true));
    }

    @Override // org.apache.http.entity.AbstractHttpEntity, org.apache.http.HttpEntity
    public Header getContentType() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 70, 19, 7, 71}, "02feff", false));
    }

    protected byte[] getMultipartBoundary() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 68, 67, 85, 19}, "b0672a", false, true));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isRepeatable() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 22, 16, 7, 20}, "cbee56", false));
    }

    @Override // org.apache.http.HttpEntity
    public boolean isStreaming() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 17, 17, 3, 25}, "5eda83", 1867378718L));
    }

    @Override // org.apache.http.HttpEntity
    public void writeTo(OutputStream outputStream) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 18, 66, 80, 19}, "bf7223", -9.324321E8d));
    }
}
