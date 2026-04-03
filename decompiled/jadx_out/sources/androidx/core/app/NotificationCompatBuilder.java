package androidx.core.app;

import android.app.Notification;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.collection.ArraySet;
import androidx.core.app.NotificationCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.os.BuildCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
class NotificationCompatBuilder implements NotificationBuilderWithBuilderAccessor {
    private RemoteViews mBigContentView;
    private final Notification.Builder mBuilder;
    private final NotificationCompat.Builder mBuilderCompat;
    private RemoteViews mContentView;
    private final Context mContext;
    private int mGroupAlertBehavior;
    private RemoteViews mHeadsUpContentView;
    private final List<Bundle> mActionExtrasList = new ArrayList();
    private final Bundle mExtras = new Bundle();

    NotificationCompatBuilder(NotificationCompat.Builder builder) {
        List<String> listCombineLists;
        this.mBuilderCompat = builder;
        this.mContext = builder.mContext;
        if (Build.VERSION.SDK_INT >= 26) {
            this.mBuilder = new Notification.Builder(builder.mContext, builder.mChannelId);
        } else {
            this.mBuilder = new Notification.Builder(builder.mContext);
        }
        Notification notification = builder.mNotification;
        this.mBuilder.setWhen(notification.when).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, builder.mTickerView).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((notification.flags & 2) != 0).setOnlyAlertOnce((notification.flags & 8) != 0).setAutoCancel((notification.flags & 16) != 0).setDefaults(notification.defaults).setContentTitle(builder.mContentTitle).setContentText(builder.mContentText).setContentInfo(builder.mContentInfo).setContentIntent(builder.mContentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(builder.mFullScreenIntent, (notification.flags & 128) != 0).setLargeIcon(builder.mLargeIcon).setNumber(builder.mNumber).setProgress(builder.mProgressMax, builder.mProgress, builder.mProgressIndeterminate);
        if (Build.VERSION.SDK_INT < 21) {
            this.mBuilder.setSound(notification.sound, notification.audioStreamType);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            this.mBuilder.setSubText(builder.mSubText).setUsesChronometer(builder.mUseChronometer).setPriority(builder.mPriority);
            Iterator<NotificationCompat.Action> it = builder.mActions.iterator();
            while (it.hasNext()) {
                addAction(it.next());
            }
            if (builder.mExtras != null) {
                this.mExtras.putAll(builder.mExtras);
            }
            if (Build.VERSION.SDK_INT < 20) {
                if (builder.mLocalOnly) {
                    this.mExtras.putBoolean(NPStringFog.decode(new byte[]{83, 93, 2, 20, 89, 89, 86, 29, 21, 19, 70, 64, 93, 65, 18, 72, 90, 95, 81, 82, 10, 41, 88, 92, 75}, "23ff60", 25358), true);
                }
                if (builder.mGroupKey != null) {
                    this.mExtras.putString(NPStringFog.decode(new byte[]{3, 10, 7, 68, 88, 89, 6, 74, 16, 67, 71, 64, 13, 22, 23, 24, 80, 66, 13, 17, 19, 125, 82, 73}, "bdc670", false), builder.mGroupKey);
                    if (builder.mGroupSummary) {
                        this.mExtras.putBoolean(NPStringFog.decode(new byte[]{7, 88, 2, 74, 10, 90, 2, 24, 21, 77, 21, 67, 9, 68, 18, 22, 12, 64, 33, 68, 9, 77, 21, 96, 19, 91, 11, 89, 23, 74}, "f6f8e3", 18525), true);
                    } else {
                        this.mExtras.putBoolean(NPStringFog.decode(new byte[]{2, 87, 0, 22, 86, 15, 7, 23, 23, 17, 73, 22, 12, 75, 16, 74, 76, 21, 6, 106, 13, 0, 92, 37, 11, 88, 10, 10, 92, 10}, "c9dd9f", true), true);
                    }
                }
                if (builder.mSortKey != null) {
                    this.mExtras.putString(NPStringFog.decode(new byte[]{7, 89, 87, 64, 94, 89, 2, 25, 64, 71, 65, 64, 9, 69, 71, 28, 66, 95, 20, 67, 120, 87, 72}, "f73210", false, false), builder.mSortKey);
                }
            }
            this.mContentView = builder.mContentView;
            this.mBigContentView = builder.mBigContentView;
        }
        if (Build.VERSION.SDK_INT >= 17) {
            this.mBuilder.setShowWhen(builder.mShowWhen);
        }
        if (Build.VERSION.SDK_INT >= 19 && Build.VERSION.SDK_INT < 21 && (listCombineLists = combineLists(getPeople(builder.mPersonList), builder.mPeople)) != null && !listCombineLists.isEmpty()) {
            this.mExtras.putStringArray(NPStringFog.decode(new byte[]{87, 94, 83, 65, 94, 93, 82, 30, 71, 86, 94, 68, 90, 85}, "607314", true), (String[]) listCombineLists.toArray(new String[listCombineLists.size()]));
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.mBuilder.setLocalOnly(builder.mLocalOnly).setGroup(builder.mGroupKey).setGroupSummary(builder.mGroupSummary).setSortKey(builder.mSortKey);
            this.mGroupAlertBehavior = builder.mGroupAlertBehavior;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.mBuilder.setCategory(builder.mCategory).setColor(builder.mColor).setVisibility(builder.mVisibility).setPublicVersion(builder.mPublicVersion).setSound(notification.sound, notification.audioAttributes);
            List listCombineLists2 = Build.VERSION.SDK_INT < 28 ? combineLists(getPeople(builder.mPersonList), builder.mPeople) : builder.mPeople;
            if (listCombineLists2 != null && !listCombineLists2.isEmpty()) {
                Iterator it2 = listCombineLists2.iterator();
                while (it2.hasNext()) {
                    this.mBuilder.addPerson((String) it2.next());
                }
            }
            this.mHeadsUpContentView = builder.mHeadsUpContentView;
            if (builder.mInvisibleActions.size() > 0) {
                Bundle bundle = builder.getExtras().getBundle(NPStringFog.decode(new byte[]{83, 90, 80, 69, 12, 11, 86, 26, 87, 86, 17, 76, 119, 108, 96, 114, 45, 49, 123, 123, 122, 100}, "2447cb", -1.466144232E9d));
                Bundle bundle2 = bundle == null ? new Bundle() : bundle;
                Bundle bundle3 = new Bundle(bundle2);
                Bundle bundle4 = new Bundle();
                for (int i = 0; i < builder.mInvisibleActions.size(); i++) {
                    bundle4.putBundle(Integer.toString(i), NotificationCompatJellybean.getBundleForAction(builder.mInvisibleActions.get(i)));
                }
                bundle2.putBundle(NPStringFog.decode(new byte[]{8, 13, 79, 8, 70, 91, 3, 15, 92, 62, 84, 81, 21, 10, 86, 15, 70}, "ac9a52", 8.09908862E8d), bundle4);
                bundle3.putBundle(NPStringFog.decode(new byte[]{93, 94, 79, 89, 64, 8, 86, 92, 92, 111, 82, 2, 64, 89, 86, 94, 64}, "40903a", -6114), bundle4);
                builder.getExtras().putBundle(NPStringFog.decode(new byte[]{82, 10, 86, 66, 93, 88, 87, 74, 81, 81, 64, 31, 118, 60, 102, 117, 124, 98, 122, 43, 124, 99}, "3d2021", 7943), bundle2);
                this.mExtras.putBundle(NPStringFog.decode(new byte[]{87, 88, 81, 69, 12, 11, 82, 24, 86, 86, 17, 76, 115, 110, 97, 114, 45, 49, 127, 121, 123, 100}, "6657cb", -1.4383322E9f), bundle3);
            }
        }
        if (Build.VERSION.SDK_INT >= 23 && builder.mSmallIcon != null) {
            this.mBuilder.setSmallIcon(builder.mSmallIcon);
        }
        if (Build.VERSION.SDK_INT >= 24) {
            this.mBuilder.setExtras(builder.mExtras).setRemoteInputHistory(builder.mRemoteInputHistory);
            if (builder.mContentView != null) {
                this.mBuilder.setCustomContentView(builder.mContentView);
            }
            if (builder.mBigContentView != null) {
                this.mBuilder.setCustomBigContentView(builder.mBigContentView);
            }
            if (builder.mHeadsUpContentView != null) {
                this.mBuilder.setCustomHeadsUpContentView(builder.mHeadsUpContentView);
            }
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.mBuilder.setBadgeIconType(builder.mBadgeIcon).setSettingsText(builder.mSettingsText).setShortcutId(builder.mShortcutId).setTimeoutAfter(builder.mTimeout).setGroupAlertBehavior(builder.mGroupAlertBehavior);
            if (builder.mColorizedSet) {
                this.mBuilder.setColorized(builder.mColorized);
            }
            if (!TextUtils.isEmpty(builder.mChannelId)) {
                this.mBuilder.setSound(null).setDefaults(0).setLights(0, 0, 0).setVibrate(null);
            }
        }
        if (Build.VERSION.SDK_INT >= 28) {
            Iterator<Person> it3 = builder.mPersonList.iterator();
            while (it3.hasNext()) {
                this.mBuilder.addPerson(it3.next().toAndroidPerson());
            }
        }
        if (Build.VERSION.SDK_INT >= 29) {
            this.mBuilder.setAllowSystemGeneratedContextualActions(builder.mAllowSystemGeneratedContextualActions);
            this.mBuilder.setBubbleMetadata(NotificationCompat.BubbleMetadata.toPlatform(builder.mBubbleMetadata));
            if (builder.mLocusId != null) {
                this.mBuilder.setLocusId(builder.mLocusId.toLocusId());
            }
        }
        if (BuildCompat.isAtLeastS() && builder.mFgsDeferBehavior != 0) {
            this.mBuilder.setForegroundServiceBehavior(builder.mFgsDeferBehavior);
        }
        if (builder.mSilent) {
            if (this.mBuilderCompat.mGroupSummary) {
                this.mGroupAlertBehavior = 2;
            } else {
                this.mGroupAlertBehavior = 1;
            }
            this.mBuilder.setVibrate(null);
            this.mBuilder.setSound(null);
            notification.defaults &= -2;
            notification.defaults &= -3;
            this.mBuilder.setDefaults(notification.defaults);
            if (Build.VERSION.SDK_INT >= 26) {
                if (TextUtils.isEmpty(this.mBuilderCompat.mGroupKey)) {
                    this.mBuilder.setGroup(NPStringFog.decode(new byte[]{74, 89, 10, 87, 95, 65}, "90f215", false, true));
                }
                this.mBuilder.setGroupAlertBehavior(this.mGroupAlertBehavior);
            }
        }
    }

    private void addAction(NotificationCompat.Action action) {
        if (Build.VERSION.SDK_INT < 20) {
            if (Build.VERSION.SDK_INT >= 16) {
                this.mActionExtrasList.add(NotificationCompatJellybean.writeActionAndGetExtras(this.mBuilder, action));
                return;
            }
            return;
        }
        IconCompat iconCompat = action.getIconCompat();
        Notification.Action.Builder builder = Build.VERSION.SDK_INT >= 23 ? new Notification.Action.Builder(iconCompat != null ? iconCompat.toIcon() : null, action.getTitle(), action.getActionIntent()) : new Notification.Action.Builder(iconCompat != null ? iconCompat.getResId() : 0, action.getTitle(), action.getActionIntent());
        if (action.getRemoteInputs() != null) {
            for (android.app.RemoteInput remoteInput : RemoteInput.fromCompat(action.getRemoteInputs())) {
                builder.addRemoteInput(remoteInput);
            }
        }
        Bundle bundle = action.getExtras() != null ? new Bundle(action.getExtras()) : new Bundle();
        bundle.putBoolean(NPStringFog.decode(new byte[]{3, 92, 6, 17, 89, 95, 6, 28, 17, 22, 70, 70, 13, 64, 22, 77, 87, 90, 14, 93, 21, 36, 83, 88, 7, 64, 3, 23, 83, 82, 48, 87, 18, 15, 95, 83, 17}, "b2bc66", 2135), action.getAllowGeneratedReplies());
        if (Build.VERSION.SDK_INT >= 24) {
            builder.setAllowGeneratedReplies(action.getAllowGeneratedReplies());
        }
        bundle.putInt(NPStringFog.decode(new byte[]{85, 13, 1, 71, 10, 92, 80, 77, 22, 64, 21, 69, 91, 17, 17, 27, 4, 86, 64, 10, 10, 91, 75, 70, 81, 14, 4, 91, 17, 92, 87, 34, 6, 65, 12, 90, 90}, "4ce5e5", -8.64700604E8d), action.getSemanticAction());
        if (Build.VERSION.SDK_INT >= 28) {
            builder.setSemanticAction(action.getSemanticAction());
        }
        if (Build.VERSION.SDK_INT >= 29) {
            builder.setContextual(action.isContextual());
        }
        bundle.putBoolean(NPStringFog.decode(new byte[]{87, 13, 1, 68, 90, 81, 82, 77, 22, 67, 69, 72, 89, 17, 17, 24, 84, 91, 66, 10, 10, 88, 27, 75, 94, 12, 18, 69, 96, 75, 83, 17, 44, 88, 65, 93, 68, 5, 4, 85, 80}, "6ce658", -560), action.getShowsUserInterface());
        builder.addExtras(bundle);
        this.mBuilder.addAction(builder.build());
    }

    private static List<String> combineLists(List<String> list, List<String> list2) {
        if (list == null) {
            return list2;
        }
        if (list2 == null) {
            return list;
        }
        ArraySet arraySet = new ArraySet(list.size() + list2.size());
        arraySet.addAll(list);
        arraySet.addAll(list2);
        return new ArrayList(arraySet);
    }

    private static List<String> getPeople(List<Person> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Person> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().resolveToLegacyUri());
        }
        return arrayList;
    }

    private void removeSoundAndVibration(Notification notification) {
        notification.sound = null;
        notification.vibrate = null;
        notification.defaults &= -2;
        notification.defaults &= -3;
    }

    public Notification build() {
        Bundle extras;
        RemoteViews remoteViewsMakeHeadsUpContentView;
        RemoteViews remoteViewsMakeBigContentView;
        NotificationCompat.Style style = this.mBuilderCompat.mStyle;
        if (style != null) {
            style.apply(this);
        }
        RemoteViews remoteViewsMakeContentView = style != null ? style.makeContentView(this) : null;
        Notification notificationBuildInternal = buildInternal();
        if (remoteViewsMakeContentView != null) {
            notificationBuildInternal.contentView = remoteViewsMakeContentView;
        } else if (this.mBuilderCompat.mContentView != null) {
            notificationBuildInternal.contentView = this.mBuilderCompat.mContentView;
        }
        if (Build.VERSION.SDK_INT >= 16 && style != null && (remoteViewsMakeBigContentView = style.makeBigContentView(this)) != null) {
            notificationBuildInternal.bigContentView = remoteViewsMakeBigContentView;
        }
        if (Build.VERSION.SDK_INT >= 21 && style != null && (remoteViewsMakeHeadsUpContentView = this.mBuilderCompat.mStyle.makeHeadsUpContentView(this)) != null) {
            notificationBuildInternal.headsUpContentView = remoteViewsMakeHeadsUpContentView;
        }
        if (Build.VERSION.SDK_INT >= 16 && style != null && (extras = NotificationCompat.getExtras(notificationBuildInternal)) != null) {
            style.addCompatExtras(extras);
        }
        return notificationBuildInternal;
    }

    protected Notification buildInternal() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.mBuilder.build();
        }
        if (Build.VERSION.SDK_INT >= 24) {
            Notification notificationBuild = this.mBuilder.build();
            if (this.mGroupAlertBehavior == 0) {
                return notificationBuild;
            }
            if (notificationBuild.getGroup() != null && (notificationBuild.flags & 512) != 0 && this.mGroupAlertBehavior == 2) {
                removeSoundAndVibration(notificationBuild);
            }
            if (notificationBuild.getGroup() == null || (notificationBuild.flags & 512) != 0 || this.mGroupAlertBehavior != 1) {
                return notificationBuild;
            }
            removeSoundAndVibration(notificationBuild);
            return notificationBuild;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            this.mBuilder.setExtras(this.mExtras);
            Notification notificationBuild2 = this.mBuilder.build();
            RemoteViews remoteViews = this.mContentView;
            if (remoteViews != null) {
                notificationBuild2.contentView = remoteViews;
            }
            RemoteViews remoteViews2 = this.mBigContentView;
            if (remoteViews2 != null) {
                notificationBuild2.bigContentView = remoteViews2;
            }
            RemoteViews remoteViews3 = this.mHeadsUpContentView;
            if (remoteViews3 != null) {
                notificationBuild2.headsUpContentView = remoteViews3;
            }
            if (this.mGroupAlertBehavior == 0) {
                return notificationBuild2;
            }
            if (notificationBuild2.getGroup() != null && (notificationBuild2.flags & 512) != 0 && this.mGroupAlertBehavior == 2) {
                removeSoundAndVibration(notificationBuild2);
            }
            if (notificationBuild2.getGroup() == null || (notificationBuild2.flags & 512) != 0 || this.mGroupAlertBehavior != 1) {
                return notificationBuild2;
            }
            removeSoundAndVibration(notificationBuild2);
            return notificationBuild2;
        }
        if (Build.VERSION.SDK_INT >= 20) {
            this.mBuilder.setExtras(this.mExtras);
            Notification notificationBuild3 = this.mBuilder.build();
            RemoteViews remoteViews4 = this.mContentView;
            if (remoteViews4 != null) {
                notificationBuild3.contentView = remoteViews4;
            }
            RemoteViews remoteViews5 = this.mBigContentView;
            if (remoteViews5 != null) {
                notificationBuild3.bigContentView = remoteViews5;
            }
            if (this.mGroupAlertBehavior == 0) {
                return notificationBuild3;
            }
            if (notificationBuild3.getGroup() != null && (notificationBuild3.flags & 512) != 0 && this.mGroupAlertBehavior == 2) {
                removeSoundAndVibration(notificationBuild3);
            }
            if (notificationBuild3.getGroup() == null || (notificationBuild3.flags & 512) != 0 || this.mGroupAlertBehavior != 1) {
                return notificationBuild3;
            }
            removeSoundAndVibration(notificationBuild3);
            return notificationBuild3;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            SparseArray<Bundle> sparseArrayBuildActionExtrasMap = NotificationCompatJellybean.buildActionExtrasMap(this.mActionExtrasList);
            if (sparseArrayBuildActionExtrasMap != null) {
                this.mExtras.putSparseParcelableArray(NPStringFog.decode(new byte[]{0, 95, 2, 19, 95, 88, 5, 31, 21, 20, 64, 65, 14, 67, 18, 79, 81, 82, 21, 88, 9, 15, 117, 73, 21, 67, 7, 18}, "a1fa01", false, true), sparseArrayBuildActionExtrasMap);
            }
            this.mBuilder.setExtras(this.mExtras);
            Notification notificationBuild4 = this.mBuilder.build();
            RemoteViews remoteViews6 = this.mContentView;
            if (remoteViews6 != null) {
                notificationBuild4.contentView = remoteViews6;
            }
            RemoteViews remoteViews7 = this.mBigContentView;
            if (remoteViews7 == null) {
                return notificationBuild4;
            }
            notificationBuild4.bigContentView = remoteViews7;
            return notificationBuild4;
        }
        if (Build.VERSION.SDK_INT < 16) {
            return this.mBuilder.getNotification();
        }
        Notification notificationBuild5 = this.mBuilder.build();
        Bundle extras = NotificationCompat.getExtras(notificationBuild5);
        Bundle bundle = new Bundle(this.mExtras);
        for (String str : this.mExtras.keySet()) {
            if (extras.containsKey(str)) {
                bundle.remove(str);
            }
        }
        extras.putAll(bundle);
        SparseArray<Bundle> sparseArrayBuildActionExtrasMap2 = NotificationCompatJellybean.buildActionExtrasMap(this.mActionExtrasList);
        if (sparseArrayBuildActionExtrasMap2 != null) {
            NotificationCompat.getExtras(notificationBuild5).putSparseParcelableArray(NPStringFog.decode(new byte[]{7, 86, 0, 71, 14, 12, 2, 22, 23, 64, 17, 21, 9, 74, 16, 27, 0, 6, 18, 81, 11, 91, 36, 29, 18, 74, 5, 70}, "f8d5ae", false, true), sparseArrayBuildActionExtrasMap2);
        }
        RemoteViews remoteViews8 = this.mContentView;
        if (remoteViews8 != null) {
            notificationBuild5.contentView = remoteViews8;
        }
        RemoteViews remoteViews9 = this.mBigContentView;
        if (remoteViews9 != null) {
            notificationBuild5.bigContentView = remoteViews9;
        }
        return notificationBuild5;
    }

    @Override // androidx.core.app.NotificationBuilderWithBuilderAccessor
    public Notification.Builder getBuilder() {
        return this.mBuilder;
    }

    Context getContext() {
        return this.mContext;
    }
}
