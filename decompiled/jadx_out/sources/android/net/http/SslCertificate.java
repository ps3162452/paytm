package android.net.http;

import android.os.Bundle;
import java.security.cert.X509Certificate;
import java.util.Date;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
public class SslCertificate {

    public class DName {
        final SslCertificate this$0;

        public DName(SslCertificate sslCertificate, String str) {
            this.this$0 = sslCertificate;
            throw new RuntimeException(NPStringFog.decode(new byte[]{97, 16, 22, 1, 22}, "2dcc73", -7.945484E8f));
        }

        public String getCName() {
            throw new RuntimeException(NPStringFog.decode(new byte[]{97, 69, 65, 91, 16}, "21491f", true, true));
        }

        public String getDName() {
            throw new RuntimeException(NPStringFog.decode(new byte[]{99, 21, 17, 80, 69}, "0ad2db", false));
        }

        public String getOName() {
            throw new RuntimeException(NPStringFog.decode(new byte[]{97, 68, 20, 86, 66}, "20a4c3", -1.995240113E9d));
        }

        public String getUName() {
            throw new RuntimeException(NPStringFog.decode(new byte[]{96, 64, 71, 82, 22}, "34207d", false));
        }
    }

    @Deprecated
    public SslCertificate(String str, String str2, String str3, String str4) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 66, 66, 6, 69}, "a67ddb", 26656));
    }

    @Deprecated
    public SslCertificate(String str, String str2, Date date, Date date2) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 18, 22, 4, 66}, "cfcfc0", -1228));
    }

    public SslCertificate(X509Certificate x509Certificate) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 16, 69, 80, 25}, "6d028c", 944202810L));
    }

    public static SslCertificate restoreState(Bundle bundle) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 22, 69, 1, 71}, "5b0cf1", -16908));
    }

    public static Bundle saveState(SslCertificate sslCertificate) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{97, 76, 76, 4, 22}, "289f7f", -2.8390435E8f));
    }

    public DName getIssuedBy() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 77, 71, 6, 22}, "592d70", -1.8972886E9f));
    }

    public DName getIssuedTo() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 64, 69, 1, 21}, "640c4c", true));
    }

    @Deprecated
    public String getValidNotAfter() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 76, 70, 80, 19}, "383222", false));
    }

    public Date getValidNotAfterDate() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 68, 64, 86, 25}, "a0548b", true, false));
    }

    @Deprecated
    public String getValidNotBefore() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 77, 69, 83, 17}, "b90101", false));
    }

    public Date getValidNotBeforeDate() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{101, 17, 17, 91, 25}, "6ed980", 4792));
    }

    public String toString() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 64, 23, 81, 71}, "b4b3f4", true, true));
    }
}
