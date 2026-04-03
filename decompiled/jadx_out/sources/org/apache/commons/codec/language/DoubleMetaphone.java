package org.apache.commons.codec.language;

import n.NPStringFog;
import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.StringEncoder;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class DoubleMetaphone implements StringEncoder {
    protected int maxCodeLen;

    public class DoubleMetaphoneResult {
        final DoubleMetaphone this$0;

        public DoubleMetaphoneResult(DoubleMetaphone doubleMetaphone, int i) {
            this.this$0 = doubleMetaphone;
            throw new RuntimeException(NPStringFog.decode(new byte[]{101, 21, 64, 3, 69}, "6a5ad2", -2.0515935E9f));
        }

        public void append(char c) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{101, 66, 76, 0, 21}, "669b48", true));
        }

        public void append(char c, char c2) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{50, 18, 70, 3, 17}, "af3a09", false, true));
        }

        public void append(String str) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{102, 18, 68, 7, 25}, "5f1e88", -1.92913923E9d));
        }

        public void append(String str, String str2) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{55, 67, 66, 4, 71}, "d77ff9", -1091253172L));
        }

        public void appendAlternate(char c) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{49, 70, 68, 82, 71}, "b210fe", 9.7942925E8f));
        }

        public void appendAlternate(String str) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{102, 16, 20, 81, 66}, "5da3c2", -2014332563L));
        }

        public void appendPrimary(char c) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{99, 66, 17, 81, 19}, "06d32c", false, true));
        }

        public void appendPrimary(String str) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{99, 64, 17, 80, 69}, "04d2d9", -8082));
        }

        public String getAlternate() {
            throw new RuntimeException(NPStringFog.decode(new byte[]{98, 64, 77, 0, 24}, "148b9c", 2.066509169E9d));
        }

        public String getPrimary() {
            throw new RuntimeException(NPStringFog.decode(new byte[]{102, 67, 65, 86, 18}, "57443d", -1315583897L));
        }

        public boolean isComplete() {
            throw new RuntimeException(NPStringFog.decode(new byte[]{49, 76, 17, 91, 23}, "b8d964", -3348));
        }
    }

    public DoubleMetaphone() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 16, 64, 82, 24}, "1d509b", -4.4453795E8f));
    }

    protected static boolean contains(String str, int i, int i2, String[] strArr) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 18, 67, 84, 67}, "ef66b1", false, false));
    }

    protected char charAt(String str, int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 16, 76, 87, 25}, "ed958a", true));
    }

    public String doubleMetaphone(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 22, 23, 83, 67}, "7bb1b3", true, false));
    }

    public String doubleMetaphone(String str, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 21, 66, 84, 24}, "ea7692", -1.262878614E9d));
    }

    @Override // org.apache.commons.codec.Encoder
    public Object encode(Object obj) throws EncoderException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 76, 20, 82, 67}, "28a0b8", 5054));
    }

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 66, 76, 1, 71}, "469cfd", 1031864294L));
    }

    public int getMaxCodeLen() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 16, 71, 80, 16}, "bd2216", false));
    }

    public boolean isDoubleMetaphoneEqual(String str, String str2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 70, 17, 86, 71}, "c2d4f3", -963300283L));
    }

    public boolean isDoubleMetaphoneEqual(String str, String str2, boolean z) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{98, 67, 67, 86, 68}, "1764eb", 6.8735514E8f));
    }

    public void setMaxCodeLen(int i) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 18, 16, 90, 23}, "efe869", false));
    }
}
