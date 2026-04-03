package okhttp3.internal.tls;

import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import n.NPStringFog;

/* JADX INFO: loaded from: classes62.dex */
public final class BasicCertificateChainCleaner extends CertificateChainCleaner {
    private static final int MAX_SIGNERS = 9;
    private final TrustRootIndex trustRootIndex;

    public BasicCertificateChainCleaner(TrustRootIndex trustRootIndex) {
        this.trustRootIndex = trustRootIndex;
    }

    private boolean verifySignature(X509Certificate x509Certificate, X509Certificate x509Certificate2) {
        if (!x509Certificate.getIssuerDN().equals(x509Certificate2.getSubjectDN())) {
            return false;
        }
        try {
            x509Certificate.verify(x509Certificate2.getPublicKey());
            return true;
        } catch (GeneralSecurityException e) {
            return false;
        }
    }

    @Override // okhttp3.internal.tls.CertificateChainCleaner
    public List<Certificate> clean(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
        boolean z;
        ArrayDeque arrayDeque = new ArrayDeque(list);
        ArrayList arrayList = new ArrayList();
        arrayList.add(arrayDeque.removeFirst());
        int i = 0;
        boolean z2 = false;
        while (i < 9) {
            X509Certificate x509Certificate = (X509Certificate) arrayList.get(arrayList.size() - 1);
            X509Certificate x509CertificateFindByIssuerAndSignature = this.trustRootIndex.findByIssuerAndSignature(x509Certificate);
            if (x509CertificateFindByIssuerAndSignature == null) {
                Iterator it = arrayDeque.iterator();
                while (it.hasNext()) {
                    X509Certificate x509Certificate2 = (X509Certificate) it.next();
                    if (verifySignature(x509Certificate, x509Certificate2)) {
                        it.remove();
                        arrayList.add(x509Certificate2);
                        z = z2;
                        i++;
                        z2 = z;
                    }
                }
                if (!z2) {
                    throw new SSLPeerUnverifiedException(NPStringFog.decode(new byte[]{114, 84, 13, 92, 80, 85, 20, 65, 11, 16, 83, 88, 90, 81, 68, 81, 21, 69, 70, 64, 23, 68, 80, 85, 20, 86, 1, 66, 65, 17, 64, 93, 5, 68, 21, 66, 93, 82, 10, 85, 81, 17}, "45d051", false) + x509Certificate);
                }
                return arrayList;
            }
            if (arrayList.size() > 1 || !x509Certificate.equals(x509CertificateFindByIssuerAndSignature)) {
                arrayList.add(x509CertificateFindByIssuerAndSignature);
            }
            if (verifySignature(x509CertificateFindByIssuerAndSignature, x509CertificateFindByIssuerAndSignature)) {
                return arrayList;
            }
            z = true;
            i++;
            z2 = z;
        }
        throw new SSLPeerUnverifiedException(NPStringFog.decode(new byte[]{123, 80, 69, 70, 12, 94, 81, 86, 86, 70, 0, 24, 91, 93, 86, 91, 11, 24, 76, 90, 88, 18, 9, 87, 86, 82, 13, 18}, "8572e8", 1.1567304E9f) + arrayList);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof BasicCertificateChainCleaner) && ((BasicCertificateChainCleaner) obj).trustRootIndex.equals(this.trustRootIndex);
    }

    public int hashCode() {
        return this.trustRootIndex.hashCode();
    }
}
