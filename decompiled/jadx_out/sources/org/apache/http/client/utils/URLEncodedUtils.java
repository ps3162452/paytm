package org.apache.http.client.utils;

import java.io.IOException;
import java.net.URI;
import java.util.List;
import java.util.Scanner;
import n.NPStringFog;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class URLEncodedUtils {
    public static final String CONTENT_TYPE = NPStringFog.decode(new byte[]{84, 64, 19, 94, 92, 7, 84, 68, 10, 93, 91, 75, 77, 29, 20, 69, 66, 73, 83, 95, 17, 95, 24, 17, 71, 92, 6, 92, 86, 11, 81, 85, 7}, "50c25d", true, true);

    public URLEncodedUtils() {
        throw new RuntimeException(NPStringFog.decode(new byte[]{96, 69, 67, 3, 16}, "316a1e", -424563804L));
    }

    public static String format(List<? extends NameValuePair> list, String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{53, 71, 76, 81, 67}, "f393bc", 5.23782876E8d));
    }

    public static boolean isEncoded(HttpEntity httpEntity) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{55, 69, 76, 3, 20}, "d19a5d", 518209074L));
    }

    public static List<NameValuePair> parse(URI uri, String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{49, 22, 71, 80, 25}, "bb2280", -1.9436524E9f));
    }

    public static List<NameValuePair> parse(HttpEntity httpEntity) throws IOException {
        throw new RuntimeException(NPStringFog.decode(new byte[]{54, 71, 77, 81, 18}, "e3833d", -30981));
    }

    public static void parse(List<NameValuePair> list, Scanner scanner, String str) {
        throw new RuntimeException(NPStringFog.decode(new byte[]{106, 21, 64, 85, 64}, "9a57a9", -2.3319094E8f));
    }
}
