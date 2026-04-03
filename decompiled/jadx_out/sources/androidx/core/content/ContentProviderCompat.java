package androidx.core.content;

import android.content.ContentProvider;
import android.content.Context;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class ContentProviderCompat {
    private ContentProviderCompat() {
    }

    public static Context requireContext(ContentProvider contentProvider) {
        Context context = contentProvider.getContext();
        if (context != null) {
            return context;
        }
        throw new IllegalStateException(NPStringFog.decode(new byte[]{114, 3, 89, 87, 86, 68, 17, 4, 94, 87, 93, 16, 82, 13, 89, 77, 92, 72, 69, 66, 81, 75, 86, 93, 17, 22, 95, 92, 25, 64, 67, 13, 65, 80, 93, 85, 67, 76}, "1b7990", 1.39457775E9d));
    }
}
