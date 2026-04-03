package androidx.core.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.app.RemoteInput;
import android.content.Context;
import android.content.LocusId;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.core.R;
import androidx.core.app.Person;
import androidx.core.content.LocusIdCompat;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.text.BidiFormatter;
import androidx.core.view.ViewCompat;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class NotificationCompat {
    public static final int BADGE_ICON_LARGE = 2;
    public static final int BADGE_ICON_NONE = 0;
    public static final int BADGE_ICON_SMALL = 1;
    public static final int COLOR_DEFAULT = 0;
    public static final int DEFAULT_ALL = -1;
    public static final int DEFAULT_LIGHTS = 4;
    public static final int DEFAULT_SOUND = 1;
    public static final int DEFAULT_VIBRATE = 2;
    public static final int FLAG_AUTO_CANCEL = 16;
    public static final int FLAG_BUBBLE = 4096;
    public static final int FLAG_FOREGROUND_SERVICE = 64;
    public static final int FLAG_GROUP_SUMMARY = 512;

    @Deprecated
    public static final int FLAG_HIGH_PRIORITY = 128;
    public static final int FLAG_INSISTENT = 4;
    public static final int FLAG_LOCAL_ONLY = 256;
    public static final int FLAG_NO_CLEAR = 32;
    public static final int FLAG_ONGOING_EVENT = 2;
    public static final int FLAG_ONLY_ALERT_ONCE = 8;
    public static final int FLAG_SHOW_LIGHTS = 1;
    public static final int FOREGROUND_SERVICE_DEFAULT = 0;
    public static final int FOREGROUND_SERVICE_DEFERRED = 2;
    public static final int FOREGROUND_SERVICE_IMMEDIATE = 1;
    public static final int GROUP_ALERT_ALL = 0;
    public static final int GROUP_ALERT_CHILDREN = 2;
    public static final int GROUP_ALERT_SUMMARY = 1;
    public static final int PRIORITY_DEFAULT = 0;
    public static final int PRIORITY_HIGH = 1;
    public static final int PRIORITY_LOW = -1;
    public static final int PRIORITY_MAX = 2;
    public static final int PRIORITY_MIN = -2;
    public static final int STREAM_DEFAULT = -1;
    public static final int VISIBILITY_PRIVATE = 0;
    public static final int VISIBILITY_PUBLIC = 1;
    public static final int VISIBILITY_SECRET = -1;
    public static final String CATEGORY_ALARM = NPStringFog.decode(new byte[]{88, 90, 82, 20, 88}, "963f51", false);
    public static final String CATEGORY_CALL = NPStringFog.decode(new byte[]{0, 84, 9, 90}, "c5e6b5", -25448);
    public static final String CATEGORY_EMAIL = NPStringFog.decode(new byte[]{93, 91, 7, 11, 93}, "86fb14", false, false);
    public static final String CATEGORY_ERROR = NPStringFog.decode(new byte[]{3, 70, 64}, "f429e9", true);
    public static final String CATEGORY_EVENT = NPStringFog.decode(new byte[]{6, 64, 83, 91, 77}, "c66597", -1581531604L);
    public static final String CATEGORY_LOCATION_SHARING = NPStringFog.decode(new byte[]{92, 91, 0, 82, 22, 15, 95, 90, 60, 64, 10, 7, 66, 93, 13, 84}, "04c3bf", false);
    public static final String CATEGORY_MESSAGE = NPStringFog.decode(new byte[]{11, 18, 81}, "fa6af2", 1195136341L);
    public static final String CATEGORY_MISSED_CALL = NPStringFog.decode(new byte[]{85, 92, 70, 71, 93, 6, 103, 86, 84, 88, 84}, "85548b", 1.1031122E9f);
    public static final String CATEGORY_NAVIGATION = NPStringFog.decode(new byte[]{93, 87, 66, 95, 86, 3, 71, 95, 91, 88}, "36461b", 1239553316L);
    public static final String CATEGORY_PROGRESS = NPStringFog.decode(new byte[]{68, 69, 91, 4, 20, 7, 71, 68}, "474cfb", 11706);
    public static final String CATEGORY_PROMO = NPStringFog.decode(new byte[]{72, 20, 89, 94, 94}, "8f6317", -1.8780804E9f);
    public static final String CATEGORY_RECOMMENDATION = NPStringFog.decode(new byte[]{23, 1, 2, 11, 91, 94, 0, 10, 5, 5, 66, 90, 10, 10}, "edad63", -1207814813L);
    public static final String CATEGORY_REMINDER = NPStringFog.decode(new byte[]{70, 81, 12, 12, 95, 5, 81, 70}, "44ae1a", false, true);
    public static final String CATEGORY_SERVICE = NPStringFog.decode(new byte[]{68, 84, 20, 69, 90, 84, 82}, "71f337", true);
    public static final String CATEGORY_SOCIAL = NPStringFog.decode(new byte[]{68, 11, 2, 90, 2, 89}, "7da3c5", false);
    public static final String CATEGORY_STATUS = NPStringFog.decode(new byte[]{70, 77, 86, 77, 76, 23}, "59799d", false);
    public static final String CATEGORY_STOPWATCH = NPStringFog.decode(new byte[]{65, 70, 90, 73, 20, 88, 70, 81, 93}, "2259c9", -1.93586092E9d);
    public static final String CATEGORY_SYSTEM = NPStringFog.decode(new byte[]{75, 26, 75}, "8c8592", 9.121416E8d);
    public static final String CATEGORY_TRANSPORT = NPStringFog.decode(new byte[]{22, 71, 83, 11, 71, 69, 13, 71, 70}, "b52e45", true);
    public static final String CATEGORY_WORKOUT = NPStringFog.decode(new byte[]{65, 89, 66, 13, 9, 20, 66}, "660ffa", 1174293015L);
    public static final String EXTRA_AUDIO_CONTENTS_URI = NPStringFog.decode(new byte[]{0, 87, 0, 17, 13, 8, 5, 23, 5, 22, 6, 8, 14, 122, 11, 13, 22, 4, 15, 77, 23}, "a9dcba", 10905);
    public static final String EXTRA_BACKGROUND_IMAGE_URI = NPStringFog.decode(new byte[]{7, 95, 85, 22, 92, 81, 2, 31, 83, 5, 80, 83, 1, 67, 94, 17, 93, 92, 47, 92, 80, 3, 86, 109, 20, 88}, "f11d38", -1.094660628E9d);
    public static final String EXTRA_BIG_TEXT = NPStringFog.decode(new byte[]{2, 90, 92, 68, 92, 92, 7, 26, 90, 95, 84, 97, 6, 76, 76}, "c48635", false);
    public static final String EXTRA_CHANNEL_GROUP_ID = NPStringFog.decode(new byte[]{3, 92, 93, 68, 14, 92, 6, 28, 80, 88, 21, 80, 12, 70, 23, 83, 25, 65, 16, 83, 23, 117, 41, 116, 44, 124, 124, 122, 62, 114, 48, 125, 108, 102, 62, 124, 38}, "b296a5", false, true);
    public static final String EXTRA_CHANNEL_ID = NPStringFog.decode(new byte[]{0, 8, 84, 68, 89, 11, 5, 72, 89, 88, 66, 7, 15, 18, 30, 83, 78, 22, 19, 7, 30, 117, 126, 35, 47, 40, 117, 122, 105, 43, 37}, "af066b", -46139001L);
    public static final String EXTRA_CHRONOMETER_COUNT_DOWN = NPStringFog.decode(new byte[]{89, 10, 7, 69, 14, 12, 92, 74, 0, 95, 19, 10, 86, 11, 14, 82, 21, 0, 74, 39, 12, 66, 15, 17, 124, 11, 20, 89}, "8dc7ae", -850332109L);
    public static final String EXTRA_COLORIZED = NPStringFog.decode(new byte[]{82, 87, 1, 16, 90, 10, 87, 23, 6, 13, 89, 12, 65, 80, 31, 7, 81}, "39eb5c", true);
    public static final String EXTRA_COMPACT_ACTIONS = NPStringFog.decode(new byte[]{80, 89, 7, 65, 94, 11, 85, 25, 0, 92, 92, 18, 80, 84, 23, 114, 82, 22, 88, 88, 13, 64}, "17c31b", false);
    public static final String EXTRA_COMPAT_TEMPLATE = NPStringFog.decode(new byte[]{80, 93, 83, 75, 86, 15, 85, 75, 25, 90, 86, 20, 84, 29, 86, 73, 73, 72, 84, 75, 67, 75, 88, 72, 114, 124, 122, 105, 120, 50, 110, 103, 114, 116, 105, 42, 112, 103, 114}, "13799f", false, true);
    public static final String EXTRA_CONVERSATION_TITLE = NPStringFog.decode(new byte[]{5, 8, 82, 66, 13, 91, 0, 72, 85, 95, 12, 68, 1, 20, 69, 81, 22, 91, 11, 8, 98, 89, 22, 94, 1}, "df60b2", true);
    public static final String EXTRA_HIDDEN_CONVERSATION_TITLE = NPStringFog.decode(new byte[]{82, 88, 81, 68, 94, 15, 87, 24, 93, 95, 85, 2, 86, 88, 118, 89, 95, 16, 86, 68, 70, 87, 69, 15, 92, 88, 97, 95, 69, 10, 86}, "36561f", -17035);
    public static final String EXTRA_HISTORIC_MESSAGES = NPStringFog.decode(new byte[]{86, 89, 84, 17, 11, 81, 83, 25, 93, 6, 23, 75, 86, 80, 85, 16, 74, 80, 94, 68, 68, 12, 22, 81, 84}, "770cd8", 4.590892E8f);
    public static final String EXTRA_INFO_TEXT = NPStringFog.decode(new byte[]{84, 86, 81, 75, 93, 13, 81, 22, 92, 87, 84, 11, 97, 93, 77, 77}, "58592d", -4.458017E8f);
    public static final String EXTRA_IS_GROUP_CONVERSATION = NPStringFog.decode(new byte[]{84, 8, 86, 17, 95, 81, 81, 72, 91, 16, 119, 74, 90, 19, 66, 32, 95, 86, 67, 3, 64, 16, 81, 76, 92, 9, 92}, "5f2c08", -2.0864992E9f);
    public static final String EXTRA_LARGE_ICON = NPStringFog.decode(new byte[]{89, 13, 2, 16, 91, 94, 92, 77, 10, 3, 70, 80, 93, 42, 5, 13, 90}, "8cfb47", 1607132990L);
    public static final String EXTRA_LARGE_ICON_BIG = NPStringFog.decode(new byte[]{3, 92, 2, 16, 11, 8, 6, 28, 10, 3, 22, 6, 7, 123, 5, 13, 10, 79, 0, 91, 1}, "b2fbda", 2620);
    public static final String EXTRA_MEDIA_SESSION = NPStringFog.decode(new byte[]{81, 86, 87, 71, 87, 13, 84, 22, 94, 80, 92, 13, 81, 107, 86, 70, 75, 13, 95, 86}, "08358d", true);
    public static final String EXTRA_MESSAGES = NPStringFog.decode(new byte[]{83, 95, 86, 75, 89, 10, 86, 31, 95, 92, 69, 16, 83, 86, 87, 74}, "21296c", true);
    public static final String EXTRA_MESSAGING_STYLE_USER = NPStringFog.decode(new byte[]{80, 88, 7, 66, 10, 81, 85, 24, 14, 85, 22, 75, 80, 81, 10, 94, 2, 107, 69, 79, 15, 85, 48, 75, 84, 68}, "16c0e8", -5.829037E8f);
    public static final String EXTRA_NOTIFICATION_ID = NPStringFog.decode(new byte[]{5, 15, 83, 67, 89, 8, 0, 79, 94, 95, 66, 4, 10, 21, 25, 84, 78, 21, 22, 0, 25, 127, 121, 53, 45, 39, 126, 114, 119, 53, 45, 46, 121, 110, 127, 37}, "da716a", false, false);
    public static final String EXTRA_NOTIFICATION_TAG = NPStringFog.decode(new byte[]{2, 13, 1, 66, 9, 80, 7, 77, 12, 94, 18, 92, 13, 23, 75, 85, 30, 77, 17, 2, 75, 126, 41, 109, 42, 37, 44, 115, 39, 109, 42, 44, 43, 111, 50, 120, 36}, "cce0f9", true, true);

    @Deprecated
    public static final String EXTRA_PEOPLE = NPStringFog.decode(new byte[]{88, 93, 83, 69, 88, 89, 93, 29, 71, 82, 88, 64, 85, 86}, "937770", true);
    public static final String EXTRA_PEOPLE_LIST = NPStringFog.decode(new byte[]{85, 91, 7, 69, 91, 10, 80, 27, 19, 82, 91, 19, 88, 80, 77, 91, 93, 16, 64}, "45c74c", false, true);
    public static final String EXTRA_PICTURE = NPStringFog.decode(new byte[]{7, 12, 80, 68, 87, 93, 2, 76, 68, 95, 91, 64, 19, 16, 81}, "fb4684", 1.975770431E9d);
    public static final String EXTRA_PROGRESS = NPStringFog.decode(new byte[]{82, 86, 1, 68, 12, 80, 87, 22, 21, 68, 12, 94, 65, 93, 22, 69}, "38e6c9", -1749201621L);
    public static final String EXTRA_PROGRESS_INDETERMINATE = NPStringFog.decode(new byte[]{86, 92, 86, 71, 10, 90, 83, 28, 66, 71, 10, 84, 69, 87, 65, 70, 44, 93, 83, 87, 70, 80, 23, 94, 94, 92, 83, 65, 0}, "7225e3", true, false);
    public static final String EXTRA_PROGRESS_MAX = NPStringFog.decode(new byte[]{5, 11, 2, 20, 90, 11, 0, 75, 22, 20, 90, 5, 22, 0, 21, 21, 120, 3, 28}, "deff5b", -1.7344436E9f);
    public static final String EXTRA_REMOTE_INPUT_HISTORY = NPStringFog.decode(new byte[]{87, 10, 81, 17, 87, 10, 82, 74, 71, 6, 85, 12, 66, 1, 124, 13, 72, 22, 66, 44, 92, 16, 76, 12, 68, 29}, "6d5c8c", -1.446705489E9d);
    public static final String EXTRA_SELF_DISPLAY_NAME = NPStringFog.decode(new byte[]{84, 15, 2, 20, 91, 12, 81, 79, 21, 3, 88, 3, 113, 8, 21, 22, 88, 4, 76, 47, 7, 11, 81}, "5aff4e", true);
    public static final String EXTRA_SHOW_BIG_PICTURE_WHEN_COLLAPSED = NPStringFog.decode(new byte[]{88, 93, 82, 64, 11, 81, 93, 29, 69, 90, 11, 79, 123, 90, 81, 98, 13, 91, 77, 70, 68, 87, 51, 80, 92, 93, 117, 93, 8, 84, 88, 67, 69, 87, 0}, "9362d8", -1.553231194E9d);
    public static final String EXTRA_SHOW_CHRONOMETER = NPStringFog.decode(new byte[]{87, 12, 81, 67, 11, 90, 82, 76, 70, 89, 11, 68, 117, 10, 71, 94, 10, 92, 91, 7, 65, 84, 22}, "6b51d3", true);
    public static final String EXTRA_SHOW_WHEN = NPStringFog.decode(new byte[]{84, 92, 92, 16, 91, 94, 81, 28, 75, 10, 91, 64, 98, 90, 93, 12}, "528b47", true, false);
    public static final String EXTRA_SMALL_ICON = NPStringFog.decode(new byte[]{89, 91, 84, 68, 13, 93, 92, 27, 89, 85, 13, 90}, "8506b4", -21017);
    public static final String EXTRA_SUB_TEXT = NPStringFog.decode(new byte[]{84, 90, 0, 66, 10, 94, 81, 26, 23, 69, 7, 99, 80, 76, 16}, "54d0e7", true, false);
    public static final String EXTRA_SUMMARY_TEXT = NPStringFog.decode(new byte[]{3, 94, 85, 16, 91, 93, 6, 30, 66, 23, 89, 89, 3, 66, 72, 54, 81, 76, 22}, "b01b44", -6.538803E7f);
    public static final String EXTRA_TEMPLATE = NPStringFog.decode(new byte[]{3, 94, 86, 69, 92, 94, 6, 30, 70, 82, 94, 71, 14, 81, 70, 82}, "b02737", false, true);
    public static final String EXTRA_TEXT = NPStringFog.decode(new byte[]{80, 89, 87, 67, 92, 81, 85, 25, 71, 84, 75, 76}, "173138", 539421366L);
    public static final String EXTRA_TEXT_LINES = NPStringFog.decode(new byte[]{89, 86, 93, 19, 86, 81, 92, 22, 77, 4, 65, 76, 116, 81, 87, 4, 74}, "889a98", false, false);
    public static final String EXTRA_TITLE = NPStringFog.decode(new byte[]{87, 93, 5, 22, 11, 81, 82, 29, 21, 13, 16, 84, 83}, "63add8", -20576);
    public static final String EXTRA_TITLE_BIG = NPStringFog.decode(new byte[]{88, 10, 0, 69, 88, 8, 93, 74, 16, 94, 67, 13, 92, 74, 6, 94, 80}, "9dd77a", 3.48798135E8d);
    public static final String GROUP_KEY_SILENT = NPStringFog.decode(new byte[]{23, 88, 85, 4, 12, 71}, "d19ab3", false, true);
    public static final String INTENT_CATEGORY_NOTIFICATION_PREFERENCES = NPStringFog.decode(new byte[]{0, 13, 85, 64, 10, 8, 5, 77, 88, 92, 17, 4, 15, 23, 31, 81, 4, 21, 4, 4, 94, 64, 28, 79, 47, 44, 101, 123, 35, 40, 34, 34, 101, 123, 42, 47, 62, 51, 99, 119, 35, 36, 51, 38, 127, 113, 32, 50}, "ac12ea", -1.271568362E9d);

    public static class Action {
        static final String EXTRA_SEMANTIC_ACTION = NPStringFog.decode(new byte[]{83, 90, 0, 17, 12, 95, 86, 26, 23, 22, 19, 70, 93, 70, 16, 77, 2, 85, 70, 93, 11, 13, 77, 69, 87, 89, 5, 13, 23, 95, 81, 117, 7, 23, 10, 89, 92}, "24dcc6", -1290870844L);
        static final String EXTRA_SHOWS_USER_INTERFACE = NPStringFog.decode(new byte[]{2, 13, 87, 69, 93, 95, 7, 77, 64, 66, 66, 70, 12, 17, 71, 25, 83, 85, 23, 10, 92, 89, 28, 69, 11, 12, 68, 68, 103, 69, 6, 17, 122, 89, 70, 83, 17, 5, 82, 84, 87}, "cc3726", 119838232L);
        public static final int SEMANTIC_ACTION_ARCHIVE = 5;
        public static final int SEMANTIC_ACTION_CALL = 10;
        public static final int SEMANTIC_ACTION_DELETE = 4;
        public static final int SEMANTIC_ACTION_MARK_AS_READ = 2;
        public static final int SEMANTIC_ACTION_MARK_AS_UNREAD = 3;
        public static final int SEMANTIC_ACTION_MUTE = 6;
        public static final int SEMANTIC_ACTION_NONE = 0;
        public static final int SEMANTIC_ACTION_REPLY = 1;
        public static final int SEMANTIC_ACTION_THUMBS_DOWN = 9;
        public static final int SEMANTIC_ACTION_THUMBS_UP = 8;
        public static final int SEMANTIC_ACTION_UNMUTE = 7;
        public PendingIntent actionIntent;

        @Deprecated
        public int icon;
        private boolean mAllowGeneratedReplies;
        private final RemoteInput[] mDataOnlyRemoteInputs;
        final Bundle mExtras;
        private IconCompat mIcon;
        private final boolean mIsContextual;
        private final RemoteInput[] mRemoteInputs;
        private final int mSemanticAction;
        boolean mShowsUserInterface;
        public CharSequence title;

        public static final class Builder {
            private boolean mAllowGeneratedReplies;
            private final Bundle mExtras;
            private final IconCompat mIcon;
            private final PendingIntent mIntent;
            private boolean mIsContextual;
            private ArrayList<RemoteInput> mRemoteInputs;
            private int mSemanticAction;
            private boolean mShowsUserInterface;
            private final CharSequence mTitle;

            public Builder(int i, CharSequence charSequence, PendingIntent pendingIntent) {
                this(i == 0 ? null : IconCompat.createWithResource(null, "", i), charSequence, pendingIntent, new Bundle(), null, true, 0, true, false);
            }

            public Builder(Action action) {
                this(action.getIconCompat(), action.title, action.actionIntent, new Bundle(action.mExtras), action.getRemoteInputs(), action.getAllowGeneratedReplies(), action.getSemanticAction(), action.mShowsUserInterface, action.isContextual());
            }

            public Builder(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
                this(iconCompat, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false);
            }

            private Builder(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, boolean z, int i, boolean z2, boolean z3) {
                this.mAllowGeneratedReplies = true;
                this.mShowsUserInterface = true;
                this.mIcon = iconCompat;
                this.mTitle = Builder.limitCharSequenceLength(charSequence);
                this.mIntent = pendingIntent;
                this.mExtras = bundle;
                this.mRemoteInputs = remoteInputArr == null ? null : new ArrayList<>(Arrays.asList(remoteInputArr));
                this.mAllowGeneratedReplies = z;
                this.mSemanticAction = i;
                this.mShowsUserInterface = z2;
                this.mIsContextual = z3;
            }

            private void checkContextualActionNullFields() {
                if (this.mIsContextual && this.mIntent == null) {
                    throw new NullPointerException(NPStringFog.decode(new byte[]{117, 10, 86, 17, 0, 64, 66, 16, 89, 9, 69, 121, 85, 17, 81, 10, 11, 75, 22, 8, 77, 22, 17, 24, 85, 10, 86, 17, 4, 81, 88, 69, 89, 69, 19, 89, 90, 12, 92, 69, 53, 93, 88, 1, 81, 11, 2, 113, 88, 17, 93, 11, 17}, "6e8ee8", false, false));
                }
            }

            public static Builder fromAndroidAction(Notification.Action action) {
                android.app.RemoteInput[] remoteInputs;
                Builder builder = (Build.VERSION.SDK_INT < 23 || action.getIcon() == null) ? new Builder(action.icon, action.title, action.actionIntent) : new Builder(IconCompat.createFromIcon(action.getIcon()), action.title, action.actionIntent);
                if (Build.VERSION.SDK_INT >= 20 && (remoteInputs = action.getRemoteInputs()) != null && remoteInputs.length != 0) {
                    for (android.app.RemoteInput remoteInput : remoteInputs) {
                        builder.addRemoteInput(RemoteInput.fromPlatform(remoteInput));
                    }
                }
                if (Build.VERSION.SDK_INT >= 24) {
                    builder.mAllowGeneratedReplies = action.getAllowGeneratedReplies();
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    builder.setSemanticAction(action.getSemanticAction());
                }
                if (Build.VERSION.SDK_INT >= 29) {
                    builder.setContextual(action.isContextual());
                }
                return builder;
            }

            public Builder addExtras(Bundle bundle) {
                if (bundle != null) {
                    this.mExtras.putAll(bundle);
                }
                return this;
            }

            public Builder addRemoteInput(RemoteInput remoteInput) {
                if (this.mRemoteInputs == null) {
                    this.mRemoteInputs = new ArrayList<>();
                }
                if (remoteInput != null) {
                    this.mRemoteInputs.add(remoteInput);
                }
                return this;
            }

            public Action build() {
                checkContextualActionNullFields();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                ArrayList<RemoteInput> arrayList3 = this.mRemoteInputs;
                if (arrayList3 != null) {
                    for (RemoteInput remoteInput : arrayList3) {
                        if (remoteInput.isDataOnly()) {
                            arrayList.add(remoteInput);
                        } else {
                            arrayList2.add(remoteInput);
                        }
                    }
                }
                return new Action(this.mIcon, this.mTitle, this.mIntent, this.mExtras, arrayList2.isEmpty() ? null : (RemoteInput[]) arrayList2.toArray(new RemoteInput[arrayList2.size()]), arrayList.isEmpty() ? null : (RemoteInput[]) arrayList.toArray(new RemoteInput[arrayList.size()]), this.mAllowGeneratedReplies, this.mSemanticAction, this.mShowsUserInterface, this.mIsContextual);
            }

            public Builder extend(Extender extender) {
                extender.extend(this);
                return this;
            }

            public Bundle getExtras() {
                return this.mExtras;
            }

            public Builder setAllowGeneratedReplies(boolean z) {
                this.mAllowGeneratedReplies = z;
                return this;
            }

            public Builder setContextual(boolean z) {
                this.mIsContextual = z;
                return this;
            }

            public Builder setSemanticAction(int i) {
                this.mSemanticAction = i;
                return this;
            }

            public Builder setShowsUserInterface(boolean z) {
                this.mShowsUserInterface = z;
                return this;
            }
        }

        public interface Extender {
            Builder extend(Builder builder);
        }

        @Retention(RetentionPolicy.SOURCE)
        public @interface SemanticAction {
        }

        public static final class WearableExtender implements Extender {
            private static final int DEFAULT_FLAGS = 1;
            private static final int FLAG_AVAILABLE_OFFLINE = 1;
            private static final int FLAG_HINT_DISPLAY_INLINE = 4;
            private static final int FLAG_HINT_LAUNCHES_ACTIVITY = 2;
            private CharSequence mCancelLabel;
            private CharSequence mConfirmLabel;
            private int mFlags;
            private CharSequence mInProgressLabel;
            private static final String EXTRA_WEARABLE_EXTENSIONS = NPStringFog.decode(new byte[]{88, 91, 82, 20, 90, 89, 93, 27, 65, 3, 84, 66, 88, 87, 90, 3, 27, 117, 97, 97, 115, 40, 102, 121, 118, 123, 101}, "956f50", false, true);
            private static final String KEY_CANCEL_LABEL = NPStringFog.decode(new byte[]{0, 87, 92, 82, 0, 84, 47, 87, 80, 84, 9}, "c621e8", false);
            private static final String KEY_CONFIRM_LABEL = NPStringFog.decode(new byte[]{80, 13, 11, 86, 91, 23, 94, 46, 4, 82, 87, 9}, "3be02e", 1.78794643E9d);
            private static final String KEY_FLAGS = NPStringFog.decode(new byte[]{7, 9, 85, 2, 70}, "ae4e54", false, false);
            private static final String KEY_IN_PROGRESS_LABEL = NPStringFog.decode(new byte[]{80, 92, 96, 67, 88, 6, 75, 87, 67, 66, 123, 0, 91, 87, 92}, "92017a", true);

            public WearableExtender() {
                this.mFlags = 1;
            }

            public WearableExtender(Action action) {
                this.mFlags = 1;
                Bundle bundle = action.getExtras().getBundle(NPStringFog.decode(new byte[]{4, 11, 80, 75, 13, 91, 1, 75, 67, 92, 3, 64, 4, 7, 88, 92, 76, 119, 61, 49, 113, 119, 49, 123, 42, 43, 103}, "ee49b2", true, true));
                if (bundle != null) {
                    this.mFlags = bundle.getInt(NPStringFog.decode(new byte[]{86, 84, 2, 2, 64}, "08ce3b", 1.8144357E9f), 1);
                    this.mInProgressLabel = bundle.getCharSequence(NPStringFog.decode(new byte[]{90, 86, 99, 20, 14, 86, 65, 93, 64, 21, 45, 80, 81, 93, 95}, "383fa1", -1.279295052E9d));
                    this.mConfirmLabel = bundle.getCharSequence(NPStringFog.decode(new byte[]{6, 94, 89, 84, 90, 75, 8, 125, 86, 80, 86, 85}, "e17239", -1.745692937E9d));
                    this.mCancelLabel = bundle.getCharSequence(NPStringFog.decode(new byte[]{7, 85, 12, 82, 86, 84, 40, 85, 0, 84, 95}, "d4b138", -2.0552891E9f));
                }
            }

            private void setFlag(int i, boolean z) {
                if (z) {
                    this.mFlags |= i;
                } else {
                    this.mFlags &= i ^ (-1);
                }
            }

            /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
            public WearableExtender m5clone() {
                WearableExtender wearableExtender = new WearableExtender();
                wearableExtender.mFlags = this.mFlags;
                wearableExtender.mInProgressLabel = this.mInProgressLabel;
                wearableExtender.mConfirmLabel = this.mConfirmLabel;
                wearableExtender.mCancelLabel = this.mCancelLabel;
                return wearableExtender;
            }

            @Override // androidx.core.app.NotificationCompat.Action.Extender
            public Builder extend(Builder builder) {
                Bundle bundle = new Bundle();
                int i = this.mFlags;
                if (i != 1) {
                    bundle.putInt(KEY_FLAGS, i);
                }
                CharSequence charSequence = this.mInProgressLabel;
                if (charSequence != null) {
                    bundle.putCharSequence(KEY_IN_PROGRESS_LABEL, charSequence);
                }
                CharSequence charSequence2 = this.mConfirmLabel;
                if (charSequence2 != null) {
                    bundle.putCharSequence(KEY_CONFIRM_LABEL, charSequence2);
                }
                CharSequence charSequence3 = this.mCancelLabel;
                if (charSequence3 != null) {
                    bundle.putCharSequence(KEY_CANCEL_LABEL, charSequence3);
                }
                builder.getExtras().putBundle(EXTRA_WEARABLE_EXTENSIONS, bundle);
                return builder;
            }

            @Deprecated
            public CharSequence getCancelLabel() {
                return this.mCancelLabel;
            }

            @Deprecated
            public CharSequence getConfirmLabel() {
                return this.mConfirmLabel;
            }

            public boolean getHintDisplayActionInline() {
                return (this.mFlags & 4) != 0;
            }

            public boolean getHintLaunchesActivity() {
                return (this.mFlags & 2) != 0;
            }

            @Deprecated
            public CharSequence getInProgressLabel() {
                return this.mInProgressLabel;
            }

            public boolean isAvailableOffline() {
                return (this.mFlags & 1) != 0;
            }

            public WearableExtender setAvailableOffline(boolean z) {
                setFlag(1, z);
                return this;
            }

            @Deprecated
            public WearableExtender setCancelLabel(CharSequence charSequence) {
                this.mCancelLabel = charSequence;
                return this;
            }

            @Deprecated
            public WearableExtender setConfirmLabel(CharSequence charSequence) {
                this.mConfirmLabel = charSequence;
                return this;
            }

            public WearableExtender setHintDisplayActionInline(boolean z) {
                setFlag(4, z);
                return this;
            }

            public WearableExtender setHintLaunchesActivity(boolean z) {
                setFlag(2, z);
                return this;
            }

            @Deprecated
            public WearableExtender setInProgressLabel(CharSequence charSequence) {
                this.mInProgressLabel = charSequence;
                return this;
            }
        }

        public Action(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i != 0 ? IconCompat.createWithResource(null, "", i) : null, charSequence, pendingIntent);
        }

        Action(int i, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, RemoteInput[] remoteInputArr2, boolean z, int i2, boolean z2, boolean z3) {
            this(i != 0 ? IconCompat.createWithResource(null, "", i) : null, charSequence, pendingIntent, bundle, remoteInputArr, remoteInputArr2, z, i2, z2, z3);
        }

        public Action(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), (RemoteInput[]) null, (RemoteInput[]) null, true, 0, true, false);
        }

        Action(IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, RemoteInput[] remoteInputArr, RemoteInput[] remoteInputArr2, boolean z, int i, boolean z2, boolean z3) {
            this.mShowsUserInterface = true;
            this.mIcon = iconCompat;
            if (iconCompat != null && iconCompat.getType() == 2) {
                this.icon = iconCompat.getResId();
            }
            this.title = Builder.limitCharSequenceLength(charSequence);
            this.actionIntent = pendingIntent;
            this.mExtras = bundle == null ? new Bundle() : bundle;
            this.mRemoteInputs = remoteInputArr;
            this.mDataOnlyRemoteInputs = remoteInputArr2;
            this.mAllowGeneratedReplies = z;
            this.mSemanticAction = i;
            this.mShowsUserInterface = z2;
            this.mIsContextual = z3;
        }

        public PendingIntent getActionIntent() {
            return this.actionIntent;
        }

        public boolean getAllowGeneratedReplies() {
            return this.mAllowGeneratedReplies;
        }

        public RemoteInput[] getDataOnlyRemoteInputs() {
            return this.mDataOnlyRemoteInputs;
        }

        public Bundle getExtras() {
            return this.mExtras;
        }

        @Deprecated
        public int getIcon() {
            return this.icon;
        }

        public IconCompat getIconCompat() {
            int i;
            if (this.mIcon == null && (i = this.icon) != 0) {
                this.mIcon = IconCompat.createWithResource(null, "", i);
            }
            return this.mIcon;
        }

        public RemoteInput[] getRemoteInputs() {
            return this.mRemoteInputs;
        }

        public int getSemanticAction() {
            return this.mSemanticAction;
        }

        public boolean getShowsUserInterface() {
            return this.mShowsUserInterface;
        }

        public CharSequence getTitle() {
            return this.title;
        }

        public boolean isContextual() {
            return this.mIsContextual;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface BadgeIconType {
    }

    public static class BigPictureStyle extends Style {
        private static final String TEMPLATE_CLASS_NAME = NPStringFog.decode(new byte[]{83, 92, 0, 69, 92, 91, 86, 74, 74, 84, 92, 64, 87, 28, 5, 71, 67, 28, 124, 93, 16, 94, 85, 91, 81, 83, 16, 94, 92, 92, 113, 93, 9, 71, 82, 70, 22, 112, 13, 80, 99, 91, 81, 70, 17, 69, 86, 97, 70, 75, 8, 82}, "22d732", -1.291899047E9d);
        private IconCompat mBigLargeIcon;
        private boolean mBigLargeIconSet;
        private Bitmap mPicture;
        private boolean mShowBigPictureWhenCollapsed;

        private static class Api16Impl {
            private Api16Impl() {
            }

            static void setBigLargeIcon(Notification.BigPictureStyle bigPictureStyle, Bitmap bitmap) {
                bigPictureStyle.bigLargeIcon(bitmap);
            }

            static void setSummaryText(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
                bigPictureStyle.setSummaryText(charSequence);
            }
        }

        private static class Api23Impl {
            private Api23Impl() {
            }

            static void setBigLargeIcon(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
                bigPictureStyle.bigLargeIcon(icon);
            }
        }

        private static class Api31Impl {
            private Api31Impl() {
            }

            static void showBigPictureWhenCollapsed(Notification.BigPictureStyle bigPictureStyle, boolean z) {
                bigPictureStyle.showBigPictureWhenCollapsed(z);
            }
        }

        public BigPictureStyle() {
        }

        public BigPictureStyle(Builder builder) {
            setBuilder(builder);
        }

        private static IconCompat asIconCompat(Parcelable parcelable) {
            if (parcelable != null) {
                if (Build.VERSION.SDK_INT >= 23 && (parcelable instanceof Icon)) {
                    return IconCompat.createFromIcon((Icon) parcelable);
                }
                if (parcelable instanceof Bitmap) {
                    return IconCompat.createWithBitmap((Bitmap) parcelable);
                }
            }
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigPictureStyle bigPictureStyleBigPicture = new Notification.BigPictureStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(this.mBigContentTitle).bigPicture(this.mPicture);
                if (this.mBigLargeIconSet) {
                    if (this.mBigLargeIcon == null) {
                        Api16Impl.setBigLargeIcon(bigPictureStyleBigPicture, null);
                    } else if (Build.VERSION.SDK_INT >= 23) {
                        Api23Impl.setBigLargeIcon(bigPictureStyleBigPicture, this.mBigLargeIcon.toIcon(notificationBuilderWithBuilderAccessor instanceof NotificationCompatBuilder ? ((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).getContext() : null));
                    } else if (this.mBigLargeIcon.getType() == 1) {
                        Api16Impl.setBigLargeIcon(bigPictureStyleBigPicture, this.mBigLargeIcon.getBitmap());
                    } else {
                        Api16Impl.setBigLargeIcon(bigPictureStyleBigPicture, null);
                    }
                }
                if (this.mSummaryTextSet) {
                    Api16Impl.setSummaryText(bigPictureStyleBigPicture, this.mSummaryText);
                }
                if (Build.VERSION.SDK_INT >= 31) {
                    Api31Impl.showBigPictureWhenCollapsed(bigPictureStyleBigPicture, this.mShowBigPictureWhenCollapsed);
                }
            }
        }

        public BigPictureStyle bigLargeIcon(Bitmap bitmap) {
            this.mBigLargeIcon = bitmap == null ? null : IconCompat.createWithBitmap(bitmap);
            this.mBigLargeIconSet = true;
            return this;
        }

        public BigPictureStyle bigPicture(Bitmap bitmap) {
            this.mPicture = bitmap;
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected void clearCompatExtraKeys(Bundle bundle) {
            super.clearCompatExtraKeys(bundle);
            bundle.remove(NPStringFog.decode(new byte[]{89, 87, 2, 20, 14, 12, 92, 23, 10, 7, 19, 2, 93, 112, 5, 9, 15, 75, 90, 80, 1}, "89ffae", false, true));
            bundle.remove(NPStringFog.decode(new byte[]{2, 93, 2, 70, 95, 93, 7, 29, 22, 93, 83, 64, 22, 65, 3}, "c3f404", -802374214L));
            bundle.remove(NPStringFog.decode(new byte[]{80, 92, 86, 68, 13, 90, 85, 28, 65, 94, 13, 68, 115, 91, 85, 102, 11, 80, 69, 71, 64, 83, 53, 91, 84, 92, 113, 89, 14, 95, 80, 66, 65, 83, 6}, "1226b3", true));
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected String getClassName() {
            return TEMPLATE_CLASS_NAME;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected void restoreFromCompatExtras(Bundle bundle) {
            super.restoreFromCompatExtras(bundle);
            if (bundle.containsKey(NPStringFog.decode(new byte[]{0, 12, 1, 68, 95, 15, 5, 76, 9, 87, 66, 1, 4, 43, 6, 89, 94, 72, 3, 11, 2}, "abe60f", -27590))) {
                this.mBigLargeIcon = asIconCompat(bundle.getParcelable(NPStringFog.decode(new byte[]{86, 10, 7, 22, 92, 89, 83, 74, 15, 5, 65, 87, 82, 45, 0, 11, 93, 30, 85, 13, 4}, "7dcd30", false, false)));
                this.mBigLargeIconSet = true;
            }
            this.mPicture = (Bitmap) bundle.getParcelable(NPStringFog.decode(new byte[]{0, 8, 83, 67, 87, 95, 5, 72, 71, 88, 91, 66, 20, 20, 82}, "af7186", -1.266893409E9d));
            this.mShowBigPictureWhenCollapsed = bundle.getBoolean(NPStringFog.decode(new byte[]{88, 15, 85, 17, 9, 90, 93, 79, 66, 11, 9, 68, 123, 8, 86, 51, 15, 80, 77, 20, 67, 6, 49, 91, 92, 15, 114, 12, 10, 95, 88, 17, 66, 6, 2}, "9a1cf3", -1.348048391E9d));
        }

        public BigPictureStyle setBigContentTitle(CharSequence charSequence) {
            this.mBigContentTitle = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        public BigPictureStyle setSummaryText(CharSequence charSequence) {
            this.mSummaryText = Builder.limitCharSequenceLength(charSequence);
            this.mSummaryTextSet = true;
            return this;
        }

        public BigPictureStyle showBigPictureWhenCollapsed(boolean z) {
            this.mShowBigPictureWhenCollapsed = z;
            return this;
        }
    }

    public static class BigTextStyle extends Style {
        private static final String TEMPLATE_CLASS_NAME = NPStringFog.decode(new byte[]{86, 94, 93, 68, 10, 90, 83, 72, 23, 85, 10, 65, 82, 30, 88, 70, 21, 29, 121, 95, 77, 95, 3, 90, 84, 81, 77, 95, 10, 93, 116, 95, 84, 70, 4, 71, 19, 114, 80, 81, 49, 86, 79, 68, 106, 66, 28, 95, 82}, "7096e3", false, true);
        private CharSequence mBigText;

        public BigTextStyle() {
        }

        public BigTextStyle(Builder builder) {
            setBuilder(builder);
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void addCompatExtras(Bundle bundle) {
            super.addCompatExtras(bundle);
            if (Build.VERSION.SDK_INT < 21) {
                bundle.putCharSequence(NPStringFog.decode(new byte[]{89, 15, 6, 66, 88, 90, 92, 79, 0, 89, 80, 103, 93, 25, 22}, "8ab073", -1.7690222E9f), this.mBigText);
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigTextStyleBigText = new Notification.BigTextStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(this.mBigContentTitle).bigText(this.mBigText);
                if (this.mSummaryTextSet) {
                    bigTextStyleBigText.setSummaryText(this.mSummaryText);
                }
            }
        }

        public BigTextStyle bigText(CharSequence charSequence) {
            this.mBigText = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected void clearCompatExtraKeys(Bundle bundle) {
            super.clearCompatExtraKeys(bundle);
            bundle.remove(NPStringFog.decode(new byte[]{86, 86, 6, 66, 94, 93, 83, 22, 0, 89, 86, 96, 82, 64, 22}, "78b014", true, true));
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected String getClassName() {
            return TEMPLATE_CLASS_NAME;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected void restoreFromCompatExtras(Bundle bundle) {
            super.restoreFromCompatExtras(bundle);
            this.mBigText = bundle.getCharSequence(NPStringFog.decode(new byte[]{0, 89, 84, 69, 93, 92, 5, 25, 82, 94, 85, 97, 4, 79, 68}, "a70725", -1246797370L));
        }

        public BigTextStyle setBigContentTitle(CharSequence charSequence) {
            this.mBigContentTitle = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        public BigTextStyle setSummaryText(CharSequence charSequence) {
            this.mSummaryText = Builder.limitCharSequenceLength(charSequence);
            this.mSummaryTextSet = true;
            return this;
        }
    }

    public static final class BubbleMetadata {
        private static final int FLAG_AUTO_EXPAND_BUBBLE = 1;
        private static final int FLAG_SUPPRESS_NOTIFICATION = 2;
        private PendingIntent mDeleteIntent;
        private int mDesiredHeight;
        private int mDesiredHeightResId;
        private int mFlags;
        private IconCompat mIcon;
        private PendingIntent mPendingIntent;
        private String mShortcutId;

        private static class Api29Impl {
            private Api29Impl() {
            }

            static BubbleMetadata fromPlatform(Notification.BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null || bubbleMetadata.getIntent() == null) {
                    return null;
                }
                Builder suppressNotification = new Builder(bubbleMetadata.getIntent(), IconCompat.createFromIcon(bubbleMetadata.getIcon())).setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setDeleteIntent(bubbleMetadata.getDeleteIntent()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    suppressNotification.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    suppressNotification.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return suppressNotification.build();
            }

            static Notification.BubbleMetadata toPlatform(BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null || bubbleMetadata.getIntent() == null) {
                    return null;
                }
                Notification.BubbleMetadata.Builder suppressNotification = new Notification.BubbleMetadata.Builder().setIcon(bubbleMetadata.getIcon().toIcon()).setIntent(bubbleMetadata.getIntent()).setDeleteIntent(bubbleMetadata.getDeleteIntent()).setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    suppressNotification.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    suppressNotification.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return suppressNotification.build();
            }
        }

        private static class Api30Impl {
            private Api30Impl() {
            }

            static BubbleMetadata fromPlatform(Notification.BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null) {
                    return null;
                }
                Builder builder = bubbleMetadata.getShortcutId() != null ? new Builder(bubbleMetadata.getShortcutId()) : new Builder(bubbleMetadata.getIntent(), IconCompat.createFromIcon(bubbleMetadata.getIcon()));
                builder.setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setDeleteIntent(bubbleMetadata.getDeleteIntent()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    builder.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    builder.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return builder.build();
            }

            static Notification.BubbleMetadata toPlatform(BubbleMetadata bubbleMetadata) {
                if (bubbleMetadata == null) {
                    return null;
                }
                Notification.BubbleMetadata.Builder builder = bubbleMetadata.getShortcutId() != null ? new Notification.BubbleMetadata.Builder(bubbleMetadata.getShortcutId()) : new Notification.BubbleMetadata.Builder(bubbleMetadata.getIntent(), bubbleMetadata.getIcon().toIcon());
                builder.setDeleteIntent(bubbleMetadata.getDeleteIntent()).setAutoExpandBubble(bubbleMetadata.getAutoExpandBubble()).setSuppressNotification(bubbleMetadata.isNotificationSuppressed());
                if (bubbleMetadata.getDesiredHeight() != 0) {
                    builder.setDesiredHeight(bubbleMetadata.getDesiredHeight());
                }
                if (bubbleMetadata.getDesiredHeightResId() != 0) {
                    builder.setDesiredHeightResId(bubbleMetadata.getDesiredHeightResId());
                }
                return builder.build();
            }
        }

        public static final class Builder {
            private PendingIntent mDeleteIntent;
            private int mDesiredHeight;
            private int mDesiredHeightResId;
            private int mFlags;
            private IconCompat mIcon;
            private PendingIntent mPendingIntent;
            private String mShortcutId;

            @Deprecated
            public Builder() {
            }

            public Builder(PendingIntent pendingIntent, IconCompat iconCompat) {
                if (pendingIntent == null) {
                    throw new NullPointerException(NPStringFog.decode(new byte[]{112, 19, 0, 82, 90, 87, 18, 20, 7, 65, 67, 91, 64, 3, 17, 16, 88, 93, 92, 75, 12, 69, 90, 94, 18, 22, 7, 94, 82, 91, 92, 1, 66, 89, 88, 70, 87, 8, 22}, "2fb062", true));
                }
                if (iconCompat == null) {
                    throw new NullPointerException(NPStringFog.decode(new byte[]{118, 66, 81, 83, 10, 92, 71, 23, 65, 84, 23, 76, 93, 69, 86, 17, 8, 86, 90, 26, 93, 68, 10, 85, 20, 94, 80, 94, 8}, "4731f9", 11894));
                }
                this.mPendingIntent = pendingIntent;
                this.mIcon = iconCompat;
            }

            public Builder(String str) {
                if (TextUtils.isEmpty(str)) {
                    throw new NullPointerException(NPStringFog.decode(new byte[]{39, 67, 91, 86, 9, 80, 69, 68, 92, 69, 16, 92, 23, 83, 74, 20, 4, 21, 11, 89, 87, 25, 11, 64, 9, 90, 25, 71, 13, 90, 23, 66, 90, 65, 17, 21, 12, 82}, "e694e5", true, false));
                }
                this.mShortcutId = str;
            }

            private Builder setFlag(int i, boolean z) {
                if (z) {
                    this.mFlags |= i;
                } else {
                    this.mFlags &= i ^ (-1);
                }
                return this;
            }

            public BubbleMetadata build() {
                String str = this.mShortcutId;
                if (str == null && this.mPendingIntent == null) {
                    throw new NullPointerException(NPStringFog.decode(new byte[]{125, 76, 68, 67, 66, 69, 69, 73, 71, 91, 27, 22, 64, 92, 89, 83, 11, 88, 87, 25, 94, 89, 22, 83, 94, 77, 23, 88, 16, 22, 67, 81, 88, 69, 22, 85, 69, 77, 23, 67, 13, 22, 82, 76, 85, 85, 14, 83}, "0977b6", 4.2053446E8f));
                }
                if (str == null && this.mIcon == null) {
                    throw new NullPointerException(NPStringFog.decode(new byte[]{46, 77, 74, 23, 68, 65, 22, 72, 73, 15, 29, 18, 2, 86, 25, 10, 7, 93, 13, 24, 86, 17, 68, 65, 11, 87, 75, 23, 7, 71, 23, 24, 95, 12, 22, 18, 23, 80, 92, 67, 6, 71, 1, 90, 85, 6}, "c89cd2", -4.2740387E8f));
                }
                BubbleMetadata bubbleMetadata = new BubbleMetadata(this.mPendingIntent, this.mDeleteIntent, this.mIcon, this.mDesiredHeight, this.mDesiredHeightResId, this.mFlags, str);
                bubbleMetadata.setFlags(this.mFlags);
                return bubbleMetadata;
            }

            public Builder setAutoExpandBubble(boolean z) {
                setFlag(1, z);
                return this;
            }

            public Builder setDeleteIntent(PendingIntent pendingIntent) {
                this.mDeleteIntent = pendingIntent;
                return this;
            }

            public Builder setDesiredHeight(int i) {
                this.mDesiredHeight = Math.max(i, 0);
                this.mDesiredHeightResId = 0;
                return this;
            }

            public Builder setDesiredHeightResId(int i) {
                this.mDesiredHeightResId = i;
                this.mDesiredHeight = 0;
                return this;
            }

            public Builder setIcon(IconCompat iconCompat) {
                if (this.mShortcutId != null) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{33, 69, 84, 0, 17, 83, 6, 23, 80, 18, 69, 87, 66, 68, 89, 14, 23, 66, 1, 66, 69, 65, 7, 67, 0, 85, 93, 4, 73, 22, 1, 86, 95, 15, 10, 66, 66, 68, 84, 21, 69, 87, 12, 23, 120, 2, 10, 88, 76, 23, 114, 14, 11, 69, 11, 83, 84, 19, 69, 67, 17, 94, 95, 6, 69, 116, 23, 85, 83, 13, 0, 123, 7, 67, 80, 5, 4, 66, 3, 25, 115, 20, 12, 90, 6, 82, 67, 73, 53, 83, 12, 83, 88, 15, 2, 127, 12, 67, 84, 15, 17, 26, 43, 84, 94, 15, 76, 22, 11, 89, 66, 21, 0, 87, 6, 25}, "b71ae6", -1.527618972E9d));
                }
                if (iconCompat == null) {
                    throw new NullPointerException(NPStringFog.decode(new byte[]{38, 20, 83, 83, 88, 87, 23, 65, 67, 84, 69, 71, 13, 19, 84, 17, 90, 93, 10, 76, 95, 68, 88, 94, 68, 8, 82, 94, 90}, "da1142", 2.24022765E8d));
                }
                this.mIcon = iconCompat;
                return this;
            }

            public Builder setIntent(PendingIntent pendingIntent) {
                if (this.mShortcutId != null) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{39, 71, 0, 3, 67, 87, 0, 21, 4, 17, 23, 83, 68, 70, 13, 13, 69, 70, 7, 64, 17, 66, 85, 71, 6, 87, 9, 7, 27, 18, 7, 84, 11, 12, 88, 70, 68, 70, 0, 22, 23, 83, 68, 101, 0, 12, 83, 91, 10, 82, 44, 12, 67, 87, 10, 65, 75, 66, 116, 93, 10, 70, 12, 6, 82, 64, 68, 64, 22, 11, 89, 85, 68, 119, 16, 0, 85, 94, 1, 120, 0, 22, 86, 86, 5, 65, 4, 76, 117, 71, 13, 89, 1, 7, 69, 26, 52, 80, 11, 6, 94, 92, 3, 124, 11, 22, 82, 92, 16, 25, 44, 1, 88, 92, 77, 21, 12, 12, 68, 70, 1, 84, 1, 76}, "d5eb72", true, false));
                }
                if (pendingIntent == null) {
                    throw new NullPointerException(NPStringFog.decode(new byte[]{115, 64, 82, 6, 9, 85, 17, 71, 85, 21, 16, 89, 67, 80, 67, 68, 11, 95, 95, 24, 94, 17, 9, 92, 17, 69, 85, 10, 1, 89, 95, 82, 16, 13, 11, 68, 84, 91, 68}, "150de0", -1.654128E9f));
                }
                this.mPendingIntent = pendingIntent;
                return this;
            }

            public Builder setSuppressNotification(boolean z) {
                setFlag(2, z);
                return this;
            }
        }

        private BubbleMetadata(PendingIntent pendingIntent, PendingIntent pendingIntent2, IconCompat iconCompat, int i, int i2, int i3, String str) {
            this.mPendingIntent = pendingIntent;
            this.mIcon = iconCompat;
            this.mDesiredHeight = i;
            this.mDesiredHeightResId = i2;
            this.mDeleteIntent = pendingIntent2;
            this.mFlags = i3;
            this.mShortcutId = str;
        }

        public static BubbleMetadata fromPlatform(Notification.BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null) {
                return null;
            }
            if (Build.VERSION.SDK_INT >= 30) {
                return Api30Impl.fromPlatform(bubbleMetadata);
            }
            if (Build.VERSION.SDK_INT == 29) {
                return Api29Impl.fromPlatform(bubbleMetadata);
            }
            return null;
        }

        public static Notification.BubbleMetadata toPlatform(BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null) {
                return null;
            }
            if (Build.VERSION.SDK_INT >= 30) {
                return Api30Impl.toPlatform(bubbleMetadata);
            }
            if (Build.VERSION.SDK_INT == 29) {
                return Api29Impl.toPlatform(bubbleMetadata);
            }
            return null;
        }

        public boolean getAutoExpandBubble() {
            return (this.mFlags & 1) != 0;
        }

        public PendingIntent getDeleteIntent() {
            return this.mDeleteIntent;
        }

        public int getDesiredHeight() {
            return this.mDesiredHeight;
        }

        public int getDesiredHeightResId() {
            return this.mDesiredHeightResId;
        }

        public IconCompat getIcon() {
            return this.mIcon;
        }

        public PendingIntent getIntent() {
            return this.mPendingIntent;
        }

        public String getShortcutId() {
            return this.mShortcutId;
        }

        public boolean isNotificationSuppressed() {
            return (this.mFlags & 2) != 0;
        }

        public void setFlags(int i) {
            this.mFlags = i;
        }
    }

    public static class Builder {
        private static final int MAX_CHARSEQUENCE_LENGTH = 5120;
        public ArrayList<Action> mActions;
        boolean mAllowSystemGeneratedContextualActions;
        int mBadgeIcon;
        RemoteViews mBigContentView;
        BubbleMetadata mBubbleMetadata;
        String mCategory;
        String mChannelId;
        boolean mChronometerCountDown;
        int mColor;
        boolean mColorized;
        boolean mColorizedSet;
        CharSequence mContentInfo;
        PendingIntent mContentIntent;
        CharSequence mContentText;
        CharSequence mContentTitle;
        RemoteViews mContentView;
        public Context mContext;
        Bundle mExtras;
        int mFgsDeferBehavior;
        PendingIntent mFullScreenIntent;
        int mGroupAlertBehavior;
        String mGroupKey;
        boolean mGroupSummary;
        RemoteViews mHeadsUpContentView;
        ArrayList<Action> mInvisibleActions;
        Bitmap mLargeIcon;
        boolean mLocalOnly;
        LocusIdCompat mLocusId;
        Notification mNotification;
        int mNumber;

        @Deprecated
        public ArrayList<String> mPeople;
        public ArrayList<Person> mPersonList;
        int mPriority;
        int mProgress;
        boolean mProgressIndeterminate;
        int mProgressMax;
        Notification mPublicVersion;
        CharSequence[] mRemoteInputHistory;
        CharSequence mSettingsText;
        String mShortcutId;
        boolean mShowWhen;
        boolean mSilent;
        Icon mSmallIcon;
        String mSortKey;
        Style mStyle;
        CharSequence mSubText;
        RemoteViews mTickerView;
        long mTimeout;
        boolean mUseChronometer;
        int mVisibility;

        @Deprecated
        public Builder(Context context) {
            this(context, (String) null);
        }

        public Builder(Context context, Notification notification) {
            ArrayList parcelableArrayList;
            this(context, NotificationCompat.getChannelId(notification));
            Bundle bundle = notification.extras;
            Style styleExtractStyleFromNotification = Style.extractStyleFromNotification(notification);
            setContentTitle(NotificationCompat.getContentTitle(notification)).setContentText(NotificationCompat.getContentText(notification)).setContentInfo(NotificationCompat.getContentInfo(notification)).setSubText(NotificationCompat.getSubText(notification)).setSettingsText(NotificationCompat.getSettingsText(notification)).setStyle(styleExtractStyleFromNotification).setContentIntent(notification.contentIntent).setGroup(NotificationCompat.getGroup(notification)).setGroupSummary(NotificationCompat.isGroupSummary(notification)).setLocusId(NotificationCompat.getLocusId(notification)).setWhen(notification.when).setShowWhen(NotificationCompat.getShowWhen(notification)).setUsesChronometer(NotificationCompat.getUsesChronometer(notification)).setAutoCancel(NotificationCompat.getAutoCancel(notification)).setOnlyAlertOnce(NotificationCompat.getOnlyAlertOnce(notification)).setOngoing(NotificationCompat.getOngoing(notification)).setLocalOnly(NotificationCompat.getLocalOnly(notification)).setLargeIcon(notification.largeIcon).setBadgeIconType(NotificationCompat.getBadgeIconType(notification)).setCategory(NotificationCompat.getCategory(notification)).setBubbleMetadata(NotificationCompat.getBubbleMetadata(notification)).setNumber(notification.number).setTicker(notification.tickerText).setContentIntent(notification.contentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(notification.fullScreenIntent, NotificationCompat.getHighPriority(notification)).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setDefaults(notification.defaults).setPriority(notification.priority).setColor(NotificationCompat.getColor(notification)).setVisibility(NotificationCompat.getVisibility(notification)).setPublicVersion(NotificationCompat.getPublicVersion(notification)).setSortKey(NotificationCompat.getSortKey(notification)).setTimeoutAfter(NotificationCompat.getTimeoutAfter(notification)).setShortcutId(NotificationCompat.getShortcutId(notification)).setProgress(bundle.getInt(NPStringFog.decode(new byte[]{2, 91, 86, 74, 93, 93, 7, 27, 66, 74, 93, 83, 17, 80, 65, 75, 127, 85, 27}, "c52824", false)), bundle.getInt(NPStringFog.decode(new byte[]{87, 8, 80, 75, 13, 95, 82, 72, 68, 75, 13, 81, 68, 3, 71, 74}, "6f49b6", 7.4540525E8f)), bundle.getBoolean(NPStringFog.decode(new byte[]{83, 13, 1, 71, 13, 81, 86, 77, 21, 71, 13, 95, 64, 6, 22, 70, 43, 86, 86, 6, 17, 80, 16, 85, 91, 13, 4, 65, 7}, "2ce5b8", 1877627112L))).setAllowSystemGeneratedContextualActions(NotificationCompat.getAllowSystemGeneratedContextualActions(notification)).setSmallIcon(notification.icon, notification.iconLevel).addExtras(getExtrasWithoutDuplicateData(notification, styleExtractStyleFromNotification));
            if (Build.VERSION.SDK_INT >= 23) {
                this.mSmallIcon = notification.getSmallIcon();
            }
            if (notification.actions != null && notification.actions.length != 0) {
                for (Notification.Action action : notification.actions) {
                    addAction(Action.Builder.fromAndroidAction(action).build());
                }
            }
            if (Build.VERSION.SDK_INT >= 21) {
                List<Action> invisibleActions = NotificationCompat.getInvisibleActions(notification);
                if (!invisibleActions.isEmpty()) {
                    Iterator<Action> it = invisibleActions.iterator();
                    while (it.hasNext()) {
                        addInvisibleAction(it.next());
                    }
                }
            }
            String[] stringArray = notification.extras.getStringArray(NPStringFog.decode(new byte[]{86, 91, 85, 19, 94, 94, 83, 27, 65, 4, 94, 71, 91, 80}, "751a17", -2401));
            if (stringArray != null && stringArray.length != 0) {
                for (String str : stringArray) {
                    addPerson(str);
                }
            }
            if (Build.VERSION.SDK_INT >= 28 && (parcelableArrayList = notification.extras.getParcelableArrayList(NPStringFog.decode(new byte[]{5, 89, 87, 68, 90, 91, 0, 25, 67, 83, 90, 66, 8, 82, 29, 90, 92, 65, 16}, "d73652", -5.7098374E8f))) != null && !parcelableArrayList.isEmpty()) {
                Iterator it2 = parcelableArrayList.iterator();
                while (it2.hasNext()) {
                    addPerson(Person.fromAndroidPerson((android.app.Person) it2.next()));
                }
            }
            if (Build.VERSION.SDK_INT >= 24 && bundle.containsKey(NPStringFog.decode(new byte[]{7, 91, 85, 66, 88, 15, 2, 27, 82, 88, 69, 9, 8, 90, 92, 85, 67, 3, 20, 118, 94, 69, 89, 18, 34, 90, 70, 94}, "f5107f", true, true))) {
                setChronometerCountDown(bundle.getBoolean(NPStringFog.decode(new byte[]{80, 10, 84, 70, 90, 88, 85, 74, 83, 92, 71, 94, 95, 11, 93, 81, 65, 84, 67, 39, 95, 65, 91, 69, 117, 11, 71, 90}, "1d0451", 3.5178035E8d)));
            }
            if (Build.VERSION.SDK_INT < 26 || !bundle.containsKey(NPStringFog.decode(new byte[]{84, 87, 92, 19, 13, 88, 81, 23, 91, 14, 14, 94, 71, 80, 66, 4, 6}, "598ab1", 2103044080L))) {
                return;
            }
            setColorized(bundle.getBoolean(NPStringFog.decode(new byte[]{80, 86, 5, 71, 14, 94, 85, 22, 2, 90, 13, 88, 67, 81, 27, 80, 5}, "18a5a7", -20936)));
        }

        public Builder(Context context, String str) {
            this.mActions = new ArrayList<>();
            this.mPersonList = new ArrayList<>();
            this.mInvisibleActions = new ArrayList<>();
            this.mShowWhen = true;
            this.mLocalOnly = false;
            this.mColor = 0;
            this.mVisibility = 0;
            this.mBadgeIcon = 0;
            this.mGroupAlertBehavior = 0;
            this.mFgsDeferBehavior = 0;
            Notification notification = new Notification();
            this.mNotification = notification;
            this.mContext = context;
            this.mChannelId = str;
            notification.when = System.currentTimeMillis();
            this.mNotification.audioStreamType = -1;
            this.mPriority = 0;
            this.mPeople = new ArrayList<>();
            this.mAllowSystemGeneratedContextualActions = true;
        }

        private static Bundle getExtrasWithoutDuplicateData(Notification notification, Style style) {
            if (notification.extras == null) {
                return null;
            }
            Bundle bundle = new Bundle(notification.extras);
            bundle.remove(NPStringFog.decode(new byte[]{2, 91, 6, 22, 10, 89, 7, 27, 22, 13, 17, 92, 6}, "c5bde0", -1.883718E9f));
            bundle.remove(NPStringFog.decode(new byte[]{81, 95, 92, 17, 92, 13, 84, 31, 76, 6, 75, 16}, "018c3d", 1.3485078E9f));
            bundle.remove(NPStringFog.decode(new byte[]{82, 91, 84, 66, 90, 93, 87, 27, 89, 94, 83, 91, 103, 80, 72, 68}, "350054", true));
            bundle.remove(NPStringFog.decode(new byte[]{88, 91, 84, 69, 91, 89, 93, 27, 67, 66, 86, 100, 92, 77, 68}, "950740", -15322));
            bundle.remove(NPStringFog.decode(new byte[]{89, 15, 86, 65, 94, 13, 92, 79, 91, 93, 69, 1, 86, 21, 28, 86, 73, 16, 74, 0, 28, 112, 121, 37, 118, 47, 119, 127, 110, 45, 124}, "8a231d", -1.6338276E9f));
            bundle.remove(NPStringFog.decode(new byte[]{83, 11, 7, 75, 88, 93, 86, 75, 10, 87, 67, 81, 92, 17, 77, 92, 79, 64, 64, 4, 77, 122, 127, 117, 124, 43, 38, 117, 104, 115, 96, 42, 54, 105, 104, 125, 118}, "2ec974", 1036810942L));
            bundle.remove(NPStringFog.decode(new byte[]{82, 12, 92, 71, 95, 90, 87, 76, 75, 93, 95, 68, 100, 10, 93, 91}, "3b8503", 26610));
            bundle.remove(NPStringFog.decode(new byte[]{88, 15, 85, 65, 88, 8, 93, 79, 65, 65, 88, 6, 75, 4, 66, 64}, "9a137a", -1.6109676E9f));
            bundle.remove(NPStringFog.decode(new byte[]{88, 94, 92, 66, 88, 15, 93, 30, 72, 66, 88, 1, 75, 85, 75, 67, 122, 7, 65}, "90807f", -102507483L));
            bundle.remove(NPStringFog.decode(new byte[]{84, 86, 86, 68, 10, 11, 81, 22, 66, 68, 10, 5, 71, 93, 65, 69, 44, 12, 81, 93, 70, 83, 23, 15, 92, 86, 83, 66, 0}, "5826eb", false, true));
            bundle.remove(NPStringFog.decode(new byte[]{84, 94, 92, 65, 90, 12, 81, 30, 91, 91, 71, 10, 91, 95, 85, 86, 65, 0, 71, 115, 87, 70, 91, 17, 113, 95, 79, 93}, "50835e", false));
            bundle.remove(NPStringFog.decode(new byte[]{83, 92, 93, 74, 13, 92, 86, 28, 90, 87, 14, 90, 64, 91, 67, 93, 6}, "2298b5", 13350));
            bundle.remove(NPStringFog.decode(new byte[]{2, 88, 5, 65, 14, 12, 7, 24, 17, 86, 14, 21, 15, 83, 79, 95, 8, 22, 23}, "c6a3ae", 1.924327744E9d));
            bundle.remove(NPStringFog.decode(new byte[]{0, 12, 1, 19, 93, 93, 5, 76, 21, 4, 93, 68, 13, 7}, "abea24", 9.607319E8f));
            bundle.remove(NPStringFog.decode(new byte[]{81, 90, 2, 19, 90, 95, 84, 26, 21, 20, 69, 70, 95, 70, 18, 79, 70, 89, 66, 64, 45, 4, 76}, "04fa56", true, true));
            bundle.remove(NPStringFog.decode(new byte[]{82, 91, 86, 22, 89, 11, 87, 27, 65, 17, 70, 18, 92, 71, 70, 74, 81, 16, 92, 64, 66, 47, 83, 27}, "352d6b", true));
            bundle.remove(NPStringFog.decode(new byte[]{0, 15, 84, 22, 95, 80, 5, 79, 67, 17, 64, 73, 14, 19, 68, 74, 89, 74, 38, 19, 95, 17, 64, 106, 20, 12, 93, 5, 66, 64}, "aa0d09", true));
            bundle.remove(NPStringFog.decode(new byte[]{85, 95, 92, 69, 86, 11, 80, 31, 75, 66, 73, 18, 91, 67, 76, 25, 85, 13, 87, 80, 84, 120, 87, 14, 77}, "41879b", false, true));
            bundle.remove(NPStringFog.decode(new byte[]{89, 92, 86, 66, 10, 15, 92, 28, 65, 69, 21, 22, 87, 64, 70, 30, 4, 5, 76, 91, 93, 94, 32, 30, 76, 64, 83, 67}, "8220ef", true));
            Bundle bundle2 = bundle.getBundle(NPStringFog.decode(new byte[]{80, 94, 82, 22, 90, 91, 85, 30, 85, 5, 71, 28, 116, 104, 98, 33, 123, 97, 120, 127, 120, 55}, "106d52", -1.03634714E9f));
            if (bundle2 != null) {
                Bundle bundle3 = new Bundle(bundle2);
                bundle3.remove(NPStringFog.decode(new byte[]{89, 95, 67, 12, 75, 81, 82, 93, 80, 58, 89, 91, 68, 88, 90, 11, 75}, "015e88", 455662899L));
                bundle.putBundle(NPStringFog.decode(new byte[]{85, 11, 5, 69, 9, 89, 80, 75, 2, 86, 20, 30, 113, 61, 53, 114, 40, 99, 125, 42, 47, 100}, "4ea7f0", true), bundle3);
            }
            if (style == null) {
                return bundle;
            }
            style.clearCompatExtraKeys(bundle);
            return bundle;
        }

        protected static CharSequence limitCharSequenceLength(CharSequence charSequence) {
            return (charSequence != null && charSequence.length() > MAX_CHARSEQUENCE_LENGTH) ? charSequence.subSequence(0, MAX_CHARSEQUENCE_LENGTH) : charSequence;
        }

        private Bitmap reduceLargeIconSize(Bitmap bitmap) {
            if (bitmap == null || Build.VERSION.SDK_INT >= 27) {
                return bitmap;
            }
            Resources resources = this.mContext.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_width);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.compat_notification_large_icon_max_height);
            if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
                return bitmap;
            }
            double d = dimensionPixelSize;
            double dMax = Math.max(1, bitmap.getWidth());
            Double.isNaN(d);
            Double.isNaN(dMax);
            double d2 = d / dMax;
            double d3 = dimensionPixelSize2;
            double dMax2 = Math.max(1, bitmap.getHeight());
            Double.isNaN(d3);
            Double.isNaN(dMax2);
            double dMin = Math.min(d2, d3 / dMax2);
            double width = bitmap.getWidth();
            Double.isNaN(width);
            int iCeil = (int) Math.ceil(width * dMin);
            double height = bitmap.getHeight();
            Double.isNaN(height);
            return Bitmap.createScaledBitmap(bitmap, iCeil, (int) Math.ceil(dMin * height), true);
        }

        private void setFlag(int i, boolean z) {
            if (z) {
                this.mNotification.flags |= i;
            } else {
                this.mNotification.flags &= i ^ (-1);
            }
        }

        private boolean useExistingRemoteView() {
            Style style = this.mStyle;
            return style == null || !style.displayCustomViewInline();
        }

        public Builder addAction(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.mActions.add(new Action(i, charSequence, pendingIntent));
            return this;
        }

        public Builder addAction(Action action) {
            if (action != null) {
                this.mActions.add(action);
            }
            return this;
        }

        public Builder addExtras(Bundle bundle) {
            if (bundle != null) {
                Bundle bundle2 = this.mExtras;
                if (bundle2 == null) {
                    this.mExtras = new Bundle(bundle);
                } else {
                    bundle2.putAll(bundle);
                }
            }
            return this;
        }

        public Builder addInvisibleAction(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.mInvisibleActions.add(new Action(i, charSequence, pendingIntent));
            return this;
        }

        public Builder addInvisibleAction(Action action) {
            if (action != null) {
                this.mInvisibleActions.add(action);
            }
            return this;
        }

        public Builder addPerson(Person person) {
            if (person != null) {
                this.mPersonList.add(person);
            }
            return this;
        }

        @Deprecated
        public Builder addPerson(String str) {
            if (str != null && !str.isEmpty()) {
                this.mPeople.add(str);
            }
            return this;
        }

        public Notification build() {
            return new NotificationCompatBuilder(this).build();
        }

        public Builder clearActions() {
            this.mActions.clear();
            return this;
        }

        public Builder clearInvisibleActions() {
            this.mInvisibleActions.clear();
            Bundle bundle = this.mExtras.getBundle(NPStringFog.decode(new byte[]{83, 88, 85, 20, 13, 91, 86, 24, 82, 7, 16, 28, 119, 110, 101, 35, 44, 97, 123, 121, 127, 53}, "261fb2", 192554255L));
            if (bundle != null) {
                Bundle bundle2 = new Bundle(bundle);
                bundle2.remove(NPStringFog.decode(new byte[]{92, 87, 67, 93, 65, 13, 87, 85, 80, 107, 83, 7, 65, 80, 90, 90, 65}, "59542d", 1441729660L));
                this.mExtras.putBundle(NPStringFog.decode(new byte[]{0, 12, 93, 68, 11, 80, 5, 76, 90, 87, 22, 23, 36, 58, 109, 115, 42, 106, 40, 45, 119, 101}, "ab96d9", false, false), bundle2);
            }
            return this;
        }

        public Builder clearPeople() {
            this.mPersonList.clear();
            this.mPeople.clear();
            return this;
        }

        public RemoteViews createBigContentView() {
            RemoteViews remoteViewsMakeBigContentView;
            if (Build.VERSION.SDK_INT < 16) {
                return null;
            }
            if (this.mBigContentView != null && useExistingRemoteView()) {
                return this.mBigContentView;
            }
            NotificationCompatBuilder notificationCompatBuilder = new NotificationCompatBuilder(this);
            Style style = this.mStyle;
            if (style != null && (remoteViewsMakeBigContentView = style.makeBigContentView(notificationCompatBuilder)) != null) {
                return remoteViewsMakeBigContentView;
            }
            Notification notificationBuild = notificationCompatBuilder.build();
            return Build.VERSION.SDK_INT >= 24 ? Notification.Builder.recoverBuilder(this.mContext, notificationBuild).createBigContentView() : notificationBuild.bigContentView;
        }

        public RemoteViews createContentView() {
            RemoteViews remoteViewsMakeContentView;
            if (this.mContentView != null && useExistingRemoteView()) {
                return this.mContentView;
            }
            NotificationCompatBuilder notificationCompatBuilder = new NotificationCompatBuilder(this);
            Style style = this.mStyle;
            if (style != null && (remoteViewsMakeContentView = style.makeContentView(notificationCompatBuilder)) != null) {
                return remoteViewsMakeContentView;
            }
            Notification notificationBuild = notificationCompatBuilder.build();
            return Build.VERSION.SDK_INT >= 24 ? Notification.Builder.recoverBuilder(this.mContext, notificationBuild).createContentView() : notificationBuild.contentView;
        }

        public RemoteViews createHeadsUpContentView() {
            RemoteViews remoteViewsMakeHeadsUpContentView;
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            if (this.mHeadsUpContentView != null && useExistingRemoteView()) {
                return this.mHeadsUpContentView;
            }
            NotificationCompatBuilder notificationCompatBuilder = new NotificationCompatBuilder(this);
            Style style = this.mStyle;
            if (style != null && (remoteViewsMakeHeadsUpContentView = style.makeHeadsUpContentView(notificationCompatBuilder)) != null) {
                return remoteViewsMakeHeadsUpContentView;
            }
            Notification notificationBuild = notificationCompatBuilder.build();
            return Build.VERSION.SDK_INT >= 24 ? Notification.Builder.recoverBuilder(this.mContext, notificationBuild).createHeadsUpContentView() : notificationBuild.headsUpContentView;
        }

        public Builder extend(Extender extender) {
            extender.extend(this);
            return this;
        }

        public RemoteViews getBigContentView() {
            return this.mBigContentView;
        }

        public BubbleMetadata getBubbleMetadata() {
            return this.mBubbleMetadata;
        }

        public int getColor() {
            return this.mColor;
        }

        public RemoteViews getContentView() {
            return this.mContentView;
        }

        public Bundle getExtras() {
            if (this.mExtras == null) {
                this.mExtras = new Bundle();
            }
            return this.mExtras;
        }

        public int getForegroundServiceBehavior() {
            return this.mFgsDeferBehavior;
        }

        public RemoteViews getHeadsUpContentView() {
            return this.mHeadsUpContentView;
        }

        @Deprecated
        public Notification getNotification() {
            return build();
        }

        public int getPriority() {
            return this.mPriority;
        }

        public long getWhenIfShowing() {
            if (this.mShowWhen) {
                return this.mNotification.when;
            }
            return 0L;
        }

        public Builder setAllowSystemGeneratedContextualActions(boolean z) {
            this.mAllowSystemGeneratedContextualActions = z;
            return this;
        }

        public Builder setAutoCancel(boolean z) {
            setFlag(16, z);
            return this;
        }

        public Builder setBadgeIconType(int i) {
            this.mBadgeIcon = i;
            return this;
        }

        public Builder setBubbleMetadata(BubbleMetadata bubbleMetadata) {
            this.mBubbleMetadata = bubbleMetadata;
            return this;
        }

        public Builder setCategory(String str) {
            this.mCategory = str;
            return this;
        }

        public Builder setChannelId(String str) {
            this.mChannelId = str;
            return this;
        }

        public Builder setChronometerCountDown(boolean z) {
            this.mChronometerCountDown = z;
            getExtras().putBoolean(NPStringFog.decode(new byte[]{84, 87, 0, 16, 13, 80, 81, 23, 7, 10, 16, 86, 91, 86, 9, 7, 22, 92, 71, 122, 11, 23, 12, 77, 113, 86, 19, 12}, "59dbb9", -2.043812704E9d), z);
            return this;
        }

        public Builder setColor(int i) {
            this.mColor = i;
            return this;
        }

        public Builder setColorized(boolean z) {
            this.mColorized = z;
            this.mColorizedSet = true;
            return this;
        }

        public Builder setContent(RemoteViews remoteViews) {
            this.mNotification.contentView = remoteViews;
            return this;
        }

        public Builder setContentInfo(CharSequence charSequence) {
            this.mContentInfo = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setContentIntent(PendingIntent pendingIntent) {
            this.mContentIntent = pendingIntent;
            return this;
        }

        public Builder setContentText(CharSequence charSequence) {
            this.mContentText = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setContentTitle(CharSequence charSequence) {
            this.mContentTitle = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setCustomBigContentView(RemoteViews remoteViews) {
            this.mBigContentView = remoteViews;
            return this;
        }

        public Builder setCustomContentView(RemoteViews remoteViews) {
            this.mContentView = remoteViews;
            return this;
        }

        public Builder setCustomHeadsUpContentView(RemoteViews remoteViews) {
            this.mHeadsUpContentView = remoteViews;
            return this;
        }

        public Builder setDefaults(int i) {
            this.mNotification.defaults = i;
            if ((i & 4) != 0) {
                this.mNotification.flags |= 1;
            }
            return this;
        }

        public Builder setDeleteIntent(PendingIntent pendingIntent) {
            this.mNotification.deleteIntent = pendingIntent;
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.mExtras = bundle;
            return this;
        }

        public Builder setForegroundServiceBehavior(int i) {
            this.mFgsDeferBehavior = i;
            return this;
        }

        public Builder setFullScreenIntent(PendingIntent pendingIntent, boolean z) {
            this.mFullScreenIntent = pendingIntent;
            setFlag(128, z);
            return this;
        }

        public Builder setGroup(String str) {
            this.mGroupKey = str;
            return this;
        }

        public Builder setGroupAlertBehavior(int i) {
            this.mGroupAlertBehavior = i;
            return this;
        }

        public Builder setGroupSummary(boolean z) {
            this.mGroupSummary = z;
            return this;
        }

        public Builder setLargeIcon(Bitmap bitmap) {
            this.mLargeIcon = reduceLargeIconSize(bitmap);
            return this;
        }

        public Builder setLights(int i, int i2, int i3) {
            this.mNotification.ledARGB = i;
            this.mNotification.ledOnMS = i2;
            this.mNotification.ledOffMS = i3;
            boolean z = (this.mNotification.ledOnMS == 0 || this.mNotification.ledOffMS == 0) ? false : true;
            Notification notification = this.mNotification;
            notification.flags = (notification.flags & (-2)) | (z ? 1 : 0);
            return this;
        }

        public Builder setLocalOnly(boolean z) {
            this.mLocalOnly = z;
            return this;
        }

        public Builder setLocusId(LocusIdCompat locusIdCompat) {
            this.mLocusId = locusIdCompat;
            return this;
        }

        @Deprecated
        public Builder setNotificationSilent() {
            this.mSilent = true;
            return this;
        }

        public Builder setNumber(int i) {
            this.mNumber = i;
            return this;
        }

        public Builder setOngoing(boolean z) {
            setFlag(2, z);
            return this;
        }

        public Builder setOnlyAlertOnce(boolean z) {
            setFlag(8, z);
            return this;
        }

        public Builder setPriority(int i) {
            this.mPriority = i;
            return this;
        }

        public Builder setProgress(int i, int i2, boolean z) {
            this.mProgressMax = i;
            this.mProgress = i2;
            this.mProgressIndeterminate = z;
            return this;
        }

        public Builder setPublicVersion(Notification notification) {
            this.mPublicVersion = notification;
            return this;
        }

        public Builder setRemoteInputHistory(CharSequence[] charSequenceArr) {
            this.mRemoteInputHistory = charSequenceArr;
            return this;
        }

        public Builder setSettingsText(CharSequence charSequence) {
            this.mSettingsText = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setShortcutId(String str) {
            this.mShortcutId = str;
            return this;
        }

        public Builder setShortcutInfo(ShortcutInfoCompat shortcutInfoCompat) {
            if (shortcutInfoCompat != null) {
                this.mShortcutId = shortcutInfoCompat.getId();
                if (this.mLocusId == null) {
                    if (shortcutInfoCompat.getLocusId() != null) {
                        this.mLocusId = shortcutInfoCompat.getLocusId();
                    } else if (shortcutInfoCompat.getId() != null) {
                        this.mLocusId = new LocusIdCompat(shortcutInfoCompat.getId());
                    }
                }
                if (this.mContentTitle == null) {
                    setContentTitle(shortcutInfoCompat.getShortLabel());
                }
            }
            return this;
        }

        public Builder setShowWhen(boolean z) {
            this.mShowWhen = z;
            return this;
        }

        public Builder setSilent(boolean z) {
            this.mSilent = z;
            return this;
        }

        public Builder setSmallIcon(int i) {
            this.mNotification.icon = i;
            return this;
        }

        public Builder setSmallIcon(int i, int i2) {
            this.mNotification.icon = i;
            this.mNotification.iconLevel = i2;
            return this;
        }

        public Builder setSmallIcon(IconCompat iconCompat) {
            this.mSmallIcon = iconCompat.toIcon(this.mContext);
            return this;
        }

        public Builder setSortKey(String str) {
            this.mSortKey = str;
            return this;
        }

        public Builder setSound(Uri uri) {
            this.mNotification.sound = uri;
            this.mNotification.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                this.mNotification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        public Builder setSound(Uri uri, int i) {
            this.mNotification.sound = uri;
            this.mNotification.audioStreamType = i;
            if (Build.VERSION.SDK_INT >= 21) {
                this.mNotification.audioAttributes = new AudioAttributes.Builder().setContentType(4).setLegacyStreamType(i).build();
            }
            return this;
        }

        public Builder setStyle(Style style) {
            if (this.mStyle != style) {
                this.mStyle = style;
                if (style != null) {
                    style.setBuilder(this);
                }
            }
            return this;
        }

        public Builder setSubText(CharSequence charSequence) {
            this.mSubText = limitCharSequenceLength(charSequence);
            return this;
        }

        public Builder setTicker(CharSequence charSequence) {
            this.mNotification.tickerText = limitCharSequenceLength(charSequence);
            return this;
        }

        @Deprecated
        public Builder setTicker(CharSequence charSequence, RemoteViews remoteViews) {
            this.mNotification.tickerText = limitCharSequenceLength(charSequence);
            this.mTickerView = remoteViews;
            return this;
        }

        public Builder setTimeoutAfter(long j) {
            this.mTimeout = j;
            return this;
        }

        public Builder setUsesChronometer(boolean z) {
            this.mUseChronometer = z;
            return this;
        }

        public Builder setVibrate(long[] jArr) {
            this.mNotification.vibrate = jArr;
            return this;
        }

        public Builder setVisibility(int i) {
            this.mVisibility = i;
            return this;
        }

        public Builder setWhen(long j) {
            this.mNotification.when = j;
            return this;
        }
    }

    public static final class CarExtender implements Extender {
        static final String EXTRA_CAR_EXTENDER = NPStringFog.decode(new byte[]{83, 87, 84, 19, 95, 80, 86, 23, 83, 0, 66, 23, 119, 97, 100, 36, 126, 106, 123, 118, 126, 50}, "290a09", -1026552928L);
        private static final String EXTRA_COLOR = NPStringFog.decode(new byte[]{84, 67, 73, 61, 91, 94, 89, 92, 75}, "539b81", true, true);
        private static final String EXTRA_CONVERSATION = NPStringFog.decode(new byte[]{1, 80, 22, 107, 90, 95, 12, 71, 1, 70, 74, 81, 22, 88, 11, 90}, "b1d490", true);
        static final String EXTRA_INVISIBLE_ACTIONS = NPStringFog.decode(new byte[]{81, 86, 66, 88, 64, 11, 90, 84, 81, 110, 82, 1, 76, 81, 91, 95, 64}, "88413b", -1454070976L);
        private static final String EXTRA_LARGE_ICON = NPStringFog.decode(new byte[]{92, 80, 74, 95, 87, 108, 89, 82, 87, 86}, "018823", 1782748942L);
        private static final String KEY_AUTHOR = NPStringFog.decode(new byte[]{84, 19, 21, 91, 87, 66}, "5fa380", false, true);
        private static final String KEY_MESSAGES = NPStringFog.decode(new byte[]{88, 4, 65, 21, 5, 83, 80, 18}, "5a2fd4", 22549);
        private static final String KEY_ON_READ = NPStringFog.decode(new byte[]{90, 12, 60, 68, 6, 3, 81}, "5bc6cb", 2443);
        private static final String KEY_ON_REPLY = NPStringFog.decode(new byte[]{11, 8, 111, 20, 87, 68, 8, 31}, "df0f24", false, false);
        private static final String KEY_PARTICIPANTS = NPStringFog.decode(new byte[]{72, 87, 68, 66, 12, 5, 81, 70, 87, 88, 17, 21}, "8666ef", false, false);
        private static final String KEY_REMOTE_INPUT = NPStringFog.decode(new byte[]{23, 82, 9, 92, 64, 6, 58, 94, 10, 67, 65, 23}, "e7d34c", false);
        private static final String KEY_TEXT = NPStringFog.decode(new byte[]{18, 4, 79, 70}, "fa7225", 1.455862262E9d);
        private static final String KEY_TIMESTAMP = NPStringFog.decode(new byte[]{69, 93, 90, 82, 68, 76, 80, 89, 71}, "147778", 1.164712707E9d);
        private int mColor;
        private Bitmap mLargeIcon;
        private UnreadConversation mUnreadConversation;

        @Deprecated
        public static class UnreadConversation {
            private final long mLatestTimestamp;
            private final String[] mMessages;
            private final String[] mParticipants;
            private final PendingIntent mReadPendingIntent;
            private final RemoteInput mRemoteInput;
            private final PendingIntent mReplyPendingIntent;

            public static class Builder {
                private long mLatestTimestamp;
                private final List<String> mMessages = new ArrayList();
                private final String mParticipant;
                private PendingIntent mReadPendingIntent;
                private RemoteInput mRemoteInput;
                private PendingIntent mReplyPendingIntent;

                public Builder(String str) {
                    this.mParticipant = str;
                }

                public Builder addMessage(String str) {
                    if (str != null) {
                        this.mMessages.add(str);
                    }
                    return this;
                }

                public UnreadConversation build() {
                    List<String> list = this.mMessages;
                    return new UnreadConversation((String[]) list.toArray(new String[list.size()]), this.mRemoteInput, this.mReplyPendingIntent, this.mReadPendingIntent, new String[]{this.mParticipant}, this.mLatestTimestamp);
                }

                public Builder setLatestTimestamp(long j) {
                    this.mLatestTimestamp = j;
                    return this;
                }

                public Builder setReadPendingIntent(PendingIntent pendingIntent) {
                    this.mReadPendingIntent = pendingIntent;
                    return this;
                }

                public Builder setReplyAction(PendingIntent pendingIntent, RemoteInput remoteInput) {
                    this.mRemoteInput = remoteInput;
                    this.mReplyPendingIntent = pendingIntent;
                    return this;
                }
            }

            UnreadConversation(String[] strArr, RemoteInput remoteInput, PendingIntent pendingIntent, PendingIntent pendingIntent2, String[] strArr2, long j) {
                this.mMessages = strArr;
                this.mRemoteInput = remoteInput;
                this.mReadPendingIntent = pendingIntent2;
                this.mReplyPendingIntent = pendingIntent;
                this.mParticipants = strArr2;
                this.mLatestTimestamp = j;
            }

            public long getLatestTimestamp() {
                return this.mLatestTimestamp;
            }

            public String[] getMessages() {
                return this.mMessages;
            }

            public String getParticipant() {
                String[] strArr = this.mParticipants;
                if (strArr.length > 0) {
                    return strArr[0];
                }
                return null;
            }

            public String[] getParticipants() {
                return this.mParticipants;
            }

            public PendingIntent getReadPendingIntent() {
                return this.mReadPendingIntent;
            }

            public RemoteInput getRemoteInput() {
                return this.mRemoteInput;
            }

            public PendingIntent getReplyPendingIntent() {
                return this.mReplyPendingIntent;
            }
        }

        public CarExtender() {
            this.mColor = 0;
        }

        public CarExtender(Notification notification) {
            this.mColor = 0;
            if (Build.VERSION.SDK_INT < 21) {
                return;
            }
            Bundle bundle = NotificationCompat.getExtras(notification) == null ? null : NotificationCompat.getExtras(notification).getBundle(NPStringFog.decode(new byte[]{86, 8, 87, 67, 13, 81, 83, 72, 80, 80, 16, 22, 114, 62, 103, 116, 44, 107, 126, 41, 125, 98}, "7f31b8", false, false));
            if (bundle != null) {
                this.mLargeIcon = (Bitmap) bundle.getParcelable(NPStringFog.decode(new byte[]{94, 80, 23, 94, 80, 59, 91, 82, 10, 87}, "21e95d", false, false));
                this.mColor = bundle.getInt(NPStringFog.decode(new byte[]{5, 18, 68, 59, 83, 90, 8, 13, 70}, "db4d05", false), 0);
                this.mUnreadConversation = getUnreadConversationFromBundle(bundle.getBundle(NPStringFog.decode(new byte[]{0, 5, 20, 104, 0, 93, 13, 18, 3, 69, 16, 83, 23, 13, 9, 89}, "cdf7c2", 1770497456L)));
            }
        }

        private static Bundle getBundleForUnreadConversation(UnreadConversation unreadConversation) {
            Bundle bundle = new Bundle();
            String str = null;
            if (unreadConversation.getParticipants() != null && unreadConversation.getParticipants().length > 1) {
                str = unreadConversation.getParticipants()[0];
            }
            Parcelable[] parcelableArr = new Parcelable[unreadConversation.getMessages().length];
            for (int i = 0; i < parcelableArr.length; i++) {
                Bundle bundle2 = new Bundle();
                bundle2.putString(KEY_TEXT, unreadConversation.getMessages()[i]);
                bundle2.putString(KEY_AUTHOR, str);
                parcelableArr[i] = bundle2;
            }
            bundle.putParcelableArray(KEY_MESSAGES, parcelableArr);
            RemoteInput remoteInput = unreadConversation.getRemoteInput();
            if (remoteInput != null) {
                bundle.putParcelable(KEY_REMOTE_INPUT, new RemoteInput.Builder(remoteInput.getResultKey()).setLabel(remoteInput.getLabel()).setChoices(remoteInput.getChoices()).setAllowFreeFormInput(remoteInput.getAllowFreeFormInput()).addExtras(remoteInput.getExtras()).build());
            }
            bundle.putParcelable(KEY_ON_REPLY, unreadConversation.getReplyPendingIntent());
            bundle.putParcelable(KEY_ON_READ, unreadConversation.getReadPendingIntent());
            bundle.putStringArray(KEY_PARTICIPANTS, unreadConversation.getParticipants());
            bundle.putLong(KEY_TIMESTAMP, unreadConversation.getLatestTimestamp());
            return bundle;
        }

        private static UnreadConversation getUnreadConversationFromBundle(Bundle bundle) {
            String[] strArr;
            RemoteInput remoteInput;
            boolean z;
            if (bundle == null) {
                return null;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray(KEY_MESSAGES);
            if (parcelableArray != null) {
                String[] strArr2 = new String[parcelableArray.length];
                int i = 0;
                while (true) {
                    if (i >= strArr2.length) {
                        z = true;
                        break;
                    }
                    if (!(parcelableArray[i] instanceof Bundle)) {
                        z = false;
                        break;
                    }
                    strArr2[i] = ((Bundle) parcelableArray[i]).getString(KEY_TEXT);
                    if (strArr2[i] == null) {
                        z = false;
                        break;
                    }
                    i++;
                }
                if (!z) {
                    return null;
                }
                strArr = strArr2;
            } else {
                strArr = null;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable(KEY_ON_READ);
            PendingIntent pendingIntent2 = (PendingIntent) bundle.getParcelable(KEY_ON_REPLY);
            android.app.RemoteInput remoteInput2 = (android.app.RemoteInput) bundle.getParcelable(KEY_REMOTE_INPUT);
            String[] stringArray = bundle.getStringArray(KEY_PARTICIPANTS);
            if (stringArray == null || stringArray.length != 1) {
                return null;
            }
            if (remoteInput2 != null) {
                remoteInput = new RemoteInput(remoteInput2.getResultKey(), remoteInput2.getLabel(), remoteInput2.getChoices(), remoteInput2.getAllowFreeFormInput(), Build.VERSION.SDK_INT >= 29 ? remoteInput2.getEditChoicesBeforeSending() : 0, remoteInput2.getExtras(), null);
            } else {
                remoteInput = null;
            }
            return new UnreadConversation(strArr, remoteInput, pendingIntent2, pendingIntent, stringArray, bundle.getLong(KEY_TIMESTAMP));
        }

        @Override // androidx.core.app.NotificationCompat.Extender
        public Builder extend(Builder builder) {
            if (Build.VERSION.SDK_INT >= 21) {
                Bundle bundle = new Bundle();
                Bitmap bitmap = this.mLargeIcon;
                if (bitmap != null) {
                    bundle.putParcelable(EXTRA_LARGE_ICON, bitmap);
                }
                int i = this.mColor;
                if (i != 0) {
                    bundle.putInt(EXTRA_COLOR, i);
                }
                UnreadConversation unreadConversation = this.mUnreadConversation;
                if (unreadConversation != null) {
                    bundle.putBundle(EXTRA_CONVERSATION, getBundleForUnreadConversation(unreadConversation));
                }
                builder.getExtras().putBundle(EXTRA_CAR_EXTENDER, bundle);
            }
            return builder;
        }

        public int getColor() {
            return this.mColor;
        }

        public Bitmap getLargeIcon() {
            return this.mLargeIcon;
        }

        @Deprecated
        public UnreadConversation getUnreadConversation() {
            return this.mUnreadConversation;
        }

        public CarExtender setColor(int i) {
            this.mColor = i;
            return this;
        }

        public CarExtender setLargeIcon(Bitmap bitmap) {
            this.mLargeIcon = bitmap;
            return this;
        }

        @Deprecated
        public CarExtender setUnreadConversation(UnreadConversation unreadConversation) {
            this.mUnreadConversation = unreadConversation;
            return this;
        }
    }

    public static class DecoratedCustomViewStyle extends Style {
        private static final int MAX_ACTION_BUTTONS = 3;
        private static final String TEMPLATE_CLASS_NAME = NPStringFog.decode(new byte[]{84, 91, 6, 74, 90, 89, 81, 77, 76, 91, 90, 66, 80, 27, 3, 72, 69, 30, 123, 90, 22, 81, 83, 89, 86, 84, 22, 81, 90, 94, 118, 90, 15, 72, 84, 68, 17, 113, 7, 91, 90, 66, 84, 65, 7, 92, 118, 69, 70, 65, 13, 85, 99, 89, 80, 66, 49, 76, 76, 92, 80}, "55b850", -1.360681E9f);

        private RemoteViews createRemoteViews(RemoteViews remoteViews, boolean z) {
            boolean z2;
            int iMin;
            RemoteViews remoteViewsApplyStandardTemplate = applyStandardTemplate(true, R.layout.notification_template_custom_big, false);
            remoteViewsApplyStandardTemplate.removeAllViews(R.id.actions);
            List<Action> nonContextualActions = getNonContextualActions(this.mBuilder.mActions);
            if (!z || nonContextualActions == null || (iMin = Math.min(nonContextualActions.size(), 3)) <= 0) {
                z2 = false;
            } else {
                for (int i = 0; i < iMin; i++) {
                    remoteViewsApplyStandardTemplate.addView(R.id.actions, generateActionButton(nonContextualActions.get(i)));
                }
                z2 = true;
            }
            int i2 = z2 ? 0 : 8;
            remoteViewsApplyStandardTemplate.setViewVisibility(R.id.actions, i2);
            remoteViewsApplyStandardTemplate.setViewVisibility(R.id.action_divider, i2);
            buildIntoRemoteViews(remoteViewsApplyStandardTemplate, remoteViews);
            return remoteViewsApplyStandardTemplate;
        }

        private RemoteViews generateActionButton(Action action) {
            boolean z = action.actionIntent == null;
            RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), z ? R.layout.notification_action_tombstone : R.layout.notification_action);
            IconCompat iconCompat = action.getIconCompat();
            if (iconCompat != null) {
                remoteViews.setImageViewBitmap(R.id.action_image, createColoredBitmap(iconCompat, this.mBuilder.mContext.getResources().getColor(R.color.notification_action_color_filter)));
            }
            remoteViews.setTextViewText(R.id.action_text, action.title);
            if (!z) {
                remoteViews.setOnClickPendingIntent(R.id.action_container, action.actionIntent);
            }
            if (Build.VERSION.SDK_INT >= 15) {
                remoteViews.setContentDescription(R.id.action_container, action.title);
            }
            return remoteViews;
        }

        private static List<Action> getNonContextualActions(List<Action> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (Action action : list) {
                if (!action.isContextual()) {
                    arrayList.add(action);
                }
            }
            return arrayList;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                notificationBuilderWithBuilderAccessor.getBuilder().setStyle(new Notification.DecoratedCustomViewStyle());
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public boolean displayCustomViewInline() {
            return true;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected String getClassName() {
            return TEMPLATE_CLASS_NAME;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews bigContentView = this.mBuilder.getBigContentView();
            if (bigContentView == null) {
                bigContentView = this.mBuilder.getContentView();
            }
            if (bigContentView != null) {
                return createRemoteViews(bigContentView, true);
            }
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT < 24 && this.mBuilder.getContentView() != null) {
                return createRemoteViews(this.mBuilder.getContentView(), false);
            }
            return null;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews headsUpContentView = this.mBuilder.getHeadsUpContentView();
            RemoteViews contentView = headsUpContentView != null ? headsUpContentView : this.mBuilder.getContentView();
            if (headsUpContentView != null) {
                return createRemoteViews(contentView, true);
            }
            return null;
        }
    }

    public interface Extender {
        Builder extend(Builder builder);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface GroupAlertBehavior {
    }

    public static class InboxStyle extends Style {
        private static final String TEMPLATE_CLASS_NAME = NPStringFog.decode(new byte[]{7, 92, 6, 19, 13, 11, 2, 74, 76, 2, 13, 16, 3, 28, 3, 17, 18, 76, 40, 93, 22, 8, 4, 11, 5, 83, 22, 8, 13, 12, 37, 93, 15, 17, 3, 22, 66, 123, 12, 3, 13, 26, 53, 70, 27, 13, 7}, "f2babb", 1.0993633E9f);
        private ArrayList<CharSequence> mTexts = new ArrayList<>();

        public InboxStyle() {
        }

        public InboxStyle(Builder builder) {
            setBuilder(builder);
        }

        public InboxStyle addLine(CharSequence charSequence) {
            if (charSequence != null) {
                this.mTexts.add(Builder.limitCharSequenceLength(charSequence));
            }
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(this.mBigContentTitle);
                if (this.mSummaryTextSet) {
                    bigContentTitle.setSummaryText(this.mSummaryText);
                }
                Iterator<CharSequence> it = this.mTexts.iterator();
                while (it.hasNext()) {
                    bigContentTitle.addLine(it.next());
                }
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected void clearCompatExtraKeys(Bundle bundle) {
            super.clearCompatExtraKeys(bundle);
            bundle.remove(NPStringFog.decode(new byte[]{84, 10, 80, 71, 87, 8, 81, 74, 64, 80, 64, 21, 121, 13, 90, 80, 75}, "5d458a", -1936163.0d));
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected String getClassName() {
            return TEMPLATE_CLASS_NAME;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected void restoreFromCompatExtras(Bundle bundle) {
            super.restoreFromCompatExtras(bundle);
            this.mTexts.clear();
            if (bundle.containsKey(NPStringFog.decode(new byte[]{3, 13, 5, 16, 10, 80, 6, 77, 21, 7, 29, 77, 46, 10, 15, 7, 22}, "bcabe9", 1.2566472E9f))) {
                Collections.addAll(this.mTexts, bundle.getCharSequenceArray(NPStringFog.decode(new byte[]{87, 13, 6, 17, 9, 10, 82, 77, 22, 6, 30, 23, 122, 10, 12, 6, 21}, "6cbcfc", false, false)));
            }
        }

        public InboxStyle setBigContentTitle(CharSequence charSequence) {
            this.mBigContentTitle = Builder.limitCharSequenceLength(charSequence);
            return this;
        }

        public InboxStyle setSummaryText(CharSequence charSequence) {
            this.mSummaryText = Builder.limitCharSequenceLength(charSequence);
            this.mSummaryTextSet = true;
            return this;
        }
    }

    public static class MessagingStyle extends Style {
        public static final int MAXIMUM_RETAINED_MESSAGES = 25;
        private static final String TEMPLATE_CLASS_NAME = NPStringFog.decode(new byte[]{86, 8, 87, 22, 88, 81, 83, 30, 29, 7, 88, 74, 82, 72, 82, 20, 71, 22, 121, 9, 71, 13, 81, 81, 84, 7, 71, 13, 88, 86, 116, 9, 94, 20, 86, 76, 19, 43, 86, 23, 68, 89, 80, 15, 93, 3, 100, 76, 78, 10, 86}, "7f3d78", 8.211053E8f);
        private CharSequence mConversationTitle;
        private Boolean mIsGroupConversation;
        private Person mUser;
        private final List<Message> mMessages = new ArrayList();
        private final List<Message> mHistoricMessages = new ArrayList();

        public static final class Message {
            static final String KEY_DATA_MIME_TYPE = NPStringFog.decode(new byte[]{65, 76, 17, 93}, "55a819", 5.25243896E8d);
            static final String KEY_DATA_URI = NPStringFog.decode(new byte[]{66, 19, 93}, "7a4e09", false);
            static final String KEY_EXTRAS_BUNDLE = NPStringFog.decode(new byte[]{92, 28, 66, 19, 0, 22}, "9d6aae", false);
            static final String KEY_NOTIFICATION_PERSON = NPStringFog.decode(new byte[]{22, 85, 95, 82, 80, 16, 58, 64, 84, 68, 70, 13, 11}, "e0165b", -670854566L);
            static final String KEY_PERSON = NPStringFog.decode(new byte[]{22, 83, 65, 67, 94, 90}, "f63014", 1.381684308E9d);
            static final String KEY_SENDER = NPStringFog.decode(new byte[]{69, 81, 11, 81, 7, 20}, "64e5bf", false);
            static final String KEY_TEXT = NPStringFog.decode(new byte[]{70, 7, 64, 67}, "2b870c", 1.3255785E9f);
            static final String KEY_TIMESTAMP = NPStringFog.decode(new byte[]{67, 95, 92, 4}, "761a16", 2.7130957E8f);
            private String mDataMimeType;
            private Uri mDataUri;
            private Bundle mExtras;
            private final Person mPerson;
            private final CharSequence mText;
            private final long mTimestamp;

            public Message(CharSequence charSequence, long j, Person person) {
                this.mExtras = new Bundle();
                this.mText = charSequence;
                this.mTimestamp = j;
                this.mPerson = person;
            }

            @Deprecated
            public Message(CharSequence charSequence, long j, CharSequence charSequence2) {
                this(charSequence, j, new Person.Builder().setName(charSequence2).build());
            }

            static Bundle[] getBundleArrayForMessages(List<Message> list) {
                Bundle[] bundleArr = new Bundle[list.size()];
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    bundleArr[i] = list.get(i).toBundle();
                }
                return bundleArr;
            }

            static Message getMessageFromBundle(Bundle bundle) {
                try {
                    if (!bundle.containsKey(KEY_TEXT) || !bundle.containsKey(KEY_TIMESTAMP)) {
                        return null;
                    }
                    Message message = new Message(bundle.getCharSequence(KEY_TEXT), bundle.getLong(KEY_TIMESTAMP), bundle.containsKey(KEY_PERSON) ? Person.fromBundle(bundle.getBundle(KEY_PERSON)) : (!bundle.containsKey(KEY_NOTIFICATION_PERSON) || Build.VERSION.SDK_INT < 28) ? bundle.containsKey(KEY_SENDER) ? new Person.Builder().setName(bundle.getCharSequence(KEY_SENDER)).build() : null : Person.fromAndroidPerson((android.app.Person) bundle.getParcelable(KEY_NOTIFICATION_PERSON)));
                    if (bundle.containsKey(KEY_DATA_MIME_TYPE) && bundle.containsKey(KEY_DATA_URI)) {
                        message.setData(bundle.getString(KEY_DATA_MIME_TYPE), (Uri) bundle.getParcelable(KEY_DATA_URI));
                    }
                    if (bundle.containsKey(KEY_EXTRAS_BUNDLE)) {
                        message.getExtras().putAll(bundle.getBundle(KEY_EXTRAS_BUNDLE));
                    }
                    return message;
                } catch (ClassCastException e) {
                    return null;
                }
            }

            static List<Message> getMessagesFromBundleArray(Parcelable[] parcelableArr) {
                Message messageFromBundle;
                ArrayList arrayList = new ArrayList(parcelableArr.length);
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= parcelableArr.length) {
                        return arrayList;
                    }
                    if ((parcelableArr[i2] instanceof Bundle) && (messageFromBundle = getMessageFromBundle((Bundle) parcelableArr[i2])) != null) {
                        arrayList.add(messageFromBundle);
                    }
                    i = i2 + 1;
                }
            }

            private Bundle toBundle() {
                Bundle bundle = new Bundle();
                CharSequence charSequence = this.mText;
                if (charSequence != null) {
                    bundle.putCharSequence(KEY_TEXT, charSequence);
                }
                bundle.putLong(KEY_TIMESTAMP, this.mTimestamp);
                Person person = this.mPerson;
                if (person != null) {
                    bundle.putCharSequence(KEY_SENDER, person.getName());
                    if (Build.VERSION.SDK_INT >= 28) {
                        bundle.putParcelable(KEY_NOTIFICATION_PERSON, this.mPerson.toAndroidPerson());
                    } else {
                        bundle.putBundle(KEY_PERSON, this.mPerson.toBundle());
                    }
                }
                String str = this.mDataMimeType;
                if (str != null) {
                    bundle.putString(KEY_DATA_MIME_TYPE, str);
                }
                Uri uri = this.mDataUri;
                if (uri != null) {
                    bundle.putParcelable(KEY_DATA_URI, uri);
                }
                Bundle bundle2 = this.mExtras;
                if (bundle2 != null) {
                    bundle.putBundle(KEY_EXTRAS_BUNDLE, bundle2);
                }
                return bundle;
            }

            public String getDataMimeType() {
                return this.mDataMimeType;
            }

            public Uri getDataUri() {
                return this.mDataUri;
            }

            public Bundle getExtras() {
                return this.mExtras;
            }

            public Person getPerson() {
                return this.mPerson;
            }

            @Deprecated
            public CharSequence getSender() {
                Person person = this.mPerson;
                if (person == null) {
                    return null;
                }
                return person.getName();
            }

            public CharSequence getText() {
                return this.mText;
            }

            public long getTimestamp() {
                return this.mTimestamp;
            }

            public Message setData(String str, Uri uri) {
                this.mDataMimeType = str;
                this.mDataUri = uri;
                return this;
            }

            Notification.MessagingStyle.Message toAndroidMessage() {
                Notification.MessagingStyle.Message message;
                Person person = getPerson();
                if (Build.VERSION.SDK_INT >= 28) {
                    message = new Notification.MessagingStyle.Message(getText(), getTimestamp(), person != null ? person.toAndroidPerson() : null);
                } else {
                    message = new Notification.MessagingStyle.Message(getText(), getTimestamp(), person != null ? person.getName() : null);
                }
                if (getDataMimeType() != null) {
                    message.setData(getDataMimeType(), getDataUri());
                }
                return message;
            }
        }

        MessagingStyle() {
        }

        public MessagingStyle(Person person) {
            if (TextUtils.isEmpty(person.getName())) {
                throw new IllegalArgumentException(NPStringFog.decode(new byte[]{100, 22, 4, 19, 66, 68, 17, 11, 0, 12, 0, 23, 92, 16, 18, 21, 69, 89, 94, 17, 65, 3, 0, 23, 84, 8, 17, 21, 28, 25}, "1eaae7", -1.79100874E9d));
            }
            this.mUser = person;
        }

        @Deprecated
        public MessagingStyle(CharSequence charSequence) {
            this.mUser = new Person.Builder().setName(charSequence).build();
        }

        public static MessagingStyle extractMessagingStyleFromNotification(Notification notification) {
            Style styleExtractStyleFromNotification = Style.extractStyleFromNotification(notification);
            if (styleExtractStyleFromNotification instanceof MessagingStyle) {
                return (MessagingStyle) styleExtractStyleFromNotification;
            }
            return null;
        }

        private Message findLatestIncomingMessage() {
            for (int size = this.mMessages.size() - 1; size >= 0; size--) {
                Message message = this.mMessages.get(size);
                if (message.getPerson() != null && !TextUtils.isEmpty(message.getPerson().getName())) {
                    return message;
                }
            }
            if (this.mMessages.isEmpty()) {
                return null;
            }
            return this.mMessages.get(r0.size() - 1);
        }

        private boolean hasMessagesWithoutSender() {
            for (int size = this.mMessages.size() - 1; size >= 0; size--) {
                Message message = this.mMessages.get(size);
                if (message.getPerson() != null && message.getPerson().getName() == null) {
                    return true;
                }
            }
            return false;
        }

        private TextAppearanceSpan makeFontColorSpan(int i) {
            return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(i), null);
        }

        private CharSequence makeMessageLine(Message message) {
            BidiFormatter bidiFormatter = BidiFormatter.getInstance();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            boolean z = Build.VERSION.SDK_INT >= 21;
            int color = z ? ViewCompat.MEASURED_STATE_MASK : -1;
            CharSequence name = message.getPerson() == null ? "" : message.getPerson().getName();
            if (TextUtils.isEmpty(name)) {
                name = this.mUser.getName();
                if (z && this.mBuilder.getColor() != 0) {
                    color = this.mBuilder.getColor();
                }
            }
            CharSequence charSequenceUnicodeWrap = bidiFormatter.unicodeWrap(name);
            spannableStringBuilder.append(charSequenceUnicodeWrap);
            spannableStringBuilder.setSpan(makeFontColorSpan(color), spannableStringBuilder.length() - charSequenceUnicodeWrap.length(), spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) "  ").append(bidiFormatter.unicodeWrap(message.getText() == null ? "" : message.getText()));
            return spannableStringBuilder;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void addCompatExtras(Bundle bundle) {
            super.addCompatExtras(bundle);
            bundle.putCharSequence(NPStringFog.decode(new byte[]{80, 8, 80, 69, 91, 81, 85, 72, 71, 82, 88, 94, 117, 15, 71, 71, 88, 89, 72, 40, 85, 90, 81}, "1f4748", 1076074374L), this.mUser.getName());
            bundle.putBundle(NPStringFog.decode(new byte[]{81, 8, 86, 65, 95, 8, 84, 72, 95, 86, 67, 18, 81, 1, 91, 93, 87, 50, 68, 31, 94, 86, 101, 18, 85, 20}, "0f230a", 7.363185E7f), this.mUser.toBundle());
            bundle.putCharSequence(NPStringFog.decode(new byte[]{82, 94, 0, 20, 88, 89, 87, 30, 12, 15, 83, 84, 86, 94, 39, 9, 89, 70, 86, 66, 23, 7, 67, 89, 92, 94, 48, 15, 67, 92, 86}, "30df70", 1.8963996E9f), this.mConversationTitle);
            if (this.mConversationTitle != null && this.mIsGroupConversation.booleanValue()) {
                bundle.putCharSequence(NPStringFog.decode(new byte[]{86, 90, 93, 71, 95, 94, 83, 26, 90, 90, 94, 65, 82, 70, 74, 84, 68, 94, 88, 90, 109, 92, 68, 91, 82}, "749507", -86920915L), this.mConversationTitle);
            }
            if (!this.mMessages.isEmpty()) {
                bundle.putParcelableArray(NPStringFog.decode(new byte[]{87, 15, 80, 71, 93, 15, 82, 79, 89, 80, 65, 21, 87, 6, 81, 70}, "6a452f", 25963), Message.getBundleArrayForMessages(this.mMessages));
            }
            if (!this.mHistoricMessages.isEmpty()) {
                bundle.putParcelableArray(NPStringFog.decode(new byte[]{84, 88, 1, 64, 93, 13, 81, 24, 8, 87, 65, 23, 84, 81, 0, 65, 28, 12, 92, 69, 17, 93, 64, 13, 86}, "56e22d", -7.60677954E8d), Message.getBundleArrayForMessages(this.mHistoricMessages));
            }
            Boolean bool = this.mIsGroupConversation;
            if (bool != null) {
                bundle.putBoolean(NPStringFog.decode(new byte[]{2, 93, 85, 16, 88, 10, 7, 29, 88, 17, 112, 17, 12, 70, 65, 33, 88, 13, 21, 86, 67, 17, 86, 23, 10, 92, 95}, "c31b7c", -6.355281E8f), bool.booleanValue());
            }
        }

        public MessagingStyle addHistoricMessage(Message message) {
            if (message != null) {
                this.mHistoricMessages.add(message);
                if (this.mHistoricMessages.size() > 25) {
                    this.mHistoricMessages.remove(0);
                }
            }
            return this;
        }

        public MessagingStyle addMessage(Message message) {
            if (message != null) {
                this.mMessages.add(message);
                if (this.mMessages.size() > 25) {
                    this.mMessages.remove(0);
                }
            }
            return this;
        }

        public MessagingStyle addMessage(CharSequence charSequence, long j, Person person) {
            addMessage(new Message(charSequence, j, person));
            return this;
        }

        @Deprecated
        public MessagingStyle addMessage(CharSequence charSequence, long j, CharSequence charSequence2) {
            this.mMessages.add(new Message(charSequence, j, new Person.Builder().setName(charSequence2).build()));
            if (this.mMessages.size() > 25) {
                this.mMessages.remove(0);
            }
            return this;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            setGroupConversation(isGroupConversation());
            if (Build.VERSION.SDK_INT >= 24) {
                Notification.MessagingStyle messagingStyle = Build.VERSION.SDK_INT >= 28 ? new Notification.MessagingStyle(this.mUser.toAndroidPerson()) : new Notification.MessagingStyle(this.mUser.getName());
                Iterator<Message> it = this.mMessages.iterator();
                while (it.hasNext()) {
                    messagingStyle.addMessage(it.next().toAndroidMessage());
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    Iterator<Message> it2 = this.mHistoricMessages.iterator();
                    while (it2.hasNext()) {
                        messagingStyle.addHistoricMessage(it2.next().toAndroidMessage());
                    }
                }
                if (this.mIsGroupConversation.booleanValue() || Build.VERSION.SDK_INT >= 28) {
                    messagingStyle.setConversationTitle(this.mConversationTitle);
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    messagingStyle.setGroupConversation(this.mIsGroupConversation.booleanValue());
                }
                messagingStyle.setBuilder(notificationBuilderWithBuilderAccessor.getBuilder());
                return;
            }
            Message messageFindLatestIncomingMessage = findLatestIncomingMessage();
            if (this.mConversationTitle != null && this.mIsGroupConversation.booleanValue()) {
                notificationBuilderWithBuilderAccessor.getBuilder().setContentTitle(this.mConversationTitle);
            } else if (messageFindLatestIncomingMessage != null) {
                notificationBuilderWithBuilderAccessor.getBuilder().setContentTitle("");
                if (messageFindLatestIncomingMessage.getPerson() != null) {
                    notificationBuilderWithBuilderAccessor.getBuilder().setContentTitle(messageFindLatestIncomingMessage.getPerson().getName());
                }
            }
            if (messageFindLatestIncomingMessage != null) {
                notificationBuilderWithBuilderAccessor.getBuilder().setContentText(this.mConversationTitle != null ? makeMessageLine(messageFindLatestIncomingMessage) : messageFindLatestIncomingMessage.getText());
            }
            if (Build.VERSION.SDK_INT >= 16) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                boolean z = this.mConversationTitle != null || hasMessagesWithoutSender();
                for (int size = this.mMessages.size() - 1; size >= 0; size--) {
                    Message message = this.mMessages.get(size);
                    CharSequence charSequenceMakeMessageLine = z ? makeMessageLine(message) : message.getText();
                    if (size != this.mMessages.size() - 1) {
                        spannableStringBuilder.insert(0, (CharSequence) "\n");
                    }
                    spannableStringBuilder.insert(0, charSequenceMakeMessageLine);
                }
                new Notification.BigTextStyle(notificationBuilderWithBuilderAccessor.getBuilder()).setBigContentTitle(null).bigText(spannableStringBuilder);
            }
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected void clearCompatExtraKeys(Bundle bundle) {
            super.clearCompatExtraKeys(bundle);
            bundle.remove(NPStringFog.decode(new byte[]{81, 88, 86, 70, 12, 81, 84, 24, 95, 81, 16, 75, 81, 81, 91, 90, 4, 107, 68, 79, 94, 81, 54, 75, 85, 68}, "0624c8", -1.691153317E9d));
            bundle.remove(NPStringFog.decode(new byte[]{85, 8, 2, 71, 91, 13, 80, 72, 21, 80, 88, 2, 112, 15, 21, 69, 88, 5, 77, 40, 7, 88, 81}, "4ff54d", false));
            bundle.remove(NPStringFog.decode(new byte[]{4, 89, 85, 66, 91, 15, 1, 25, 82, 95, 90, 16, 0, 69, 66, 81, 64, 15, 10, 89, 101, 89, 64, 10, 0}, "e7104f", 1.468804849E9d));
            bundle.remove(NPStringFog.decode(new byte[]{82, 11, 84, 16, 10, 93, 87, 75, 88, 11, 1, 80, 86, 11, 115, 13, 11, 66, 86, 23, 67, 3, 17, 93, 92, 11, 100, 11, 17, 88, 86}, "3e0be4", 1326683950L));
            bundle.remove(NPStringFog.decode(new byte[]{85, 94, 7, 23, 88, 8, 80, 30, 14, 0, 68, 18, 85, 87, 6, 22}, "40ce7a", true));
            bundle.remove(NPStringFog.decode(new byte[]{87, 92, 0, 23, 11, 10, 82, 28, 9, 0, 23, 16, 87, 85, 1, 22, 74, 11, 95, 65, 16, 10, 22, 10, 85}, "62dedc", true, false));
            bundle.remove(NPStringFog.decode(new byte[]{80, 89, 5, 70, 88, 95, 85, 25, 8, 71, 112, 68, 94, 66, 17, 119, 88, 88, 71, 82, 19, 71, 86, 66, 88, 88, 15}, "17a476", 5.89203258E8d));
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected String getClassName() {
            return TEMPLATE_CLASS_NAME;
        }

        public CharSequence getConversationTitle() {
            return this.mConversationTitle;
        }

        public List<Message> getHistoricMessages() {
            return this.mHistoricMessages;
        }

        public List<Message> getMessages() {
            return this.mMessages;
        }

        public Person getUser() {
            return this.mUser;
        }

        @Deprecated
        public CharSequence getUserDisplayName() {
            return this.mUser.getName();
        }

        public boolean isGroupConversation() {
            if (this.mBuilder != null && this.mBuilder.mContext.getApplicationInfo().targetSdkVersion < 28 && this.mIsGroupConversation == null) {
                return this.mConversationTitle != null;
            }
            Boolean bool = this.mIsGroupConversation;
            if (bool != null) {
                return bool.booleanValue();
            }
            return false;
        }

        @Override // androidx.core.app.NotificationCompat.Style
        protected void restoreFromCompatExtras(Bundle bundle) {
            super.restoreFromCompatExtras(bundle);
            this.mMessages.clear();
            if (bundle.containsKey(NPStringFog.decode(new byte[]{88, 87, 0, 71, 86, 15, 93, 23, 9, 80, 74, 21, 88, 94, 13, 91, 94, 53, 77, 64, 8, 80, 108, 21, 92, 75}, "99d59f", 9.677971E7f))) {
                this.mUser = Person.fromBundle(bundle.getBundle(NPStringFog.decode(new byte[]{83, 15, 82, 22, 86, 12, 86, 79, 91, 1, 74, 22, 83, 6, 95, 10, 94, 54, 70, 24, 90, 1, 108, 22, 87, 19}, "2a6d9e", 627463716L)));
            } else {
                this.mUser = new Person.Builder().setName(bundle.getString(NPStringFog.decode(new byte[]{87, 11, 5, 17, 14, 13, 82, 75, 18, 6, 13, 2, 114, 12, 18, 19, 13, 5, 79, 43, 0, 14, 4}, "6eacad", true))).build();
            }
            CharSequence charSequence = bundle.getCharSequence(NPStringFog.decode(new byte[]{81, 94, 84, 19, 9, 13, 84, 30, 83, 14, 8, 18, 85, 66, 67, 0, 18, 13, 95, 94, 100, 8, 18, 8, 85}, "000afd", -130136291L));
            this.mConversationTitle = charSequence;
            if (charSequence == null) {
                this.mConversationTitle = bundle.getCharSequence(NPStringFog.decode(new byte[]{80, 8, 81, 19, 87, 80, 85, 72, 93, 8, 92, 93, 84, 8, 118, 14, 86, 79, 84, 20, 70, 0, 76, 80, 94, 8, 97, 8, 76, 85, 84}, "1f5a89", false, true));
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray(NPStringFog.decode(new byte[]{81, 86, 83, 23, 86, 8, 84, 22, 90, 0, 74, 18, 81, 95, 82, 22}, "087e9a", 22694));
            if (parcelableArray != null) {
                this.mMessages.addAll(Message.getMessagesFromBundleArray(parcelableArray));
            }
            Parcelable[] parcelableArray2 = bundle.getParcelableArray(NPStringFog.decode(new byte[]{89, 11, 6, 16, 86, 80, 92, 75, 15, 7, 74, 74, 89, 2, 7, 17, 23, 81, 81, 22, 22, 13, 75, 80, 91}, "8ebb99", false));
            if (parcelableArray2 != null) {
                this.mHistoricMessages.addAll(Message.getMessagesFromBundleArray(parcelableArray2));
            }
            if (bundle.containsKey(NPStringFog.decode(new byte[]{3, 15, 6, 67, 95, 91, 6, 79, 11, 66, 119, 64, 13, 20, 18, 114, 95, 92, 20, 4, 16, 66, 81, 70, 11, 14, 12}, "bab102", -26637))) {
                this.mIsGroupConversation = Boolean.valueOf(bundle.getBoolean(NPStringFog.decode(new byte[]{86, 92, 6, 67, 94, 80, 83, 28, 11, 66, 118, 75, 88, 71, 18, 114, 94, 87, 65, 87, 16, 66, 80, 77, 94, 93, 12}, "72b119", true, true)));
            }
        }

        public MessagingStyle setConversationTitle(CharSequence charSequence) {
            this.mConversationTitle = charSequence;
            return this;
        }

        public MessagingStyle setGroupConversation(boolean z) {
            this.mIsGroupConversation = Boolean.valueOf(z);
            return this;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface NotificationVisibility {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ServiceNotificationBehavior {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface StreamType {
    }

    public static abstract class Style {
        CharSequence mBigContentTitle;
        protected Builder mBuilder;
        CharSequence mSummaryText;
        boolean mSummaryTextSet = false;

        private int calculateTopPadding() {
            Resources resources = this.mBuilder.mContext.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.notification_top_pad);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.notification_top_pad_large_text);
            float fConstrain = (constrain(resources.getConfiguration().fontScale, 1.0f, 1.3f) - 1.0f) / 0.29999995f;
            return Math.round((fConstrain * dimensionPixelSize2) + (dimensionPixelSize * (1.0f - fConstrain)));
        }

        private static float constrain(float f, float f2, float f3) {
            return f < f2 ? f2 : f > f3 ? f3 : f;
        }

        static Style constructCompatStyleByName(String str) {
            if (str != null) {
                byte b = -1;
                switch (str.hashCode()) {
                    case -716705180:
                        if (str.equals(NPStringFog.decode(new byte[]{85, 93, 2, 66, 90, 13, 80, 75, 72, 83, 90, 22, 81, 29, 7, 64, 69, 74, 122, 92, 18, 89, 83, 13, 87, 82, 18, 89, 90, 10, 119, 92, 11, 64, 84, 16, 16, 119, 3, 83, 90, 22, 85, 71, 3, 84, 118, 17, 71, 71, 9, 93, 99, 13, 81, 68, 53, 68, 76, 8, 81}, "43f05d", -27443))) {
                            b = 3;
                        }
                        break;
                    case -171946061:
                        if (str.equals(NPStringFog.decode(new byte[]{88, 93, 5, 68, 10, 89, 93, 75, 79, 85, 10, 66, 92, 29, 0, 70, 21, 30, 119, 92, 21, 95, 3, 89, 90, 82, 21, 95, 10, 94, 122, 92, 12, 70, 4, 68, 29, 113, 8, 81, 53, 89, 90, 71, 20, 68, 0, 99, 77, 74, 13, 83}, "93a6e0", 997581572L))) {
                            b = 1;
                        }
                        break;
                    case 912942987:
                        if (str.equals(NPStringFog.decode(new byte[]{88, 90, 2, 67, 91, 15, 93, 76, 72, 82, 91, 20, 92, 26, 7, 65, 68, 72, 119, 91, 18, 88, 82, 15, 90, 85, 18, 88, 91, 8, 122, 91, 11, 65, 85, 18, 29, 125, 8, 83, 91, 30, 106, 64, 31, 93, 81}, "94f14f", true, false))) {
                            b = 2;
                        }
                        break;
                    case 919595044:
                        if (str.equals(NPStringFog.decode(new byte[]{83, 87, 83, 20, 90, 8, 86, 65, 25, 5, 90, 19, 87, 23, 86, 22, 69, 79, 124, 86, 67, 15, 83, 8, 81, 88, 67, 15, 90, 15, 113, 86, 90, 22, 84, 21, 22, 123, 94, 1, 97, 4, 74, 77, 100, 18, 76, 13, 87}, "297f5a", 3.676499E8f))) {
                            b = 0;
                        }
                        break;
                    case 2090799565:
                        if (str.equals(NPStringFog.decode(new byte[]{4, 91, 5, 23, 11, 80, 1, 77, 79, 6, 11, 75, 0, 27, 0, 21, 20, 23, 43, 90, 21, 12, 2, 80, 6, 84, 21, 12, 11, 87, 38, 90, 12, 21, 5, 77, 65, 120, 4, 22, 23, 88, 2, 92, 15, 2, 55, 77, 28, 89, 4}, "e5aed9", 11981))) {
                            b = 4;
                        }
                        break;
                }
                switch (b) {
                    case 0:
                        return new BigTextStyle();
                    case 1:
                        return new BigPictureStyle();
                    case 2:
                        return new InboxStyle();
                    case 3:
                        return new DecoratedCustomViewStyle();
                    case 4:
                        return new MessagingStyle();
                }
            }
            return null;
        }

        private static Style constructCompatStyleByPlatformName(String str) {
            if (str == null || Build.VERSION.SDK_INT < 16) {
                return null;
            }
            if (str.equals(Notification.BigPictureStyle.class.getName())) {
                return new BigPictureStyle();
            }
            if (str.equals(Notification.BigTextStyle.class.getName())) {
                return new BigTextStyle();
            }
            if (str.equals(Notification.InboxStyle.class.getName())) {
                return new InboxStyle();
            }
            if (Build.VERSION.SDK_INT < 24) {
                return null;
            }
            if (str.equals(Notification.MessagingStyle.class.getName())) {
                return new MessagingStyle();
            }
            if (str.equals(Notification.DecoratedCustomViewStyle.class.getName())) {
                return new DecoratedCustomViewStyle();
            }
            return null;
        }

        static Style constructCompatStyleForBundle(Bundle bundle) {
            Style styleConstructCompatStyleByName = constructCompatStyleByName(bundle.getString(NPStringFog.decode(new byte[]{87, 89, 85, 64, 12, 93, 82, 79, 31, 81, 12, 70, 83, 25, 80, 66, 19, 26, 83, 79, 69, 64, 2, 26, 117, 120, 124, 98, 34, 96, 105, 99, 116, 127, 51, 120, 119, 99, 116}, "6712c4", 1483928218L)));
            return styleConstructCompatStyleByName != null ? styleConstructCompatStyleByName : (bundle.containsKey(NPStringFog.decode(new byte[]{87, 91, 80, 71, 90, 90, 82, 27, 71, 80, 89, 85, 114, 92, 71, 69, 89, 82, 79, 123, 85, 88, 80}, "654553", -1541829242L)) || bundle.containsKey(NPStringFog.decode(new byte[]{81, 92, 87, 74, 93, 8, 84, 28, 94, 93, 65, 18, 81, 85, 90, 86, 85, 50, 68, 75, 95, 93, 103, 18, 85, 64}, "02382a", false))) ? new MessagingStyle() : bundle.containsKey(NPStringFog.decode(new byte[]{0, 92, 80, 19, 89, 13, 5, 28, 68, 8, 85, 16, 20, 64, 81}, "a24a6d", false, false)) ? new BigPictureStyle() : bundle.containsKey(NPStringFog.decode(new byte[]{87, 15, 84, 69, 93, 11, 82, 79, 82, 94, 85, 54, 83, 25, 68}, "6a072b", -25291)) ? new BigTextStyle() : bundle.containsKey(NPStringFog.decode(new byte[]{88, 93, 93, 22, 11, 94, 93, 29, 77, 1, 28, 67, 117, 90, 87, 1, 23}, "939dd7", false)) ? new InboxStyle() : constructCompatStyleByPlatformName(bundle.getString(NPStringFog.decode(new byte[]{89, 88, 81, 74, 88, 11, 92, 24, 65, 93, 90, 18, 84, 87, 65, 93}, "86587b", 1194841342L)));
        }

        static Style constructStyleForExtras(Bundle bundle) {
            Style styleConstructCompatStyleForBundle = constructCompatStyleForBundle(bundle);
            if (styleConstructCompatStyleForBundle == null) {
                return null;
            }
            try {
                styleConstructCompatStyleForBundle.restoreFromCompatExtras(bundle);
                return styleConstructCompatStyleForBundle;
            } catch (ClassCastException e) {
                return null;
            }
        }

        private Bitmap createColoredBitmap(int i, int i2, int i3) {
            return createColoredBitmap(IconCompat.createWithResource(this.mBuilder.mContext, i), i2, i3);
        }

        private Bitmap createColoredBitmap(IconCompat iconCompat, int i, int i2) {
            Drawable drawableLoadDrawable = iconCompat.loadDrawable(this.mBuilder.mContext);
            int intrinsicWidth = i2 == 0 ? drawableLoadDrawable.getIntrinsicWidth() : i2;
            if (i2 == 0) {
                i2 = drawableLoadDrawable.getIntrinsicHeight();
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, i2, Bitmap.Config.ARGB_8888);
            drawableLoadDrawable.setBounds(0, 0, intrinsicWidth, i2);
            if (i != 0) {
                drawableLoadDrawable.mutate().setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
            }
            drawableLoadDrawable.draw(new Canvas(bitmapCreateBitmap));
            return bitmapCreateBitmap;
        }

        private Bitmap createIconWithBackground(int i, int i2, int i3, int i4) {
            int i5 = R.drawable.notification_icon_background;
            if (i4 == 0) {
                i4 = 0;
            }
            Bitmap bitmapCreateColoredBitmap = createColoredBitmap(i5, i4, i2);
            Canvas canvas = new Canvas(bitmapCreateColoredBitmap);
            Drawable drawableMutate = this.mBuilder.mContext.getResources().getDrawable(i).mutate();
            drawableMutate.setFilterBitmap(true);
            int i6 = (i2 - i3) / 2;
            drawableMutate.setBounds(i6, i6, i3 + i6, i3 + i6);
            drawableMutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
            drawableMutate.draw(canvas);
            return bitmapCreateColoredBitmap;
        }

        public static Style extractStyleFromNotification(Notification notification) {
            Bundle extras = NotificationCompat.getExtras(notification);
            if (extras == null) {
                return null;
            }
            return constructStyleForExtras(extras);
        }

        private void hideNormalContent(RemoteViews remoteViews) {
            remoteViews.setViewVisibility(R.id.title, 8);
            remoteViews.setViewVisibility(R.id.text2, 8);
            remoteViews.setViewVisibility(R.id.text, 8);
        }

        public void addCompatExtras(Bundle bundle) {
            if (this.mSummaryTextSet) {
                bundle.putCharSequence(NPStringFog.decode(new byte[]{0, 10, 7, 71, 94, 88, 5, 74, 16, 64, 92, 92, 0, 22, 26, 97, 84, 73, 21}, "adc511", 1.89186719E9d), this.mSummaryText);
            }
            CharSequence charSequence = this.mBigContentTitle;
            if (charSequence != null) {
                bundle.putCharSequence(NPStringFog.decode(new byte[]{7, 93, 92, 74, 14, 12, 2, 29, 76, 81, 21, 9, 3, 29, 90, 81, 6}, "f388ae", true, true), charSequence);
            }
            String className = getClassName();
            if (className != null) {
                bundle.putString(NPStringFog.decode(new byte[]{86, 13, 86, 64, 90, 8, 83, 27, 28, 81, 90, 19, 82, 77, 83, 66, 69, 79, 82, 27, 70, 64, 84, 79, 116, 44, 127, 98, 116, 53, 104, 55, 119, 127, 101, 45, 118, 55, 119}, "7c225a", true), className);
            }
        }

        public void apply(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        }

        public RemoteViews applyStandardTemplate(boolean z, int i, boolean z2) {
            boolean z3;
            boolean z4;
            boolean z5;
            boolean z6;
            Resources resources = this.mBuilder.mContext.getResources();
            RemoteViews remoteViews = new RemoteViews(this.mBuilder.mContext.getPackageName(), i);
            boolean z7 = this.mBuilder.getPriority() < -1;
            if (Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT < 21) {
                if (z7) {
                    remoteViews.setInt(R.id.notification_background, NPStringFog.decode(new byte[]{75, 1, 68, 123, 89, 2, 83, 3, 66, 86, 77, 15, 92, 54, 85, 74, 87, 20, 74, 7, 85}, "8d098a", 4.2809903E8d), R.drawable.notification_bg_low);
                    remoteViews.setInt(R.id.icon, NPStringFog.decode(new byte[]{18, 82, 16, 116, 88, 6, 10, 80, 22, 89, 76, 11, 5, 101, 1, 69, 86, 16, 19, 84, 1}, "a7d69e", -6.021057E8d), R.drawable.notification_template_icon_low_bg);
                } else {
                    remoteViews.setInt(R.id.notification_background, NPStringFog.decode(new byte[]{66, 80, 23, 116, 80, 90, 90, 82, 17, 89, 68, 87, 85, 103, 6, 69, 94, 76, 67, 86, 6}, "15c619", 3.85013585E8d), R.drawable.notification_bg);
                    remoteViews.setInt(R.id.icon, NPStringFog.decode(new byte[]{17, 93, 71, 122, 86, 81, 9, 95, 65, 87, 66, 92, 6, 106, 86, 75, 88, 71, 16, 91, 86}, "b83872", 95190971L), R.drawable.notification_template_icon_bg);
                }
            }
            if (this.mBuilder.mLargeIcon != null) {
                if (Build.VERSION.SDK_INT >= 16) {
                    remoteViews.setViewVisibility(R.id.icon, 0);
                    remoteViews.setImageViewBitmap(R.id.icon, this.mBuilder.mLargeIcon);
                } else {
                    remoteViews.setViewVisibility(R.id.icon, 8);
                }
                if (z && this.mBuilder.mNotification.icon != 0) {
                    int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.notification_right_icon_size);
                    int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.notification_small_icon_background_padding);
                    if (Build.VERSION.SDK_INT >= 21) {
                        remoteViews.setImageViewBitmap(R.id.right_icon, createIconWithBackground(this.mBuilder.mNotification.icon, dimensionPixelSize, dimensionPixelSize - (dimensionPixelSize2 * 2), this.mBuilder.getColor()));
                    } else {
                        remoteViews.setImageViewBitmap(R.id.right_icon, createColoredBitmap(this.mBuilder.mNotification.icon, -1));
                    }
                    remoteViews.setViewVisibility(R.id.right_icon, 0);
                }
            } else if (z && this.mBuilder.mNotification.icon != 0) {
                remoteViews.setViewVisibility(R.id.icon, 0);
                if (Build.VERSION.SDK_INT >= 21) {
                    remoteViews.setImageViewBitmap(R.id.icon, createIconWithBackground(this.mBuilder.mNotification.icon, resources.getDimensionPixelSize(R.dimen.notification_large_icon_width) - resources.getDimensionPixelSize(R.dimen.notification_big_circle_margin), resources.getDimensionPixelSize(R.dimen.notification_small_icon_size_as_large), this.mBuilder.getColor()));
                } else {
                    remoteViews.setImageViewBitmap(R.id.icon, createColoredBitmap(this.mBuilder.mNotification.icon, -1));
                }
            }
            if (this.mBuilder.mContentTitle != null) {
                remoteViews.setTextViewText(R.id.title, this.mBuilder.mContentTitle);
            }
            if (this.mBuilder.mContentText != null) {
                remoteViews.setTextViewText(R.id.text, this.mBuilder.mContentText);
                z3 = true;
            } else {
                z3 = false;
            }
            boolean z8 = Build.VERSION.SDK_INT < 21 && this.mBuilder.mLargeIcon != null;
            if (this.mBuilder.mContentInfo != null) {
                remoteViews.setTextViewText(R.id.info, this.mBuilder.mContentInfo);
                remoteViews.setViewVisibility(R.id.info, 0);
                z4 = true;
                z5 = true;
            } else if (this.mBuilder.mNumber > 0) {
                if (this.mBuilder.mNumber > resources.getInteger(R.integer.status_bar_notification_info_maxnum)) {
                    remoteViews.setTextViewText(R.id.info, resources.getString(R.string.status_bar_notification_info_overflow));
                } else {
                    remoteViews.setTextViewText(R.id.info, NumberFormat.getIntegerInstance().format(this.mBuilder.mNumber));
                }
                remoteViews.setViewVisibility(R.id.info, 0);
                z4 = true;
                z5 = true;
            } else {
                remoteViews.setViewVisibility(R.id.info, 8);
                z4 = z3;
                z5 = z8;
            }
            if (this.mBuilder.mSubText == null || Build.VERSION.SDK_INT < 16) {
                z6 = false;
            } else {
                remoteViews.setTextViewText(R.id.text, this.mBuilder.mSubText);
                if (this.mBuilder.mContentText != null) {
                    remoteViews.setTextViewText(R.id.text2, this.mBuilder.mContentText);
                    remoteViews.setViewVisibility(R.id.text2, 0);
                    z6 = true;
                } else {
                    remoteViews.setViewVisibility(R.id.text2, 8);
                    z6 = false;
                }
            }
            if (z6 && Build.VERSION.SDK_INT >= 16) {
                if (z2) {
                    remoteViews.setTextViewTextSize(R.id.text, 0, resources.getDimensionPixelSize(R.dimen.notification_subtext_size));
                }
                remoteViews.setViewPadding(R.id.line1, 0, 0, 0, 0);
            }
            if (this.mBuilder.getWhenIfShowing() != 0) {
                if (!this.mBuilder.mUseChronometer || Build.VERSION.SDK_INT < 16) {
                    remoteViews.setViewVisibility(R.id.time, 0);
                    remoteViews.setLong(R.id.time, NPStringFog.decode(new byte[]{67, 82, 71, 48, 91, 91, 85}, "073d26", -8.366171E8f), this.mBuilder.getWhenIfShowing());
                } else {
                    remoteViews.setViewVisibility(R.id.chronometer, 0);
                    remoteViews.setLong(R.id.chronometer, NPStringFog.decode(new byte[]{17, 86, 21, 115, 80, 67, 7}, "b3a110", -9.13547447E8d), this.mBuilder.getWhenIfShowing() + (SystemClock.elapsedRealtime() - System.currentTimeMillis()));
                    remoteViews.setBoolean(R.id.chronometer, NPStringFog.decode(new byte[]{23, 6, 67, 106, 71, 0, 22, 23, 82, 93}, "dc793a", false), true);
                    if (this.mBuilder.mChronometerCountDown && Build.VERSION.SDK_INT >= 24) {
                        remoteViews.setChronometerCountDown(R.id.chronometer, this.mBuilder.mChronometerCountDown);
                    }
                }
                z5 = true;
            }
            remoteViews.setViewVisibility(R.id.right_side, z5 ? 0 : 8);
            remoteViews.setViewVisibility(R.id.line3, z4 ? 0 : 8);
            return remoteViews;
        }

        public Notification build() {
            Builder builder = this.mBuilder;
            if (builder != null) {
                return builder.build();
            }
            return null;
        }

        public void buildIntoRemoteViews(RemoteViews remoteViews, RemoteViews remoteViews2) {
            hideNormalContent(remoteViews);
            remoteViews.removeAllViews(R.id.notification_main_column);
            remoteViews.addView(R.id.notification_main_column, remoteViews2.clone());
            remoteViews.setViewVisibility(R.id.notification_main_column, 0);
            if (Build.VERSION.SDK_INT >= 21) {
                remoteViews.setViewPadding(R.id.notification_main_column_container, 0, calculateTopPadding(), 0, 0);
            }
        }

        protected void clearCompatExtraKeys(Bundle bundle) {
            bundle.remove(NPStringFog.decode(new byte[]{87, 86, 87, 66, 95, 89, 82, 22, 64, 69, 93, 93, 87, 74, 74, 100, 85, 72, 66}, "683000", true, false));
            bundle.remove(NPStringFog.decode(new byte[]{86, 88, 6, 16, 89, 89, 83, 24, 22, 11, 66, 92, 82, 24, 0, 11, 81}, "76bb60", -1560));
            bundle.remove(NPStringFog.decode(new byte[]{0, 90, 5, 67, 11, 8, 5, 76, 79, 82, 11, 19, 4, 26, 0, 65, 20, 79, 4, 76, 21, 67, 5, 79, 34, 123, 44, 97, 37, 53, 62, 96, 36, 124, 52, 45, 32, 96, 36}, "a4a1da", true, true));
        }

        public Bitmap createColoredBitmap(int i, int i2) {
            return createColoredBitmap(i, i2, 0);
        }

        Bitmap createColoredBitmap(IconCompat iconCompat, int i) {
            return createColoredBitmap(iconCompat, i, 0);
        }

        public boolean displayCustomViewInline() {
            return false;
        }

        protected String getClassName() {
            return null;
        }

        public RemoteViews makeBigContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        public RemoteViews makeContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        public RemoteViews makeHeadsUpContentView(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
            return null;
        }

        protected void restoreFromCompatExtras(Bundle bundle) {
            if (bundle.containsKey(NPStringFog.decode(new byte[]{85, 88, 92, 22, 13, 88, 80, 24, 75, 17, 15, 92, 85, 68, 65, 48, 7, 73, 64}, "468db1", -1.9194413E8f))) {
                this.mSummaryText = bundle.getCharSequence(NPStringFog.decode(new byte[]{87, 13, 6, 64, 13, 15, 82, 77, 17, 71, 15, 11, 87, 17, 27, 102, 7, 30, 66}, "6cb2bf", true, false));
                this.mSummaryTextSet = true;
            }
            this.mBigContentTitle = bundle.getCharSequence(NPStringFog.decode(new byte[]{3, 94, 86, 70, 12, 81, 6, 30, 70, 93, 23, 84, 7, 30, 80, 93, 4}, "b024c8", 12785));
        }

        public void setBuilder(Builder builder) {
            if (this.mBuilder != builder) {
                this.mBuilder = builder;
                if (builder != null) {
                    builder.setStyle(this);
                }
            }
        }
    }

    public static final class WearableExtender implements Extender {
        private static final int DEFAULT_CONTENT_ICON_GRAVITY = 8388613;
        private static final int DEFAULT_FLAGS = 1;
        private static final int DEFAULT_GRAVITY = 80;
        private static final int FLAG_BIG_PICTURE_AMBIENT = 32;
        private static final int FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE = 1;
        private static final int FLAG_HINT_AVOID_BACKGROUND_CLIPPING = 16;
        private static final int FLAG_HINT_CONTENT_INTENT_LAUNCHES_ACTIVITY = 64;
        private static final int FLAG_HINT_HIDE_ICON = 2;
        private static final int FLAG_HINT_SHOW_BACKGROUND_ONLY = 4;
        private static final int FLAG_START_SCROLL_BOTTOM = 8;

        @Deprecated
        public static final int SCREEN_TIMEOUT_LONG = -1;

        @Deprecated
        public static final int SCREEN_TIMEOUT_SHORT = 0;

        @Deprecated
        public static final int SIZE_DEFAULT = 0;

        @Deprecated
        public static final int SIZE_FULL_SCREEN = 5;

        @Deprecated
        public static final int SIZE_LARGE = 4;

        @Deprecated
        public static final int SIZE_MEDIUM = 3;

        @Deprecated
        public static final int SIZE_SMALL = 2;

        @Deprecated
        public static final int SIZE_XSMALL = 1;
        public static final int UNSET_ACTION_INDEX = -1;
        private ArrayList<Action> mActions;
        private Bitmap mBackground;
        private String mBridgeTag;
        private int mContentActionIndex;
        private int mContentIcon;
        private int mContentIconGravity;
        private int mCustomContentHeight;
        private int mCustomSizePreset;
        private String mDismissalId;
        private PendingIntent mDisplayIntent;
        private int mFlags;
        private int mGravity;
        private int mHintScreenTimeout;
        private ArrayList<Notification> mPages;
        private static final String EXTRA_WEARABLE_EXTENSIONS = NPStringFog.decode(new byte[]{5, 90, 80, 74, 13, 92, 0, 26, 67, 93, 3, 71, 5, 86, 88, 93, 76, 112, 60, 96, 113, 118, 49, 124, 43, 122, 103}, "d448b5", -562128510L);
        private static final String KEY_ACTIONS = NPStringFog.decode(new byte[]{7, 81, 71, 81, 93, 13, 21}, "f2382c", false, true);
        private static final String KEY_BACKGROUND = NPStringFog.decode(new byte[]{3, 83, 81, 13, 4, 17, 14, 71, 92, 2}, "a22fcc", 25781);
        private static final String KEY_BRIDGE_TAG = NPStringFog.decode(new byte[]{85, 65, 12, 7, 80, 1, 99, 82, 2}, "73ec7d", false);
        private static final String KEY_CONTENT_ACTION_INDEX = NPStringFog.decode(new byte[]{91, 14, 88, 65, 86, 13, 76, 32, 85, 65, 90, 12, 86, 40, 88, 81, 86, 27}, "8a653c", -1.634165157E9d);
        private static final String KEY_CONTENT_ICON = NPStringFog.decode(new byte[]{1, 90, 12, 21, 83, 10, 22, 124, 1, 14, 88}, "b5ba6d", -62813998L);
        private static final String KEY_CONTENT_ICON_GRAVITY = NPStringFog.decode(new byte[]{86, 94, 86, 68, 1, 88, 65, 120, 91, 95, 10, 113, 71, 80, 78, 89, 16, 79}, "5180d6", true);
        private static final String KEY_CUSTOM_CONTENT_HEIGHT = NPStringFog.decode(new byte[]{5, 20, 70, 16, 90, 15, 37, 14, 91, 16, 80, 12, 18, 41, 80, 13, 82, 10, 18}, "fa5d5b", 6.217431E8f);
        private static final String KEY_CUSTOM_SIZE_PRESET = NPStringFog.decode(new byte[]{90, 70, 16, 70, 13, 89, 106, 90, 25, 87, 50, 70, 92, 64, 6, 70}, "93c2b4", 1034170375L);
        private static final String KEY_DISMISSAL_ID = NPStringFog.decode(new byte[]{1, 15, 23, 11, 11, 66, 22, 7, 8, 47, 6}, "efdfb1", 753351154L);
        private static final String KEY_DISPLAY_INTENT = NPStringFog.decode(new byte[]{92, 13, 66, 65, 91, 83, 65, 45, 95, 69, 82, 92, 76}, "8d1172", 2.70807683E8d);
        private static final String KEY_FLAGS = NPStringFog.decode(new byte[]{80, 15, 80, 6, 74}, "6c1a91", false, false);
        private static final String KEY_GRAVITY = NPStringFog.decode(new byte[]{84, 22, 80, 21, 91, 21, 74}, "3d1c2a", -5.7549395E8f);
        private static final String KEY_HINT_SCREEN_TIMEOUT = NPStringFog.decode(new byte[]{89, 90, 92, 17, 102, 91, 67, 86, 87, 11, 97, 81, 92, 86, 93, 16, 65}, "132e58", -1.25686107E9d);
        private static final String KEY_PAGES = NPStringFog.decode(new byte[]{17, 3, 84, 81, 74}, "ab3498", true, false);

        public WearableExtender() {
            this.mActions = new ArrayList<>();
            this.mFlags = 1;
            this.mPages = new ArrayList<>();
            this.mContentIconGravity = 8388613;
            this.mContentActionIndex = -1;
            this.mCustomSizePreset = 0;
            this.mGravity = 80;
        }

        public WearableExtender(Notification notification) {
            this.mActions = new ArrayList<>();
            this.mFlags = 1;
            this.mPages = new ArrayList<>();
            this.mContentIconGravity = 8388613;
            this.mContentActionIndex = -1;
            this.mCustomSizePreset = 0;
            this.mGravity = 80;
            Bundle extras = NotificationCompat.getExtras(notification);
            Bundle bundle = extras != null ? extras.getBundle(NPStringFog.decode(new byte[]{82, 89, 85, 69, 92, 92, 87, 25, 70, 82, 82, 71, 82, 85, 93, 82, 29, 112, 107, 99, 116, 121, 96, 124, 124, 121, 98}, "371735", true, false)) : null;
            if (bundle != null) {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(NPStringFog.decode(new byte[]{81, 85, 69, 10, 93, 86, 67}, "061c28", true, false));
                if (Build.VERSION.SDK_INT >= 16 && parcelableArrayList != null) {
                    Action[] actionArr = new Action[parcelableArrayList.size()];
                    for (int i = 0; i < actionArr.length; i++) {
                        if (Build.VERSION.SDK_INT >= 20) {
                            actionArr[i] = NotificationCompat.getActionCompatFromAction((Notification.Action) parcelableArrayList.get(i));
                        } else if (Build.VERSION.SDK_INT >= 16) {
                            actionArr[i] = NotificationCompatJellybean.getActionFromBundle((Bundle) parcelableArrayList.get(i));
                        }
                    }
                    Collections.addAll(this.mActions, actionArr);
                }
                this.mFlags = bundle.getInt(NPStringFog.decode(new byte[]{80, 95, 4, 80, 67}, "63e705", 1.57997043E8d), 1);
                this.mDisplayIntent = (PendingIntent) bundle.getParcelable(NPStringFog.decode(new byte[]{0, 89, 67, 22, 85, 82, 29, 121, 94, 18, 92, 93, 16}, "d00f93", 6.63934E8f));
                Notification[] notificationArrayFromBundle = NotificationCompat.getNotificationArrayFromBundle(bundle, NPStringFog.decode(new byte[]{19, 83, 85, 0, 18}, "c22ea6", true));
                if (notificationArrayFromBundle != null) {
                    Collections.addAll(this.mPages, notificationArrayFromBundle);
                }
                this.mBackground = (Bitmap) bundle.getParcelable(NPStringFog.decode(new byte[]{86, 89, 91, 10, 1, 17, 91, 77, 86, 5}, "488afc", -3.3105286E8f));
                this.mContentIcon = bundle.getInt(NPStringFog.decode(new byte[]{7, 86, 95, 67, 92, 15, 16, 112, 82, 88, 87}, "d9179a", 9.067244E8f));
                this.mContentIconGravity = bundle.getInt(NPStringFog.decode(new byte[]{80, 9, 10, 23, 7, 11, 71, 47, 7, 12, 12, 34, 65, 7, 18, 10, 22, 28}, "3fdcbe", 1.2627337E9f), 8388613);
                this.mContentActionIndex = bundle.getInt(NPStringFog.decode(new byte[]{80, 90, 8, 67, 81, 87, 71, 116, 5, 67, 93, 86, 93, 124, 8, 83, 81, 65}, "35f749", -1.733870475E9d), -1);
                this.mCustomSizePreset = bundle.getInt(NPStringFog.decode(new byte[]{2, 20, 65, 67, 90, 11, 50, 8, 72, 82, 101, 20, 4, 18, 87, 67}, "aa275f", true), 0);
                this.mCustomContentHeight = bundle.getInt(NPStringFog.decode(new byte[]{86, 16, 69, 67, 94, 84, 118, 10, 88, 67, 84, 87, 65, 45, 83, 94, 86, 81, 65}, "5e6719", -1.647938303E9d));
                this.mGravity = bundle.getInt(NPStringFog.decode(new byte[]{5, 67, 84, 68, 93, 68, 27}, "b15240", -1020455603L), 80);
                this.mHintScreenTimeout = bundle.getInt(NPStringFog.decode(new byte[]{93, 11, 93, 76, 48, 6, 71, 7, 86, 86, 55, 12, 88, 7, 92, 77, 23}, "5b38ce", 7735));
                this.mDismissalId = bundle.getString(NPStringFog.decode(new byte[]{93, 15, 64, 14, 10, 65, 74, 7, 95, 42, 7}, "9f3cc2", false));
                this.mBridgeTag = bundle.getString(NPStringFog.decode(new byte[]{3, 22, 11, 83, 2, 80, 53, 5, 5}, "adb7e5", false, true));
            }
        }

        private static Notification.Action getActionFromActionCompat(Action action) {
            Notification.Action.Builder builder;
            if (Build.VERSION.SDK_INT >= 23) {
                IconCompat iconCompat = action.getIconCompat();
                builder = new Notification.Action.Builder(iconCompat == null ? null : iconCompat.toIcon(), action.getTitle(), action.getActionIntent());
            } else {
                IconCompat iconCompat2 = action.getIconCompat();
                builder = new Notification.Action.Builder((iconCompat2 == null || iconCompat2.getType() != 2) ? 0 : iconCompat2.getResId(), action.getTitle(), action.getActionIntent());
            }
            Bundle bundle = action.getExtras() != null ? new Bundle(action.getExtras()) : new Bundle();
            bundle.putBoolean(NPStringFog.decode(new byte[]{80, 87, 87, 64, 12, 91, 85, 23, 64, 71, 19, 66, 94, 75, 71, 28, 2, 94, 93, 86, 68, 117, 6, 92, 84, 75, 82, 70, 6, 86, 99, 92, 67, 94, 10, 87, 66}, "1932c2", 2061576601L), action.getAllowGeneratedReplies());
            if (Build.VERSION.SDK_INT >= 24) {
                builder.setAllowGeneratedReplies(action.getAllowGeneratedReplies());
            }
            builder.addExtras(bundle);
            RemoteInput[] remoteInputs = action.getRemoteInputs();
            if (remoteInputs != null) {
                for (android.app.RemoteInput remoteInput : RemoteInput.fromCompat(remoteInputs)) {
                    builder.addRemoteInput(remoteInput);
                }
            }
            return builder.build();
        }

        private void setFlag(int i, boolean z) {
            if (z) {
                this.mFlags |= i;
            } else {
                this.mFlags &= i ^ (-1);
            }
        }

        public WearableExtender addAction(Action action) {
            this.mActions.add(action);
            return this;
        }

        public WearableExtender addActions(List<Action> list) {
            this.mActions.addAll(list);
            return this;
        }

        @Deprecated
        public WearableExtender addPage(Notification notification) {
            this.mPages.add(notification);
            return this;
        }

        @Deprecated
        public WearableExtender addPages(List<Notification> list) {
            this.mPages.addAll(list);
            return this;
        }

        public WearableExtender clearActions() {
            this.mActions.clear();
            return this;
        }

        @Deprecated
        public WearableExtender clearPages() {
            this.mPages.clear();
            return this;
        }

        /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
        public WearableExtender m6clone() {
            WearableExtender wearableExtender = new WearableExtender();
            wearableExtender.mActions = new ArrayList<>(this.mActions);
            wearableExtender.mFlags = this.mFlags;
            wearableExtender.mDisplayIntent = this.mDisplayIntent;
            wearableExtender.mPages = new ArrayList<>(this.mPages);
            wearableExtender.mBackground = this.mBackground;
            wearableExtender.mContentIcon = this.mContentIcon;
            wearableExtender.mContentIconGravity = this.mContentIconGravity;
            wearableExtender.mContentActionIndex = this.mContentActionIndex;
            wearableExtender.mCustomSizePreset = this.mCustomSizePreset;
            wearableExtender.mCustomContentHeight = this.mCustomContentHeight;
            wearableExtender.mGravity = this.mGravity;
            wearableExtender.mHintScreenTimeout = this.mHintScreenTimeout;
            wearableExtender.mDismissalId = this.mDismissalId;
            wearableExtender.mBridgeTag = this.mBridgeTag;
            return wearableExtender;
        }

        @Override // androidx.core.app.NotificationCompat.Extender
        public Builder extend(Builder builder) {
            Bundle bundle = new Bundle();
            if (!this.mActions.isEmpty()) {
                if (Build.VERSION.SDK_INT >= 16) {
                    ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.mActions.size());
                    for (Action action : this.mActions) {
                        if (Build.VERSION.SDK_INT >= 20) {
                            arrayList.add(getActionFromActionCompat(action));
                        } else if (Build.VERSION.SDK_INT >= 16) {
                            arrayList.add(NotificationCompatJellybean.getBundleForAction(action));
                        }
                    }
                    bundle.putParcelableArrayList(KEY_ACTIONS, arrayList);
                } else {
                    bundle.putParcelableArrayList(KEY_ACTIONS, null);
                }
            }
            int i = this.mFlags;
            if (i != 1) {
                bundle.putInt(KEY_FLAGS, i);
            }
            PendingIntent pendingIntent = this.mDisplayIntent;
            if (pendingIntent != null) {
                bundle.putParcelable(KEY_DISPLAY_INTENT, pendingIntent);
            }
            if (!this.mPages.isEmpty()) {
                ArrayList<Notification> arrayList2 = this.mPages;
                bundle.putParcelableArray(KEY_PAGES, (Parcelable[]) arrayList2.toArray(new Notification[arrayList2.size()]));
            }
            Bitmap bitmap = this.mBackground;
            if (bitmap != null) {
                bundle.putParcelable(KEY_BACKGROUND, bitmap);
            }
            int i2 = this.mContentIcon;
            if (i2 != 0) {
                bundle.putInt(KEY_CONTENT_ICON, i2);
            }
            int i3 = this.mContentIconGravity;
            if (i3 != 8388613) {
                bundle.putInt(KEY_CONTENT_ICON_GRAVITY, i3);
            }
            int i4 = this.mContentActionIndex;
            if (i4 != -1) {
                bundle.putInt(KEY_CONTENT_ACTION_INDEX, i4);
            }
            int i5 = this.mCustomSizePreset;
            if (i5 != 0) {
                bundle.putInt(KEY_CUSTOM_SIZE_PRESET, i5);
            }
            int i6 = this.mCustomContentHeight;
            if (i6 != 0) {
                bundle.putInt(KEY_CUSTOM_CONTENT_HEIGHT, i6);
            }
            int i7 = this.mGravity;
            if (i7 != 80) {
                bundle.putInt(KEY_GRAVITY, i7);
            }
            int i8 = this.mHintScreenTimeout;
            if (i8 != 0) {
                bundle.putInt(KEY_HINT_SCREEN_TIMEOUT, i8);
            }
            String str = this.mDismissalId;
            if (str != null) {
                bundle.putString(KEY_DISMISSAL_ID, str);
            }
            String str2 = this.mBridgeTag;
            if (str2 != null) {
                bundle.putString(KEY_BRIDGE_TAG, str2);
            }
            builder.getExtras().putBundle(EXTRA_WEARABLE_EXTENSIONS, bundle);
            return builder;
        }

        public List<Action> getActions() {
            return this.mActions;
        }

        @Deprecated
        public Bitmap getBackground() {
            return this.mBackground;
        }

        public String getBridgeTag() {
            return this.mBridgeTag;
        }

        public int getContentAction() {
            return this.mContentActionIndex;
        }

        @Deprecated
        public int getContentIcon() {
            return this.mContentIcon;
        }

        @Deprecated
        public int getContentIconGravity() {
            return this.mContentIconGravity;
        }

        public boolean getContentIntentAvailableOffline() {
            return (this.mFlags & 1) != 0;
        }

        @Deprecated
        public int getCustomContentHeight() {
            return this.mCustomContentHeight;
        }

        @Deprecated
        public int getCustomSizePreset() {
            return this.mCustomSizePreset;
        }

        public String getDismissalId() {
            return this.mDismissalId;
        }

        @Deprecated
        public PendingIntent getDisplayIntent() {
            return this.mDisplayIntent;
        }

        @Deprecated
        public int getGravity() {
            return this.mGravity;
        }

        @Deprecated
        public boolean getHintAmbientBigPicture() {
            return (this.mFlags & 32) != 0;
        }

        @Deprecated
        public boolean getHintAvoidBackgroundClipping() {
            return (this.mFlags & 16) != 0;
        }

        public boolean getHintContentIntentLaunchesActivity() {
            return (this.mFlags & 64) != 0;
        }

        @Deprecated
        public boolean getHintHideIcon() {
            return (this.mFlags & 2) != 0;
        }

        @Deprecated
        public int getHintScreenTimeout() {
            return this.mHintScreenTimeout;
        }

        @Deprecated
        public boolean getHintShowBackgroundOnly() {
            return (this.mFlags & 4) != 0;
        }

        @Deprecated
        public List<Notification> getPages() {
            return this.mPages;
        }

        public boolean getStartScrollBottom() {
            return (this.mFlags & 8) != 0;
        }

        @Deprecated
        public WearableExtender setBackground(Bitmap bitmap) {
            this.mBackground = bitmap;
            return this;
        }

        public WearableExtender setBridgeTag(String str) {
            this.mBridgeTag = str;
            return this;
        }

        public WearableExtender setContentAction(int i) {
            this.mContentActionIndex = i;
            return this;
        }

        @Deprecated
        public WearableExtender setContentIcon(int i) {
            this.mContentIcon = i;
            return this;
        }

        @Deprecated
        public WearableExtender setContentIconGravity(int i) {
            this.mContentIconGravity = i;
            return this;
        }

        public WearableExtender setContentIntentAvailableOffline(boolean z) {
            setFlag(1, z);
            return this;
        }

        @Deprecated
        public WearableExtender setCustomContentHeight(int i) {
            this.mCustomContentHeight = i;
            return this;
        }

        @Deprecated
        public WearableExtender setCustomSizePreset(int i) {
            this.mCustomSizePreset = i;
            return this;
        }

        public WearableExtender setDismissalId(String str) {
            this.mDismissalId = str;
            return this;
        }

        @Deprecated
        public WearableExtender setDisplayIntent(PendingIntent pendingIntent) {
            this.mDisplayIntent = pendingIntent;
            return this;
        }

        @Deprecated
        public WearableExtender setGravity(int i) {
            this.mGravity = i;
            return this;
        }

        @Deprecated
        public WearableExtender setHintAmbientBigPicture(boolean z) {
            setFlag(32, z);
            return this;
        }

        @Deprecated
        public WearableExtender setHintAvoidBackgroundClipping(boolean z) {
            setFlag(16, z);
            return this;
        }

        public WearableExtender setHintContentIntentLaunchesActivity(boolean z) {
            setFlag(64, z);
            return this;
        }

        @Deprecated
        public WearableExtender setHintHideIcon(boolean z) {
            setFlag(2, z);
            return this;
        }

        @Deprecated
        public WearableExtender setHintScreenTimeout(int i) {
            this.mHintScreenTimeout = i;
            return this;
        }

        @Deprecated
        public WearableExtender setHintShowBackgroundOnly(boolean z) {
            setFlag(4, z);
            return this;
        }

        public WearableExtender setStartScrollBottom(boolean z) {
            setFlag(8, z);
            return this;
        }
    }

    @Deprecated
    public NotificationCompat() {
    }

    public static Action getAction(Notification notification, int i) {
        if (Build.VERSION.SDK_INT >= 20) {
            return getActionCompatFromAction(notification.actions[i]);
        }
        if (Build.VERSION.SDK_INT >= 19) {
            Notification.Action action = notification.actions[i];
            SparseArray sparseParcelableArray = notification.extras.getSparseParcelableArray(NPStringFog.decode(new byte[]{80, 92, 7, 69, 94, 95, 85, 28, 16, 66, 65, 70, 94, 64, 23, 25, 80, 85, 69, 91, 12, 89, 116, 78, 69, 64, 2, 68}, "12c716", 8.42335981E8d));
            return NotificationCompatJellybean.readAction(action.icon, action.title, action.actionIntent, sparseParcelableArray != null ? (Bundle) sparseParcelableArray.get(i) : null);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return NotificationCompatJellybean.getAction(notification, i);
        }
        return null;
    }

    static Action getActionCompatFromAction(Notification.Action action) {
        RemoteInput[] remoteInputArr;
        android.app.RemoteInput[] remoteInputs = action.getRemoteInputs();
        if (remoteInputs == null) {
            remoteInputArr = null;
        } else {
            RemoteInput[] remoteInputArr2 = new RemoteInput[remoteInputs.length];
            for (int i = 0; i < remoteInputs.length; i++) {
                android.app.RemoteInput remoteInput = remoteInputs[i];
                remoteInputArr2[i] = new RemoteInput(remoteInput.getResultKey(), remoteInput.getLabel(), remoteInput.getChoices(), remoteInput.getAllowFreeFormInput(), Build.VERSION.SDK_INT >= 29 ? remoteInput.getEditChoicesBeforeSending() : 0, remoteInput.getExtras(), null);
            }
            remoteInputArr = remoteInputArr2;
        }
        boolean z = Build.VERSION.SDK_INT >= 24 ? action.getExtras().getBoolean(NPStringFog.decode(new byte[]{83, 86, 81, 20, 11, 8, 86, 22, 70, 19, 20, 17, 93, 74, 65, 72, 5, 13, 94, 87, 66, 33, 1, 15, 87, 74, 84, 18, 1, 5, 96, 93, 69, 10, 13, 4, 65}, "285fda", -30776)) || action.getAllowGeneratedReplies() : action.getExtras().getBoolean(NPStringFog.decode(new byte[]{4, 10, 7, 19, 9, 91, 1, 74, 16, 20, 22, 66, 10, 22, 23, 79, 7, 94, 9, 11, 20, 38, 3, 92, 0, 22, 2, 21, 3, 86, 55, 1, 19, 13, 15, 87, 22}, "edcaf2", false, false));
        boolean z2 = action.getExtras().getBoolean(NPStringFog.decode(new byte[]{0, 86, 81, 69, 10, 92, 5, 22, 70, 66, 21, 69, 14, 74, 65, 25, 4, 86, 21, 81, 90, 89, 75, 70, 9, 87, 66, 68, 48, 70, 4, 74, 124, 89, 17, 80, 19, 94, 84, 84, 0}, "a857e5", -1.0100717E9f), true);
        int semanticAction = Build.VERSION.SDK_INT >= 28 ? action.getSemanticAction() : action.getExtras().getInt(NPStringFog.decode(new byte[]{89, 93, 1, 67, 12, 15, 92, 29, 22, 68, 19, 22, 87, 65, 17, 31, 2, 5, 76, 90, 10, 95, 77, 21, 93, 94, 4, 95, 23, 15, 91, 114, 6, 69, 10, 9, 86}, "83e1cf", false), 0);
        boolean zIsContextual = Build.VERSION.SDK_INT >= 29 ? action.isContextual() : false;
        if (Build.VERSION.SDK_INT < 23) {
            return new Action(action.icon, action.title, action.actionIntent, action.getExtras(), remoteInputArr, (RemoteInput[]) null, z, semanticAction, z2, zIsContextual);
        }
        if (action.getIcon() != null || action.icon == 0) {
            return new Action(action.getIcon() == null ? null : IconCompat.createFromIconOrNullIfZeroResId(action.getIcon()), action.title, action.actionIntent, action.getExtras(), remoteInputArr, (RemoteInput[]) null, z, semanticAction, z2, zIsContextual);
        }
        return new Action(action.icon, action.title, action.actionIntent, action.getExtras(), remoteInputArr, (RemoteInput[]) null, z, semanticAction, z2, zIsContextual);
    }

    public static int getActionCount(Notification notification) {
        if (Build.VERSION.SDK_INT >= 19) {
            if (notification.actions != null) {
                return notification.actions.length;
            }
            return 0;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return NotificationCompatJellybean.getActionCount(notification);
        }
        return 0;
    }

    public static boolean getAllowSystemGeneratedContextualActions(Notification notification) {
        if (Build.VERSION.SDK_INT >= 29) {
            return notification.getAllowSystemGeneratedContextualActions();
        }
        return false;
    }

    public static boolean getAutoCancel(Notification notification) {
        return (notification.flags & 16) != 0;
    }

    public static int getBadgeIconType(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getBadgeIconType();
        }
        return 0;
    }

    public static BubbleMetadata getBubbleMetadata(Notification notification) {
        if (Build.VERSION.SDK_INT >= 29) {
            return BubbleMetadata.fromPlatform(notification.getBubbleMetadata());
        }
        return null;
    }

    public static String getCategory(Notification notification) {
        if (Build.VERSION.SDK_INT >= 21) {
            return notification.category;
        }
        return null;
    }

    public static String getChannelId(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getChannelId();
        }
        return null;
    }

    public static int getColor(Notification notification) {
        if (Build.VERSION.SDK_INT >= 21) {
            return notification.color;
        }
        return 0;
    }

    public static CharSequence getContentInfo(Notification notification) {
        return notification.extras.getCharSequence(EXTRA_INFO_TEXT);
    }

    public static CharSequence getContentText(Notification notification) {
        return notification.extras.getCharSequence(EXTRA_TEXT);
    }

    public static CharSequence getContentTitle(Notification notification) {
        return notification.extras.getCharSequence(EXTRA_TITLE);
    }

    public static Bundle getExtras(Notification notification) {
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return NotificationCompatJellybean.getExtras(notification);
        }
        return null;
    }

    public static String getGroup(Notification notification) {
        if (Build.VERSION.SDK_INT >= 20) {
            return notification.getGroup();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras.getString(NPStringFog.decode(new byte[]{87, 87, 6, 66, 92, 81, 82, 23, 17, 69, 67, 72, 89, 75, 22, 30, 84, 74, 89, 76, 18, 123, 86, 65}, "69b038", -4.370054E8f));
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return NotificationCompatJellybean.getExtras(notification).getString(NPStringFog.decode(new byte[]{2, 86, 7, 67, 9, 95, 7, 22, 16, 68, 22, 70, 12, 74, 23, 31, 1, 68, 12, 77, 19, 122, 3, 79}, "c8c1f6", 18458));
        }
        return null;
    }

    public static int getGroupAlertBehavior(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getGroupAlertBehavior();
        }
        return 0;
    }

    static boolean getHighPriority(Notification notification) {
        return (notification.flags & 128) != 0;
    }

    public static List<Action> getInvisibleActions(Notification notification) {
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 19) {
            Bundle bundle = notification.extras.getBundle(NPStringFog.decode(new byte[]{5, 95, 92, 70, 95, 90, 0, 31, 91, 85, 66, 29, 33, 105, 108, 113, 126, 96, 45, 126, 118, 103}, "d18403", 1891304396L));
            if (bundle == null) {
                return arrayList;
            }
            Bundle bundle2 = bundle.getBundle(NPStringFog.decode(new byte[]{93, 10, 67, 81, 23, 95, 86, 8, 80, 103, 5, 85, 64, 13, 90, 86, 23}, "4d58d6", -9.538047E8f));
            if (bundle2 != null) {
                for (int i = 0; i < bundle2.size(); i++) {
                    arrayList.add(NotificationCompatJellybean.getActionFromBundle(bundle2.getBundle(Integer.toString(i))));
                }
            }
        }
        return arrayList;
    }

    public static boolean getLocalOnly(Notification notification) {
        if (Build.VERSION.SDK_INT >= 20) {
            return (notification.flags & 256) != 0;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras.getBoolean(NPStringFog.decode(new byte[]{84, 93, 84, 71, 86, 81, 81, 29, 67, 64, 73, 72, 90, 65, 68, 27, 85, 87, 86, 82, 92, 122, 87, 84, 76}, "530598", true, false));
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return NotificationCompatJellybean.getExtras(notification).getBoolean(NPStringFog.decode(new byte[]{86, 91, 80, 66, 89, 12, 83, 27, 71, 69, 70, 21, 88, 71, 64, 30, 90, 10, 84, 84, 88, 127, 88, 9, 78}, "75406e", true, true));
        }
        return false;
    }

    public static LocusIdCompat getLocusId(Notification notification) {
        LocusId locusId;
        if (Build.VERSION.SDK_INT < 29 || (locusId = notification.getLocusId()) == null) {
            return null;
        }
        return LocusIdCompat.toLocusIdCompat(locusId);
    }

    static Notification[] getNotificationArrayFromBundle(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Notification[]) || parcelableArray == null) {
            return (Notification[]) parcelableArray;
        }
        Notification[] notificationArr = new Notification[parcelableArray.length];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= parcelableArray.length) {
                bundle.putParcelableArray(str, notificationArr);
                return notificationArr;
            }
            notificationArr[i2] = (Notification) parcelableArray[i2];
            i = i2 + 1;
        }
    }

    public static boolean getOngoing(Notification notification) {
        return (notification.flags & 2) != 0;
    }

    public static boolean getOnlyAlertOnce(Notification notification) {
        return (notification.flags & 8) != 0;
    }

    public static List<Person> getPeople(Notification notification) {
        String[] stringArray;
        ArrayList arrayList = new ArrayList();
        if (Build.VERSION.SDK_INT >= 28) {
            ArrayList parcelableArrayList = notification.extras.getParcelableArrayList(EXTRA_PEOPLE_LIST);
            if (parcelableArrayList != null && !parcelableArrayList.isEmpty()) {
                Iterator it = parcelableArrayList.iterator();
                while (it.hasNext()) {
                    arrayList.add(Person.fromAndroidPerson((android.app.Person) it.next()));
                }
            }
        } else if (Build.VERSION.SDK_INT >= 19 && (stringArray = notification.extras.getStringArray(EXTRA_PEOPLE)) != null && stringArray.length != 0) {
            for (String str : stringArray) {
                arrayList.add(new Person.Builder().setUri(str).build());
            }
        }
        return arrayList;
    }

    public static Notification getPublicVersion(Notification notification) {
        if (Build.VERSION.SDK_INT >= 21) {
            return notification.publicVersion;
        }
        return null;
    }

    public static CharSequence getSettingsText(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getSettingsText();
        }
        return null;
    }

    public static String getShortcutId(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getShortcutId();
        }
        return null;
    }

    public static boolean getShowWhen(Notification notification) {
        return notification.extras.getBoolean(EXTRA_SHOW_WHEN);
    }

    public static String getSortKey(Notification notification) {
        if (Build.VERSION.SDK_INT >= 20) {
            return notification.getSortKey();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras.getString(NPStringFog.decode(new byte[]{81, 91, 1, 16, 14, 12, 84, 27, 22, 23, 17, 21, 95, 71, 17, 76, 18, 10, 66, 65, 46, 7, 24}, "05ebae", 2.0019085E9f));
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return NotificationCompatJellybean.getExtras(notification).getString(NPStringFog.decode(new byte[]{82, 90, 84, 68, 11, 13, 87, 26, 67, 67, 20, 20, 92, 70, 68, 24, 23, 11, 65, 64, 123, 83, 29}, "3406dd", -1463350106L));
        }
        return null;
    }

    public static CharSequence getSubText(Notification notification) {
        return notification.extras.getCharSequence(EXTRA_SUB_TEXT);
    }

    public static long getTimeoutAfter(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getTimeoutAfter();
        }
        return 0L;
    }

    public static boolean getUsesChronometer(Notification notification) {
        return notification.extras.getBoolean(EXTRA_SHOW_CHRONOMETER);
    }

    public static int getVisibility(Notification notification) {
        if (Build.VERSION.SDK_INT >= 21) {
            return notification.visibility;
        }
        return 0;
    }

    public static boolean isGroupSummary(Notification notification) {
        if (Build.VERSION.SDK_INT >= 20) {
            return (notification.flags & 512) != 0;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras.getBoolean(NPStringFog.decode(new byte[]{3, 88, 6, 23, 94, 92, 6, 24, 17, 16, 65, 69, 13, 68, 22, 75, 88, 70, 37, 68, 13, 16, 65, 102, 23, 91, 15, 4, 67, 76}, "b6be15", -2496));
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return NotificationCompatJellybean.getExtras(notification).getBoolean(NPStringFog.decode(new byte[]{0, 15, 1, 71, 93, 15, 5, 79, 22, 64, 66, 22, 14, 19, 17, 27, 91, 21, 38, 19, 10, 64, 66, 53, 20, 12, 8, 84, 64, 31}, "aae52f", 2029514009L));
        }
        return false;
    }
}
