package androidx.core.net;

import android.net.Uri;
import androidx.core.util.Preconditions;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class MailTo {
    private static final String BCC = NPStringFog.decode(new byte[]{1, 90, 83}, "c90222", -3.2590282E8f);
    private static final String BODY = NPStringFog.decode(new byte[]{86, 94, 86, 28}, "412ea9", false);
    private static final String CC = NPStringFog.decode(new byte[]{6, 86}, "e569ef", true);
    private static final String MAILTO = NPStringFog.decode(new byte[]{15, 84, 91, 8, 21, 89}, "b52da6", -1610529295L);
    public static final String MAILTO_SCHEME = NPStringFog.decode(new byte[]{12, 84, 90, 93, 65, 86, 91}, "a53159", 1526461847L);
    private static final String SUBJECT = NPStringFog.decode(new byte[]{74, 69, 91, 12, 86, 5, 77}, "909f3f", 6346615.0f);
    private static final String TO = NPStringFog.decode(new byte[]{68, 12}, "0c704e", 26566);
    private HashMap<String, String> mHeaders = new HashMap<>();

    private MailTo() {
    }

    public static boolean isMailTo(Uri uri) {
        return uri != null && MAILTO.equals(uri.getScheme());
    }

    public static boolean isMailTo(String str) {
        return str != null && str.startsWith(MAILTO_SCHEME);
    }

    public static MailTo parse(Uri uri) throws ParseException {
        return parse(uri.toString());
    }

    public static MailTo parse(String str) throws ParseException {
        String strDecode;
        String strSubstring;
        Preconditions.checkNotNull(str);
        if (!isMailTo(str)) {
            throw new ParseException(NPStringFog.decode(new byte[]{125, 88, 65, 23, 89, 69, 94, 86, 92, 91, 76, 10, 19, 68, 86, 95, 93, 8, 86}, "37578e", -1.430016048E9d));
        }
        int iIndexOf = str.indexOf(35);
        if (iIndexOf != -1) {
            str = str.substring(0, iIndexOf);
        }
        int iIndexOf2 = str.indexOf(63);
        if (iIndexOf2 == -1) {
            strDecode = Uri.decode(str.substring(MAILTO_SCHEME.length()));
            strSubstring = null;
        } else {
            strDecode = Uri.decode(str.substring(MAILTO_SCHEME.length(), iIndexOf2));
            strSubstring = str.substring(iIndexOf2 + 1);
        }
        MailTo mailTo = new MailTo();
        if (strSubstring != null) {
            for (String str2 : strSubstring.split(NPStringFog.decode(new byte[]{31}, "960254", -465614558L))) {
                String[] strArrSplit = str2.split(NPStringFog.decode(new byte[]{91}, "f904d8", true, true), 2);
                if (strArrSplit.length != 0) {
                    mailTo.mHeaders.put(Uri.decode(strArrSplit[0]).toLowerCase(Locale.ROOT), strArrSplit.length > 1 ? Uri.decode(strArrSplit[1]) : null);
                }
            }
        }
        String to = mailTo.getTo();
        if (to != null) {
            strDecode = strDecode + NPStringFog.decode(new byte[]{26, 19}, "63e659", 16923) + to;
        }
        mailTo.mHeaders.put(TO, strDecode);
        return mailTo;
    }

    public String getBcc() {
        return this.mHeaders.get(BCC);
    }

    public String getBody() {
        return this.mHeaders.get(BODY);
    }

    public String getCc() {
        return this.mHeaders.get(CC);
    }

    public Map<String, String> getHeaders() {
        return this.mHeaders;
    }

    public String getSubject() {
        return this.mHeaders.get(SUBJECT);
    }

    public String getTo() {
        return this.mHeaders.get(TO);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(MAILTO_SCHEME);
        sb.append('?');
        for (Map.Entry<String, String> entry : this.mHeaders.entrySet()) {
            sb.append(Uri.encode(entry.getKey()));
            sb.append('=');
            sb.append(Uri.encode(entry.getValue()));
            sb.append('&');
        }
        return sb.toString();
    }
}
