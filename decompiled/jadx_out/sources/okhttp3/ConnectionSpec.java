package okhttp3;

import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;
import n.NPStringFog;
import okhttp3.internal.Util;

/* JADX INFO: loaded from: classes62.dex */
public final class ConnectionSpec {

    @Nullable
    final String[] cipherSuites;
    final boolean supportsTlsExtensions;
    final boolean tls;

    @Nullable
    final String[] tlsVersions;
    private static final CipherSuite[] APPROVED_CIPHER_SUITES = {CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256, CipherSuite.TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_128_GCM_SHA256, CipherSuite.TLS_RSA_WITH_AES_256_GCM_SHA384, CipherSuite.TLS_RSA_WITH_AES_128_CBC_SHA, CipherSuite.TLS_RSA_WITH_AES_256_CBC_SHA, CipherSuite.TLS_RSA_WITH_3DES_EDE_CBC_SHA};
    public static final ConnectionSpec MODERN_TLS = new Builder(true).cipherSuites(APPROVED_CIPHER_SUITES).tlsVersions(TlsVersion.TLS_1_3, TlsVersion.TLS_1_2, TlsVersion.TLS_1_1, TlsVersion.TLS_1_0).supportsTlsExtensions(true).build();
    public static final ConnectionSpec COMPATIBLE_TLS = new Builder(MODERN_TLS).tlsVersions(TlsVersion.TLS_1_0).supportsTlsExtensions(true).build();
    public static final ConnectionSpec CLEARTEXT = new Builder(false).build();

    public static final class Builder {

        @Nullable
        String[] cipherSuites;
        boolean supportsTlsExtensions;
        boolean tls;

        @Nullable
        String[] tlsVersions;

        public Builder(ConnectionSpec connectionSpec) {
            this.tls = connectionSpec.tls;
            this.cipherSuites = connectionSpec.cipherSuites;
            this.tlsVersions = connectionSpec.tlsVersions;
            this.supportsTlsExtensions = connectionSpec.supportsTlsExtensions;
        }

        Builder(boolean z) {
            this.tls = z;
        }

        public Builder allEnabledCipherSuites() {
            if (!this.tls) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{95, 9, 19, 81, 81, 71, 89, 3, 65, 18, 75, 66, 88, 18, 86, 65, 24, 81, 94, 20, 19, 81, 84, 82, 80, 20, 71, 87, 64, 67, 17, 5, 92, 92, 86, 82, 82, 18, 90, 93, 86, 68}, "1f3287", false, false));
            }
            this.cipherSuites = null;
            return this;
        }

        public Builder allEnabledTlsVersions() {
            if (!this.tls) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{94, 10, 70, 108, 127, 99, 16, 19, 3, 74, 64, 89, 95, 11, 21, 24, 85, 95, 66, 69, 5, 84, 86, 81, 66, 17, 3, 64, 71, 16, 83, 10, 8, 86, 86, 83, 68, 12, 9, 86, 64}, "0ef830", true, false));
            }
            this.tlsVersions = null;
            return this;
        }

        public ConnectionSpec build() {
            return new ConnectionSpec(this);
        }

        public Builder cipherSuites(String... strArr) {
            if (!this.tls) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{8, 88, 70, 80, 95, 64, 14, 82, 20, 19, 69, 69, 15, 67, 3, 64, 22, 86, 9, 69, 70, 80, 90, 85, 7, 69, 18, 86, 78, 68, 70, 84, 9, 93, 88, 85, 5, 67, 15, 92, 88, 67}, "f7f360", 19794));
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{34, 17, 16, 85, 86, 86, 16, 17, 16, 86, 93, 82, 67, 6, 89, 73, 91, 82, 17, 69, 67, 76, 90, 67, 6, 69, 89, 74, 19, 69, 6, 20, 69, 80, 65, 82, 7}, "ce0937", -1.702991161E9d));
            }
            this.cipherSuites = (String[]) strArr.clone();
            return this;
        }

        public Builder cipherSuites(CipherSuite... cipherSuiteArr) {
            if (!this.tls) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{92, 10, 17, 81, 11, 73, 90, 0, 67, 18, 17, 76, 91, 17, 84, 65, 66, 95, 93, 23, 17, 81, 14, 92, 83, 23, 69, 87, 26, 77, 18, 6, 94, 92, 12, 92, 81, 17, 88, 93, 12, 74}, "2e12b9", -1054079758L));
            }
            String[] strArr = new String[cipherSuiteArr.length];
            for (int i = 0; i < cipherSuiteArr.length; i++) {
                strArr[i] = cipherSuiteArr[i].javaName;
            }
            return cipherSuites(strArr);
        }

        public Builder supportsTlsExtensions(boolean z) {
            if (!this.tls) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{12, 12, 67, 54, 42, 100, 66, 6, 27, 22, 3, 89, 17, 10, 12, 12, 21, 23, 4, 12, 17, 66, 5, 91, 7, 2, 17, 22, 3, 79, 22, 67, 0, 13, 8, 89, 7, 0, 23, 11, 9, 89, 17}, "bccbf7", 17321));
            }
            this.supportsTlsExtensions = z;
            return this;
        }

        public Builder tlsVersions(String... strArr) {
            if (!this.tls) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{92, 92, 21, 97, 120, 101, 18, 69, 80, 71, 71, 95, 93, 93, 70, 21, 82, 89, 64, 19, 86, 89, 81, 87, 64, 71, 80, 77, 64, 22, 81, 92, 91, 91, 81, 85, 70, 90, 90, 91, 71}, "235546", true, true));
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{34, 77, 66, 91, 85, 82, 16, 77, 66, 88, 94, 86, 67, 109, 46, 100, 16, 69, 6, 75, 17, 94, 95, 93, 67, 80, 17, 23, 66, 86, 18, 76, 11, 69, 85, 87}, "c9b703", false, true));
            }
            this.tlsVersions = (String[]) strArr.clone();
            return this;
        }

        public Builder tlsVersions(TlsVersion... tlsVersionArr) {
            if (!this.tls) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{94, 87, 68, 98, 117, 50, 16, 78, 1, 68, 74, 8, 95, 86, 23, 22, 95, 14, 66, 24, 7, 90, 92, 0, 66, 76, 1, 78, 77, 65, 83, 87, 10, 88, 92, 2, 68, 81, 11, 88, 74}, "08d69a", true));
            }
            String[] strArr = new String[tlsVersionArr.length];
            for (int i = 0; i < tlsVersionArr.length; i++) {
                strArr[i] = tlsVersionArr[i].javaName;
            }
            return tlsVersions(strArr);
        }
    }

    ConnectionSpec(Builder builder) {
        this.tls = builder.tls;
        this.cipherSuites = builder.cipherSuites;
        this.tlsVersions = builder.tlsVersions;
        this.supportsTlsExtensions = builder.supportsTlsExtensions;
    }

    private ConnectionSpec supportedSpec(SSLSocket sSLSocket, boolean z) {
        String[] strArrIntersect = this.cipherSuites != null ? Util.intersect(CipherSuite.ORDER_BY_NAME, sSLSocket.getEnabledCipherSuites(), this.cipherSuites) : sSLSocket.getEnabledCipherSuites();
        String[] strArrIntersect2 = this.tlsVersions != null ? Util.intersect(Util.NATURAL_ORDER, sSLSocket.getEnabledProtocols(), this.tlsVersions) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int iIndexOf = Util.indexOf(CipherSuite.ORDER_BY_NAME, supportedCipherSuites, NPStringFog.decode(new byte[]{50, 127, 103, 110, 112, 32, 42, 127, 118, 112, 117, 42, 57, 96, 119, 98, 96}, "f3416a", false));
        if (z && iIndexOf != -1) {
            strArrIntersect = Util.concat(strArrIntersect, supportedCipherSuites[iIndexOf]);
        }
        return new Builder(this).cipherSuites(strArrIntersect).tlsVersions(strArrIntersect2).build();
    }

    void apply(SSLSocket sSLSocket, boolean z) {
        ConnectionSpec connectionSpecSupportedSpec = supportedSpec(sSLSocket, z);
        if (connectionSpecSupportedSpec.tlsVersions != null) {
            sSLSocket.setEnabledProtocols(connectionSpecSupportedSpec.tlsVersions);
        }
        if (connectionSpecSupportedSpec.cipherSuites != null) {
            sSLSocket.setEnabledCipherSuites(connectionSpecSupportedSpec.cipherSuites);
        }
    }

    @Nullable
    public List<CipherSuite> cipherSuites() {
        if (this.cipherSuites != null) {
            return CipherSuite.forJavaNames(this.cipherSuites);
        }
        return null;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof ConnectionSpec)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        ConnectionSpec connectionSpec = (ConnectionSpec) obj;
        if (this.tls == connectionSpec.tls) {
            return !this.tls || (Arrays.equals(this.cipherSuites, connectionSpec.cipherSuites) && Arrays.equals(this.tlsVersions, connectionSpec.tlsVersions) && this.supportsTlsExtensions == connectionSpec.supportsTlsExtensions);
        }
        return false;
    }

    public int hashCode() {
        if (!this.tls) {
            return 17;
        }
        int iHashCode = Arrays.hashCode(this.cipherSuites);
        return (this.supportsTlsExtensions ? 0 : 1) + ((((iHashCode + 527) * 31) + Arrays.hashCode(this.tlsVersions)) * 31);
    }

    public boolean isCompatible(SSLSocket sSLSocket) {
        if (!this.tls) {
            return false;
        }
        if (this.tlsVersions == null || Util.nonEmptyIntersection(Util.NATURAL_ORDER, this.tlsVersions, sSLSocket.getEnabledProtocols())) {
            return this.cipherSuites == null || Util.nonEmptyIntersection(CipherSuite.ORDER_BY_NAME, this.cipherSuites, sSLSocket.getEnabledCipherSuites());
        }
        return false;
    }

    public boolean isTls() {
        return this.tls;
    }

    public boolean supportsTlsExtensions() {
        return this.supportsTlsExtensions;
    }

    @Nullable
    public List<TlsVersion> tlsVersions() {
        if (this.tlsVersions != null) {
            return TlsVersion.forJavaNames(this.tlsVersions);
        }
        return null;
    }

    public String toString() {
        if (!this.tls) {
            return NPStringFog.decode(new byte[]{39, 11, 95, 13, 87, 90, 16, 13, 94, 13, 97, 73, 1, 7, 25, 74}, "dd1c29", -9894);
        }
        return NPStringFog.decode(new byte[]{122, 13, 11, 92, 93, 5, 77, 11, 10, 92, 107, 22, 92, 1, 77, 81, 81, 22, 81, 7, 23, 97, 77, 15, 77, 7, 22, 15}, "9be28f", 2.0747574E9f) + (this.cipherSuites != null ? cipherSuites().toString() : NPStringFog.decode(new byte[]{57, 3, 90, 90, 16, 82, 12, 3, 84, 90, 85, 83, 63}, "bb6607", true, true)) + NPStringFog.decode(new byte[]{31, 18, 66, 15, 71, 48, 86, 64, 69, 10, 91, 8, 64, 15}, "326c4f", true, false) + (this.tlsVersions != null ? tlsVersions().toString() : NPStringFog.decode(new byte[]{109, 83, 15, 8, 65, 86, 88, 83, 1, 8, 4, 87, 107}, "62cda3", true)) + NPStringFog.decode(new byte[]{72, 68, 64, 65, 70, 71, 11, 22, 71, 71, 98, 91, 23, 33, 75, 64, 83, 89, 23, 13, 92, 90, 69, 10}, "dd3467", -1.3452156E9f) + this.supportsTlsExtensions + NPStringFog.decode(new byte[]{77}, "dc70da", 21511);
    }
}
