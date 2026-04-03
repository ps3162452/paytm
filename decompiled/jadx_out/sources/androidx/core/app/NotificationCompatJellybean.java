package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.drawable.IconCompat;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
class NotificationCompatJellybean {
    private static Field sActionIconField;
    private static Field sActionIntentField;
    private static Field sActionTitleField;
    private static boolean sActionsAccessFailed;
    private static Field sActionsField;
    private static Field sExtrasField;
    private static boolean sExtrasFieldAccessFailed;
    static final String EXTRA_ALLOW_GENERATED_REPLIES = NPStringFog.decode(new byte[]{83, 15, 92, 16, 92, 94, 86, 79, 75, 23, 67, 71, 93, 19, 76, 76, 82, 91, 94, 14, 79, 37, 86, 89, 87, 19, 89, 22, 86, 83, 96, 4, 72, 14, 90, 82, 65}, "2a8b37", -4.3377565E8f);
    static final String EXTRA_DATA_ONLY_REMOTE_INPUTS = NPStringFog.decode(new byte[]{85, 92, 93, 67, 11, 8, 80, 28, 74, 68, 20, 17, 91, 64, 77, 31, 0, 0, 64, 83, 107, 84, 9, 14, 64, 87, 112, 95, 20, 20, 64, 65}, "4291da", false, false);
    private static final String KEY_ACTION_INTENT = NPStringFog.decode(new byte[]{84, 0, 71, 91, 94, 91, 124, 13, 71, 87, 95, 65}, "5c3215", -9.1128519E8d);
    private static final String KEY_ALLOWED_DATA_TYPES = NPStringFog.decode(new byte[]{4, 90, 95, 13, 67, 85, 1, 114, 82, 22, 85, 100, 28, 70, 86, 17}, "e63b40", -1.482598E9f);
    private static final String KEY_ALLOW_FREE_FORM_INPUT = NPStringFog.decode(new byte[]{89, 91, 94, 11, 79, 117, 74, 82, 87, 34, 87, 65, 85, 126, 92, 20, 77, 71}, "872d83", 637244609L);
    private static final String KEY_CHOICES = NPStringFog.decode(new byte[]{91, 92, 13, 89, 80, 1, 75}, "84b03d", true, true);
    private static final String KEY_DATA_ONLY_REMOTE_INPUTS = NPStringFog.decode(new byte[]{84, 88, 71, 88, 120, 12, 92, 64, 97, 92, 90, 13, 68, 92, 122, 87, 71, 23, 68, 74}, "09397b", -4459);
    private static final String KEY_EXTRAS = NPStringFog.decode(new byte[]{82, 29, 67, 16, 85, 70}, "7e7b45", -8.83739E8f);
    private static final String KEY_ICON = NPStringFog.decode(new byte[]{89, 5, 92, 93}, "0f3363", -1.1145445E9f);
    private static final String KEY_LABEL = NPStringFog.decode(new byte[]{13, 5, 7, 83, 95}, "ade637", false);
    private static final String KEY_REMOTE_INPUTS = NPStringFog.decode(new byte[]{16, 7, 93, 14, 18, 0, 43, 12, 64, 20, 18, 22}, "bb0afe", -7.419024E8f);
    private static final String KEY_RESULT_KEY = NPStringFog.decode(new byte[]{70, 83, 75, 67, 91, 70, 127, 83, 65}, "468672", -3.10997504E8d);
    private static final String KEY_SEMANTIC_ACTION = NPStringFog.decode(new byte[]{75, 83, 15, 80, 88, 71, 81, 85, 35, 82, 66, 90, 87, 88}, "86b163", 1.30191409E8d);
    private static final String KEY_SHOWS_USER_INTERFACE = NPStringFog.decode(new byte[]{21, 88, 13, 68, 23, 99, 21, 85, 16, 122, 10, 66, 3, 66, 4, 82, 7, 83}, "f0b3d6", true);
    private static final String KEY_TITLE = NPStringFog.decode(new byte[]{77, 13, 67, 90, 1}, "9d76d8", 1.4533473E9f);
    public static final String TAG = NPStringFog.decode(new byte[]{45, 93, 77, 12, 80, 93, 0, 83, 77, 12, 89, 90, 32, 93, 84, 21, 87, 64}, "c29e64", -6.9267156E8d);
    private static final Object sExtrasLock = new Object();
    private static final Object sActionsLock = new Object();

    private NotificationCompatJellybean() {
    }

    public static SparseArray<Bundle> buildActionExtrasMap(List<Bundle> list) {
        SparseArray<Bundle> sparseArray = null;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Bundle bundle = list.get(i);
            if (bundle != null) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                sparseArray.put(i, bundle);
            }
        }
        return sparseArray;
    }

    private static boolean ensureActionReflectionReadyLocked() {
        if (sActionsAccessFailed) {
            return false;
        }
        try {
            if (sActionsField == null) {
                Class<?> cls = Class.forName(NPStringFog.decode(new byte[]{3, 90, 5, 66, 89, 81, 6, 26, 0, 64, 70, 22, 44, 91, 21, 89, 80, 81, 1, 85, 21, 89, 89, 86, 70, 117, 2, 68, 95, 87, 12}, "b4a068", -25002));
                sActionIconField = cls.getDeclaredField(KEY_ICON);
                sActionTitleField = cls.getDeclaredField(KEY_TITLE);
                sActionIntentField = cls.getDeclaredField(KEY_ACTION_INTENT);
                Field declaredField = Notification.class.getDeclaredField(NPStringFog.decode(new byte[]{5, 91, 65, 80, 9, 86, 23}, "d859f8", 27562));
                sActionsField = declaredField;
                declaredField.setAccessible(true);
            }
        } catch (ClassNotFoundException e) {
            Log.e(TAG, NPStringFog.decode(new byte[]{100, 90, 2, 82, 14, 82, 17, 64, 12, 16, 3, 84, 82, 81, 16, 67, 66, 89, 94, 64, 10, 86, 11, 84, 80, 64, 10, 95, 12, 23, 80, 87, 23, 89, 13, 89, 66}, "14c0b7", true, true), e);
            sActionsAccessFailed = true;
        } catch (NoSuchFieldException e2) {
            Log.e(TAG, NPStringFog.decode(new byte[]{97, 91, 84, 84, 91, 80, 20, 65, 90, 22, 86, 86, 87, 80, 70, 69, 23, 91, 91, 65, 92, 80, 94, 86, 85, 65, 92, 89, 89, 21, 85, 86, 65, 95, 88, 91, 71}, "455675", 9997), e2);
            sActionsAccessFailed = true;
        }
        return !sActionsAccessFailed;
    }

    private static RemoteInput fromBundle(Bundle bundle) {
        ArrayList<String> stringArrayList = bundle.getStringArrayList(KEY_ALLOWED_DATA_TYPES);
        HashSet hashSet = new HashSet();
        if (stringArrayList != null) {
            Iterator<String> it = stringArrayList.iterator();
            while (it.hasNext()) {
                hashSet.add(it.next());
            }
        }
        return new RemoteInput(bundle.getString(KEY_RESULT_KEY), bundle.getCharSequence(KEY_LABEL), bundle.getCharSequenceArray(KEY_CHOICES), bundle.getBoolean(KEY_ALLOW_FREE_FORM_INPUT), 0, bundle.getBundle(KEY_EXTRAS), hashSet);
    }

    private static RemoteInput[] fromBundleArray(Bundle[] bundleArr) {
        if (bundleArr == null) {
            return null;
        }
        RemoteInput[] remoteInputArr = new RemoteInput[bundleArr.length];
        for (int i = 0; i < bundleArr.length; i++) {
            remoteInputArr[i] = fromBundle(bundleArr[i]);
        }
        return remoteInputArr;
    }

    public static NotificationCompat.Action getAction(Notification notification, int i) {
        SparseArray sparseParcelableArray;
        synchronized (sActionsLock) {
            try {
                Object[] actionObjectsLocked = getActionObjectsLocked(notification);
                if (actionObjectsLocked != null) {
                    Object obj = actionObjectsLocked[i];
                    Bundle extras = getExtras(notification);
                    return readAction(sActionIconField.getInt(obj), (CharSequence) sActionTitleField.get(obj), (PendingIntent) sActionIntentField.get(obj), (extras == null || (sparseParcelableArray = extras.getSparseParcelableArray(NPStringFog.decode(new byte[]{83, 94, 86, 16, 9, 91, 86, 30, 65, 23, 22, 66, 93, 66, 70, 76, 7, 81, 70, 89, 93, 12, 35, 74, 70, 66, 83, 17}, "202bf2", true, false))) == null) ? null : (Bundle) sparseParcelableArray.get(i));
                }
            } catch (IllegalAccessException e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{55, 8, 84, 91, 95, 6, 66, 18, 90, 25, 82, 0, 1, 3, 70, 74, 19, 13, 13, 18, 92, 95, 90, 0, 3, 18, 92, 86, 93, 67, 3, 5, 65, 80, 92, 13, 17}, "bf593c", false, true), e);
                sActionsAccessFailed = true;
            }
            return null;
        }
    }

    public static int getActionCount(Notification notification) {
        int length;
        synchronized (sActionsLock) {
            Object[] actionObjectsLocked = getActionObjectsLocked(notification);
            length = actionObjectsLocked != null ? actionObjectsLocked.length : 0;
        }
        return length;
    }

    static NotificationCompat.Action getActionFromBundle(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(KEY_EXTRAS);
        return new NotificationCompat.Action(bundle.getInt(KEY_ICON), bundle.getCharSequence(KEY_TITLE), (PendingIntent) bundle.getParcelable(KEY_ACTION_INTENT), bundle.getBundle(KEY_EXTRAS), fromBundleArray(getBundleArrayFromBundle(bundle, KEY_REMOTE_INPUTS)), fromBundleArray(getBundleArrayFromBundle(bundle, KEY_DATA_ONLY_REMOTE_INPUTS)), bundle2 != null ? bundle2.getBoolean(EXTRA_ALLOW_GENERATED_REPLIES, false) : false, bundle.getInt(KEY_SEMANTIC_ACTION), bundle.getBoolean(KEY_SHOWS_USER_INTERFACE), false);
    }

    private static Object[] getActionObjectsLocked(Notification notification) {
        synchronized (sActionsLock) {
            if (!ensureActionReflectionReadyLocked()) {
                return null;
            }
            try {
                return (Object[]) sActionsField.get(notification);
            } catch (IllegalAccessException e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{54, 12, 82, 80, 92, 87, 67, 22, 92, 18, 81, 81, 0, 7, 64, 65, 16, 92, 12, 22, 90, 84, 89, 81, 2, 22, 90, 93, 94, 18, 2, 1, 71, 91, 95, 92, 16}, "cb3202", -1.838596605E9d), e);
                sActionsAccessFailed = true;
                return null;
            }
        }
    }

    private static Bundle[] getBundleArrayFromBundle(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Bundle[]) || parcelableArray == null) {
            return (Bundle[]) parcelableArray;
        }
        Bundle[] bundleArr = (Bundle[]) Arrays.copyOf(parcelableArray, parcelableArray.length, Bundle[].class);
        bundle.putParcelableArray(str, bundleArr);
        return bundleArr;
    }

    static Bundle getBundleForAction(NotificationCompat.Action action) {
        Bundle bundle = new Bundle();
        IconCompat iconCompat = action.getIconCompat();
        bundle.putInt(KEY_ICON, iconCompat != null ? iconCompat.getResId() : 0);
        bundle.putCharSequence(KEY_TITLE, action.getTitle());
        bundle.putParcelable(KEY_ACTION_INTENT, action.getActionIntent());
        Bundle bundle2 = action.getExtras() != null ? new Bundle(action.getExtras()) : new Bundle();
        bundle2.putBoolean(EXTRA_ALLOW_GENERATED_REPLIES, action.getAllowGeneratedReplies());
        bundle.putBundle(KEY_EXTRAS, bundle2);
        bundle.putParcelableArray(KEY_REMOTE_INPUTS, toBundleArray(action.getRemoteInputs()));
        bundle.putBoolean(KEY_SHOWS_USER_INTERFACE, action.getShowsUserInterface());
        bundle.putInt(KEY_SEMANTIC_ACTION, action.getSemanticAction());
        return bundle;
    }

    public static Bundle getExtras(Notification notification) {
        synchronized (sExtrasLock) {
            if (sExtrasFieldAccessFailed) {
                return null;
            }
            try {
                if (sExtrasField == null) {
                    Field declaredField = Notification.class.getDeclaredField(KEY_EXTRAS);
                    if (!Bundle.class.isAssignableFrom(declaredField.getType())) {
                        Log.e(TAG, NPStringFog.decode(new byte[]{119, 11, 67, 95, 81, 11, 90, 5, 67, 95, 88, 12, 23, 1, 79, 66, 69, 3, 74, 68, 81, 95, 82, 14, 93, 68, 94, 69, 23, 12, 86, 16, 23, 89, 81, 66, 77, 29, 71, 83, 23, 32, 76, 10, 83, 90, 82}, "9d767b", 1234945026L));
                        sExtrasFieldAccessFailed = true;
                        return null;
                    }
                    declaredField.setAccessible(true);
                    sExtrasField = declaredField;
                }
                Bundle bundle = (Bundle) sExtrasField.get(notification);
                if (bundle == null) {
                    bundle = new Bundle();
                    sExtrasField.set(notification, bundle);
                }
                return bundle;
            } catch (IllegalAccessException e) {
                Log.e(TAG, NPStringFog.decode(new byte[]{52, 93, 2, 4, 15, 6, 65, 71, 12, 70, 2, 0, 2, 86, 16, 21, 67, 13, 14, 71, 10, 0, 10, 0, 0, 71, 10, 9, 13, 67, 4, 75, 23, 20, 2, 16}, "a3cfcc", -6.4978554E8f), e);
                sExtrasFieldAccessFailed = true;
                return null;
            } catch (NoSuchFieldException e2) {
                Log.e(TAG, NPStringFog.decode(new byte[]{102, 91, 80, 82, 8, 81, 19, 65, 94, 16, 5, 87, 80, 80, 66, 67, 68, 90, 92, 65, 88, 86, 13, 87, 82, 65, 88, 95, 10, 20, 86, 77, 69, 66, 5, 71}, "3510d4", true), e2);
                sExtrasFieldAccessFailed = true;
                return null;
            }
        }
    }

    public static NotificationCompat.Action readAction(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle) {
        boolean z;
        RemoteInput[] remoteInputArrFromBundleArray;
        RemoteInput[] remoteInputArrFromBundleArray2 = null;
        if (bundle != null) {
            remoteInputArrFromBundleArray = fromBundleArray(getBundleArrayFromBundle(bundle, NPStringFog.decode(new byte[]{85, 11, 80, 69, 14, 95, 80, 75, 71, 66, 17, 70, 91, 23, 64, 25, 19, 83, 89, 10, 64, 82, 40, 88, 68, 16, 64, 68}, "4e47a6", true, false)));
            remoteInputArrFromBundleArray2 = fromBundleArray(getBundleArrayFromBundle(bundle, EXTRA_DATA_ONLY_REMOTE_INPUTS));
            z = bundle.getBoolean(EXTRA_ALLOW_GENERATED_REPLIES);
        } else {
            z = false;
            remoteInputArrFromBundleArray = null;
        }
        return new NotificationCompat.Action(i, charSequence, pendingIntent, bundle, remoteInputArrFromBundleArray, remoteInputArrFromBundleArray2, z, 0, true, false);
    }

    private static Bundle toBundle(RemoteInput remoteInput) {
        Bundle bundle = new Bundle();
        bundle.putString(KEY_RESULT_KEY, remoteInput.getResultKey());
        bundle.putCharSequence(KEY_LABEL, remoteInput.getLabel());
        bundle.putCharSequenceArray(KEY_CHOICES, remoteInput.getChoices());
        bundle.putBoolean(KEY_ALLOW_FREE_FORM_INPUT, remoteInput.getAllowFreeFormInput());
        bundle.putBundle(KEY_EXTRAS, remoteInput.getExtras());
        Set<String> allowedDataTypes = remoteInput.getAllowedDataTypes();
        if (allowedDataTypes != null && !allowedDataTypes.isEmpty()) {
            ArrayList<String> arrayList = new ArrayList<>(allowedDataTypes.size());
            Iterator<String> it = allowedDataTypes.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
            bundle.putStringArrayList(KEY_ALLOWED_DATA_TYPES, arrayList);
        }
        return bundle;
    }

    private static Bundle[] toBundleArray(RemoteInput[] remoteInputArr) {
        if (remoteInputArr == null) {
            return null;
        }
        Bundle[] bundleArr = new Bundle[remoteInputArr.length];
        for (int i = 0; i < remoteInputArr.length; i++) {
            bundleArr[i] = toBundle(remoteInputArr[i]);
        }
        return bundleArr;
    }

    public static Bundle writeActionAndGetExtras(Notification.Builder builder, NotificationCompat.Action action) {
        IconCompat iconCompat = action.getIconCompat();
        builder.addAction(iconCompat != null ? iconCompat.getResId() : 0, action.getTitle(), action.getActionIntent());
        Bundle bundle = new Bundle(action.getExtras());
        if (action.getRemoteInputs() != null) {
            bundle.putParcelableArray(NPStringFog.decode(new byte[]{7, 95, 83, 75, 86, 90, 2, 31, 68, 76, 73, 67, 9, 67, 67, 23, 75, 86, 11, 94, 67, 92, 112, 93, 22, 68, 67, 74}, "f17993", -9.88682085E8d), toBundleArray(action.getRemoteInputs()));
        }
        if (action.getDataOnlyRemoteInputs() != null) {
            bundle.putParcelableArray(EXTRA_DATA_ONLY_REMOTE_INPUTS, toBundleArray(action.getDataOnlyRemoteInputs()));
        }
        bundle.putBoolean(EXTRA_ALLOW_GENERATED_REPLIES, action.getAllowGeneratedReplies());
        return bundle;
    }
}
