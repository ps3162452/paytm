package okhttp3;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes62.dex */
public interface Dns {
    public static final Dns SYSTEM = new Dns() { // from class: okhttp3.Dns.1
        @Override // okhttp3.Dns
        public List<InetAddress> lookup(String str) throws UnknownHostException {
            if (str == null) {
                throw new UnknownHostException(NPStringFog.decode(new byte[]{94, 12, 22, 18, 93, 89, 91, 6, 69, 91, 14, 24, 88, 22, 9, 10}, "6cef38", -1.95440673E8d));
            }
            try {
                return Arrays.asList(InetAddress.getAllByName(str));
            } catch (NullPointerException e) {
                UnknownHostException unknownHostException = new UnknownHostException(NPStringFog.decode(new byte[]{36, 16, 12, 88, 80, 12, 70, 17, 26, 64, 65, 7, 11, 66, 1, 86, 93, 3, 16, 11, 12, 70, 71, 66, 0, 13, 17, 19, 81, 12, 21, 66, 15, 92, 90, 9, 19, 18, 67, 92, 83, 66}, "fbc35b", false, false) + str);
                unknownHostException.initCause(e);
                throw unknownHostException;
            }
        }
    };

    List<InetAddress> lookup(String str) throws UnknownHostException;
}
