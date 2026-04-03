package okhttp3.internal.connection;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;
import n.NPStringFog;
import okhttp3.ConnectionSpec;
import okhttp3.internal.Internal;

/* JADX INFO: loaded from: classes62.dex */
public final class ConnectionSpecSelector {
    private final List<ConnectionSpec> connectionSpecs;
    private boolean isFallback;
    private boolean isFallbackPossible;
    private int nextModeIndex = 0;

    public ConnectionSpecSelector(List<ConnectionSpec> list) {
        this.connectionSpecs = list;
    }

    private boolean isFallbackPossible(SSLSocket sSLSocket) {
        int i = this.nextModeIndex;
        while (true) {
            int i2 = i;
            if (i2 >= this.connectionSpecs.size()) {
                return false;
            }
            if (this.connectionSpecs.get(i2).isCompatible(sSLSocket)) {
                return true;
            }
            i = i2 + 1;
        }
    }

    public ConnectionSpec configureSecureSocket(SSLSocket sSLSocket) throws IOException {
        ConnectionSpec connectionSpec;
        int i = this.nextModeIndex;
        int size = this.connectionSpecs.size();
        int i2 = i;
        while (true) {
            if (i2 >= size) {
                connectionSpec = null;
                break;
            }
            connectionSpec = this.connectionSpecs.get(i2);
            if (connectionSpec.isCompatible(sSLSocket)) {
                this.nextModeIndex = i2 + 1;
                break;
            }
            i2++;
        }
        if (connectionSpec == null) {
            throw new UnknownServiceException(NPStringFog.decode(new byte[]{102, 11, 81, 3, 8, 0, 19, 17, 95, 65, 2, 12, 93, 1, 16, 0, 7, 6, 86, 21, 68, 0, 6, 9, 86, 69, 64, 19, 11, 17, 92, 6, 95, 13, 23, 75, 19, 12, 67, 39, 5, 9, 95, 7, 81, 2, 15, 88}, "3e0ade", true, false) + this.isFallback + NPStringFog.decode(new byte[]{28, 65, 8, 89, 1, 83, 67, 92}, "0ae6e6", -23044) + this.connectionSpecs + NPStringFog.decode(new byte[]{73, 23, 70, 67, 68, 68, 10, 69, 65, 83, 80, 20, 21, 69, 90, 66, 91, 87, 10, 91, 70, 11}, "e75644", -634737331L) + Arrays.toString(sSLSocket.getEnabledProtocols()));
        }
        this.isFallbackPossible = isFallbackPossible(sSLSocket);
        Internal.instance.apply(connectionSpec, sSLSocket, this.isFallback);
        return connectionSpec;
    }

    public boolean connectionFailed(IOException iOException) {
        this.isFallback = true;
        if (!this.isFallbackPossible || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        if (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return (iOException instanceof SSLHandshakeException) || (iOException instanceof SSLProtocolException);
    }
}
