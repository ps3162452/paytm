package okhttp3;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import javax.annotation.Nullable;
import n.NPStringFog;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSink;

/* JADX INFO: loaded from: classes62.dex */
public final class FormBody extends RequestBody {
    private static final MediaType CONTENT_TYPE = MediaType.parse(NPStringFog.decode(new byte[]{86, 66, 64, 94, 88, 82, 86, 70, 89, 93, 95, 30, 79, 31, 71, 69, 70, 28, 81, 93, 66, 95, 28, 68, 69, 94, 85, 92, 82, 94, 83, 87, 84}, "720211", false, true));
    private final List<String> encodedNames;
    private final List<String> encodedValues;

    public static final class Builder {
        private final Charset charset;
        private final List<String> names;
        private final List<String> values;

        public Builder() {
            this(null);
        }

        public Builder(Charset charset) {
            this.names = new ArrayList();
            this.values = new ArrayList();
            this.charset = charset;
        }

        public Builder add(String str, String str2) {
            this.names.add(HttpUrl.canonicalize(str, NPStringFog.decode(new byte[]{20, 18, 67, 92, 13, 14, 9, 14, 36, 61, 107, 108, 84, 75, 25, 26, 25, 110, 11, 19, 66, 71, 18, 26, 29, 28, 26}, "40df62", 2081364247L), false, false, true, true, this.charset));
            this.values.add(HttpUrl.canonicalize(str2, NPStringFog.decode(new byte[]{66, 16, 21, 2, 89, 95, 95, 12, 114, 99, 63, 61, 2, 73, 79, 68, 77, 63, 93, 17, 20, 25, 70, 75, 75, 30, 76}, "b228bc", -25399), false, false, true, true, this.charset));
            return this;
        }

        public Builder addEncoded(String str, String str2) {
            this.names.add(HttpUrl.canonicalize(str, NPStringFog.decode(new byte[]{24, 27, 20, 11, 89, 4, 5, 7, 115, 106, 63, 102, 88, 66, 78, 77, 77, 100, 7, 26, 21, 16, 70, 16, 17, 21, 77}, "8931b8", -663701660L), true, false, true, true, this.charset));
            this.values.add(HttpUrl.canonicalize(str2, NPStringFog.decode(new byte[]{18, 27, 65, 14, 89, 89, 15, 7, 38, 111, 63, 59, 82, 66, 27, 72, 77, 57, 13, 26, 64, 21, 70, 77, 27, 21, 24}, "29f4be", -339293580L), true, false, true, true, this.charset));
            return this;
        }

        public FormBody build() {
            return new FormBody(this.names, this.values);
        }
    }

    FormBody(List<String> list, List<String> list2) {
        this.encodedNames = Util.immutableList(list);
        this.encodedValues = Util.immutableList(list2);
    }

    private long writeOrCountBytes(@Nullable BufferedSink bufferedSink, boolean z) {
        long size = 0;
        Buffer buffer = z ? new Buffer() : bufferedSink.buffer();
        int size2 = this.encodedNames.size();
        for (int i = 0; i < size2; i++) {
            if (i > 0) {
                buffer.writeByte(38);
            }
            buffer.writeUtf8(this.encodedNames.get(i));
            buffer.writeByte(61);
            buffer.writeUtf8(this.encodedValues.get(i));
        }
        if (z) {
            size = buffer.size();
            buffer.clear();
        }
        return size;
    }

    @Override // okhttp3.RequestBody
    public long contentLength() {
        return writeOrCountBytes(null, true);
    }

    @Override // okhttp3.RequestBody
    public MediaType contentType() {
        return CONTENT_TYPE;
    }

    public String encodedName(int i) {
        return this.encodedNames.get(i);
    }

    public String encodedValue(int i) {
        return this.encodedValues.get(i);
    }

    public String name(int i) {
        return HttpUrl.percentDecode(encodedName(i), true);
    }

    public int size() {
        return this.encodedNames.size();
    }

    public String value(int i) {
        return HttpUrl.percentDecode(encodedValue(i), true);
    }

    @Override // okhttp3.RequestBody
    public void writeTo(BufferedSink bufferedSink) throws IOException {
        writeOrCountBytes(bufferedSink, false);
    }
}
