package okhttp3.internal.tls;

import javax.security.auth.x500.X500Principal;
import n.NPStringFog;

/* JADX INFO: loaded from: classes62.dex */
final class DistinguishedNameParser {
    private int beg;
    private char[] chars;
    private int cur;
    private final String dn;
    private int end;
    private final int length;
    private int pos;

    DistinguishedNameParser(X500Principal x500Principal) {
        this.dn = x500Principal.getName(NPStringFog.decode(new byte[]{106, 113, 34, 1, 6, 6, 11}, "87a343", false));
        this.length = this.dn.length();
    }

    private String escapedAV() {
        this.beg = this.pos;
        this.end = this.pos;
        while (this.pos < this.length) {
            switch (this.chars[this.pos]) {
                case ' ':
                    this.cur = this.end;
                    this.pos++;
                    char[] cArr = this.chars;
                    int i = this.end;
                    this.end = i + 1;
                    cArr[i] = (char) 32;
                    while (this.pos < this.length && this.chars[this.pos] == ' ') {
                        char[] cArr2 = this.chars;
                        int i2 = this.end;
                        this.end = i2 + 1;
                        cArr2[i2] = (char) 32;
                        this.pos++;
                    }
                    if (this.pos == this.length || this.chars[this.pos] == ',' || this.chars[this.pos] == '+' || this.chars[this.pos] == ';') {
                        return new String(this.chars, this.beg, this.cur - this.beg);
                    }
                    break;
                case '+':
                case ',':
                case ';':
                    return new String(this.chars, this.beg, this.end - this.beg);
                case '\\':
                    char[] cArr3 = this.chars;
                    int i3 = this.end;
                    this.end = i3 + 1;
                    cArr3[i3] = getEscaped();
                    this.pos++;
                    break;
                default:
                    char[] cArr4 = this.chars;
                    int i4 = this.end;
                    this.end = i4 + 1;
                    cArr4[i4] = this.chars[this.pos];
                    this.pos++;
                    break;
            }
        }
        return new String(this.chars, this.beg, this.end - this.beg);
    }

    private int getByte(int i) {
        int i2;
        int i3;
        if (i + 1 >= this.length) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{121, 87, 84, 84, 89, 70, 89, 83, 92, 18, 114, 122, 14, 22}, "468264", 1608714533L) + this.dn);
        }
        char c = this.chars[i];
        if (c >= '0' && c <= '9') {
            i2 = c - '0';
        } else if (c >= 'a' && c <= 'f') {
            i2 = c - 'W';
        } else {
            if (c < 'A' || c > 'F') {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{43, 3, 85, 2, 92, 68, 11, 7, 93, 68, 119, 120, 92, 66}, "fb9d36", -9.4765645E8f) + this.dn);
            }
            i2 = c - '7';
        }
        char c2 = this.chars[i + 1];
        if (c2 >= '0' && c2 <= '9') {
            i3 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i3 = c2 - 'W';
        } else {
            if (c2 < 'A' || c2 > 'F') {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{121, 0, 95, 84, 12, 71, 89, 4, 87, 18, 39, 123, 14, 65}, "4a32c5", -1.4446226E9f) + this.dn);
            }
            i3 = c2 - '7';
        }
        return (i2 << 4) + i3;
    }

    private char getEscaped() {
        this.pos++;
        if (this.pos == this.length) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{101, 94, 82, 26, 64, 81, 83, 68, 82, 6, 16, 81, 94, 84, 23, 13, 86, 20, 116, 126, 13, 66}, "007b04", 1.393545067E9d) + this.dn);
        }
        switch (this.chars[this.pos]) {
            case ' ':
            case '\"':
            case '#':
            case '%':
            case '*':
            case '+':
            case ',':
            case ';':
            case '<':
            case '=':
            case '>':
            case '\\':
            case '_':
                return this.chars[this.pos];
            default:
                return getUTF8();
        }
    }

    private char getUTF8() {
        int i;
        int i2;
        int i3 = getByte(this.pos);
        this.pos++;
        if (i3 < 128) {
            return (char) i3;
        }
        if (i3 < 192 || i3 > 247) {
            return '?';
        }
        if (i3 <= 223) {
            i = 1;
            i2 = i3 & 31;
        } else if (i3 <= 239) {
            i = 2;
            i2 = i3 & 15;
        } else {
            i = 3;
            i2 = i3 & 7;
        }
        int i4 = i2;
        for (int i5 = 0; i5 < i; i5++) {
            this.pos++;
            if (this.pos == this.length || this.chars[this.pos] != '\\') {
                return '?';
            }
            this.pos++;
            int i6 = getByte(this.pos);
            this.pos++;
            if ((i6 & 192) != 128) {
                return '?';
            }
            i4 = (i4 << 6) + (i6 & 63);
        }
        return (char) i4;
    }

    private String hexAV() {
        int i;
        if (this.pos + 4 >= this.length) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{108, 95, 6, 64, 72, 3, 90, 69, 6, 92, 24, 3, 87, 85, 67, 87, 94, 70, 125, 127, 89, 24}, "91c88f", 6.151928E8f) + this.dn);
        }
        this.beg = this.pos;
        this.pos++;
        while (this.pos != this.length && this.chars[this.pos] != '+' && this.chars[this.pos] != ',' && this.chars[this.pos] != ';') {
            if (this.chars[this.pos] == ' ') {
                this.end = this.pos;
                this.pos++;
                while (this.pos < this.length && this.chars[this.pos] == ' ') {
                    this.pos++;
                }
                i = this.end - this.beg;
                if (i >= 5 || (i & 1) == 0) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{102, 88, 84, 25, 17, 6, 80, 66, 84, 5, 65, 6, 93, 82, 17, 14, 7, 67, 119, 120, 11, 65}, "361aac", true, true) + this.dn);
                }
                byte[] bArr = new byte[i / 2];
                int i2 = this.beg + 1;
                for (int i3 = 0; i3 < bArr.length; i3++) {
                    bArr[i3] = (byte) getByte(i2);
                    i2 += 2;
                }
                return new String(this.chars, this.beg, i);
            }
            if (this.chars[this.pos] >= 'A' && this.chars[this.pos] <= 'F') {
                this.chars[this.pos] = (char) (r0[r1] + ' ');
            }
            this.pos++;
        }
        this.end = this.pos;
        i = this.end - this.beg;
        if (i >= 5) {
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{102, 88, 84, 25, 17, 6, 80, 66, 84, 5, 65, 6, 93, 82, 17, 14, 7, 67, 119, 120, 11, 65}, "361aac", true, true) + this.dn);
    }

    private String nextAT() {
        while (this.pos < this.length && this.chars[this.pos] == ' ') {
            this.pos++;
        }
        if (this.pos == this.length) {
            return null;
        }
        this.beg = this.pos;
        this.pos++;
        while (this.pos < this.length && this.chars[this.pos] != '=' && this.chars[this.pos] != ' ') {
            this.pos++;
        }
        if (this.pos >= this.length) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{109, 86, 92, 64, 19, 86, 91, 76, 92, 92, 67, 86, 86, 92, 25, 87, 5, 19, 124, 118, 3, 24}, "8898c3", true, true) + this.dn);
        }
        this.end = this.pos;
        if (this.chars[this.pos] == ' ') {
            while (this.pos < this.length && this.chars[this.pos] != '=' && this.chars[this.pos] == ' ') {
                this.pos++;
            }
            if (this.chars[this.pos] != '=' || this.pos == this.length) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{102, 95, 87, 78, 20, 93, 80, 69, 87, 82, 68, 93, 93, 85, 18, 89, 2, 24, 119, 127, 8, 22}, "3126d8", 1.6742139E9f) + this.dn);
            }
        }
        this.pos++;
        while (this.pos < this.length && this.chars[this.pos] == ' ') {
            this.pos++;
        }
        if (this.end - this.beg > 4 && this.chars[this.beg + 3] == '.' && ((this.chars[this.beg] == 'O' || this.chars[this.beg] == 'o') && ((this.chars[this.beg + 1] == 'I' || this.chars[this.beg + 1] == 'i') && (this.chars[this.beg + 2] == 'D' || this.chars[this.beg + 2] == 'd')))) {
            this.beg += 4;
        }
        return new String(this.chars, this.beg, this.end - this.beg);
    }

    private String quotedAV() {
        this.pos++;
        this.beg = this.pos;
        this.end = this.beg;
        while (this.pos != this.length) {
            if (this.chars[this.pos] == '\"') {
                this.pos++;
                while (this.pos < this.length && this.chars[this.pos] == ' ') {
                    this.pos++;
                }
                return new String(this.chars, this.beg, this.end - this.beg);
            }
            if (this.chars[this.pos] == '\\') {
                this.chars[this.end] = getEscaped();
            } else {
                this.chars[this.end] = this.chars[this.pos];
            }
            this.pos++;
            this.end++;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{52, 89, 85, 76, 17, 7, 2, 67, 85, 80, 65, 7, 15, 83, 16, 91, 7, 66, 37, 121, 10, 20}, "a704ab", false, true) + this.dn);
    }

    public String findMostSpecific(String str) {
        this.pos = 0;
        this.beg = 0;
        this.end = 0;
        this.cur = 0;
        this.chars = this.dn.toCharArray();
        String strNextAT = nextAT();
        if (strNextAT == null) {
            return null;
        }
        do {
            String strHexAV = "";
            if (this.pos == this.length) {
                return null;
            }
            switch (this.chars[this.pos]) {
                case '\"':
                    strHexAV = quotedAV();
                    break;
                case '#':
                    strHexAV = hexAV();
                    break;
                case '+':
                case ',':
                case ';':
                    break;
                default:
                    strHexAV = escapedAV();
                    break;
            }
            if (str.equalsIgnoreCase(strNextAT)) {
                return strHexAV;
            }
            if (this.pos >= this.length) {
                return null;
            }
            if (this.chars[this.pos] != ',' && this.chars[this.pos] != ';' && this.chars[this.pos] != '+') {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{120, 87, 15, 80, 95, 75, 88, 83, 7, 22, 116, 119, 15, 22}, "56c609", false) + this.dn);
            }
            this.pos++;
            strNextAT = nextAT();
        } while (strNextAT != null);
        throw new IllegalStateException(NPStringFog.decode(new byte[]{123, 3, 15, 86, 95, 19, 91, 7, 7, 16, 116, 47, 12, 66}, "6bc00a", 4.17093736E8d) + this.dn);
    }
}
