package androidx.emoji2.text;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ProviderInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.os.Build;
import android.util.Log;
import androidx.core.provider.FontRequest;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes27.dex */
public final class DefaultEmojiCompatConfig {

    public static class DefaultEmojiCompatConfigFactory {
        private static final String DEFAULT_EMOJI_QUERY = NPStringFog.decode(new byte[]{80, 11, 90, 90, 10, 7, 90, 11, 69, 81, 23, 73, 80, 11, 90, 90, 10, 73, 83, 9, 91, 68}, "5f50cd", 1.8540535E9f);
        private static final String INTENT_LOAD_EMOJI_FONT = NPStringFog.decode(new byte[]{2, 95, 83, 74, 11, 81, 7, 73, 25, 91, 11, 86, 23, 84, 89, 76, 74, 89, 0, 69, 94, 87, 10, 22, 47, 126, 118, 124, 59, 125, 46, 126, 125, 113, 59, 126, 44, 127, 99}, "c178d8", 19697);
        private static final String TAG = NPStringFog.decode(new byte[]{81, 90, 13, 90, 94, 84, 26, 67, 7, 72, 67, 72, 112, 82, 4, 81, 66, 10, 64, 114, 15, 95, 93, 15, 119, 88, 12, 86, 94, 1}, "47b07f", 5.0609482E8f);
        private final DefaultEmojiCompatConfigHelper mHelper;

        public DefaultEmojiCompatConfigFactory(DefaultEmojiCompatConfigHelper defaultEmojiCompatConfigHelper) {
            this.mHelper = defaultEmojiCompatConfigHelper == null ? getHelperForApi() : defaultEmojiCompatConfigHelper;
        }

        private EmojiCompat.Config configOrNull(Context context, FontRequest fontRequest) {
            if (fontRequest == null) {
                return null;
            }
            return new FontRequestEmojiCompatConfig(context, fontRequest);
        }

        private List<List<byte[]>> convertToByteArray(Signature[] signatureArr) {
            ArrayList arrayList = new ArrayList();
            for (Signature signature : signatureArr) {
                arrayList.add(signature.toByteArray());
            }
            return Collections.singletonList(arrayList);
        }

        private FontRequest generateFontRequestFrom(ProviderInfo providerInfo, PackageManager packageManager) throws PackageManager.NameNotFoundException {
            String str = providerInfo.authority;
            String str2 = providerInfo.packageName;
            return new FontRequest(str, str2, DEFAULT_EMOJI_QUERY, convertToByteArray(this.mHelper.getSigningSignatures(packageManager, str2)));
        }

        private static DefaultEmojiCompatConfigHelper getHelperForApi() {
            return Build.VERSION.SDK_INT >= 28 ? new DefaultEmojiCompatConfigHelper_API28() : Build.VERSION.SDK_INT >= 19 ? new DefaultEmojiCompatConfigHelper_API19() : new DefaultEmojiCompatConfigHelper();
        }

        private boolean hasFlagSystem(ProviderInfo providerInfo) {
            return (providerInfo == null || providerInfo.applicationInfo == null || (providerInfo.applicationInfo.flags & 1) != 1) ? false : true;
        }

        private ProviderInfo queryDefaultInstalledContentProvider(PackageManager packageManager) {
            Iterator<ResolveInfo> it = this.mHelper.queryIntentContentProviders(packageManager, new Intent(INTENT_LOAD_EMOJI_FONT), 0).iterator();
            while (it.hasNext()) {
                ProviderInfo providerInfo = this.mHelper.getProviderInfo(it.next());
                if (hasFlagSystem(providerInfo)) {
                    return providerInfo;
                }
            }
            return null;
        }

        public EmojiCompat.Config create(Context context) {
            return configOrNull(context, queryForDefaultFontRequest(context));
        }

        FontRequest queryForDefaultFontRequest(Context context) {
            PackageManager packageManager = context.getPackageManager();
            Preconditions.checkNotNull(packageManager, NPStringFog.decode(new byte[]{101, 5, 91, 88, 89, 94, 80, 68, 85, 82, 86, 88, 82, 1, 74, 19, 74, 92, 68, 17, 81, 65, 93, 93, 21, 16, 87, 19, 84, 86, 86, 5, 76, 86, 24, 92, 88, 11, 82, 90, 24, 95, 90, 10, 76, 19, 72, 75, 90, 18, 81, 87, 93, 75}, "5d8389", 1564773023L));
            ProviderInfo providerInfoQueryDefaultInstalledContentProvider = queryDefaultInstalledContentProvider(packageManager);
            if (providerInfoQueryDefaultInstalledContentProvider == null) {
                return null;
            }
            try {
                return generateFontRequestFrom(providerInfoQueryDefaultInstalledContentProvider, packageManager);
            } catch (PackageManager.NameNotFoundException e) {
                Log.wtf(TAG, e);
                return null;
            }
        }
    }

    public static class DefaultEmojiCompatConfigHelper {
        public ProviderInfo getProviderInfo(ResolveInfo resolveInfo) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{99, 92, 80, 1, 13, 80, 22, 70, 94, 67, 6, 80, 66, 18, 65, 17, 14, 67, 95, 86, 84, 17, 65, 92, 88, 84, 94, 67, 17, 71, 95, 93, 67, 67, 21, 90, 22, 115, 97, 42, 65, 4, 15}, "621ca5", true, true));
        }

        public Signature[] getSigningSignatures(PackageManager packageManager, String str) throws PackageManager.NameNotFoundException {
            return packageManager.getPackageInfo(str, 64).signatures;
        }

        public List<ResolveInfo> queryIntentContentProviders(PackageManager packageManager, Intent intent, int i) {
            return Collections.emptyList();
        }
    }

    public static class DefaultEmojiCompatConfigHelper_API19 extends DefaultEmojiCompatConfigHelper {
        @Override // androidx.emoji2.text.DefaultEmojiCompatConfig.DefaultEmojiCompatConfigHelper
        public ProviderInfo getProviderInfo(ResolveInfo resolveInfo) {
            return resolveInfo.providerInfo;
        }

        @Override // androidx.emoji2.text.DefaultEmojiCompatConfig.DefaultEmojiCompatConfigHelper
        public List<ResolveInfo> queryIntentContentProviders(PackageManager packageManager, Intent intent, int i) {
            return packageManager.queryIntentContentProviders(intent, i);
        }
    }

    public static class DefaultEmojiCompatConfigHelper_API28 extends DefaultEmojiCompatConfigHelper_API19 {
        @Override // androidx.emoji2.text.DefaultEmojiCompatConfig.DefaultEmojiCompatConfigHelper
        public Signature[] getSigningSignatures(PackageManager packageManager, String str) throws PackageManager.NameNotFoundException {
            return packageManager.getPackageInfo(str, 64).signatures;
        }
    }

    private DefaultEmojiCompatConfig() {
    }

    public static FontRequestEmojiCompatConfig create(Context context) {
        return (FontRequestEmojiCompatConfig) new DefaultEmojiCompatConfigFactory(null).create(context);
    }
}
