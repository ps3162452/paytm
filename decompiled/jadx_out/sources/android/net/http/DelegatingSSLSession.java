package android.net.http;

import java.security.Principal;
import java.security.cert.Certificate;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSessionContext;
import javax.security.cert.X509Certificate;
import n.NPStringFog;

/* JADX INFO: loaded from: classes.dex */
public class DelegatingSSLSession implements SSLSession {

    public static class CertificateWrap extends DelegatingSSLSession {
        public CertificateWrap(Certificate certificate) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{48, 22, 20, 3, 64}, "cbaaa5", 217671030L));
        }

        @Override // android.net.http.DelegatingSSLSession, javax.net.ssl.SSLSession
        public Certificate[] getPeerCertificates() throws SSLPeerUnverifiedException {
            throw new RuntimeException(NPStringFog.decode(new byte[]{99, 69, 16, 6, 69}, "01eddb", true, false));
        }
    }

    protected DelegatingSSLSession() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 66, 23, 80, 25}, "d6b28e", false, false));
    }

    @Override // javax.net.ssl.SSLSession
    public int getApplicationBufferSize() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 23, 66, 83, 22}, "4c7179", -14197));
    }

    @Override // javax.net.ssl.SSLSession
    public String getCipherSuite() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 66, 70, 87, 19}, "063520", 1199809047L));
    }

    @Override // javax.net.ssl.SSLSession
    public long getCreationTime() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 77, 65, 85, 69}, "8947d3", -16846));
    }

    @Override // javax.net.ssl.SSLSession
    public byte[] getId() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{99, 68, 19, 6, 68}, "00fde2", 2.0480051E9f));
    }

    @Override // javax.net.ssl.SSLSession
    public long getLastAccessedTime() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 64, 23, 82, 20}, "f4b057", 2006882872L));
    }

    @Override // javax.net.ssl.SSLSession
    public Certificate[] getLocalCertificates() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 69, 67, 87, 21}, "a16544", 25546));
    }

    @Override // javax.net.ssl.SSLSession
    public Principal getLocalPrincipal() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 18, 70, 3, 24}, "9f3a94", 7.245451E8f));
    }

    @Override // javax.net.ssl.SSLSession
    public int getPacketBufferSize() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 21, 20, 4, 69}, "5aafd1", -127698932L));
    }

    @Override // javax.net.ssl.SSLSession
    public X509Certificate[] getPeerCertificateChain() throws SSLPeerUnverifiedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 18, 77, 85, 19}, "3f872c", -3.3226884E7f));
    }

    @Override // javax.net.ssl.SSLSession
    public Certificate[] getPeerCertificates() throws SSLPeerUnverifiedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{103, 68, 71, 87, 22}, "402578", -18453));
    }

    @Override // javax.net.ssl.SSLSession
    public String getPeerHost() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{50, 65, 76, 87, 16}, "a5951a", true, true));
    }

    @Override // javax.net.ssl.SSLSession
    public int getPeerPort() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 21, 77, 4, 66}, "ba8fc6", false, false));
    }

    @Override // javax.net.ssl.SSLSession
    public Principal getPeerPrincipal() throws SSLPeerUnverifiedException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{107, 70, 71, 80, 21}, "822243", -1.8309449E9f));
    }

    @Override // javax.net.ssl.SSLSession
    public String getProtocol() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{100, 22, 17, 80, 17}, "7bd20d", false, false));
    }

    @Override // javax.net.ssl.SSLSession
    public SSLSessionContext getSessionContext() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 71, 19, 3, 25}, "93fa83", 5255));
    }

    @Override // javax.net.ssl.SSLSession
    public Object getValue(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 17, 22, 85, 20}, "cec753", -1.813133554E9d));
    }

    @Override // javax.net.ssl.SSLSession
    public String[] getValueNames() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 77, 17, 84, 68}, "b9d6e7", -7.296183E7f));
    }

    @Override // javax.net.ssl.SSLSession
    public void invalidate() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 16, 23, 81, 71}, "bdb3f5", false));
    }

    @Override // javax.net.ssl.SSLSession
    public boolean isValid() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{102, 23, 64, 86, 19}, "5c5420", 3.3495312E8f));
    }

    @Override // javax.net.ssl.SSLSession
    public void putValue(String str, Object obj) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 18, 71, 82, 69}, "cf20de", -6695));
    }

    @Override // javax.net.ssl.SSLSession
    public void removeValue(String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{48, 22, 68, 6, 16}, "cb1d1b", 1.9369012E9f));
    }
}
