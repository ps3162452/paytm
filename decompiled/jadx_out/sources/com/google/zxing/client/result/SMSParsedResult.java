package com.google.zxing.client.result;

import n.NPStringFog;

/* JADX INFO: loaded from: classes65.dex */
public final class SMSParsedResult extends ParsedResult {
    private final String body;
    private final String[] numbers;
    private final String subject;
    private final String[] vias;

    public SMSParsedResult(String str, String str2, String str3, String str4) {
        super(ParsedResultType.SMS);
        this.numbers = new String[]{str};
        this.vias = new String[]{str2};
        this.subject = str3;
        this.body = str4;
    }

    public SMSParsedResult(String[] strArr, String[] strArr2, String str, String str2) {
        super(ParsedResultType.SMS);
        this.numbers = strArr;
        this.vias = strArr2;
        this.subject = str;
        this.body = str2;
    }

    public String getBody() {
        return this.body;
    }

    @Override // com.google.zxing.client.result.ParsedResult
    public String getDisplayResult() {
        StringBuilder sb = new StringBuilder(100);
        maybeAppend(this.numbers, sb);
        maybeAppend(this.subject, sb);
        maybeAppend(this.body, sb);
        return sb.toString();
    }

    public String[] getNumbers() {
        return this.numbers;
    }

    public String getSMSURI() {
        StringBuilder sb = new StringBuilder();
        sb.append(NPStringFog.decode(new byte[]{74, 8, 69, 15}, "9e65b2", true, true));
        boolean z = true;
        for (int i = 0; i < this.numbers.length; i++) {
            if (z) {
                z = false;
            } else {
                sb.append(',');
            }
            sb.append(this.numbers[i]);
            if (this.vias != null && this.vias[i] != null) {
                sb.append(NPStringFog.decode(new byte[]{9, 18, 89, 2, 89}, "2d0cd7", 1070160125L));
                sb.append(this.vias[i]);
            }
        }
        boolean z2 = this.body != null;
        boolean z3 = this.subject != null;
        if (z2 || z3) {
            sb.append('?');
            if (z2) {
                sb.append(NPStringFog.decode(new byte[]{83, 10, 87, 74, 15}, "1e332e", false, true));
                sb.append(this.body);
            }
            if (z3) {
                if (z2) {
                    sb.append('&');
                }
                sb.append(NPStringFog.decode(new byte[]{22, 66, 80, 82, 6, 86, 17, 10}, "e728c5", true, false));
                sb.append(this.subject);
            }
        }
        return sb.toString();
    }

    public String getSubject() {
        return this.subject;
    }

    public String[] getVias() {
        return this.vias;
    }
}
