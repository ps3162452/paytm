package androidx.core.app;

import android.app.RemoteInput;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class RemoteInput {
    public static final int EDIT_CHOICES_BEFORE_SENDING_AUTO = 0;
    public static final int EDIT_CHOICES_BEFORE_SENDING_DISABLED = 1;
    public static final int EDIT_CHOICES_BEFORE_SENDING_ENABLED = 2;
    public static final int SOURCE_CHOICE = 1;
    public static final int SOURCE_FREE_FORM_INPUT = 0;
    private final boolean mAllowFreeFormTextInput;
    private final Set<String> mAllowedDataTypes;
    private final CharSequence[] mChoices;
    private final int mEditChoicesBeforeSending;
    private final Bundle mExtras;
    private final CharSequence mLabel;
    private final String mResultKey;
    private static final String EXTRA_DATA_TYPE_RESULTS_DATA = NPStringFog.decode(new byte[]{84, 90, 86, 75, 88, 15, 81, 26, 64, 92, 90, 9, 65, 81, 91, 87, 71, 19, 65, 26, 86, 88, 67, 7, 97, 77, 66, 92, 101, 3, 70, 65, 94, 77, 68, 34, 84, 64, 83}, "54297f", 1576036293L);
    public static final String EXTRA_RESULTS_DATA = NPStringFog.decode(new byte[]{80, 88, 93, 71, 92, 12, 85, 24, 75, 80, 94, 10, 69, 83, 80, 91, 67, 16, 69, 24, 75, 80, 64, 16, 93, 66, 74, 113, 82, 17, 80}, "16953e", false, true);
    private static final String EXTRA_RESULTS_SOURCE = NPStringFog.decode(new byte[]{83, 10, 87, 71, 90, 90, 86, 74, 65, 80, 88, 92, 70, 1, 90, 91, 69, 70, 70, 74, 65, 80, 70, 70, 94, 16, 64, 102, 90, 70, 64, 7, 86}, "2d3553", -1869601882L);
    public static final String RESULTS_CLIP_LABEL = NPStringFog.decode(new byte[]{0, 87, 80, 71, 11, 10, 5, 23, 70, 80, 9, 12, 21, 92, 93, 91, 20, 22, 21, 23, 70, 80, 23, 22, 13, 77, 71}, "a945dc", 7.723568E8f);
    private static final String TAG = NPStringFog.decode(new byte[]{55, 83, 89, 11, 68, 84, 44, 88, 68, 17, 68}, "e64d01", false, true);

    public static final class Builder {
        private CharSequence[] mChoices;
        private CharSequence mLabel;
        private final String mResultKey;
        private final Set<String> mAllowedDataTypes = new HashSet();
        private final Bundle mExtras = new Bundle();
        private boolean mAllowFreeFormTextInput = true;
        private int mEditChoicesBeforeSending = 0;

        public Builder(String str) {
            if (str == null) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{98, 81, 67, 22, 88, 18, 16, 95, 85, 26, 20, 5, 81, 90, 23, 23, 20, 4, 85, 20, 94, 22, 88, 10}, "040c4f", true));
            }
            this.mResultKey = str;
        }

        public Builder addExtras(Bundle bundle) {
            if (bundle != null) {
                this.mExtras.putAll(bundle);
            }
            return this;
        }

        public RemoteInput build() {
            return new RemoteInput(this.mResultKey, this.mLabel, this.mChoices, this.mAllowFreeFormTextInput, this.mEditChoicesBeforeSending, this.mExtras, this.mAllowedDataTypes);
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        public Builder setAllowDataType(String str, boolean z) {
            if (z) {
                this.mAllowedDataTypes.add(str);
            } else {
                this.mAllowedDataTypes.remove(str);
            }
            return this;
        }

        public Builder setAllowFreeFormInput(boolean z) {
            this.mAllowFreeFormTextInput = z;
            return this;
        }

        public Builder setChoices(CharSequence[] charSequenceArr) {
            this.mChoices = charSequenceArr;
            return this;
        }

        public Builder setEditChoicesBeforeSending(int i) {
            this.mEditChoicesBeforeSending = i;
            return this;
        }

        public Builder setLabel(CharSequence charSequence) {
            this.mLabel = charSequence;
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface EditChoicesBeforeSending {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Source {
    }

    RemoteInput(String str, CharSequence charSequence, CharSequence[] charSequenceArr, boolean z, int i, Bundle bundle, Set<String> set) {
        this.mResultKey = str;
        this.mLabel = charSequence;
        this.mChoices = charSequenceArr;
        this.mAllowFreeFormTextInput = z;
        this.mEditChoicesBeforeSending = i;
        this.mExtras = bundle;
        this.mAllowedDataTypes = set;
        if (getEditChoicesBeforeSending() == 2 && !getAllowFreeFormInput()) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{70, 82, 22, 124, 93, 92, 65, 116, 10, 86, 80, 86, 80, 68, 32, 92, 95, 90, 71, 82, 49, 92, 87, 81, 92, 89, 5, 25, 75, 80, 68, 66, 11, 75, 92, 70, 21, 68, 7, 77, 120, 89, 89, 88, 21, 127, 75, 80, 80, 113, 13, 75, 84, 124, 91, 71, 23, 77}, "57b995", false, false));
        }
    }

    public static void addDataResultToIntent(RemoteInput remoteInput, Intent intent, Map<String, Uri> map) {
        if (Build.VERSION.SDK_INT >= 26) {
            android.app.RemoteInput.addDataResultToIntent(fromCompat(remoteInput), intent, map);
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            Intent clipDataIntentFromIntent = getClipDataIntentFromIntent(intent);
            Intent intent2 = clipDataIntentFromIntent == null ? new Intent() : clipDataIntentFromIntent;
            for (Map.Entry<String, Uri> entry : map.entrySet()) {
                String key = entry.getKey();
                Uri value = entry.getValue();
                if (key != null) {
                    Bundle bundleExtra = intent2.getBundleExtra(getExtraResultsKeyForData(key));
                    if (bundleExtra == null) {
                        bundleExtra = new Bundle();
                    }
                    bundleExtra.putString(remoteInput.getResultKey(), value.toString());
                    intent2.putExtra(getExtraResultsKeyForData(key), bundleExtra);
                }
            }
            intent.setClipData(ClipData.newIntent(RESULTS_CLIP_LABEL, intent2));
        }
    }

    public static void addResultsToIntent(RemoteInput[] remoteInputArr, Intent intent, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 26) {
            android.app.RemoteInput.addResultsToIntent(fromCompat(remoteInputArr), intent, bundle);
            return;
        }
        if (Build.VERSION.SDK_INT >= 20) {
            Bundle resultsFromIntent = getResultsFromIntent(intent);
            int resultsSource = getResultsSource(intent);
            if (resultsFromIntent != null) {
                resultsFromIntent.putAll(bundle);
                bundle = resultsFromIntent;
            }
            for (RemoteInput remoteInput : remoteInputArr) {
                Map<String, Uri> dataResultsFromIntent = getDataResultsFromIntent(intent, remoteInput.getResultKey());
                android.app.RemoteInput.addResultsToIntent(fromCompat(new RemoteInput[]{remoteInput}), intent, bundle);
                if (dataResultsFromIntent != null) {
                    addDataResultToIntent(remoteInput, intent, dataResultsFromIntent);
                }
            }
            setResultsSource(intent, resultsSource);
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            Intent clipDataIntentFromIntent = getClipDataIntentFromIntent(intent);
            Intent intent2 = clipDataIntentFromIntent == null ? new Intent() : clipDataIntentFromIntent;
            Bundle bundleExtra = intent2.getBundleExtra(EXTRA_RESULTS_DATA);
            Bundle bundle2 = bundleExtra == null ? new Bundle() : bundleExtra;
            for (RemoteInput remoteInput2 : remoteInputArr) {
                Object obj = bundle.get(remoteInput2.getResultKey());
                if (obj instanceof CharSequence) {
                    bundle2.putCharSequence(remoteInput2.getResultKey(), (CharSequence) obj);
                }
            }
            intent2.putExtra(EXTRA_RESULTS_DATA, bundle2);
            intent.setClipData(ClipData.newIntent(RESULTS_CLIP_LABEL, intent2));
        }
    }

    static android.app.RemoteInput fromCompat(RemoteInput remoteInput) {
        Set<String> allowedDataTypes;
        RemoteInput.Builder builderAddExtras = new RemoteInput.Builder(remoteInput.getResultKey()).setLabel(remoteInput.getLabel()).setChoices(remoteInput.getChoices()).setAllowFreeFormInput(remoteInput.getAllowFreeFormInput()).addExtras(remoteInput.getExtras());
        if (Build.VERSION.SDK_INT >= 26 && (allowedDataTypes = remoteInput.getAllowedDataTypes()) != null) {
            Iterator<String> it = allowedDataTypes.iterator();
            while (it.hasNext()) {
                builderAddExtras.setAllowDataType(it.next(), true);
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            builderAddExtras.setEditChoicesBeforeSending(remoteInput.getEditChoicesBeforeSending());
        }
        return builderAddExtras.build();
    }

    static android.app.RemoteInput[] fromCompat(RemoteInput[] remoteInputArr) {
        if (remoteInputArr == null) {
            return null;
        }
        android.app.RemoteInput[] remoteInputArr2 = new android.app.RemoteInput[remoteInputArr.length];
        for (int i = 0; i < remoteInputArr.length; i++) {
            remoteInputArr2[i] = fromCompat(remoteInputArr[i]);
        }
        return remoteInputArr2;
    }

    static RemoteInput fromPlatform(android.app.RemoteInput remoteInput) {
        Set<String> allowedDataTypes;
        Builder builderAddExtras = new Builder(remoteInput.getResultKey()).setLabel(remoteInput.getLabel()).setChoices(remoteInput.getChoices()).setAllowFreeFormInput(remoteInput.getAllowFreeFormInput()).addExtras(remoteInput.getExtras());
        if (Build.VERSION.SDK_INT >= 26 && (allowedDataTypes = remoteInput.getAllowedDataTypes()) != null) {
            Iterator<String> it = allowedDataTypes.iterator();
            while (it.hasNext()) {
                builderAddExtras.setAllowDataType(it.next(), true);
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            builderAddExtras.setEditChoicesBeforeSending(remoteInput.getEditChoicesBeforeSending());
        }
        return builderAddExtras.build();
    }

    private static Intent getClipDataIntentFromIntent(Intent intent) {
        ClipData clipData = intent.getClipData();
        if (clipData == null) {
            return null;
        }
        ClipDescription description = clipData.getDescription();
        if (description.hasMimeType(NPStringFog.decode(new byte[]{77, 87, 73, 65, 22, 64, 87, 86, 31, 84, 87, 82, 75, 93, 88, 81, 23, 95, 87, 70, 84, 91, 77}, "921596", -2706)) && description.getLabel().toString().contentEquals(RESULTS_CLIP_LABEL)) {
            return clipData.getItemAt(0).getIntent();
        }
        return null;
    }

    public static Map<String, Uri> getDataResultsFromIntent(Intent intent, String str) {
        Intent clipDataIntentFromIntent;
        String string;
        if (Build.VERSION.SDK_INT >= 26) {
            return android.app.RemoteInput.getDataResultsFromIntent(intent, str);
        }
        if (Build.VERSION.SDK_INT < 16 || (clipDataIntentFromIntent = getClipDataIntentFromIntent(intent)) == null) {
            return null;
        }
        HashMap map = new HashMap();
        for (String str2 : clipDataIntentFromIntent.getExtras().keySet()) {
            if (str2.startsWith(EXTRA_DATA_TYPE_RESULTS_DATA)) {
                String strSubstring = str2.substring(EXTRA_DATA_TYPE_RESULTS_DATA.length());
                if (!strSubstring.isEmpty() && (string = clipDataIntentFromIntent.getBundleExtra(str2).getString(str)) != null && !string.isEmpty()) {
                    map.put(strSubstring, Uri.parse(string));
                }
            }
        }
        return map.isEmpty() ? null : map;
    }

    private static String getExtraResultsKeyForData(String str) {
        return EXTRA_DATA_TYPE_RESULTS_DATA + str;
    }

    public static Bundle getResultsFromIntent(Intent intent) {
        Intent clipDataIntentFromIntent;
        if (Build.VERSION.SDK_INT >= 20) {
            return android.app.RemoteInput.getResultsFromIntent(intent);
        }
        if (Build.VERSION.SDK_INT < 16 || (clipDataIntentFromIntent = getClipDataIntentFromIntent(intent)) == null) {
            return null;
        }
        return (Bundle) clipDataIntentFromIntent.getExtras().getParcelable(EXTRA_RESULTS_DATA);
    }

    public static int getResultsSource(Intent intent) {
        Intent clipDataIntentFromIntent;
        if (Build.VERSION.SDK_INT >= 28) {
            return android.app.RemoteInput.getResultsSource(intent);
        }
        if (Build.VERSION.SDK_INT < 16 || (clipDataIntentFromIntent = getClipDataIntentFromIntent(intent)) == null) {
            return 0;
        }
        return clipDataIntentFromIntent.getExtras().getInt(EXTRA_RESULTS_SOURCE, 0);
    }

    public static void setResultsSource(Intent intent, int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            android.app.RemoteInput.setResultsSource(intent, i);
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            Intent clipDataIntentFromIntent = getClipDataIntentFromIntent(intent);
            if (clipDataIntentFromIntent == null) {
                clipDataIntentFromIntent = new Intent();
            }
            clipDataIntentFromIntent.putExtra(EXTRA_RESULTS_SOURCE, i);
            intent.setClipData(ClipData.newIntent(RESULTS_CLIP_LABEL, clipDataIntentFromIntent));
        }
    }

    public boolean getAllowFreeFormInput() {
        return this.mAllowFreeFormTextInput;
    }

    public Set<String> getAllowedDataTypes() {
        return this.mAllowedDataTypes;
    }

    public CharSequence[] getChoices() {
        return this.mChoices;
    }

    public int getEditChoicesBeforeSending() {
        return this.mEditChoicesBeforeSending;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public CharSequence getLabel() {
        return this.mLabel;
    }

    public String getResultKey() {
        return this.mResultKey;
    }

    public boolean isDataOnly() {
        return (getAllowFreeFormInput() || (getChoices() != null && getChoices().length != 0) || getAllowedDataTypes() == null || getAllowedDataTypes().isEmpty()) ? false : true;
    }
}
