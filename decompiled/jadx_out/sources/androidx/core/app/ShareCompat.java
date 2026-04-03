package androidx.core.app;

import android.app.Activity;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import android.view.ActionProvider;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ShareActionProvider;
import androidx.core.util.Preconditions;
import java.util.ArrayList;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public final class ShareCompat {
    public static final String EXTRA_CALLING_ACTIVITY = NPStringFog.decode(new byte[]{89, 94, 7, 64, 88, 10, 92, 72, 77, 81, 88, 17, 93, 30, 2, 66, 71, 77, 125, 104, 55, 96, 118, 60, 123, 113, 47, 126, 126, 45, 127, 111, 34, 113, 99, 42, 110, 121, 55, 107}, "80c27c", -3.536229E8f);
    public static final String EXTRA_CALLING_ACTIVITY_INTEROP = NPStringFog.decode(new byte[]{82, 95, 81, 71, 95, 80, 87, 31, 70, 64, 64, 73, 92, 67, 65, 27, 70, 13, 29, 80, 69, 69, 30, 124, 107, 101, 103, 116, 111, 122, 114, 125, 121, 124, 126, 126, 108, 112, 118, 97, 121, 111, 122, 101, 108}, "315509", 1.774329708E9d);
    public static final String EXTRA_CALLING_PACKAGE = NPStringFog.decode(new byte[]{88, 95, 82, 67, 14, 93, 93, 73, 24, 82, 14, 70, 92, 31, 87, 65, 17, 26, 124, 105, 98, 99, 32, 107, 122, 112, 122, 125, 40, 122, 126, 110, 102, 112, 34, 127, 120, 118, 115}, "9161a4", false);
    public static final String EXTRA_CALLING_PACKAGE_INTEROP = NPStringFog.decode(new byte[]{2, 92, 82, 70, 94, 12, 7, 28, 69, 65, 65, 21, 12, 64, 66, 26, 71, 81, 77, 83, 70, 68, 31, 32, 59, 102, 100, 117, 110, 38, 34, 126, 122, 125, 127, 34, 60, 98, 119, 119, 122, 36, 36, 119}, "c2641e", 1.5241018E9f);
    private static final String HISTORY_FILENAME_PREFIX = NPStringFog.decode(new byte[]{24, 67, 13, 4, 64, 93, 85, 95, 8, 21, 83, 76, 105}, "60ee28", -1.473110341E9d);

    private static class Api16Impl {
        private Api16Impl() {
        }

        static void migrateExtraStreamToClipData(Intent intent, ArrayList<Uri> arrayList) {
            ClipData clipData = new ClipData(null, new String[]{intent.getType()}, new ClipData.Item(intent.getCharSequenceExtra(NPStringFog.decode(new byte[]{5, 95, 6, 23, 92, 95, 0, 31, 11, 11, 71, 83, 10, 69, 76, 0, 75, 66, 22, 80, 76, 49, 118, 110, 48}, "d1be36", -2.134826841E9d)), intent.getStringExtra(NPStringFog.decode(new byte[]{2, 12, 84, 75, 9, 15, 7, 76, 89, 87, 18, 3, 13, 22, 30, 92, 30, 18, 17, 3, 30, 113, 50, 43, 47, 61, 100, 124, 62, 50}, "cb09ff", 7.97060918E8d)), null, arrayList.get(0)));
            int size = arrayList.size();
            for (int i = 1; i < size; i++) {
                clipData.addItem(new ClipData.Item(arrayList.get(i)));
            }
            intent.setClipData(clipData);
            intent.addFlags(1);
        }

        static void removeClipData(Intent intent) {
            intent.setClipData(null);
            intent.setFlags(intent.getFlags() & (-2));
        }
    }

    public static class IntentBuilder {
        private ArrayList<String> mBccAddresses;
        private ArrayList<String> mCcAddresses;
        private CharSequence mChooserTitle;
        private final Context mContext;
        private final Intent mIntent;
        private ArrayList<Uri> mStreams;
        private ArrayList<String> mToAddresses;

        public IntentBuilder(Context context) {
            Activity activity;
            this.mContext = (Context) Preconditions.checkNotNull(context);
            Intent action = new Intent().setAction(NPStringFog.decode(new byte[]{85, 86, 83, 68, 10, 81, 80, 22, 94, 88, 17, 93, 90, 76, 25, 87, 6, 76, 93, 87, 89, 24, 54, 125, 122, 124}, "4876e8", 1540616335L));
            this.mIntent = action;
            action.putExtra(NPStringFog.decode(new byte[]{86, 95, 83, 71, 10, 90, 83, 73, 25, 86, 10, 65, 82, 31, 86, 69, 21, 29, 114, 105, 99, 103, 36, 108, 116, 112, 123, 121, 44, 125, 112, 110, 103, 116, 38, 120, 118, 118, 114}, "7175e3", true, true), context.getPackageName());
            action.putExtra(NPStringFog.decode(new byte[]{2, 89, 80, 17, 86, 13, 7, 25, 71, 22, 73, 20, 12, 69, 64, 77, 79, 80, 77, 86, 68, 19, 23, 33, 59, 99, 102, 34, 102, 39, 34, 123, 120, 42, 119, 35, 60, 103, 117, 32, 114, 37, 36, 114}, "c74c9d", -22713), context.getPackageName());
            action.addFlags(524288);
            Context baseContext = context;
            while (true) {
                if (!(baseContext instanceof ContextWrapper)) {
                    activity = null;
                    break;
                } else {
                    if (baseContext instanceof Activity) {
                        activity = (Activity) baseContext;
                        break;
                    }
                    baseContext = ((ContextWrapper) baseContext).getBaseContext();
                }
            }
            if (activity != null) {
                ComponentName componentName = activity.getComponentName();
                this.mIntent.putExtra(NPStringFog.decode(new byte[]{82, 8, 87, 20, 11, 8, 87, 30, 29, 5, 11, 19, 86, 72, 82, 22, 20, 79, 118, 62, 103, 52, 37, 62, 112, 39, 127, 42, 45, 47, 116, 57, 114, 37, 48, 40, 101, 47, 103, 63}, "3f3fda", 27813), componentName);
                this.mIntent.putExtra(NPStringFog.decode(new byte[]{7, 92, 83, 68, 14, 8, 2, 28, 68, 67, 17, 17, 9, 64, 67, 24, 23, 85, 72, 83, 71, 70, 79, 36, 62, 102, 101, 119, 62, 34, 39, 126, 123, 127, 47, 38, 57, 115, 116, 98, 40, 55, 47, 102, 110}, "f276aa", false), componentName);
            }
        }

        private void combineArrayExtra(String str, ArrayList<String> arrayList) {
            String[] stringArrayExtra = this.mIntent.getStringArrayExtra(str);
            int length = stringArrayExtra != null ? stringArrayExtra.length : 0;
            String[] strArr = new String[arrayList.size() + length];
            arrayList.toArray(strArr);
            if (stringArrayExtra != null) {
                System.arraycopy(stringArrayExtra, 0, strArr, arrayList.size(), length);
            }
            this.mIntent.putExtra(str, strArr);
        }

        private void combineArrayExtra(String str, String[] strArr) {
            Intent intent = getIntent();
            String[] stringArrayExtra = intent.getStringArrayExtra(str);
            int length = stringArrayExtra != null ? stringArrayExtra.length : 0;
            String[] strArr2 = new String[strArr.length + length];
            if (stringArrayExtra != null) {
                System.arraycopy(stringArrayExtra, 0, strArr2, 0, length);
            }
            System.arraycopy(strArr, 0, strArr2, length, strArr.length);
            intent.putExtra(str, strArr2);
        }

        @Deprecated
        public static IntentBuilder from(Activity activity) {
            return new IntentBuilder(activity);
        }

        public IntentBuilder addEmailBcc(String str) {
            if (this.mBccAddresses == null) {
                this.mBccAddresses = new ArrayList<>();
            }
            this.mBccAddresses.add(str);
            return this;
        }

        public IntentBuilder addEmailBcc(String[] strArr) {
            combineArrayExtra(NPStringFog.decode(new byte[]{5, 92, 82, 19, 9, 13, 0, 28, 95, 15, 18, 1, 10, 70, 24, 4, 30, 16, 22, 83, 24, 35, 37, 39}, "d26afd", -9.0910624E8f), strArr);
            return this;
        }

        public IntentBuilder addEmailCc(String str) {
            if (this.mCcAddresses == null) {
                this.mCcAddresses = new ArrayList<>();
            }
            this.mCcAddresses.add(str);
            return this;
        }

        public IntentBuilder addEmailCc(String[] strArr) {
            combineArrayExtra(NPStringFog.decode(new byte[]{88, 86, 7, 20, 92, 15, 93, 22, 10, 8, 71, 3, 87, 76, 77, 3, 75, 18, 75, 89, 77, 37, 112}, "98cf3f", -1608212237L), strArr);
            return this;
        }

        public IntentBuilder addEmailTo(String str) {
            if (this.mToAddresses == null) {
                this.mToAddresses = new ArrayList<>();
            }
            this.mToAddresses.add(str);
            return this;
        }

        public IntentBuilder addEmailTo(String[] strArr) {
            combineArrayExtra(NPStringFog.decode(new byte[]{0, 93, 83, 74, 90, 92, 5, 29, 94, 86, 65, 80, 15, 71, 25, 93, 77, 65, 19, 82, 25, 125, 120, 116, 40, 127}, "a37855", false, true), strArr);
            return this;
        }

        public IntentBuilder addStream(Uri uri) {
            if (this.mStreams == null) {
                this.mStreams = new ArrayList<>();
            }
            this.mStreams.add(uri);
            return this;
        }

        public Intent createChooserIntent() {
            return Intent.createChooser(getIntent(), this.mChooserTitle);
        }

        Context getContext() {
            return this.mContext;
        }

        public Intent getIntent() {
            ArrayList<String> arrayList = this.mToAddresses;
            if (arrayList != null) {
                combineArrayExtra(NPStringFog.decode(new byte[]{87, 10, 1, 19, 86, 94, 82, 74, 12, 15, 77, 82, 88, 16, 75, 4, 65, 67, 68, 5, 75, 36, 116, 118, 127, 40}, "6dea97", 20122), arrayList);
                this.mToAddresses = null;
            }
            ArrayList<String> arrayList2 = this.mCcAddresses;
            if (arrayList2 != null) {
                combineArrayExtra(NPStringFog.decode(new byte[]{7, 90, 7, 70, 11, 10, 2, 26, 10, 90, 16, 6, 8, 64, 77, 81, 28, 23, 20, 85, 77, 119, 39}, "f4c4dc", 1.0774253E9f), arrayList2);
                this.mCcAddresses = null;
            }
            ArrayList<String> arrayList3 = this.mBccAddresses;
            if (arrayList3 != null) {
                combineArrayExtra(NPStringFog.decode(new byte[]{2, 94, 93, 65, 87, 10, 7, 30, 80, 93, 76, 6, 13, 68, 23, 86, 64, 23, 17, 81, 23, 113, 123, 32}, "c0938c", true, true), arrayList3);
                this.mBccAddresses = null;
            }
            ArrayList<Uri> arrayList4 = this.mStreams;
            if (arrayList4 != null && arrayList4.size() > 1) {
                this.mIntent.setAction(NPStringFog.decode(new byte[]{4, 91, 84, 17, 13, 80, 1, 27, 89, 13, 22, 92, 11, 65, 30, 2, 1, 77, 12, 90, 94, 77, 49, 124, 43, 113, 111, 46, 55, 117, 49, 124, 96, 47, 39}, "e50cb9", 1.398110668E9d));
                this.mIntent.putParcelableArrayListExtra(NPStringFog.decode(new byte[]{84, 13, 6, 22, 86, 15, 81, 77, 11, 10, 77, 3, 91, 23, 76, 1, 65, 18, 71, 2, 76, 55, 109, 52, 112, 34, 47}, "5cbd9f", 352660628L), this.mStreams);
                if (Build.VERSION.SDK_INT >= 16) {
                    Api16Impl.migrateExtraStreamToClipData(this.mIntent, this.mStreams);
                }
            } else {
                this.mIntent.setAction(NPStringFog.decode(new byte[]{0, 87, 86, 74, 91, 11, 5, 23, 91, 86, 64, 7, 15, 77, 28, 89, 87, 22, 8, 86, 92, 22, 103, 39, 47, 125}, "a9284b", -6.35234944E8d));
                ArrayList<Uri> arrayList5 = this.mStreams;
                if (arrayList5 == null || arrayList5.isEmpty()) {
                    this.mIntent.removeExtra(NPStringFog.decode(new byte[]{3, 10, 93, 22, 88, 11, 6, 74, 80, 10, 67, 7, 12, 16, 23, 1, 79, 22, 16, 5, 23, 55, 99, 48, 39, 37, 116}, "bd9d7b", -10190));
                    if (Build.VERSION.SDK_INT >= 16) {
                        Api16Impl.removeClipData(this.mIntent);
                    }
                } else {
                    this.mIntent.putExtra(NPStringFog.decode(new byte[]{4, 90, 5, 66, 11, 81, 1, 26, 8, 94, 16, 93, 11, 64, 79, 85, 28, 76, 23, 85, 79, 99, 48, 106, 32, 117, 44}, "e4a0d8", -8.3362074E8f), this.mStreams.get(0));
                    if (Build.VERSION.SDK_INT >= 16) {
                        Api16Impl.migrateExtraStreamToClipData(this.mIntent, this.mStreams);
                    }
                }
            }
            return this.mIntent;
        }

        public IntentBuilder setChooserTitle(int i) {
            return setChooserTitle(this.mContext.getText(i));
        }

        public IntentBuilder setChooserTitle(CharSequence charSequence) {
            this.mChooserTitle = charSequence;
            return this;
        }

        public IntentBuilder setEmailBcc(String[] strArr) {
            this.mIntent.putExtra(NPStringFog.decode(new byte[]{85, 90, 0, 71, 92, 89, 80, 26, 13, 91, 71, 85, 90, 64, 74, 80, 75, 68, 70, 85, 74, 119, 112, 115}, "44d530", 7.83316052E8d), strArr);
            return this;
        }

        public IntentBuilder setEmailCc(String[] strArr) {
            this.mIntent.putExtra(NPStringFog.decode(new byte[]{84, 94, 5, 20, 95, 15, 81, 30, 8, 8, 68, 3, 91, 68, 79, 3, 72, 18, 71, 81, 79, 37, 115}, "50af0f", 7.11386147E8d), strArr);
            return this;
        }

        public IntentBuilder setEmailTo(String[] strArr) {
            if (this.mToAddresses != null) {
                this.mToAddresses = null;
            }
            this.mIntent.putExtra(NPStringFog.decode(new byte[]{0, 89, 85, 75, 9, 94, 5, 25, 88, 87, 18, 82, 15, 67, 31, 92, 30, 67, 19, 86, 31, 124, 43, 118, 40, 123}, "a719f7", true), strArr);
            return this;
        }

        public IntentBuilder setHtmlText(String str) {
            this.mIntent.putExtra(NPStringFog.decode(new byte[]{86, 10, 82, 23, 12, 92, 83, 74, 95, 11, 23, 80, 89, 16, 24, 0, 27, 65, 69, 5, 24, 45, 55, 120, 123, 59, 98, 32, 59, 97}, "7d6ec5", false), str);
            if (!this.mIntent.hasExtra(NPStringFog.decode(new byte[]{3, 94, 86, 19, 88, 80, 6, 30, 91, 15, 67, 92, 12, 68, 28, 4, 79, 77, 16, 81, 28, 53, 114, 97, 54}, "b02a79", false))) {
                setText(Html.fromHtml(str));
            }
            return this;
        }

        public IntentBuilder setStream(Uri uri) {
            this.mStreams = null;
            if (uri != null) {
                addStream(uri);
            }
            return this;
        }

        public IntentBuilder setSubject(String str) {
            this.mIntent.putExtra(NPStringFog.decode(new byte[]{89, 94, 80, 70, 86, 95, 92, 30, 93, 90, 77, 83, 86, 68, 26, 81, 65, 66, 74, 81, 26, 103, 108, 116, 114, 117, 119, 96}, "804496", true), str);
            return this;
        }

        public IntentBuilder setText(CharSequence charSequence) {
            this.mIntent.putExtra(NPStringFog.decode(new byte[]{88, 8, 82, 69, 91, 80, 93, 72, 95, 89, 64, 92, 87, 18, 24, 82, 76, 77, 75, 7, 24, 99, 113, 97, 109}, "9f6749", -31656), charSequence);
            return this;
        }

        public IntentBuilder setType(String str) {
            this.mIntent.setType(str);
            return this;
        }

        public void startChooser() {
            this.mContext.startActivity(createChooserIntent());
        }
    }

    public static class IntentReader {
        private static final String TAG = NPStringFog.decode(new byte[]{40, 87, 71, 84, 88, 76, 51, 92, 82, 85, 83, 74}, "a93168", 7.97744756E8d);
        private final ComponentName mCallingActivity;
        private final String mCallingPackage;
        private final Context mContext;
        private final Intent mIntent;
        private ArrayList<Uri> mStreams;

        public IntentReader(Activity activity) {
            this((Context) Preconditions.checkNotNull(activity), activity.getIntent());
        }

        public IntentReader(Context context, Intent intent) {
            this.mContext = (Context) Preconditions.checkNotNull(context);
            this.mIntent = (Intent) Preconditions.checkNotNull(intent);
            this.mCallingPackage = ShareCompat.getCallingPackage(intent);
            this.mCallingActivity = ShareCompat.getCallingActivity(intent);
        }

        @Deprecated
        public static IntentReader from(Activity activity) {
            return new IntentReader(activity);
        }

        private static void withinStyle(StringBuilder sb, CharSequence charSequence, int i, int i2) {
            int i3 = i;
            while (i3 < i2) {
                char cCharAt = charSequence.charAt(i3);
                if (cCharAt == '<') {
                    sb.append(NPStringFog.decode(new byte[]{31, 13, 65, 11}, "9a501c", true, true));
                } else if (cCharAt == '>') {
                    sb.append(NPStringFog.decode(new byte[]{64, 5, 66, 13}, "fb66af", 24774));
                } else if (cCharAt == '&') {
                    sb.append(NPStringFog.decode(new byte[]{64, 3, 11, 17, 90}, "fbfaa8", false, false));
                } else if (cCharAt > '~' || cCharAt < ' ') {
                    sb.append(NPStringFog.decode(new byte[]{67, 27}, "e85857", 2.000943459E9d));
                    sb.append((int) cCharAt);
                    sb.append(NPStringFog.decode(new byte[]{13}, "630498", 8.421707E8f));
                } else if (cCharAt == ' ') {
                    while (i3 + 1 < i2 && charSequence.charAt(i3 + 1) == ' ') {
                        sb.append(NPStringFog.decode(new byte[]{30, 93, 81, 23, 64, 11}, "833d00", true, false));
                        i3++;
                    }
                    sb.append(' ');
                } else {
                    sb.append(cCharAt);
                }
                i3++;
            }
        }

        public ComponentName getCallingActivity() {
            return this.mCallingActivity;
        }

        public Drawable getCallingActivityIcon() {
            if (this.mCallingActivity == null) {
                return null;
            }
            try {
                return this.mContext.getPackageManager().getActivityIcon(this.mCallingActivity);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{114, 91, 64, 84, 7, 20, 95, 91, 65, 24, 17, 81, 69, 70, 92, 93, 21, 81, 17, 93, 86, 87, 13, 20, 87, 91, 71, 24, 0, 85, 93, 88, 92, 86, 4, 20, 80, 87, 65, 81, 21, 93, 69, 77}, "1458c4", true), e);
                return null;
            }
        }

        public Drawable getCallingApplicationIcon() {
            if (this.mCallingPackage == null) {
                return null;
            }
            try {
                return this.mContext.getPackageManager().getApplicationIcon(this.mCallingPackage);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{33, 91, 76, 85, 6, 67, 12, 91, 77, 25, 16, 6, 22, 70, 80, 92, 20, 6, 66, 93, 90, 86, 12, 67, 4, 91, 75, 25, 1, 2, 14, 88, 80, 87, 5, 67, 3, 68, 73, 85, 11, 0, 3, 64, 80, 86, 12}, "b499bc", 2.1411517E8f), e);
                return null;
            }
        }

        public CharSequence getCallingApplicationLabel() {
            if (this.mCallingPackage == null) {
                return null;
            }
            PackageManager packageManager = this.mContext.getPackageManager();
            try {
                return packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.mCallingPackage, 0));
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{123, 93, 65, 89, 92, 25, 86, 93, 64, 21, 74, 92, 76, 64, 93, 80, 78, 92, 24, 94, 85, 87, 93, 85, 24, 84, 91, 71, 24, 90, 89, 94, 88, 92, 86, 94, 24, 83, 68, 69, 84, 80, 91, 83, 64, 92, 87, 87}, "824589", -20594), e);
                return null;
            }
        }

        public String getCallingPackage() {
            return this.mCallingPackage;
        }

        public String[] getEmailBcc() {
            return this.mIntent.getStringArrayExtra(NPStringFog.decode(new byte[]{89, 90, 7, 68, 89, 12, 92, 26, 10, 88, 66, 0, 86, 64, 77, 83, 78, 17, 74, 85, 77, 116, 117, 38}, "84c66e", 424434588L));
        }

        public String[] getEmailCc() {
            return this.mIntent.getStringArrayExtra(NPStringFog.decode(new byte[]{83, 86, 86, 68, 87, 94, 86, 22, 91, 88, 76, 82, 92, 76, 28, 83, 64, 67, 64, 89, 28, 117, 123}, "282687", -432602368L));
        }

        public String[] getEmailTo() {
            return this.mIntent.getStringArrayExtra(NPStringFog.decode(new byte[]{80, 89, 80, 16, 89, 15, 85, 25, 93, 12, 66, 3, 95, 67, 26, 7, 78, 18, 67, 86, 26, 39, 123, 39, 120, 123}, "174b6f", false, true));
        }

        public String getHtmlText() {
            String stringExtra = this.mIntent.getStringExtra(NPStringFog.decode(new byte[]{80, 90, 83, 67, 86, 89, 85, 26, 94, 95, 77, 85, 95, 64, 25, 84, 65, 68, 67, 85, 25, 121, 109, 125, 125, 107, 99, 116, 97, 100}, "147190", -514811041L));
            if (stringExtra == null) {
                CharSequence text = getText();
                if (text instanceof Spanned) {
                    return Html.toHtml((Spanned) text);
                }
                if (text != null) {
                    if (Build.VERSION.SDK_INT >= 16) {
                        return Html.escapeHtml(text);
                    }
                    StringBuilder sb = new StringBuilder();
                    withinStyle(sb, text, 0, text.length());
                    return sb.toString();
                }
            }
            return stringExtra;
        }

        public Uri getStream() {
            return (Uri) this.mIntent.getParcelableExtra(NPStringFog.decode(new byte[]{7, 94, 82, 69, 89, 10, 2, 30, 95, 89, 66, 6, 8, 68, 24, 82, 78, 23, 20, 81, 24, 100, 98, 49, 35, 113, 123}, "f0676c", -657729658L));
        }

        public Uri getStream(int i) {
            if (this.mStreams == null && isMultipleShare()) {
                this.mStreams = this.mIntent.getParcelableArrayListExtra(NPStringFog.decode(new byte[]{2, 15, 7, 66, 91, 8, 7, 79, 10, 94, 64, 4, 13, 21, 77, 85, 76, 21, 17, 0, 77, 99, 96, 51, 38, 32, 46}, "cac04a", -1.8030089E9f));
            }
            ArrayList<Uri> arrayList = this.mStreams;
            if (arrayList != null) {
                return arrayList.get(i);
            }
            if (i == 0) {
                return (Uri) this.mIntent.getParcelableExtra(NPStringFog.decode(new byte[]{84, 95, 5, 17, 14, 80, 81, 31, 8, 13, 21, 92, 91, 69, 79, 6, 25, 77, 71, 80, 79, 48, 53, 107, 112, 112, 44}, "51aca9", false, false));
            }
            throw new IndexOutOfBoundsException(NPStringFog.decode(new byte[]{98, 18, 20, 80, 83, 15, 17, 15, 18, 80, 95, 17, 17, 7, 16, 84, 91, 14, 80, 4, 10, 80, 8, 66}, "1ff52b", true) + getStreamCount() + NPStringFog.decode(new byte[]{65, 89, 94, 84, 6, 25, 65, 66, 85, 65, 22, 4, 18, 68, 85, 84, 89, 65}, "a000ca", 1.3325485E8f) + i);
        }

        public int getStreamCount() {
            if (this.mStreams == null && isMultipleShare()) {
                this.mStreams = this.mIntent.getParcelableArrayListExtra(NPStringFog.decode(new byte[]{89, 11, 84, 17, 11, 89, 92, 75, 89, 13, 16, 85, 86, 17, 30, 6, 28, 68, 74, 4, 30, 48, 48, 98, 125, 36, 125}, "8e0cd0", 1.7685487E9f));
            }
            ArrayList<Uri> arrayList = this.mStreams;
            return arrayList != null ? arrayList.size() : this.mIntent.hasExtra(NPStringFog.decode(new byte[]{88, 15, 1, 67, 11, 8, 93, 79, 12, 95, 16, 4, 87, 21, 75, 84, 28, 21, 75, 0, 75, 98, 48, 51, 124, 32, 40}, "9ae1da", 14629)) ? 1 : 0;
        }

        public String getSubject() {
            return this.mIntent.getStringExtra(NPStringFog.decode(new byte[]{85, 93, 84, 65, 87, 93, 80, 29, 89, 93, 76, 81, 90, 71, 30, 86, 64, 64, 70, 82, 30, 96, 109, 118, 126, 118, 115, 103}, "430384", true, true));
        }

        public CharSequence getText() {
            return this.mIntent.getCharSequenceExtra(NPStringFog.decode(new byte[]{4, 92, 92, 65, 10, 90, 1, 28, 81, 93, 17, 86, 11, 70, 22, 86, 29, 71, 23, 83, 22, 103, 32, 107, 49}, "e283e3", true, false));
        }

        public String getType() {
            return this.mIntent.getType();
        }

        public boolean isMultipleShare() {
            return NPStringFog.decode(new byte[]{88, 8, 92, 23, 11, 90, 93, 72, 81, 11, 16, 86, 87, 18, 22, 4, 7, 71, 80, 9, 86, 75, 55, 118, 119, 34, 103, 40, 49, 127, 109, 47, 104, 41, 33}, "9f8ed3", true, false).equals(this.mIntent.getAction());
        }

        public boolean isShareIntent() {
            String action = this.mIntent.getAction();
            return NPStringFog.decode(new byte[]{5, 91, 84, 22, 95, 8, 0, 27, 89, 10, 68, 4, 10, 65, 30, 5, 83, 21, 13, 90, 94, 74, 99, 36, 42, 113}, "d50d0a", 26176).equals(action) || NPStringFog.decode(new byte[]{0, 90, 2, 69, 95, 12, 5, 26, 15, 89, 68, 0, 15, 64, 72, 86, 83, 17, 8, 91, 8, 25, 99, 32, 47, 112, 57, 122, 101, 41, 53, 125, 54, 123, 117}, "a4f70e", 1.50623951E9d).equals(action);
        }

        public boolean isSingleShare() {
            return NPStringFog.decode(new byte[]{2, 86, 92, 22, 95, 90, 7, 22, 81, 10, 68, 86, 13, 76, 22, 5, 83, 71, 10, 87, 86, 74, 99, 118, 45, 124}, "c88d03", false, true).equals(this.mIntent.getAction());
        }
    }

    private ShareCompat() {
    }

    @Deprecated
    public static void configureMenuItem(Menu menu, int i, IntentBuilder intentBuilder) {
        MenuItem menuItemFindItem = menu.findItem(i);
        if (menuItemFindItem != null) {
            configureMenuItem(menuItemFindItem, intentBuilder);
            return;
        }
        throw new IllegalArgumentException(NPStringFog.decode(new byte[]{123, 14, 23, 90, 6, 70, 86, 14, 22, 22, 4, 15, 86, 5, 66, 91, 7, 8, 77, 65, 11, 66, 7, 11, 24, 22, 11, 66, 10, 70, 81, 5, 66}, "8ab6bf", false) + i + NPStringFog.decode(new byte[]{68, 15, 92, 25, 18, 14, 1, 70, 65, 76, 22, 22, 8, 15, 87, 93, 70, 11, 1, 8, 71}, "df29ff", -1.89305E9f));
    }

    @Deprecated
    public static void configureMenuItem(MenuItem menuItem, IntentBuilder intentBuilder) {
        ActionProvider actionProvider = menuItem.getActionProvider();
        ShareActionProvider shareActionProvider = !(actionProvider instanceof ShareActionProvider) ? new ShareActionProvider(intentBuilder.getContext()) : (ShareActionProvider) actionProvider;
        shareActionProvider.setShareHistoryFileName(HISTORY_FILENAME_PREFIX + intentBuilder.getContext().getClass().getName());
        shareActionProvider.setShareIntent(intentBuilder.getIntent());
        menuItem.setActionProvider(shareActionProvider);
        if (Build.VERSION.SDK_INT >= 16 || menuItem.hasSubMenu()) {
            return;
        }
        menuItem.setIntent(intentBuilder.createChooserIntent());
    }

    public static ComponentName getCallingActivity(Activity activity) {
        Intent intent = activity.getIntent();
        ComponentName callingActivity = activity.getCallingActivity();
        return callingActivity == null ? getCallingActivity(intent) : callingActivity;
    }

    static ComponentName getCallingActivity(Intent intent) {
        ComponentName componentName = (ComponentName) intent.getParcelableExtra(EXTRA_CALLING_ACTIVITY);
        return componentName == null ? (ComponentName) intent.getParcelableExtra(EXTRA_CALLING_ACTIVITY_INTEROP) : componentName;
    }

    public static String getCallingPackage(Activity activity) {
        Intent intent = activity.getIntent();
        String callingPackage = activity.getCallingPackage();
        return (callingPackage != null || intent == null) ? callingPackage : getCallingPackage(intent);
    }

    static String getCallingPackage(Intent intent) {
        String stringExtra = intent.getStringExtra(EXTRA_CALLING_PACKAGE);
        return stringExtra == null ? intent.getStringExtra(EXTRA_CALLING_PACKAGE_INTEROP) : stringExtra;
    }
}
