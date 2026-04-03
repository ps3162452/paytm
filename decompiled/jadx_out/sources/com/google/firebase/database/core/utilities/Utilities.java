package com.google.firebase.database.core.utilities;

import android.net.Uri;
import android.util.Base64;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.firebase.database.DatabaseError;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.DatabaseReference;
import com.google.firebase.database.core.Path;
import com.google.firebase.database.core.RepoInfo;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class Utilities {
    private static final char[] HEX_CHARACTERS = NPStringFog.decode(new byte[]{3, 8, 11, 3, 13, 0, 5, 14, 1, 9, 88, 87, 80, 93, 92, 86}, "399095", false, true).toCharArray();

    /* JADX WARN: Multi-variable type inference failed */
    public static <C> C castOrNull(Object obj, Class<C> cls) {
        if (cls.isAssignableFrom(obj.getClass())) {
            return obj;
        }
        return null;
    }

    public static int compareInts(int i, int i2) {
        if (i < i2) {
            return -1;
        }
        return i == i2 ? 0 : 1;
    }

    public static int compareLongs(long j, long j2) {
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }

    public static String doubleToHashString(double d) {
        StringBuilder sb = new StringBuilder(16);
        long jDoubleToLongBits = Double.doubleToLongBits(d);
        for (int i = 7; i >= 0; i--) {
            int i2 = (int) ((jDoubleToLongBits >>> (i * 8)) & 255);
            char[] cArr = HEX_CHARACTERS;
            sb.append(cArr[(i2 >> 4) & 15]);
            sb.append(cArr[i2 & 15]);
        }
        return sb.toString();
    }

    public static boolean equals(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null || obj2 == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    private static String extractPathString(String str) {
        int iIndexOf = str.indexOf(NPStringFog.decode(new byte[]{77, 26}, "b50ef7", -1.739425589E9d));
        if (iIndexOf == -1) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{126, 12, 70, 85, 80, 85, 75, 0, 20, 116, 83, 64, 89, 7, 85, 67, 87, 20, 109, 55, 120, 16, 91, 71, 24, 8, 93, 67, 65, 93, 86, 2, 20, 101, 96, 120, 24, 22, 87, 88, 87, 89, 93}, "8e4024", 1475282339L));
        }
        String strSubstring = str.substring(iIndexOf + 2);
        int iIndexOf2 = strSubstring.indexOf(NPStringFog.decode(new byte[]{31}, "0a56f2", 436427335L));
        if (iIndexOf2 == -1) {
            return "";
        }
        int iIndexOf3 = strSubstring.indexOf(NPStringFog.decode(new byte[]{15}, "0dce57", 17124));
        return iIndexOf3 != -1 ? strSubstring.substring(iIndexOf2 + 1, iIndexOf3) : strSubstring.substring(iIndexOf2 + 1);
    }

    public static <C> C getOrNull(Object obj, String str, Class<C> cls) {
        Object obj2;
        if (obj != null && (obj2 = ((Map) castOrNull(obj, Map.class)).get(str)) != null) {
            return (C) castOrNull(obj2, cls);
        }
        return null;
    }

    public static void hardAssert(boolean z) {
        hardAssert(z, "");
    }

    public static void hardAssert(boolean z, String str) {
        if (!z) {
            throw new AssertionError(NPStringFog.decode(new byte[]{95, 0, 19, 93, 114, 68, 68, 4, 19, 77, 19, 81, 86, 8, 13, 92, 87, 13, 23}, "7aa937", 1.919613674E9d) + str);
        }
    }

    public static ParsedUrl parseUrl(String str) throws DatabaseException {
        boolean z = true;
        try {
            Uri uri = Uri.parse(str);
            String scheme = uri.getScheme();
            if (scheme == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{125, 3, 64, 87, 80, 87, 74, 7, 20, 99, 96, 122, 25, 6, 91, 83, 65, 22, 87, 13, 64, 22, 65, 70, 92, 1, 93, 80, 75, 22, 88, 66, 97, 100, 126, 22, 74, 1, 92, 83, 95, 83}, "9b4626", false));
            }
            String host = uri.getHost();
            if (host == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{113, 3, 64, 83, 83, 4, 70, 7, 20, 103, 99, 41, 21, 6, 91, 87, 66, 69, 91, 13, 64, 18, 66, 21, 80, 1, 93, 84, 72, 69, 84, 66, 66, 83, 93, 12, 81, 66, 92, 93, 66, 17}, "5b421e", -12087));
            }
            RepoInfo repoInfo = new RepoInfo();
            repoInfo.host = host.toLowerCase();
            int port = uri.getPort();
            if (port != -1) {
                if (!scheme.equals(NPStringFog.decode(new byte[]{90, 22, 67, 70, 16}, "2b76cc", -6.789543E8f)) && !scheme.equals(NPStringFog.decode(new byte[]{71, 21, 66}, "0f1ad3", 1.9448698E9f))) {
                    z = false;
                }
                repoInfo.secure = z;
                repoInfo.host += NPStringFog.decode(new byte[]{94}, "de1cc5", true, true) + port;
            } else {
                repoInfo.secure = true;
            }
            String queryParameter = uri.getQueryParameter(NPStringFog.decode(new byte[]{87, 68}, "97bbd2", false, true));
            if (queryParameter != null) {
                repoInfo.namespace = queryParameter;
            } else {
                repoInfo.namespace = host.split(NPStringFog.decode(new byte[]{57, 22}, "e85f4a", -1.340227225E9d), -1)[0].toLowerCase();
            }
            repoInfo.internalHost = repoInfo.host;
            String strReplace = extractPathString(str).replace(NPStringFog.decode(new byte[]{25}, "28b79d", 4.6587875E8f), " ");
            Validation.validateRootPathString(strReplace);
            ParsedUrl parsedUrl = new ParsedUrl();
            parsedUrl.path = new Path(strReplace);
            parsedUrl.repoInfo = repoInfo;
            return parsedUrl;
        } catch (Exception e) {
            throw new DatabaseException(NPStringFog.decode(new byte[]{44, 15, 69, 87, 90, 92, 1, 65, 117, 95, 68, 80, 7, 0, 64, 83, 22, 113, 4, 21, 82, 84, 87, 70, 0, 65, 70, 68, 90, 21, 22, 17, 86, 85, 95, 83, 12, 4, 87, 12, 22}, "ea3665", 1.8815354E9f) + str, e);
        }
    }

    public static String sha1HexDigest(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(NPStringFog.decode(new byte[]{106, 113, 120, 75, 4}, "999f59", -1076939611L));
            messageDigest.update(str.getBytes(NPStringFog.decode(new byte[]{101, 97, 116, 76, 91}, "052ac0", 1.1884844E9f)));
            return Base64.encodeToString(messageDigest.digest(), 2);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{109, 103, 115, 28, 92, 21, 93, 93, 86, 94, 0, 92, 86, 84, 21, 88, 23, 21, 74, 86, 68, 68, 13, 71, 93, 87, 21, 87, 11, 71, 24, 117, 92, 67, 1, 87, 89, 64, 80, 17, 32, 84, 76, 82, 87, 80, 23, 80, 24, 71, 90, 17, 22, 64, 86, 18}, "8351d5", false, false));
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(NPStringFog.decode(new byte[]{43, 92, 65, 65, 80, 86, 1, 21, 97, 122, 120, 21, 87, 21, 127, 87, 74, 75, 7, 82, 87, 118, 80, 95, 3, 70, 70, 18, 73, 74, 9, 67, 91, 86, 92, 74, 72}, "f52298", -2.104247E9f), e2);
        }
    }

    public static String stringHashV2Representation(String str) {
        String strReplace = str.indexOf(92) != -1 ? str.replace(NPStringFog.decode(new byte[]{57}, "efd040", true), NPStringFog.decode(new byte[]{62, 101}, "b9588c", -2.63247198E8d)) : str;
        if (str.indexOf(34) != -1) {
            strReplace = strReplace.replace(NPStringFog.decode(new byte[]{64}, "bafecb", 1.09202027E8d), NPStringFog.decode(new byte[]{107, 22}, "7425e4", 1786132748L));
        }
        return '\"' + strReplace + '\"';
    }

    public static Integer tryParseInt(String str) {
        boolean z = true;
        int i = 0;
        if (str.length() > 11 || str.length() == 0) {
            return null;
        }
        if (str.charAt(0) != '-') {
            z = false;
        } else {
            if (str.length() == 1) {
                return null;
            }
            i = 1;
        }
        long j = 0;
        while (i < str.length()) {
            char cCharAt = str.charAt(i);
            if (cCharAt < '0' || cCharAt > '9') {
                return null;
            }
            j = (j * 10) + ((long) (cCharAt - '0'));
            i++;
        }
        if (z) {
            if ((-j) < -2147483648L) {
                return null;
            }
            return Integer.valueOf((int) (-j));
        }
        if (j > 2147483647L) {
            return null;
        }
        return Integer.valueOf((int) j);
    }

    public static Pair<Task<Void>, DatabaseReference.CompletionListener> wrapOnComplete(DatabaseReference.CompletionListener completionListener) {
        if (completionListener != null) {
            return new Pair<>(null, completionListener);
        }
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        return new Pair<>(taskCompletionSource.getTask(), new DatabaseReference.CompletionListener(taskCompletionSource) { // from class: com.google.firebase.database.core.utilities.Utilities.1
            final TaskCompletionSource val$source;

            {
                this.val$source = taskCompletionSource;
            }

            @Override // com.google.firebase.database.DatabaseReference.CompletionListener
            public void onComplete(DatabaseError databaseError, DatabaseReference databaseReference) {
                if (databaseError != null) {
                    this.val$source.setException(databaseError.toException());
                } else {
                    this.val$source.setResult(null);
                }
            }
        });
    }
}
