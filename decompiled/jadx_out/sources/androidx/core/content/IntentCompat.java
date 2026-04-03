package androidx.core.content;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.core.util.Preconditions;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class IntentCompat {
    public static final String ACTION_CREATE_REMINDER = NPStringFog.decode(new byte[]{2, 90, 81, 68, 91, 91, 7, 26, 92, 88, 64, 87, 13, 64, 27, 87, 87, 70, 10, 91, 91, 24, 119, 96, 38, 117, 97, 115, 107, 96, 38, 121, 124, 120, 112, 119, 49}, "c45642", -1489);
    public static final String CATEGORY_LEANBACK_LAUNCHER = NPStringFog.decode(new byte[]{85, 86, 81, 19, 14, 92, 80, 22, 92, 15, 21, 80, 90, 76, 27, 2, 0, 65, 81, 95, 90, 19, 24, 27, 120, 125, 116, 47, 35, 116, 119, 115, 106, 45, 32, 96, 122, 123, 125, 36, 51}, "485aa5", false, false);
    public static final String EXTRA_HTML_TEXT = NPStringFog.decode(new byte[]{0, 8, 82, 65, 13, 95, 5, 72, 95, 93, 22, 83, 15, 18, 24, 86, 26, 66, 19, 7, 24, 123, 54, 123, 45, 57, 98, 118, 58, 98}, "af63b6", true);
    public static final String EXTRA_START_PLAYBACK = NPStringFog.decode(new byte[]{82, 90, 6, 74, 89, 8, 87, 26, 11, 86, 66, 4, 93, 64, 76, 93, 78, 21, 65, 85, 76, 107, 98, 32, 97, 96, 61, 104, 122, 32, 106, 118, 35, 123, 125}, "34b86a", true);
    public static final String EXTRA_TIME = NPStringFog.decode(new byte[]{0, 11, 81, 66, 91, 90, 5, 75, 92, 94, 64, 86, 15, 17, 27, 85, 76, 71, 19, 4, 27, 100, 125, 126, 36}, "ae5043", false);

    private IntentCompat() {
    }

    public static Intent createManageUnusedAppRestrictionsIntent(Context context, String str) {
        if (!PackageManagerCompat.areUnusedAppRestrictionsAvailable(context.getPackageManager())) {
            throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{100, 93, 17, 75, 83, 1, 17, 114, 20, 72, 22, 55, 84, 64, 16, 74, 95, 6, 69, 90, 11, 86, 22, 3, 84, 82, 16, 77, 68, 0, 66, 19, 5, 74, 83, 69, 95, 92, 16, 24, 87, 19, 80, 90, 8, 89, 84, 9, 84, 19, 11, 86, 22, 17, 89, 90, 23, 24, 82, 0, 71, 90, 7, 93}, "13d86e", -7.3389286E8f));
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return new Intent(NPStringFog.decode(new byte[]{82, 86, 84, 16, 10, 88, 87, 22, 67, 7, 17, 69, 90, 86, 87, 17, 75, 112, 99, 104, 124, 43, 38, 112, 103, 113, 127, 44, 58, 117, 118, 108, 113, 43, 41, 98, 108, 107, 117, 54, 49, 120, 125, 127, 99}, "380be1", -1.600527E9f)).setData(Uri.fromParts(NPStringFog.decode(new byte[]{72, 89, 80, 89, 2, 2, 93}, "8832ce", true), str, null));
        }
        Intent data = new Intent(NPStringFog.decode(new byte[]{83, 8, 5, 19, 13, 94, 86, 72, 8, 15, 22, 82, 92, 18, 79, 0, 1, 67, 91, 9, 15, 79, 35, 98, 102, 41, 62, 51, 39, 97, 125, 45, 36, 62, 50, 114, 96, 43, 40, 50, 49, 126, 125, 40, 50}, "2faab7", 1.308052E9f)).setData(Uri.fromParts(NPStringFog.decode(new byte[]{22, 84, 90, 94, 83, 95, 3}, "f59528", 1.995166787E9d), str, null));
        return Build.VERSION.SDK_INT >= 30 ? data : data.setPackage((String) Preconditions.checkNotNull(PackageManagerCompat.getPermissionRevocationVerifierApp(context.getPackageManager())));
    }

    public static Intent makeMainSelectorActivity(String str, String str2) {
        if (Build.VERSION.SDK_INT >= 15) {
            return Intent.makeMainSelectorActivity(str, str2);
        }
        Intent intent = new Intent(str);
        intent.addCategory(str2);
        return intent;
    }
}
