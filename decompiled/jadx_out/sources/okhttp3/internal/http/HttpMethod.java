package okhttp3.internal.http;

import n.NPStringFog;

/* JADX INFO: loaded from: classes62.dex */
public final class HttpMethod {
    private HttpMethod() {
    }

    public static boolean invalidatesCache(String str) {
        return str.equals(NPStringFog.decode(new byte[]{105, 45, 53, 97}, "9bf5a3", false)) || str.equals(NPStringFog.decode(new byte[]{101, 112, 49, 32, 126}, "51ec64", true, false)) || str.equals(NPStringFog.decode(new byte[]{53, 52, 101}, "ea1a1c", false)) || str.equals(NPStringFog.decode(new byte[]{33, 113, 124, 124, 49, 125}, "e409e8", -8725)) || str.equals(NPStringFog.decode(new byte[]{40, 120, 96, 33}, "e76d0b", -18687));
    }

    public static boolean permitsRequestBody(String str) {
        return requiresRequestBody(str) || str.equals(NPStringFog.decode(new byte[]{123, 49, 98, 120, 121, 122, 103}, "4a6164", -1.1938286E9f)) || str.equals(NPStringFog.decode(new byte[]{119, 114, 45, 113, 103, 33}, "37a43d", true)) || str.equals(NPStringFog.decode(new byte[]{105, 100, 124, 105, 119, 112, 119, 114}, "963919", -28688)) || str.equals(NPStringFog.decode(new byte[]{127, 121, 117, 41, 40}, "226fd2", true, false)) || str.equals(NPStringFog.decode(new byte[]{46, 127, 39, 42}, "b0dace", false, true));
    }

    public static boolean redirectsToGet(String str) {
        return !str.equals(NPStringFog.decode(new byte[]{49, 55, 122, 49, 126, 113, 47, 33}, "ae5a88", -2863));
    }

    public static boolean redirectsWithBody(String str) {
        return str.equals(NPStringFog.decode(new byte[]{52, 102, 119, 102, 127, 47, 42, 112}, "d4869f", -2044708807L));
    }

    public static boolean requiresRequestBody(String str) {
        return str.equals(NPStringFog.decode(new byte[]{51, 122, 55, 109}, "c5d9ec", false, true)) || str.equals(NPStringFog.decode(new byte[]{101, 102, 101}, "531758", false, true)) || str.equals(NPStringFog.decode(new byte[]{51, 35, 108, 117, 112}, "cb8682", true)) || str.equals(NPStringFog.decode(new byte[]{103, 54, 44, 102, 54, 113, 99, 39, 43}, "7dc6f0", true, false)) || str.equals(NPStringFog.decode(new byte[]{96, 124, 53, 118, 55, 101}, "29e9e1", true, true));
    }
}
