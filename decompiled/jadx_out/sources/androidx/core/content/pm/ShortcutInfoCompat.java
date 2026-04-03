package androidx.core.content.pm;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.PersistableBundle;
import android.os.UserHandle;
import android.text.TextUtils;
import androidx.core.app.Person;
import androidx.core.content.LocusIdCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.net.UriCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class ShortcutInfoCompat {
    private static final String EXTRA_LOCUS_ID = NPStringFog.decode(new byte[]{92, 72, 23, 20, 4, 41, 86, 83, 22, 21, 44, 1}, "90cfee", -1326398680L);
    private static final String EXTRA_LONG_LIVED = NPStringFog.decode(new byte[]{81, 72, 71, 20, 89, 125, 91, 94, 84, 42, 81, 71, 81, 84}, "403f81", -31439);
    private static final String EXTRA_PERSON_ = NPStringFog.decode(new byte[]{83, 76, 17, 16, 4, 103, 83, 70, 22, 13, 11, 104}, "64ebe7", 6.5532203E8d);
    private static final String EXTRA_PERSON_COUNT = NPStringFog.decode(new byte[]{84, 28, 17, 75, 88, 100, 84, 22, 22, 86, 87, 119, 94, 17, 11, 77}, "1de994", -13292);
    private static final String EXTRA_SLICE_URI = NPStringFog.decode(new byte[]{1, 65, 76, 20, 4, 96, 8, 80, 91, 3, 48, 65, 13}, "d98fe3", 813788029L);
    ComponentName mActivity;
    Set<String> mCategories;
    Context mContext;
    CharSequence mDisabledMessage;
    int mDisabledReason;
    PersistableBundle mExtras;
    boolean mHasKeyFieldsOnly;
    IconCompat mIcon;
    String mId;
    Intent[] mIntents;
    boolean mIsAlwaysBadged;
    boolean mIsCached;
    boolean mIsDeclaredInManifest;
    boolean mIsDynamic;
    boolean mIsEnabled = true;
    boolean mIsImmutable;
    boolean mIsLongLived;
    boolean mIsPinned;
    CharSequence mLabel;
    long mLastChangedTimestamp;
    LocusIdCompat mLocusId;
    CharSequence mLongLabel;
    String mPackageName;
    Person[] mPersons;
    int mRank;
    UserHandle mUser;

    public static class Builder {
        private Map<String, Map<String, List<String>>> mCapabilityBindingParams;
        private Set<String> mCapabilityBindings;
        private final ShortcutInfoCompat mInfo;
        private boolean mIsConversation;
        private Uri mSliceUri;

        public Builder(Context context, ShortcutInfo shortcutInfo) {
            ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat();
            this.mInfo = shortcutInfoCompat;
            shortcutInfoCompat.mContext = context;
            shortcutInfoCompat.mId = shortcutInfo.getId();
            shortcutInfoCompat.mPackageName = shortcutInfo.getPackage();
            Intent[] intents = shortcutInfo.getIntents();
            shortcutInfoCompat.mIntents = (Intent[]) Arrays.copyOf(intents, intents.length);
            shortcutInfoCompat.mActivity = shortcutInfo.getActivity();
            shortcutInfoCompat.mLabel = shortcutInfo.getShortLabel();
            shortcutInfoCompat.mLongLabel = shortcutInfo.getLongLabel();
            shortcutInfoCompat.mDisabledMessage = shortcutInfo.getDisabledMessage();
            if (Build.VERSION.SDK_INT >= 28) {
                shortcutInfoCompat.mDisabledReason = shortcutInfo.getDisabledReason();
            } else {
                shortcutInfoCompat.mDisabledReason = shortcutInfo.isEnabled() ? 0 : 3;
            }
            shortcutInfoCompat.mCategories = shortcutInfo.getCategories();
            shortcutInfoCompat.mPersons = ShortcutInfoCompat.getPersonsFromExtra(shortcutInfo.getExtras());
            shortcutInfoCompat.mUser = shortcutInfo.getUserHandle();
            shortcutInfoCompat.mLastChangedTimestamp = shortcutInfo.getLastChangedTimestamp();
            if (Build.VERSION.SDK_INT >= 30) {
                shortcutInfoCompat.mIsCached = shortcutInfo.isCached();
            }
            shortcutInfoCompat.mIsDynamic = shortcutInfo.isDynamic();
            shortcutInfoCompat.mIsPinned = shortcutInfo.isPinned();
            shortcutInfoCompat.mIsDeclaredInManifest = shortcutInfo.isDeclaredInManifest();
            shortcutInfoCompat.mIsImmutable = shortcutInfo.isImmutable();
            shortcutInfoCompat.mIsEnabled = shortcutInfo.isEnabled();
            shortcutInfoCompat.mHasKeyFieldsOnly = shortcutInfo.hasKeyFieldsOnly();
            shortcutInfoCompat.mLocusId = ShortcutInfoCompat.getLocusId(shortcutInfo);
            shortcutInfoCompat.mRank = shortcutInfo.getRank();
            shortcutInfoCompat.mExtras = shortcutInfo.getExtras();
        }

        public Builder(Context context, String str) {
            ShortcutInfoCompat shortcutInfoCompat = new ShortcutInfoCompat();
            this.mInfo = shortcutInfoCompat;
            shortcutInfoCompat.mContext = context;
            shortcutInfoCompat.mId = str;
        }

        public Builder(ShortcutInfoCompat shortcutInfoCompat) {
            ShortcutInfoCompat shortcutInfoCompat2 = new ShortcutInfoCompat();
            this.mInfo = shortcutInfoCompat2;
            shortcutInfoCompat2.mContext = shortcutInfoCompat.mContext;
            shortcutInfoCompat2.mId = shortcutInfoCompat.mId;
            shortcutInfoCompat2.mPackageName = shortcutInfoCompat.mPackageName;
            shortcutInfoCompat2.mIntents = (Intent[]) Arrays.copyOf(shortcutInfoCompat.mIntents, shortcutInfoCompat.mIntents.length);
            shortcutInfoCompat2.mActivity = shortcutInfoCompat.mActivity;
            shortcutInfoCompat2.mLabel = shortcutInfoCompat.mLabel;
            shortcutInfoCompat2.mLongLabel = shortcutInfoCompat.mLongLabel;
            shortcutInfoCompat2.mDisabledMessage = shortcutInfoCompat.mDisabledMessage;
            shortcutInfoCompat2.mDisabledReason = shortcutInfoCompat.mDisabledReason;
            shortcutInfoCompat2.mIcon = shortcutInfoCompat.mIcon;
            shortcutInfoCompat2.mIsAlwaysBadged = shortcutInfoCompat.mIsAlwaysBadged;
            shortcutInfoCompat2.mUser = shortcutInfoCompat.mUser;
            shortcutInfoCompat2.mLastChangedTimestamp = shortcutInfoCompat.mLastChangedTimestamp;
            shortcutInfoCompat2.mIsCached = shortcutInfoCompat.mIsCached;
            shortcutInfoCompat2.mIsDynamic = shortcutInfoCompat.mIsDynamic;
            shortcutInfoCompat2.mIsPinned = shortcutInfoCompat.mIsPinned;
            shortcutInfoCompat2.mIsDeclaredInManifest = shortcutInfoCompat.mIsDeclaredInManifest;
            shortcutInfoCompat2.mIsImmutable = shortcutInfoCompat.mIsImmutable;
            shortcutInfoCompat2.mIsEnabled = shortcutInfoCompat.mIsEnabled;
            shortcutInfoCompat2.mLocusId = shortcutInfoCompat.mLocusId;
            shortcutInfoCompat2.mIsLongLived = shortcutInfoCompat.mIsLongLived;
            shortcutInfoCompat2.mHasKeyFieldsOnly = shortcutInfoCompat.mHasKeyFieldsOnly;
            shortcutInfoCompat2.mRank = shortcutInfoCompat.mRank;
            if (shortcutInfoCompat.mPersons != null) {
                shortcutInfoCompat2.mPersons = (Person[]) Arrays.copyOf(shortcutInfoCompat.mPersons, shortcutInfoCompat.mPersons.length);
            }
            if (shortcutInfoCompat.mCategories != null) {
                shortcutInfoCompat2.mCategories = new HashSet(shortcutInfoCompat.mCategories);
            }
            if (shortcutInfoCompat.mExtras != null) {
                shortcutInfoCompat2.mExtras = shortcutInfoCompat.mExtras;
            }
        }

        public Builder addCapabilityBinding(String str) {
            if (this.mCapabilityBindings == null) {
                this.mCapabilityBindings = new HashSet();
            }
            this.mCapabilityBindings.add(str);
            return this;
        }

        public Builder addCapabilityBinding(String str, String str2, List<String> list) {
            addCapabilityBinding(str);
            if (!list.isEmpty()) {
                if (this.mCapabilityBindingParams == null) {
                    this.mCapabilityBindingParams = new HashMap();
                }
                if (this.mCapabilityBindingParams.get(str) == null) {
                    this.mCapabilityBindingParams.put(str, new HashMap());
                }
                this.mCapabilityBindingParams.get(str).put(str2, list);
            }
            return this;
        }

        public ShortcutInfoCompat build() {
            if (TextUtils.isEmpty(this.mInfo.mLabel)) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{96, 10, 93, 65, 71, 85, 70, 22, 18, 94, 70, 69, 71, 66, 90, 82, 69, 83, 19, 3, 18, 93, 92, 88, 30, 7, 95, 67, 71, 79, 19, 14, 83, 81, 86, 90}, "3b2336", 311480859L));
            }
            if (this.mInfo.mIntents == null || this.mInfo.mIntents.length == 0) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{107, 14, 9, 65, 65, 2, 77, 18, 70, 94, 64, 18, 76, 70, 14, 82, 67, 4, 24, 7, 8, 19, 92, 15, 76, 3, 8, 71}, "8ff35a", -1902186057L));
            }
            if (this.mIsConversation) {
                if (this.mInfo.mLocusId == null) {
                    ShortcutInfoCompat shortcutInfoCompat = this.mInfo;
                    shortcutInfoCompat.mLocusId = new LocusIdCompat(shortcutInfoCompat.mId);
                }
                this.mInfo.mIsLongLived = true;
            }
            if (this.mCapabilityBindings != null) {
                if (this.mInfo.mCategories == null) {
                    this.mInfo.mCategories = new HashSet();
                }
                this.mInfo.mCategories.addAll(this.mCapabilityBindings);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.mCapabilityBindingParams != null) {
                    if (this.mInfo.mExtras == null) {
                        this.mInfo.mExtras = new PersistableBundle();
                    }
                    for (String str : this.mCapabilityBindingParams.keySet()) {
                        Map<String, List<String>> map = this.mCapabilityBindingParams.get(str);
                        this.mInfo.mExtras.putStringArray(str, (String[]) map.keySet().toArray(new String[0]));
                        for (String str2 : map.keySet()) {
                            List<String> list = map.get(str2);
                            PersistableBundle persistableBundle = this.mInfo.mExtras;
                            String str3 = str + NPStringFog.decode(new byte[]{26}, "5beec3", -9304) + str2;
                            String[] strArr = new String[0];
                            if (list != null) {
                                strArr = (String[]) list.toArray(strArr);
                            }
                            persistableBundle.putStringArray(str3, strArr);
                        }
                    }
                }
                if (this.mSliceUri != null) {
                    if (this.mInfo.mExtras == null) {
                        this.mInfo.mExtras = new PersistableBundle();
                    }
                    this.mInfo.mExtras.putString(NPStringFog.decode(new byte[]{92, 28, 18, 71, 85, 97, 85, 13, 5, 80, 97, 64, 80}, "9df542", -1.6597848E9f), UriCompat.toSafeString(this.mSliceUri));
                }
            }
            return this.mInfo;
        }

        public Builder setActivity(ComponentName componentName) {
            this.mInfo.mActivity = componentName;
            return this;
        }

        public Builder setAlwaysBadged() {
            this.mInfo.mIsAlwaysBadged = true;
            return this;
        }

        public Builder setCategories(Set<String> set) {
            this.mInfo.mCategories = set;
            return this;
        }

        public Builder setDisabledMessage(CharSequence charSequence) {
            this.mInfo.mDisabledMessage = charSequence;
            return this;
        }

        public Builder setExtras(PersistableBundle persistableBundle) {
            this.mInfo.mExtras = persistableBundle;
            return this;
        }

        public Builder setIcon(IconCompat iconCompat) {
            this.mInfo.mIcon = iconCompat;
            return this;
        }

        public Builder setIntent(Intent intent) {
            return setIntents(new Intent[]{intent});
        }

        public Builder setIntents(Intent[] intentArr) {
            this.mInfo.mIntents = intentArr;
            return this;
        }

        public Builder setIsConversation() {
            this.mIsConversation = true;
            return this;
        }

        public Builder setLocusId(LocusIdCompat locusIdCompat) {
            this.mInfo.mLocusId = locusIdCompat;
            return this;
        }

        public Builder setLongLabel(CharSequence charSequence) {
            this.mInfo.mLongLabel = charSequence;
            return this;
        }

        @Deprecated
        public Builder setLongLived() {
            this.mInfo.mIsLongLived = true;
            return this;
        }

        public Builder setLongLived(boolean z) {
            this.mInfo.mIsLongLived = z;
            return this;
        }

        public Builder setPerson(Person person) {
            return setPersons(new Person[]{person});
        }

        public Builder setPersons(Person[] personArr) {
            this.mInfo.mPersons = personArr;
            return this;
        }

        public Builder setRank(int i) {
            this.mInfo.mRank = i;
            return this;
        }

        public Builder setShortLabel(CharSequence charSequence) {
            this.mInfo.mLabel = charSequence;
            return this;
        }

        public Builder setSliceUri(Uri uri) {
            this.mSliceUri = uri;
            return this;
        }
    }

    ShortcutInfoCompat() {
    }

    private PersistableBundle buildLegacyExtrasBundle() {
        if (this.mExtras == null) {
            this.mExtras = new PersistableBundle();
        }
        Person[] personArr = this.mPersons;
        if (personArr != null && personArr.length > 0) {
            this.mExtras.putInt(EXTRA_PERSON_COUNT, personArr.length);
            for (int i = 0; i < this.mPersons.length; i++) {
                this.mExtras.putPersistableBundle(EXTRA_PERSON_ + (i + 1), this.mPersons[i].toPersistableBundle());
            }
        }
        LocusIdCompat locusIdCompat = this.mLocusId;
        if (locusIdCompat != null) {
            this.mExtras.putString(EXTRA_LOCUS_ID, locusIdCompat.getId());
        }
        this.mExtras.putBoolean(EXTRA_LONG_LIVED, this.mIsLongLived);
        return this.mExtras;
    }

    static List<ShortcutInfoCompat> fromShortcuts(Context context, List<ShortcutInfo> list) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<ShortcutInfo> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new Builder(context, it.next()).build());
        }
        return arrayList;
    }

    static LocusIdCompat getLocusId(ShortcutInfo shortcutInfo) {
        if (Build.VERSION.SDK_INT < 29) {
            return getLocusIdFromExtra(shortcutInfo.getExtras());
        }
        if (shortcutInfo.getLocusId() == null) {
            return null;
        }
        return LocusIdCompat.toLocusIdCompat(shortcutInfo.getLocusId());
    }

    private static LocusIdCompat getLocusIdFromExtra(PersistableBundle persistableBundle) {
        String string;
        if (persistableBundle == null || (string = persistableBundle.getString(EXTRA_LOCUS_ID)) == null) {
            return null;
        }
        return new LocusIdCompat(string);
    }

    static boolean getLongLivedFromExtra(PersistableBundle persistableBundle) {
        if (persistableBundle == null || !persistableBundle.containsKey(EXTRA_LONG_LIVED)) {
            return false;
        }
        return persistableBundle.getBoolean(EXTRA_LONG_LIVED);
    }

    static Person[] getPersonsFromExtra(PersistableBundle persistableBundle) {
        if (persistableBundle == null || !persistableBundle.containsKey(EXTRA_PERSON_COUNT)) {
            return null;
        }
        int i = persistableBundle.getInt(EXTRA_PERSON_COUNT);
        Person[] personArr = new Person[i];
        for (int i2 = 0; i2 < i; i2++) {
            personArr[i2] = Person.fromPersistableBundle(persistableBundle.getPersistableBundle(EXTRA_PERSON_ + (i2 + 1)));
        }
        return personArr;
    }

    Intent addToIntent(Intent intent) {
        Drawable activityIcon = null;
        intent.putExtra(NPStringFog.decode(new byte[]{84, 90, 85, 68, 91, 91, 81, 26, 88, 88, 64, 87, 91, 64, 31, 83, 76, 70, 71, 85, 31, 69, 92, 93, 71, 64, 82, 67, 64, 28, 124, 122, 101, 115, 122, 102}, "541642", -1.622752984E9d), this.mIntents[r1.length - 1]).putExtra(NPStringFog.decode(new byte[]{83, 10, 2, 23, 11, 92, 86, 74, 15, 11, 16, 80, 92, 16, 72, 0, 28, 65, 64, 5, 72, 22, 12, 90, 64, 16, 5, 16, 16, 27, 124, 37, 43, 32}, "2dfed5", false, true), this.mLabel.toString());
        if (this.mIcon != null) {
            if (this.mIsAlwaysBadged) {
                PackageManager packageManager = this.mContext.getPackageManager();
                ComponentName componentName = this.mActivity;
                if (componentName != null) {
                    try {
                        activityIcon = packageManager.getActivityIcon(componentName);
                    } catch (PackageManager.NameNotFoundException e) {
                    }
                }
                if (activityIcon == null) {
                    activityIcon = this.mContext.getApplicationInfo().loadIcon(packageManager);
                }
            }
            this.mIcon.addToShortcutIntent(intent, activityIcon, this.mContext);
        }
        return intent;
    }

    public ComponentName getActivity() {
        return this.mActivity;
    }

    public Set<String> getCategories() {
        return this.mCategories;
    }

    public CharSequence getDisabledMessage() {
        return this.mDisabledMessage;
    }

    public int getDisabledReason() {
        return this.mDisabledReason;
    }

    public PersistableBundle getExtras() {
        return this.mExtras;
    }

    public IconCompat getIcon() {
        return this.mIcon;
    }

    public String getId() {
        return this.mId;
    }

    public Intent getIntent() {
        return this.mIntents[r0.length - 1];
    }

    public Intent[] getIntents() {
        Intent[] intentArr = this.mIntents;
        return (Intent[]) Arrays.copyOf(intentArr, intentArr.length);
    }

    public long getLastChangedTimestamp() {
        return this.mLastChangedTimestamp;
    }

    public LocusIdCompat getLocusId() {
        return this.mLocusId;
    }

    public CharSequence getLongLabel() {
        return this.mLongLabel;
    }

    public String getPackage() {
        return this.mPackageName;
    }

    public int getRank() {
        return this.mRank;
    }

    public CharSequence getShortLabel() {
        return this.mLabel;
    }

    public UserHandle getUserHandle() {
        return this.mUser;
    }

    public boolean hasKeyFieldsOnly() {
        return this.mHasKeyFieldsOnly;
    }

    public boolean isCached() {
        return this.mIsCached;
    }

    public boolean isDeclaredInManifest() {
        return this.mIsDeclaredInManifest;
    }

    public boolean isDynamic() {
        return this.mIsDynamic;
    }

    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    public boolean isImmutable() {
        return this.mIsImmutable;
    }

    public boolean isPinned() {
        return this.mIsPinned;
    }

    public ShortcutInfo toShortcutInfo() {
        ShortcutInfo.Builder intents = new ShortcutInfo.Builder(this.mContext, this.mId).setShortLabel(this.mLabel).setIntents(this.mIntents);
        IconCompat iconCompat = this.mIcon;
        if (iconCompat != null) {
            intents.setIcon(iconCompat.toIcon(this.mContext));
        }
        if (!TextUtils.isEmpty(this.mLongLabel)) {
            intents.setLongLabel(this.mLongLabel);
        }
        if (!TextUtils.isEmpty(this.mDisabledMessage)) {
            intents.setDisabledMessage(this.mDisabledMessage);
        }
        ComponentName componentName = this.mActivity;
        if (componentName != null) {
            intents.setActivity(componentName);
        }
        Set<String> set = this.mCategories;
        if (set != null) {
            intents.setCategories(set);
        }
        intents.setRank(this.mRank);
        PersistableBundle persistableBundle = this.mExtras;
        if (persistableBundle != null) {
            intents.setExtras(persistableBundle);
        }
        if (Build.VERSION.SDK_INT >= 29) {
            Person[] personArr = this.mPersons;
            if (personArr != null && personArr.length > 0) {
                android.app.Person[] personArr2 = new android.app.Person[personArr.length];
                for (int i = 0; i < personArr2.length; i++) {
                    personArr2[i] = this.mPersons[i].toAndroidPerson();
                }
                intents.setPersons(personArr2);
            }
            LocusIdCompat locusIdCompat = this.mLocusId;
            if (locusIdCompat != null) {
                intents.setLocusId(locusIdCompat.toLocusId());
            }
            intents.setLongLived(this.mIsLongLived);
        } else {
            intents.setExtras(buildLegacyExtrasBundle());
        }
        return intents.build();
    }
}
