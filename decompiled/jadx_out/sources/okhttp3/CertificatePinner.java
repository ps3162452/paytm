package okhttp3;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import n.NPStringFog;
import okhttp3.internal.Util;
import okhttp3.internal.tls.CertificateChainCleaner;
import okio.ByteString;

/* JADX INFO: loaded from: classes62.dex */
public final class CertificatePinner {
    public static final CertificatePinner DEFAULT = new Builder().build();

    @Nullable
    private final CertificateChainCleaner certificateChainCleaner;
    private final Set<Pin> pins;

    public static final class Builder {
        private final List<Pin> pins = new ArrayList();

        public Builder add(String str, String... strArr) {
            if (str == null) {
                throw new NullPointerException(NPStringFog.decode(new byte[]{19, 89, 66, 67, 83, 65, 13, 24, 11, 10, 22, 93, 22, 84, 90}, "c86763", -1.880557994E9d));
            }
            for (String str2 : strArr) {
                this.pins.add(new Pin(str, str2));
            }
            return this;
        }

        public CertificatePinner build() {
            return new CertificatePinner(new LinkedHashSet(this.pins), null);
        }
    }

    static final class Pin {
        private static final String WILDCARD = NPStringFog.decode(new byte[]{76, 26}, "f4f7c8", -32710);
        final String canonicalHostname;
        final ByteString hash;
        final String hashAlgorithm;
        final String pattern;

        Pin(String str, String str2) {
            this.pattern = str;
            this.canonicalHostname = str.startsWith(NPStringFog.decode(new byte[]{19, 25}, "97fde1", -9360)) ? HttpUrl.parse(NPStringFog.decode(new byte[]{11, 18, 67, 72, 8, 76, 76}, "cf782c", true) + str.substring(NPStringFog.decode(new byte[]{73, 72}, "cf373b", 4.3998874E8f).length())).host() : HttpUrl.parse(NPStringFog.decode(new byte[]{12, 77, 77, 68, 10, 26, 75}, "d99405", -28054) + str).host();
            if (str2.startsWith(NPStringFog.decode(new byte[]{75, 13, 80, 4, 24}, "8e157b", -727123019L))) {
                this.hashAlgorithm = NPStringFog.decode(new byte[]{17, 94, 2, 2, 73}, "b6c3fd", true);
                this.hash = ByteString.decodeBase64(str2.substring(NPStringFog.decode(new byte[]{18, 92, 80, 1, 25}, "a4106f", 2.3714816E8f).length()));
            } else {
                if (!str2.startsWith(NPStringFog.decode(new byte[]{22, 13, 0, 7, 0, 87, 74}, "eea55a", 676816707L))) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{17, 81, 89, 17, 25, 9, 20, 75, 67, 66, 74, 16, 0, 74, 67, 66, 78, 13, 21, 80, 23, 69, 74, 12, 0, 10, 2, 84, 22, 67, 65, 87, 69, 66, 30, 23, 9, 89, 6, 77, 30, 94, 65}, "a87b9d", 17764) + str2);
                }
                this.hashAlgorithm = NPStringFog.decode(new byte[]{71, 94, 88, 11, 87, 0, 27}, "4699b6", 15421);
                this.hash = ByteString.decodeBase64(str2.substring(NPStringFog.decode(new byte[]{67, 89, 3, 86, 2, 5, 31}, "01bd73", 10953).length()));
            }
            if (this.hash == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{22, 90, 13, 66, 65, 15, 19, 64, 23, 17, 3, 7, 70, 81, 2, 66, 4, 84, 82, 9, 67}, "f3c1ab", true) + str2);
            }
        }

        public boolean equals(Object obj) {
            return (obj instanceof Pin) && this.pattern.equals(((Pin) obj).pattern) && this.hashAlgorithm.equals(((Pin) obj).hashAlgorithm) && this.hash.equals(((Pin) obj).hash);
        }

        public int hashCode() {
            return ((((this.pattern.hashCode() + 527) * 31) + this.hashAlgorithm.hashCode()) * 31) + this.hash.hashCode();
        }

        boolean matches(String str) {
            if (!this.pattern.startsWith(WILDCARD)) {
                return str.equals(this.canonicalHostname);
            }
            int iIndexOf = str.indexOf(46);
            return (str.length() - iIndexOf) + (-1) == this.canonicalHostname.length() && str.regionMatches(false, iIndexOf + 1, this.canonicalHostname, 0, this.canonicalHostname.length());
        }

        public String toString() {
            return this.hashAlgorithm + this.hash.base64();
        }
    }

    CertificatePinner(Set<Pin> set, @Nullable CertificateChainCleaner certificateChainCleaner) {
        this.pins = set;
        this.certificateChainCleaner = certificateChainCleaner;
    }

    public static String pin(Certificate certificate) {
        if (certificate instanceof X509Certificate) {
            return NPStringFog.decode(new byte[]{22, 90, 84, 10, 0, 7, 74}, "e25851", 1.68664599E8d) + sha256((X509Certificate) certificate).base64();
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{114, 0, 69, 69, 12, 87, 88, 6, 86, 69, 0, 17, 65, 12, 89, 95, 12, 95, 86, 69, 69, 84, 20, 68, 88, 23, 82, 66, 69, 105, 4, 85, 14, 17, 6, 84, 67, 17, 94, 87, 12, 82, 80, 17, 82, 66}, "1e71e1", -1.359070114E9d));
    }

    static ByteString sha1(X509Certificate x509Certificate) {
        return ByteString.of(x509Certificate.getPublicKey().getEncoded()).sha1();
    }

    static ByteString sha256(X509Certificate x509Certificate) {
        return ByteString.of(x509Certificate.getPublicKey().getEncoded()).sha256();
    }

    public void check(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<Pin> listFindMatchingPins = findMatchingPins(str);
        if (listFindMatchingPins.isEmpty()) {
            return;
        }
        if (this.certificateChainCleaner != null) {
            list = this.certificateChainCleaner.clean(list, str);
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i);
            ByteString byteStringSha1 = null;
            ByteString byteStringSha256 = null;
            int size2 = listFindMatchingPins.size();
            int i2 = 0;
            while (i2 < size2) {
                Pin pin = listFindMatchingPins.get(i2);
                if (pin.hashAlgorithm.equals(NPStringFog.decode(new byte[]{23, 14, 85, 86, 6, 85, 75}, "df4d3c", true, false))) {
                    if (byteStringSha256 == null) {
                        byteStringSha256 = sha256(x509Certificate);
                    }
                    if (pin.hash.equals(byteStringSha256)) {
                        return;
                    }
                } else {
                    if (!pin.hashAlgorithm.equals(NPStringFog.decode(new byte[]{21, 94, 85, 9, 22}, "f64891", 1.78152594E9d))) {
                        throw new AssertionError(NPStringFog.decode(new byte[]{68, 10, 71, 19, 71, 22, 94, 22, 64, 3, 83, 70, 89, 5, 71, 14, 118, 10, 86, 11, 70, 15, 67, 14, 92, 94, 20}, "1d4f7f", 6902) + pin.hashAlgorithm);
                    }
                    if (byteStringSha1 == null) {
                        byteStringSha1 = sha1(x509Certificate);
                    }
                    if (pin.hash.equals(byteStringSha1)) {
                        return;
                    }
                }
                i2++;
                byteStringSha256 = byteStringSha256;
                byteStringSha1 = byteStringSha1;
            }
        }
        StringBuilder sbAppend = new StringBuilder().append(NPStringFog.decode(new byte[]{39, 80, 68, 65, 13, 87, 13, 86, 87, 65, 1, 17, 20, 92, 88, 91, 13, 95, 3, 21, 80, 84, 13, 93, 17, 71, 83, 20}, "d565d1", -296198L)).append(NPStringFog.decode(new byte[]{108, 18, 70, 52, 4, 83, 20, 18, 5, 1, 19, 66, 15, 84, 15, 7, 0, 66, 3, 18, 5, 12, 0, 95, 8, 8}, "f2fda6", 2.081137646E9d));
        int size3 = list.size();
        for (int i3 = 0; i3 < size3; i3++) {
            X509Certificate x509Certificate2 = (X509Certificate) list.get(i3);
            sbAppend.append("\n    ").append(pin(x509Certificate2)).append(NPStringFog.decode(new byte[]{8, 67}, "2c6186", -1987049293L)).append(x509Certificate2.getSubjectDN().getName());
        }
        sbAppend.append(NPStringFog.decode(new byte[]{108, 20, 16, 98, 10, 10, 8, 81, 84, 18, 0, 1, 20, 64, 89, 84, 10, 7, 7, 64, 85, 65, 67, 2, 9, 70, 16}, "f402cd", -8.117937E8f)).append(str).append(NPStringFog.decode(new byte[]{94}, "d001ae", true, false));
        int size4 = listFindMatchingPins.size();
        for (int i4 = 0; i4 < size4; i4++) {
            sbAppend.append("\n    ").append(listFindMatchingPins.get(i4));
        }
        throw new SSLPeerUnverifiedException(sbAppend.toString());
    }

    public void check(String str, Certificate... certificateArr) throws SSLPeerUnverifiedException {
        check(str, Arrays.asList(certificateArr));
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof CertificatePinner) && Util.equal(this.certificateChainCleaner, ((CertificatePinner) obj).certificateChainCleaner) && this.pins.equals(((CertificatePinner) obj).pins);
    }

    List<Pin> findMatchingPins(String str) {
        List<Pin> listEmptyList = Collections.emptyList();
        List<Pin> arrayList = listEmptyList;
        for (Pin pin : this.pins) {
            if (pin.matches(str)) {
                if (arrayList.isEmpty()) {
                    arrayList = new ArrayList<>();
                }
                arrayList.add(pin);
            }
        }
        return arrayList;
    }

    public int hashCode() {
        return ((this.certificateChainCleaner != null ? this.certificateChainCleaner.hashCode() : 0) * 31) + this.pins.hashCode();
    }

    CertificatePinner withCertificateChainCleaner(@Nullable CertificateChainCleaner certificateChainCleaner) {
        return Util.equal(this.certificateChainCleaner, certificateChainCleaner) ? this : new CertificatePinner(this.pins, certificateChainCleaner);
    }
}
