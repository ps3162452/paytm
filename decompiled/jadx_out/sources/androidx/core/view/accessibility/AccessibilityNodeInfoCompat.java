package androidx.core.view.accessibility;

import android.R;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.os.BuildCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import n.NPStringFog;

/* JADX INFO: loaded from: classes6.dex */
public class AccessibilityNodeInfoCompat {
    public static final int ACTION_ACCESSIBILITY_FOCUS = 64;
    public static final int ACTION_CLEAR_ACCESSIBILITY_FOCUS = 128;
    public static final int ACTION_CLEAR_FOCUS = 2;
    public static final int ACTION_CLEAR_SELECTION = 8;
    public static final int ACTION_CLICK = 16;
    public static final int ACTION_COLLAPSE = 524288;
    public static final int ACTION_COPY = 16384;
    public static final int ACTION_CUT = 65536;
    public static final int ACTION_DISMISS = 1048576;
    public static final int ACTION_EXPAND = 262144;
    public static final int ACTION_FOCUS = 1;
    public static final int ACTION_LONG_CLICK = 32;
    public static final int ACTION_NEXT_AT_MOVEMENT_GRANULARITY = 256;
    public static final int ACTION_NEXT_HTML_ELEMENT = 1024;
    public static final int ACTION_PASTE = 32768;
    public static final int ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = 512;
    public static final int ACTION_PREVIOUS_HTML_ELEMENT = 2048;
    public static final int ACTION_SCROLL_BACKWARD = 8192;
    public static final int ACTION_SCROLL_FORWARD = 4096;
    public static final int ACTION_SELECT = 4;
    public static final int ACTION_SET_SELECTION = 131072;
    public static final int ACTION_SET_TEXT = 2097152;
    private static final int BOOLEAN_PROPERTY_IS_HEADING = 2;
    private static final int BOOLEAN_PROPERTY_IS_SHOWING_HINT = 4;
    private static final int BOOLEAN_PROPERTY_IS_TEXT_ENTRY_KEY = 8;
    private static final int BOOLEAN_PROPERTY_SCREEN_READER_FOCUSABLE = 1;
    public static final int FOCUS_ACCESSIBILITY = 2;
    public static final int FOCUS_INPUT = 1;
    public static final int MOVEMENT_GRANULARITY_CHARACTER = 1;
    public static final int MOVEMENT_GRANULARITY_LINE = 4;
    public static final int MOVEMENT_GRANULARITY_PAGE = 16;
    public static final int MOVEMENT_GRANULARITY_PARAGRAPH = 8;
    public static final int MOVEMENT_GRANULARITY_WORD = 2;
    private final AccessibilityNodeInfo mInfo;
    public int mParentVirtualDescendantId = -1;
    private int mVirtualDescendantId = -1;
    public static final String ACTION_ARGUMENT_COLUMN_INT = NPStringFog.decode(new byte[]{89, 8, 87, 23, 10, 92, 92, 72, 69, 12, 0, 66, 22, 7, 80, 6, 0, 70, 75, 15, 81, 12, 9, 92, 76, 31, 29, 4, 6, 65, 81, 9, 93, 75, 36, 103, 127, 51, 126, 32, 43, 97, 103, 37, 124, 41, 48, 120, 118, 57, 122, 43, 49}, "8f3ee5", -53229663L);
    public static final String ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN = NPStringFog.decode(new byte[]{35, 118, 97, 125, 121, 126, 61, 116, 103, 115, 99, 125, 39, 123, 97, 107, 115, 104, 54, 112, 123, 112, 105, 99, 39, 121, 112, 119, 98, 121, 45, 123, 106, 118, 121, 127, 46, 112, 116, 122}, "b55460", -5737);
    public static final String ACTION_ARGUMENT_HTML_ELEMENT_STRING = NPStringFog.decode(new byte[]{37, 115, 108, 125, 122, 43, 59, 113, 106, 115, 96, 40, 33, 126, 108, 107, 125, 49, 41, 124, 103, 113, 121, 32, 41, 117, 118, 96, 106, 54, 48, 98, 113, 122, 114}, "d0845e", 1484347465L);
    public static final String ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT = NPStringFog.decode(new byte[]{116, 37, 99, 43, 42, 125, 106, 39, 101, 37, 48, 126, 112, 40, 99, 61, 40, 124, 99, 35, 122, 39, 43, 103, 106, 33, 101, 35, 43, 102, 121, 39, 101, 43, 49, 106, 106, 47, 121, 54}, "5f7be3", true);
    public static final String ACTION_ARGUMENT_MOVE_WINDOW_X = NPStringFog.decode(new byte[]{34, 112, 98, 45, 126, 119, 60, 114, 100, 35, 100, 116, 38, 125, 98, 59, 124, 118, 53, 118, 105, 51, 120, 119, 39, 124, 97, 59, 105}, "c36d19", 123182437L);
    public static final String ACTION_ARGUMENT_MOVE_WINDOW_Y = NPStringFog.decode(new byte[]{121, 123, 48, 123, 46, 119, 103, 121, 54, 117, 52, 116, 125, 118, 48, 109, 44, 118, 110, 125, 59, 101, 40, 119, 124, 119, 51, 109, 56}, "88d2a9", 28548);
    public static final String ACTION_ARGUMENT_PRESS_AND_HOLD_DURATION_MILLIS_INT = NPStringFog.decode(new byte[]{85, 86, 5, 64, 92, 81, 80, 22, 23, 91, 86, 79, 26, 89, 2, 81, 86, 75, 71, 81, 3, 91, 95, 81, 64, 65, 79, 83, 80, 76, 93, 87, 15, 28, 114, 106, 115, 109, 44, 119, 125, 108, 107, 104, 51, 119, 96, 107, 107, 121, 47, 118, 108, 112, 123, 116, 37, 109, 119, 109, 102, 121, 53, 123, 124, 118, 107, 117, 40, 126, 127, 113, 103, 103, 40, 124, 103}, "48a238", -838970836L);
    public static final String ACTION_ARGUMENT_PROGRESS_VALUE = NPStringFog.decode(new byte[]{85, 93, 92, 71, 88, 90, 80, 29, 78, 92, 82, 68, 26, 82, 91, 86, 82, 64, 71, 90, 90, 92, 91, 90, 64, 74, 22, 84, 84, 71, 93, 92, 86, 27, 118, 97, 115, 102, 117, 112, 121, 103, 107, 99, 106, 122, 112, 97, 113, 96, 107, 106, 97, 114, 120, 102, 125}, "438573", 2.4414261E8f);
    public static final String ACTION_ARGUMENT_ROW_INT = NPStringFog.decode(new byte[]{84, 93, 1, 69, 87, 91, 81, 29, 19, 94, 93, 69, 27, 82, 6, 84, 93, 65, 70, 90, 7, 94, 84, 91, 65, 74, 75, 86, 91, 70, 92, 92, 11, 25, 121, 96, 114, 102, 40, 114, 118, 102, 106, 97, 42, 96, 103, 123, 123, 103}, "53e782", 695416575L);
    public static final String ACTION_ARGUMENT_SELECTION_END_INT = NPStringFog.decode(new byte[]{34, 118, 53, 120, 123, 126, 60, 116, 51, 118, 97, 125, 38, 123, 53, 110, 103, 117, 47, 112, 34, 101, 125, 127, 45, 106, 36, 127, 112, 111, 42, 123, 53}, "c5a140", false, true);
    public static final String ACTION_ARGUMENT_SELECTION_START_INT = NPStringFog.decode(new byte[]{120, 38, 103, 126, 125, 44, 102, 36, 97, 112, 103, 47, 124, 43, 103, 104, 97, 39, 117, 32, 112, 99, 123, 45, 119, 58, 96, 99, 115, 48, 109, 58, 122, 121, 102}, "9e372b", 1419317815L);
    public static final String ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE = NPStringFog.decode(new byte[]{114, 39, 103, 126, 125, 124, 108, 37, 97, 112, 103, 127, 118, 42, 103, 104, 97, 119, 103, 59, 103, 114, 106, 102, 108, 39, 123, 118, 96, 97, 118, 53, 102, 114, 124, 113, 118}, "3d3722", -2.9999132E7f);
    private static final String BOOLEAN_PROPERTY_KEY = NPStringFog.decode(new byte[]{4, 10, 1, 17, 86, 91, 1, 28, 75, 21, 80, 87, 18, 74, 4, 0, 90, 87, 22, 23, 12, 1, 80, 94, 12, 16, 28, 77, 120, 81, 6, 1, 22, 16, 80, 80, 12, 8, 12, 23, 64, 124, 10, 0, 0, 42, 87, 84, 10, 39, 10, 14, 73, 83, 17, 74, 39, 44, 118, 126, 32, 37, 43, 60, 105, 96, 42, 52, 32, 49, 109, 107, 58, 47, 32, 58}, "edec92", true);
    private static final String HINT_TEXT_KEY = NPStringFog.decode(new byte[]{89, 13, 93, 69, 87, 80, 92, 27, 23, 65, 81, 92, 79, 77, 88, 84, 91, 92, 75, 16, 80, 85, 81, 85, 81, 23, 64, 25, 121, 90, 91, 6, 74, 68, 81, 91, 81, 15, 80, 67, 65, 119, 87, 7, 92, 126, 86, 95, 87, 32, 86, 90, 72, 88, 76, 77, 113, 126, 118, 109, 103, 55, 124, 111, 108, 102, 115, 38, 96}, "8c9789", -819916813L);
    private static final String PANE_TITLE_KEY = NPStringFog.decode(new byte[]{84, 91, 86, 19, 89, 90, 81, 77, 28, 23, 95, 86, 66, 27, 83, 2, 85, 86, 70, 70, 91, 3, 95, 95, 92, 65, 75, 79, 119, 80, 86, 80, 65, 18, 95, 81, 92, 89, 91, 21, 79, 125, 90, 81, 87, 40, 88, 85, 90, 118, 93, 12, 70, 82, 65, 27, 98, 32, 120, 118, 106, 97, 123, 53, 122, 118, 106, 126, 119, 56}, "552a63", -27853);
    private static final String ROLE_DESCRIPTION_KEY = NPStringFog.decode(new byte[]{121, 83, 1, 85, 69, 22, 81, 82, 11, 92, 95, 17, 65, 126, 13, 84, 83, 44, 86, 86, 13, 30, 68, 10, 84, 85, 38, 85, 69, 6, 74, 89, 18, 68, 95, 10, 86}, "80b06e", 258273809L);
    private static final String SPANS_ACTION_ID_KEY = NPStringFog.decode(new byte[]{87, 12, 1, 69, 9, 15, 82, 26, 75, 65, 15, 3, 65, 76, 4, 84, 5, 3, 69, 17, 12, 85, 15, 10, 95, 22, 28, 25, 39, 5, 85, 7, 22, 68, 15, 4, 95, 14, 12, 67, 31, 40, 89, 6, 0, 126, 8, 0, 89, 33, 10, 90, 22, 7, 66, 76, 54, 103, 39, 40, 101, 61, 36, 116, 50, 47, 121, 44, 58, 126, 34, 57, 125, 39, 60}, "6be7ff", -1391896673L);
    private static final String SPANS_END_KEY = NPStringFog.decode(new byte[]{4, 94, 5, 23, 11, 93, 1, 72, 79, 19, 13, 81, 18, 30, 0, 6, 7, 81, 22, 67, 8, 7, 13, 88, 12, 68, 24, 75, 37, 87, 6, 85, 18, 22, 13, 86, 12, 92, 8, 17, 29, 122, 10, 84, 4, 44, 10, 82, 10, 115, 14, 8, 20, 85, 17, 30, 50, 53, 37, 122, 54, 111, 36, 43, 32, 107, 46, 117, 56}, "e0aed4", false);
    private static final String SPANS_FLAGS_KEY = NPStringFog.decode(new byte[]{85, 94, 84, 17, 12, 15, 80, 72, 30, 21, 10, 3, 67, 30, 81, 0, 0, 3, 71, 67, 89, 1, 10, 10, 93, 68, 73, 77, 34, 5, 87, 85, 67, 16, 10, 4, 93, 92, 89, 23, 26, 40, 91, 84, 85, 42, 13, 0, 91, 115, 95, 14, 19, 7, 64, 30, 99, 51, 34, 40, 103, 111, 118, 47, 34, 33, 103, 111, 123, 38, 58}, "400ccf", 1237038991L);
    private static final String SPANS_ID_KEY = NPStringFog.decode(new byte[]{3, 10, 7, 67, 11, 89, 6, 28, 77, 71, 13, 85, 21, 74, 2, 82, 7, 85, 17, 23, 10, 83, 13, 92, 11, 16, 26, 31, 37, 83, 1, 1, 16, 66, 13, 82, 11, 8, 10, 69, 29, 126, 13, 0, 6, 120, 10, 86, 13, 39, 12, 92, 20, 81, 22, 74, 48, 97, 37, 126, 49, 59, 42, 117, 59, 123, 39, 61}, "bdc1d0", -268378660L);
    private static final String SPANS_START_KEY = NPStringFog.decode(new byte[]{85, 95, 2, 69, 88, 81, 80, 73, 72, 65, 94, 93, 67, 31, 7, 84, 84, 93, 71, 66, 15, 85, 94, 84, 93, 69, 31, 25, 118, 91, 87, 84, 21, 68, 94, 90, 93, 93, 15, 67, 78, 118, 91, 85, 3, 126, 89, 94, 91, 114, 9, 90, 71, 89, 64, 31, 53, 103, 118, 118, 103, 110, 53, 99, 118, 106, 96, 110, 45, 114, 110}, "41f778", -32334);
    private static final String STATE_DESCRIPTION_KEY = NPStringFog.decode(new byte[]{88, 8, 82, 65, 86, 95, 93, 30, 24, 69, 80, 83, 78, 72, 87, 80, 90, 83, 74, 21, 95, 81, 80, 90, 80, 18, 79, 29, 120, 85, 90, 3, 69, 64, 80, 84, 80, 10, 95, 71, 64, 120, 86, 2, 83, 122, 87, 80, 86, 37, 89, 94, 73, 87, 77, 72, 101, 103, 120, 98, 124, 57, 114, 118, 106, 117, 107, 47, 102, 103, 112, 121, 119, 57, 125, 118, 96}, "9f6396", false);
    private static final String TOOLTIP_TEXT_KEY = NPStringFog.decode(new byte[]{82, 10, 80, 68, 87, 11, 87, 28, 26, 64, 81, 7, 68, 74, 85, 85, 91, 7, 64, 23, 93, 84, 81, 14, 90, 16, 77, 24, 121, 1, 80, 1, 71, 69, 81, 0, 90, 8, 93, 66, 65, 44, 92, 0, 81, 127, 86, 4, 92, 39, 91, 91, 72, 3, 71, 74, 96, 121, 119, 46, 103, 45, 100, 105, 108, 39, 107, 48, 107, 125, 125, 59}, "3d468b", -1.151515537E9d);
    private static int sClickableSpanId = 0;

    public static class AccessibilityActionCompat {
        public static final AccessibilityActionCompat ACTION_CONTEXT_CLICK;
        public static final AccessibilityActionCompat ACTION_HIDE_TOOLTIP;
        public static final AccessibilityActionCompat ACTION_IME_ENTER;
        public static final AccessibilityActionCompat ACTION_MOVE_WINDOW;
        public static final AccessibilityActionCompat ACTION_PAGE_DOWN;
        public static final AccessibilityActionCompat ACTION_PAGE_LEFT;
        public static final AccessibilityActionCompat ACTION_PAGE_RIGHT;
        public static final AccessibilityActionCompat ACTION_PAGE_UP;
        public static final AccessibilityActionCompat ACTION_PRESS_AND_HOLD;
        public static final AccessibilityActionCompat ACTION_SCROLL_DOWN;
        public static final AccessibilityActionCompat ACTION_SCROLL_LEFT;
        public static final AccessibilityActionCompat ACTION_SCROLL_RIGHT;
        public static final AccessibilityActionCompat ACTION_SCROLL_TO_POSITION;
        public static final AccessibilityActionCompat ACTION_SCROLL_UP;
        public static final AccessibilityActionCompat ACTION_SET_PROGRESS;
        public static final AccessibilityActionCompat ACTION_SHOW_ON_SCREEN;
        public static final AccessibilityActionCompat ACTION_SHOW_TOOLTIP;
        final Object mAction;
        protected final AccessibilityViewCommand mCommand;
        private final int mId;
        private final Class<? extends AccessibilityViewCommand.CommandArguments> mViewCommandArgumentClass;
        private static final String TAG = NPStringFog.decode(new byte[]{120, 8, 84, 76, 118, 83, 77, 80, 10, 91, 116, 95, 84, 73, 4, 65}, "99e570", 15841);
        public static final AccessibilityActionCompat ACTION_FOCUS = new AccessibilityActionCompat(1, null);
        public static final AccessibilityActionCompat ACTION_CLEAR_FOCUS = new AccessibilityActionCompat(2, null);
        public static final AccessibilityActionCompat ACTION_SELECT = new AccessibilityActionCompat(4, null);
        public static final AccessibilityActionCompat ACTION_CLEAR_SELECTION = new AccessibilityActionCompat(8, null);
        public static final AccessibilityActionCompat ACTION_CLICK = new AccessibilityActionCompat(16, null);
        public static final AccessibilityActionCompat ACTION_LONG_CLICK = new AccessibilityActionCompat(32, null);
        public static final AccessibilityActionCompat ACTION_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(64, null);
        public static final AccessibilityActionCompat ACTION_CLEAR_ACCESSIBILITY_FOCUS = new AccessibilityActionCompat(128, null);
        public static final AccessibilityActionCompat ACTION_NEXT_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(256, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.MoveAtGranularityArguments.class);
        public static final AccessibilityActionCompat ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY = new AccessibilityActionCompat(512, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.MoveAtGranularityArguments.class);
        public static final AccessibilityActionCompat ACTION_NEXT_HTML_ELEMENT = new AccessibilityActionCompat(1024, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.MoveHtmlArguments.class);
        public static final AccessibilityActionCompat ACTION_PREVIOUS_HTML_ELEMENT = new AccessibilityActionCompat(2048, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.MoveHtmlArguments.class);
        public static final AccessibilityActionCompat ACTION_SCROLL_FORWARD = new AccessibilityActionCompat(4096, null);
        public static final AccessibilityActionCompat ACTION_SCROLL_BACKWARD = new AccessibilityActionCompat(8192, null);
        public static final AccessibilityActionCompat ACTION_COPY = new AccessibilityActionCompat(16384, null);
        public static final AccessibilityActionCompat ACTION_PASTE = new AccessibilityActionCompat(32768, null);
        public static final AccessibilityActionCompat ACTION_CUT = new AccessibilityActionCompat(65536, null);
        public static final AccessibilityActionCompat ACTION_SET_SELECTION = new AccessibilityActionCompat(131072, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.SetSelectionArguments.class);
        public static final AccessibilityActionCompat ACTION_EXPAND = new AccessibilityActionCompat(262144, null);
        public static final AccessibilityActionCompat ACTION_COLLAPSE = new AccessibilityActionCompat(524288, null);
        public static final AccessibilityActionCompat ACTION_DISMISS = new AccessibilityActionCompat(1048576, null);
        public static final AccessibilityActionCompat ACTION_SET_TEXT = new AccessibilityActionCompat(2097152, (CharSequence) null, (Class<? extends AccessibilityViewCommand.CommandArguments>) AccessibilityViewCommand.SetTextArguments.class);

        static {
            ACTION_SHOW_ON_SCREEN = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_ON_SCREEN : null, R.id.accessibilityActionShowOnScreen, null, null, null);
            ACTION_SCROLL_TO_POSITION = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_TO_POSITION : null, R.id.accessibilityActionScrollToPosition, null, null, AccessibilityViewCommand.ScrollToPositionArguments.class);
            ACTION_SCROLL_UP = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_UP : null, R.id.accessibilityActionScrollUp, null, null, null);
            ACTION_SCROLL_LEFT = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_LEFT : null, R.id.accessibilityActionScrollLeft, null, null, null);
            ACTION_SCROLL_DOWN = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_DOWN : null, R.id.accessibilityActionScrollDown, null, null, null);
            ACTION_SCROLL_RIGHT = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_RIGHT : null, R.id.accessibilityActionScrollRight, null, null, null);
            ACTION_PAGE_UP = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_UP : null, R.id.accessibilityActionPageUp, null, null, null);
            ACTION_PAGE_DOWN = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_DOWN : null, R.id.accessibilityActionPageDown, null, null, null);
            ACTION_PAGE_LEFT = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_LEFT : null, R.id.accessibilityActionPageLeft, null, null, null);
            ACTION_PAGE_RIGHT = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 29 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PAGE_RIGHT : null, R.id.accessibilityActionPageRight, null, null, null);
            ACTION_CONTEXT_CLICK = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 23 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_CONTEXT_CLICK : null, R.id.accessibilityActionContextClick, null, null, null);
            ACTION_SET_PROGRESS = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 24 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SET_PROGRESS : null, R.id.accessibilityActionSetProgress, null, null, AccessibilityViewCommand.SetProgressArguments.class);
            ACTION_MOVE_WINDOW = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 26 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_MOVE_WINDOW : null, R.id.accessibilityActionMoveWindow, null, null, AccessibilityViewCommand.MoveWindowArguments.class);
            ACTION_SHOW_TOOLTIP = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_SHOW_TOOLTIP : null, R.id.accessibilityActionShowTooltip, null, null, null);
            ACTION_HIDE_TOOLTIP = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 28 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_HIDE_TOOLTIP : null, R.id.accessibilityActionHideTooltip, null, null, null);
            ACTION_PRESS_AND_HOLD = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_PRESS_AND_HOLD : null, R.id.accessibilityActionPressAndHold, null, null, null);
            ACTION_IME_ENTER = new AccessibilityActionCompat(Build.VERSION.SDK_INT >= 30 ? AccessibilityNodeInfo.AccessibilityAction.ACTION_IME_ENTER : null, R.id.accessibilityActionImeEnter, null, null, null);
        }

        public AccessibilityActionCompat(int i, CharSequence charSequence) {
            this(null, i, charSequence, null, null);
        }

        public AccessibilityActionCompat(int i, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
            this(null, i, charSequence, accessibilityViewCommand, null);
        }

        private AccessibilityActionCompat(int i, CharSequence charSequence, Class<? extends AccessibilityViewCommand.CommandArguments> cls) {
            this(null, i, charSequence, null, cls);
        }

        AccessibilityActionCompat(Object obj) {
            this(obj, 0, null, null, null);
        }

        AccessibilityActionCompat(Object obj, int i, CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand, Class<? extends AccessibilityViewCommand.CommandArguments> cls) {
            this.mId = i;
            this.mCommand = accessibilityViewCommand;
            if (Build.VERSION.SDK_INT < 21 || obj != null) {
                this.mAction = obj;
            } else {
                this.mAction = new AccessibilityNodeInfo.AccessibilityAction(i, charSequence);
            }
            this.mViewCommandArgumentClass = cls;
        }

        public AccessibilityActionCompat createReplacementAction(CharSequence charSequence, AccessibilityViewCommand accessibilityViewCommand) {
            return new AccessibilityActionCompat(null, this.mId, charSequence, accessibilityViewCommand, this.mViewCommandArgumentClass);
        }

        public boolean equals(Object obj) {
            if (obj == null || !(obj instanceof AccessibilityActionCompat)) {
                return false;
            }
            AccessibilityActionCompat accessibilityActionCompat = (AccessibilityActionCompat) obj;
            Object obj2 = this.mAction;
            if (obj2 == null) {
                if (accessibilityActionCompat.mAction != null) {
                    return false;
                }
            } else if (!obj2.equals(accessibilityActionCompat.mAction)) {
                return false;
            }
            return true;
        }

        public int getId() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.mAction).getId();
            }
            return 0;
        }

        public CharSequence getLabel() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.AccessibilityAction) this.mAction).getLabel();
            }
            return null;
        }

        public int hashCode() {
            Object obj = this.mAction;
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }

        public boolean perform(View view, Bundle bundle) {
            AccessibilityViewCommand.CommandArguments commandArgumentsNewInstance;
            Exception exc;
            AccessibilityViewCommand.CommandArguments commandArguments = null;
            if (this.mCommand == null) {
                return false;
            }
            Class<? extends AccessibilityViewCommand.CommandArguments> cls = this.mViewCommandArgumentClass;
            if (cls != null) {
                try {
                    commandArgumentsNewInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Exception e) {
                    exc = e;
                }
                try {
                    commandArgumentsNewInstance.setBundle(bundle);
                } catch (Exception e2) {
                    exc = e2;
                    commandArguments = commandArgumentsNewInstance;
                    Class<? extends AccessibilityViewCommand.CommandArguments> cls2 = this.mViewCommandArgumentClass;
                    Log.e(TAG, NPStringFog.decode(new byte[]{119, 4, 81, 89, 93, 85, 17, 17, 87, 21, 93, 73, 84, 6, 77, 65, 93, 17, 82, 10, 85, 88, 89, 95, 85, 69, 79, 92, 76, 89, 17, 4, 74, 82, 77, 92, 84, 11, 76, 21, 91, 93, 80, 22, 75, 21, 110, 88, 84, 18, 123, 90, 85, 92, 80, 11, 92, 116, 74, 86, 68, 8, 93, 91, 76, 11, 17}, "1e8581", 25641) + (cls2 == null ? NPStringFog.decode(new byte[]{10, 69, 13, 88}, "d0a412", -1.142803E9f) : cls2.getName()), exc);
                    commandArgumentsNewInstance = commandArguments;
                }
            } else {
                commandArgumentsNewInstance = null;
            }
            return this.mCommand.perform(view, commandArgumentsNewInstance);
        }
    }

    public static class CollectionInfoCompat {
        public static final int SELECTION_MODE_MULTIPLE = 2;
        public static final int SELECTION_MODE_NONE = 0;
        public static final int SELECTION_MODE_SINGLE = 1;
        final Object mInfo;

        CollectionInfoCompat(Object obj) {
            this.mInfo = obj;
        }

        public static CollectionInfoCompat obtain(int i, int i2, boolean z) {
            return Build.VERSION.SDK_INT >= 19 ? new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z)) : new CollectionInfoCompat(null);
        }

        public static CollectionInfoCompat obtain(int i, int i2, boolean z, int i3) {
            return Build.VERSION.SDK_INT >= 21 ? new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z, i3)) : Build.VERSION.SDK_INT >= 19 ? new CollectionInfoCompat(AccessibilityNodeInfo.CollectionInfo.obtain(i, i2, z)) : new CollectionInfoCompat(null);
        }

        public int getColumnCount() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionInfo) this.mInfo).getColumnCount();
            }
            return -1;
        }

        public int getRowCount() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionInfo) this.mInfo).getRowCount();
            }
            return -1;
        }

        public int getSelectionMode() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.CollectionInfo) this.mInfo).getSelectionMode();
            }
            return 0;
        }

        public boolean isHierarchical() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionInfo) this.mInfo).isHierarchical();
            }
            return false;
        }
    }

    public static class CollectionItemInfoCompat {
        final Object mInfo;

        CollectionItemInfoCompat(Object obj) {
            this.mInfo = obj;
        }

        public static CollectionItemInfoCompat obtain(int i, int i2, int i3, int i4, boolean z) {
            return Build.VERSION.SDK_INT >= 19 ? new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z)) : new CollectionItemInfoCompat(null);
        }

        public static CollectionItemInfoCompat obtain(int i, int i2, int i3, int i4, boolean z, boolean z2) {
            return Build.VERSION.SDK_INT >= 21 ? new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z, z2)) : Build.VERSION.SDK_INT >= 19 ? new CollectionItemInfoCompat(AccessibilityNodeInfo.CollectionItemInfo.obtain(i, i2, i3, i4, z)) : new CollectionItemInfoCompat(null);
        }

        public int getColumnIndex() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.mInfo).getColumnIndex();
            }
            return 0;
        }

        public int getColumnSpan() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.mInfo).getColumnSpan();
            }
            return 0;
        }

        public int getRowIndex() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.mInfo).getRowIndex();
            }
            return 0;
        }

        public int getRowSpan() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.mInfo).getRowSpan();
            }
            return 0;
        }

        @Deprecated
        public boolean isHeading() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.mInfo).isHeading();
            }
            return false;
        }

        public boolean isSelected() {
            if (Build.VERSION.SDK_INT >= 21) {
                return ((AccessibilityNodeInfo.CollectionItemInfo) this.mInfo).isSelected();
            }
            return false;
        }
    }

    public static class RangeInfoCompat {
        public static final int RANGE_TYPE_FLOAT = 1;
        public static final int RANGE_TYPE_INT = 0;
        public static final int RANGE_TYPE_PERCENT = 2;
        final Object mInfo;

        RangeInfoCompat(Object obj) {
            this.mInfo = obj;
        }

        public static RangeInfoCompat obtain(int i, float f, float f2, float f3) {
            return Build.VERSION.SDK_INT >= 19 ? new RangeInfoCompat(AccessibilityNodeInfo.RangeInfo.obtain(i, f, f2, f3)) : new RangeInfoCompat(null);
        }

        public float getCurrent() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.RangeInfo) this.mInfo).getCurrent();
            }
            return 0.0f;
        }

        public float getMax() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.RangeInfo) this.mInfo).getMax();
            }
            return 0.0f;
        }

        public float getMin() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.RangeInfo) this.mInfo).getMin();
            }
            return 0.0f;
        }

        public int getType() {
            if (Build.VERSION.SDK_INT >= 19) {
                return ((AccessibilityNodeInfo.RangeInfo) this.mInfo).getType();
            }
            return 0;
        }
    }

    public static final class TouchDelegateInfoCompat {
        final AccessibilityNodeInfo.TouchDelegateInfo mInfo;

        TouchDelegateInfoCompat(AccessibilityNodeInfo.TouchDelegateInfo touchDelegateInfo) {
            this.mInfo = touchDelegateInfo;
        }

        public TouchDelegateInfoCompat(Map<Region, View> map) {
            if (Build.VERSION.SDK_INT >= 29) {
                this.mInfo = new AccessibilityNodeInfo.TouchDelegateInfo(map);
            } else {
                this.mInfo = null;
            }
        }

        public Region getRegionAt(int i) {
            if (Build.VERSION.SDK_INT >= 29) {
                return this.mInfo.getRegionAt(i);
            }
            return null;
        }

        public int getRegionCount() {
            if (Build.VERSION.SDK_INT >= 29) {
                return this.mInfo.getRegionCount();
            }
            return 0;
        }

        public AccessibilityNodeInfoCompat getTargetForRegion(Region region) {
            AccessibilityNodeInfo targetForRegion;
            if (Build.VERSION.SDK_INT < 29 || (targetForRegion = this.mInfo.getTargetForRegion(region)) == null) {
                return null;
            }
            return AccessibilityNodeInfoCompat.wrap(targetForRegion);
        }
    }

    private AccessibilityNodeInfoCompat(AccessibilityNodeInfo accessibilityNodeInfo) {
        this.mInfo = accessibilityNodeInfo;
    }

    @Deprecated
    public AccessibilityNodeInfoCompat(Object obj) {
        this.mInfo = (AccessibilityNodeInfo) obj;
    }

    private void addSpanLocationToExtras(ClickableSpan clickableSpan, Spanned spanned, int i) {
        extrasIntList(SPANS_START_KEY).add(Integer.valueOf(spanned.getSpanStart(clickableSpan)));
        extrasIntList(SPANS_END_KEY).add(Integer.valueOf(spanned.getSpanEnd(clickableSpan)));
        extrasIntList(SPANS_FLAGS_KEY).add(Integer.valueOf(spanned.getSpanFlags(clickableSpan)));
        extrasIntList(SPANS_ID_KEY).add(Integer.valueOf(i));
    }

    private void clearExtrasSpans() {
        if (Build.VERSION.SDK_INT >= 19) {
            this.mInfo.getExtras().remove(SPANS_START_KEY);
            this.mInfo.getExtras().remove(SPANS_END_KEY);
            this.mInfo.getExtras().remove(SPANS_FLAGS_KEY);
            this.mInfo.getExtras().remove(SPANS_ID_KEY);
        }
    }

    private List<Integer> extrasIntList(String str) {
        if (Build.VERSION.SDK_INT < 19) {
            return new ArrayList();
        }
        ArrayList<Integer> integerArrayList = this.mInfo.getExtras().getIntegerArrayList(str);
        if (integerArrayList != null) {
            return integerArrayList;
        }
        ArrayList<Integer> arrayList = new ArrayList<>();
        this.mInfo.getExtras().putIntegerArrayList(str, arrayList);
        return arrayList;
    }

    private static String getActionSymbolicName(int i) {
        switch (i) {
            case 1:
                return NPStringFog.decode(new byte[]{34, 114, 98, 127, 44, 45, 60, 119, 121, 117, 54, 48}, "c166cc", -1.395955206E9d);
            case 2:
                return NPStringFog.decode(new byte[]{37, 34, 103, 121, 42, 44, 59, 34, 127, 117, 36, 48, 59, 39, 124, 115, 48, 49}, "da30eb", 1.079512981E9d);
            case 4:
                return NPStringFog.decode(new byte[]{118, 122, 50, 120, 127, 40, 104, 106, 35, 125, 117, 37, 99}, "79f10f", -105831495L);
            case 8:
                return NPStringFog.decode(new byte[]{115, 119, 100, 40, 125, 118, 109, 119, 124, 36, 115, 106, 109, 103, 117, 45, 119, 123, 102, 125, 127, 47}, "240a28", 1.0874596E9f);
            case 16:
                return NPStringFog.decode(new byte[]{121, 113, 108, 124, 44, 43, 103, 113, 116, 124, 32, 46}, "8285ce", true, false);
            case 32:
                return NPStringFog.decode(new byte[]{35, 37, 98, 47, 124, 118, 61, 42, 121, 40, 116, 103, 33, 42, 127, 37, 120}, "bf6f38", 9.5425197E8f);
            case 64:
                return NPStringFog.decode(new byte[]{39, 32, 55, 125, 121, 121, 57, 34, 32, 119, 115, 100, 53, 42, 33, 125, 122, 126, 50, 58, 60, 114, 121, 116, 51, 48}, "fcc467", false, false);
            case 128:
                return NPStringFog.decode(new byte[]{114, 123, 99, 126, 45, 40, 108, 123, 123, 114, 35, 52, 108, 121, 116, 116, 39, 53, 96, 113, 117, 126, 46, 47, 103, 97, 104, 113, 45, 37, 102, 107}, "3877bf", -3.98112741E8d);
            case 256:
                return NPStringFog.decode(new byte[]{112, 34, 103, 125, 125, 124, 110, 47, 118, 108, 102, 109, 112, 53, 108, 121, 125, 100, 116, 44, 118, 122, 102, 109, 118, 51, 114, 122, 103, 126, 112, 51, 122, 96, 107}, "1a3422", 4.57309123E8d);
            case 512:
                return NPStringFog.decode(new byte[]{120, 33, 54, 121, 118, 45, 102, 50, 48, 117, 111, 42, 118, 55, 49, 111, 120, 55, 102, 47, 45, 102, 124, 46, 124, 44, 54, 111, 126, 49, 120, 44, 55, 124, 120, 49, 112, 54, 59}, "9bb09c", false);
            case 1024:
                return NPStringFog.decode(new byte[]{37, 34, 54, 42, 118, 127, 59, 47, 39, 59, 109, 110, 44, 53, 47, 47, 102, 116, 40, 36, 47, 38, 119, 101}, "dabc91", 820489805L);
            case 2048:
                return NPStringFog.decode(new byte[]{35, 113, 96, 44, 43, 118, 61, 98, 102, 32, 50, 113, 45, 103, 103, 58, 44, 108, 47, 126, 107, 32, 40, 125, 47, 119, 122, 49}, "b24ed8", false);
            case 4096:
                return NPStringFog.decode(new byte[]{37, 123, 54, 112, 125, 42, 59, 107, 33, 107, 125, 40, 40, 103, 36, 118, 96, 51, 37, 106, 38}, "d8b92d", -7.853082E8f);
            case 8192:
                return NPStringFog.decode(new byte[]{121, 114, 53, 121, 46, 47, 103, 98, 34, 98, 46, 45, 116, 110, 35, 113, 34, 42, 111, 112, 51, 116}, "81a0aa", -1146177008L);
            case 16384:
                return NPStringFog.decode(new byte[]{117, 116, 98, 121, 42, 43, 107, 116, 121, 96, 60}, "4760ee", -13305);
            case 32768:
                return NPStringFog.decode(new byte[]{115, 119, 100, 125, 41, 126, 109, 100, 113, 103, 50, 117}, "2404f0", -9.817068E8f);
            case 65536:
                return NPStringFog.decode(new byte[]{119, 119, 99, 40, 119, 47, 105, 119, 98, 53}, "647a8a", -1291622950L);
            case 131072:
                return NPStringFog.decode(new byte[]{120, 34, 53, 113, 41, 127, 102, 50, 36, 108, 57, 98, 124, 45, 36, 123, 50, 120, 118, 47}, "9aa8f1", 3.2731594E8f);
            case 262144:
                return NPStringFog.decode(new byte[]{114, 123, 102, 123, 126, 124, 108, 125, 106, 98, 112, 124, 119}, "382212", true);
            case 524288:
                return NPStringFog.decode(new byte[]{34, 116, 49, 125, 126, 122, 60, 116, 42, 120, 125, 117, 51, 100, 32}, "c7e414", false, true);
            case 2097152:
                return NPStringFog.decode(new byte[]{114, 113, 98, 121, 123, 127, 108, 97, 115, 100, 107, 101, 118, 106, 98}, "326041", 2048298447L);
            case R.id.accessibilityActionShowOnScreen:
                return NPStringFog.decode(new byte[]{32, 39, 109, 124, 123, 45, 62, 55, 113, 122, 99, 60, 46, 42, 102, 102, 119, 49, 36, 33, 119}, "ad954c", -2.5175682E8f);
            case R.id.accessibilityActionScrollToPosition:
                return NPStringFog.decode(new byte[]{115, 32, 103, 113, 122, 126, 109, 48, 112, 106, 122, 124, 126, 60, 103, 119, 106, 96, 125, 48, 122, 108, 124, 127, 124}, "2c3850", false, false);
            case R.id.accessibilityActionScrollUp:
                return NPStringFog.decode(new byte[]{112, 114, 55, 126, 46, 118, 110, 98, 32, 101, 46, 116, 125, 110, 54, 103}, "11c7a8", -8.961419E8f);
            case R.id.accessibilityActionScrollLeft:
                return NPStringFog.decode(new byte[]{36, 117, 108, 123, 121, 123, 58, 101, 123, 96, 121, 121, 41, 105, 116, 119, 112, 97}, "e68265", false);
            case R.id.accessibilityActionScrollDown:
                return NPStringFog.decode(new byte[]{116, 114, 49, 125, 127, 121, 106, 98, 38, 102, 127, 123, 121, 110, 33, 123, 103, 121}, "51e407", true, false);
            case R.id.accessibilityActionScrollRight:
                return NPStringFog.decode(new byte[]{32, 117, 49, 127, 45, 42, 62, 101, 38, 100, 45, 40, 45, 105, 55, 127, 37, 44, 53}, "a6e6bd", 1.345582333E9d);
            case R.id.accessibilityActionContextClick:
                return NPStringFog.decode(new byte[]{37, 119, 108, 40, 120, 122, 59, 119, 119, 47, 99, 113, 60, 96, 103, 34, 123, 125, 39, 127}, "d48a74", -1.6059763E9f);
            case R.id.accessibilityActionSetProgress:
                return NPStringFog.decode(new byte[]{112, 38, 48, 43, 120, 122, 110, 54, 33, 54, 104, 100, 99, 42, 35, 48, 114, 103, 98}, "1edb74", true, true);
            case R.id.accessibilityActionMoveWindow:
                return NPStringFog.decode(new byte[]{118, 32, 53, 120, 43, 43, 104, 46, 46, 103, 33, 58, 96, 42, 47, 117, 43, 50}, "7ca1de", 1.867477E9f);
            case R.id.accessibilityActionShowTooltip:
                return NPStringFog.decode(new byte[]{113, 37, 54, 122, 126, 121, 111, 53, 42, 124, 102, 104, 100, 41, 45, 127, 101, 126, 96}, "0fb317", -9.986743E8f);
            case R.id.accessibilityActionHideTooltip:
                return NPStringFog.decode(new byte[]{116, 113, 109, 43, 42, 43, 106, 122, 112, 38, 32, 58, 97, 125, 118, 46, 49, 44, 101}, "529bee", -14125726L);
            case R.id.accessibilityActionPageUp:
                return NPStringFog.decode(new byte[]{117, 119, 97, 121, 127, 127, 107, 100, 116, 119, 117, 110, 97, 100}, "445001", 2058124745L);
            case R.id.accessibilityActionPageDown:
                return NPStringFog.decode(new byte[]{117, 38, 54, 126, 123, 126, 107, 53, 35, 112, 113, 111, 112, 42, 53, 121}, "4eb740", -49547753L);
            case R.id.accessibilityActionPageLeft:
                return NPStringFog.decode(new byte[]{32, 112, 103, 42, 127, 126, 62, 99, 114, 36, 117, 111, 45, 118, 117, 55}, "a33c00", false, false);
            case R.id.accessibilityActionPageRight:
                return NPStringFog.decode(new byte[]{118, 112, 50, 113, 118, 44, 104, 99, 39, 127, 124, 61, 101, 122, 33, 112, 109}, "73f89b", 1570);
            case R.id.accessibilityActionPressAndHold:
                return NPStringFog.decode(new byte[]{115, 119, 102, 45, 123, 43, 109, 100, 96, 33, 103, 54, 109, 117, 124, 32, 107, 45, 125, 120, 118}, "242d4e", 99172994L);
            case R.id.accessibilityActionImeEnter:
                return NPStringFog.decode(new byte[]{35, 39, 100, 112, 125, 123, 61, 45, 125, 124, 109, 112, 44, 48, 117, 107}, "bd0925", 1.11549735E9d);
            default:
                return NPStringFog.decode(new byte[]{116, 32, 99, 124, 118, 123, 106, 54, 121, 126, 119, 122, 98, 45}, "5c7595", 2356);
        }
    }

    private boolean getBooleanProperty(int i) {
        Bundle extras = getExtras();
        return extras != null && (extras.getInt(BOOLEAN_PROPERTY_KEY, 0) & i) == i;
    }

    public static ClickableSpan[] getClickableSpans(CharSequence charSequence) {
        if (charSequence instanceof Spanned) {
            return (ClickableSpan[]) ((Spanned) charSequence).getSpans(0, charSequence.length(), ClickableSpan.class);
        }
        return null;
    }

    private SparseArray<WeakReference<ClickableSpan>> getOrCreateSpansFromViewTags(View view) {
        SparseArray<WeakReference<ClickableSpan>> spansFromViewTags = getSpansFromViewTags(view);
        if (spansFromViewTags != null) {
            return spansFromViewTags;
        }
        SparseArray<WeakReference<ClickableSpan>> sparseArray = new SparseArray<>();
        view.setTag(androidx.core.R.id.tag_accessibility_clickable_spans, sparseArray);
        return sparseArray;
    }

    private SparseArray<WeakReference<ClickableSpan>> getSpansFromViewTags(View view) {
        return (SparseArray) view.getTag(androidx.core.R.id.tag_accessibility_clickable_spans);
    }

    private boolean hasSpans() {
        return !extrasIntList(SPANS_START_KEY).isEmpty();
    }

    private int idForClickableSpan(ClickableSpan clickableSpan, SparseArray<WeakReference<ClickableSpan>> sparseArray) {
        if (sparseArray != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= sparseArray.size()) {
                    break;
                }
                if (clickableSpan.equals(sparseArray.valueAt(i2).get())) {
                    return sparseArray.keyAt(i2);
                }
                i = i2 + 1;
            }
        }
        int i3 = sClickableSpanId;
        sClickableSpanId = i3 + 1;
        return i3;
    }

    public static AccessibilityNodeInfoCompat obtain() {
        return wrap(AccessibilityNodeInfo.obtain());
    }

    public static AccessibilityNodeInfoCompat obtain(View view) {
        return wrap(AccessibilityNodeInfo.obtain(view));
    }

    public static AccessibilityNodeInfoCompat obtain(View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            return wrapNonNullInstance(AccessibilityNodeInfo.obtain(view, i));
        }
        return null;
    }

    public static AccessibilityNodeInfoCompat obtain(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        return wrap(AccessibilityNodeInfo.obtain(accessibilityNodeInfoCompat.mInfo));
    }

    private void removeCollectedSpans(View view) {
        SparseArray<WeakReference<ClickableSpan>> spansFromViewTags = getSpansFromViewTags(view);
        if (spansFromViewTags != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < spansFromViewTags.size(); i++) {
                if (spansFromViewTags.valueAt(i).get() == null) {
                    arrayList.add(Integer.valueOf(i));
                }
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                spansFromViewTags.remove(((Integer) arrayList.get(i2)).intValue());
            }
        }
    }

    private void setBooleanProperty(int i, boolean z) {
        Bundle extras = getExtras();
        if (extras != null) {
            extras.putInt(BOOLEAN_PROPERTY_KEY, (z ? i : 0) | (extras.getInt(BOOLEAN_PROPERTY_KEY, 0) & (i ^ (-1))));
        }
    }

    public static AccessibilityNodeInfoCompat wrap(AccessibilityNodeInfo accessibilityNodeInfo) {
        return new AccessibilityNodeInfoCompat(accessibilityNodeInfo);
    }

    static AccessibilityNodeInfoCompat wrapNonNullInstance(Object obj) {
        if (obj != null) {
            return new AccessibilityNodeInfoCompat(obj);
        }
        return null;
    }

    public void addAction(int i) {
        this.mInfo.addAction(i);
    }

    public void addAction(AccessibilityActionCompat accessibilityActionCompat) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.mInfo.addAction((AccessibilityNodeInfo.AccessibilityAction) accessibilityActionCompat.mAction);
        }
    }

    public void addChild(View view) {
        this.mInfo.addChild(view);
    }

    public void addChild(View view, int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.mInfo.addChild(view, i);
        }
    }

    public void addSpansToExtras(CharSequence charSequence, View view) {
        if (Build.VERSION.SDK_INT < 19 || Build.VERSION.SDK_INT >= 26) {
            return;
        }
        clearExtrasSpans();
        removeCollectedSpans(view);
        ClickableSpan[] clickableSpans = getClickableSpans(charSequence);
        if (clickableSpans == null || clickableSpans.length <= 0) {
            return;
        }
        getExtras().putInt(SPANS_ACTION_ID_KEY, androidx.core.R.id.accessibility_action_clickable_span);
        SparseArray<WeakReference<ClickableSpan>> orCreateSpansFromViewTags = getOrCreateSpansFromViewTags(view);
        for (int i = 0; clickableSpans != null && i < clickableSpans.length; i++) {
            int iIdForClickableSpan = idForClickableSpan(clickableSpans[i], orCreateSpansFromViewTags);
            orCreateSpansFromViewTags.put(iIdForClickableSpan, new WeakReference<>(clickableSpans[i]));
            addSpanLocationToExtras(clickableSpans[i], (Spanned) charSequence, iIdForClickableSpan);
        }
    }

    public boolean canOpenPopup() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.mInfo.canOpenPopup();
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof AccessibilityNodeInfoCompat)) {
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) obj;
            AccessibilityNodeInfo accessibilityNodeInfo = this.mInfo;
            if (accessibilityNodeInfo == null) {
                if (accessibilityNodeInfoCompat.mInfo != null) {
                    return false;
                }
            } else if (!accessibilityNodeInfo.equals(accessibilityNodeInfoCompat.mInfo)) {
                return false;
            }
            return this.mVirtualDescendantId == accessibilityNodeInfoCompat.mVirtualDescendantId && this.mParentVirtualDescendantId == accessibilityNodeInfoCompat.mParentVirtualDescendantId;
        }
        return false;
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByText(String str) {
        ArrayList arrayList = new ArrayList();
        List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByText = this.mInfo.findAccessibilityNodeInfosByText(str);
        int size = listFindAccessibilityNodeInfosByText.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(wrap(listFindAccessibilityNodeInfosByText.get(i)));
        }
        return arrayList;
    }

    public List<AccessibilityNodeInfoCompat> findAccessibilityNodeInfosByViewId(String str) {
        if (Build.VERSION.SDK_INT < 18) {
            return Collections.emptyList();
        }
        List<AccessibilityNodeInfo> listFindAccessibilityNodeInfosByViewId = this.mInfo.findAccessibilityNodeInfosByViewId(str);
        ArrayList arrayList = new ArrayList();
        Iterator<AccessibilityNodeInfo> it = listFindAccessibilityNodeInfosByViewId.iterator();
        while (it.hasNext()) {
            arrayList.add(wrap(it.next()));
        }
        return arrayList;
    }

    public AccessibilityNodeInfoCompat findFocus(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            return wrapNonNullInstance(this.mInfo.findFocus(i));
        }
        return null;
    }

    public AccessibilityNodeInfoCompat focusSearch(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            return wrapNonNullInstance(this.mInfo.focusSearch(i));
        }
        return null;
    }

    public List<AccessibilityActionCompat> getActionList() {
        List<AccessibilityNodeInfo.AccessibilityAction> actionList = Build.VERSION.SDK_INT >= 21 ? this.mInfo.getActionList() : null;
        if (actionList == null) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        int size = actionList.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(new AccessibilityActionCompat(actionList.get(i)));
        }
        return arrayList;
    }

    public int getActions() {
        return this.mInfo.getActions();
    }

    @Deprecated
    public void getBoundsInParent(Rect rect) {
        this.mInfo.getBoundsInParent(rect);
    }

    public void getBoundsInScreen(Rect rect) {
        this.mInfo.getBoundsInScreen(rect);
    }

    public AccessibilityNodeInfoCompat getChild(int i) {
        return wrapNonNullInstance(this.mInfo.getChild(i));
    }

    public int getChildCount() {
        return this.mInfo.getChildCount();
    }

    public CharSequence getClassName() {
        return this.mInfo.getClassName();
    }

    public CollectionInfoCompat getCollectionInfo() {
        AccessibilityNodeInfo.CollectionInfo collectionInfo;
        if (Build.VERSION.SDK_INT < 19 || (collectionInfo = this.mInfo.getCollectionInfo()) == null) {
            return null;
        }
        return new CollectionInfoCompat(collectionInfo);
    }

    public CollectionItemInfoCompat getCollectionItemInfo() {
        AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo;
        if (Build.VERSION.SDK_INT < 19 || (collectionItemInfo = this.mInfo.getCollectionItemInfo()) == null) {
            return null;
        }
        return new CollectionItemInfoCompat(collectionItemInfo);
    }

    public CharSequence getContentDescription() {
        return this.mInfo.getContentDescription();
    }

    public int getDrawingOrder() {
        if (Build.VERSION.SDK_INT >= 24) {
            return this.mInfo.getDrawingOrder();
        }
        return 0;
    }

    public CharSequence getError() {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.mInfo.getError();
        }
        return null;
    }

    public Bundle getExtras() {
        return Build.VERSION.SDK_INT >= 19 ? this.mInfo.getExtras() : new Bundle();
    }

    public CharSequence getHintText() {
        if (Build.VERSION.SDK_INT >= 26) {
            return this.mInfo.getHintText();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return this.mInfo.getExtras().getCharSequence(HINT_TEXT_KEY);
        }
        return null;
    }

    @Deprecated
    public Object getInfo() {
        return this.mInfo;
    }

    public int getInputType() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.mInfo.getInputType();
        }
        return 0;
    }

    public AccessibilityNodeInfoCompat getLabelFor() {
        if (Build.VERSION.SDK_INT >= 17) {
            return wrapNonNullInstance(this.mInfo.getLabelFor());
        }
        return null;
    }

    public AccessibilityNodeInfoCompat getLabeledBy() {
        if (Build.VERSION.SDK_INT >= 17) {
            return wrapNonNullInstance(this.mInfo.getLabeledBy());
        }
        return null;
    }

    public int getLiveRegion() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.mInfo.getLiveRegion();
        }
        return 0;
    }

    public int getMaxTextLength() {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.mInfo.getMaxTextLength();
        }
        return -1;
    }

    public int getMovementGranularities() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInfo.getMovementGranularities();
        }
        return 0;
    }

    public CharSequence getPackageName() {
        return this.mInfo.getPackageName();
    }

    public CharSequence getPaneTitle() {
        if (Build.VERSION.SDK_INT >= 28) {
            return this.mInfo.getPaneTitle();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return this.mInfo.getExtras().getCharSequence(PANE_TITLE_KEY);
        }
        return null;
    }

    public AccessibilityNodeInfoCompat getParent() {
        return wrapNonNullInstance(this.mInfo.getParent());
    }

    public RangeInfoCompat getRangeInfo() {
        AccessibilityNodeInfo.RangeInfo rangeInfo;
        if (Build.VERSION.SDK_INT < 19 || (rangeInfo = this.mInfo.getRangeInfo()) == null) {
            return null;
        }
        return new RangeInfoCompat(rangeInfo);
    }

    public CharSequence getRoleDescription() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.mInfo.getExtras().getCharSequence(ROLE_DESCRIPTION_KEY);
        }
        return null;
    }

    public CharSequence getStateDescription() {
        if (BuildCompat.isAtLeastR()) {
            return this.mInfo.getStateDescription();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return this.mInfo.getExtras().getCharSequence(STATE_DESCRIPTION_KEY);
        }
        return null;
    }

    public CharSequence getText() {
        int i = 0;
        if (!hasSpans()) {
            return this.mInfo.getText();
        }
        List<Integer> listExtrasIntList = extrasIntList(SPANS_START_KEY);
        List<Integer> listExtrasIntList2 = extrasIntList(SPANS_END_KEY);
        List<Integer> listExtrasIntList3 = extrasIntList(SPANS_FLAGS_KEY);
        List<Integer> listExtrasIntList4 = extrasIntList(SPANS_ID_KEY);
        SpannableString spannableString = new SpannableString(TextUtils.substring(this.mInfo.getText(), 0, this.mInfo.getText().length()));
        while (true) {
            int i2 = i;
            if (i2 >= listExtrasIntList.size()) {
                return spannableString;
            }
            spannableString.setSpan(new AccessibilityClickableSpanCompat(listExtrasIntList4.get(i2).intValue(), this, getExtras().getInt(SPANS_ACTION_ID_KEY)), listExtrasIntList.get(i2).intValue(), listExtrasIntList2.get(i2).intValue(), listExtrasIntList3.get(i2).intValue());
            i = i2 + 1;
        }
    }

    public int getTextSelectionEnd() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.mInfo.getTextSelectionEnd();
        }
        return -1;
    }

    public int getTextSelectionStart() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.mInfo.getTextSelectionStart();
        }
        return -1;
    }

    public CharSequence getTooltipText() {
        if (Build.VERSION.SDK_INT >= 28) {
            return this.mInfo.getTooltipText();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return this.mInfo.getExtras().getCharSequence(TOOLTIP_TEXT_KEY);
        }
        return null;
    }

    public TouchDelegateInfoCompat getTouchDelegateInfo() {
        AccessibilityNodeInfo.TouchDelegateInfo touchDelegateInfo;
        if (Build.VERSION.SDK_INT < 29 || (touchDelegateInfo = this.mInfo.getTouchDelegateInfo()) == null) {
            return null;
        }
        return new TouchDelegateInfoCompat(touchDelegateInfo);
    }

    public AccessibilityNodeInfoCompat getTraversalAfter() {
        if (Build.VERSION.SDK_INT >= 22) {
            return wrapNonNullInstance(this.mInfo.getTraversalAfter());
        }
        return null;
    }

    public AccessibilityNodeInfoCompat getTraversalBefore() {
        if (Build.VERSION.SDK_INT >= 22) {
            return wrapNonNullInstance(this.mInfo.getTraversalBefore());
        }
        return null;
    }

    public String getViewIdResourceName() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.mInfo.getViewIdResourceName();
        }
        return null;
    }

    public AccessibilityWindowInfoCompat getWindow() {
        if (Build.VERSION.SDK_INT >= 21) {
            return AccessibilityWindowInfoCompat.wrapNonNullInstance(this.mInfo.getWindow());
        }
        return null;
    }

    public int getWindowId() {
        return this.mInfo.getWindowId();
    }

    public int hashCode() {
        AccessibilityNodeInfo accessibilityNodeInfo = this.mInfo;
        if (accessibilityNodeInfo == null) {
            return 0;
        }
        return accessibilityNodeInfo.hashCode();
    }

    public boolean isAccessibilityFocused() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInfo.isAccessibilityFocused();
        }
        return false;
    }

    public boolean isCheckable() {
        return this.mInfo.isCheckable();
    }

    public boolean isChecked() {
        return this.mInfo.isChecked();
    }

    public boolean isClickable() {
        return this.mInfo.isClickable();
    }

    public boolean isContentInvalid() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.mInfo.isContentInvalid();
        }
        return false;
    }

    public boolean isContextClickable() {
        if (Build.VERSION.SDK_INT >= 23) {
            return this.mInfo.isContextClickable();
        }
        return false;
    }

    public boolean isDismissable() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.mInfo.isDismissable();
        }
        return false;
    }

    public boolean isEditable() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.mInfo.isEditable();
        }
        return false;
    }

    public boolean isEnabled() {
        return this.mInfo.isEnabled();
    }

    public boolean isFocusable() {
        return this.mInfo.isFocusable();
    }

    public boolean isFocused() {
        return this.mInfo.isFocused();
    }

    public boolean isHeading() {
        if (Build.VERSION.SDK_INT >= 28) {
            return this.mInfo.isHeading();
        }
        if (getBooleanProperty(2)) {
            return true;
        }
        CollectionItemInfoCompat collectionItemInfo = getCollectionItemInfo();
        return collectionItemInfo != null && collectionItemInfo.isHeading();
    }

    public boolean isImportantForAccessibility() {
        if (Build.VERSION.SDK_INT >= 24) {
            return this.mInfo.isImportantForAccessibility();
        }
        return true;
    }

    public boolean isLongClickable() {
        return this.mInfo.isLongClickable();
    }

    public boolean isMultiLine() {
        if (Build.VERSION.SDK_INT >= 19) {
            return this.mInfo.isMultiLine();
        }
        return false;
    }

    public boolean isPassword() {
        return this.mInfo.isPassword();
    }

    public boolean isScreenReaderFocusable() {
        return Build.VERSION.SDK_INT >= 28 ? this.mInfo.isScreenReaderFocusable() : getBooleanProperty(1);
    }

    public boolean isScrollable() {
        return this.mInfo.isScrollable();
    }

    public boolean isSelected() {
        return this.mInfo.isSelected();
    }

    public boolean isShowingHintText() {
        return Build.VERSION.SDK_INT >= 26 ? this.mInfo.isShowingHintText() : getBooleanProperty(4);
    }

    public boolean isTextEntryKey() {
        return Build.VERSION.SDK_INT >= 29 ? this.mInfo.isTextEntryKey() : getBooleanProperty(8);
    }

    public boolean isVisibleToUser() {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInfo.isVisibleToUser();
        }
        return false;
    }

    public boolean performAction(int i) {
        return this.mInfo.performAction(i);
    }

    public boolean performAction(int i, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return this.mInfo.performAction(i, bundle);
        }
        return false;
    }

    public void recycle() {
        this.mInfo.recycle();
    }

    public boolean refresh() {
        if (Build.VERSION.SDK_INT >= 18) {
            return this.mInfo.refresh();
        }
        return false;
    }

    public boolean removeAction(AccessibilityActionCompat accessibilityActionCompat) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.mInfo.removeAction((AccessibilityNodeInfo.AccessibilityAction) accessibilityActionCompat.mAction);
        }
        return false;
    }

    public boolean removeChild(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.mInfo.removeChild(view);
        }
        return false;
    }

    public boolean removeChild(View view, int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            return this.mInfo.removeChild(view, i);
        }
        return false;
    }

    public void setAccessibilityFocused(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.mInfo.setAccessibilityFocused(z);
        }
    }

    @Deprecated
    public void setBoundsInParent(Rect rect) {
        this.mInfo.setBoundsInParent(rect);
    }

    public void setBoundsInScreen(Rect rect) {
        this.mInfo.setBoundsInScreen(rect);
    }

    public void setCanOpenPopup(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.mInfo.setCanOpenPopup(z);
        }
    }

    public void setCheckable(boolean z) {
        this.mInfo.setCheckable(z);
    }

    public void setChecked(boolean z) {
        this.mInfo.setChecked(z);
    }

    public void setClassName(CharSequence charSequence) {
        this.mInfo.setClassName(charSequence);
    }

    public void setClickable(boolean z) {
        this.mInfo.setClickable(z);
    }

    public void setCollectionInfo(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.mInfo.setCollectionInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionInfo) ((CollectionInfoCompat) obj).mInfo);
        }
    }

    public void setCollectionItemInfo(Object obj) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.mInfo.setCollectionItemInfo(obj == null ? null : (AccessibilityNodeInfo.CollectionItemInfo) ((CollectionItemInfoCompat) obj).mInfo);
        }
    }

    public void setContentDescription(CharSequence charSequence) {
        this.mInfo.setContentDescription(charSequence);
    }

    public void setContentInvalid(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.mInfo.setContentInvalid(z);
        }
    }

    public void setContextClickable(boolean z) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.mInfo.setContextClickable(z);
        }
    }

    public void setDismissable(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.mInfo.setDismissable(z);
        }
    }

    public void setDrawingOrder(int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.mInfo.setDrawingOrder(i);
        }
    }

    public void setEditable(boolean z) {
        if (Build.VERSION.SDK_INT >= 18) {
            this.mInfo.setEditable(z);
        }
    }

    public void setEnabled(boolean z) {
        this.mInfo.setEnabled(z);
    }

    public void setError(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.mInfo.setError(charSequence);
        }
    }

    public void setFocusable(boolean z) {
        this.mInfo.setFocusable(z);
    }

    public void setFocused(boolean z) {
        this.mInfo.setFocused(z);
    }

    public void setHeading(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.mInfo.setHeading(z);
        } else {
            setBooleanProperty(2, z);
        }
    }

    public void setHintText(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mInfo.setHintText(charSequence);
        } else if (Build.VERSION.SDK_INT >= 19) {
            this.mInfo.getExtras().putCharSequence(HINT_TEXT_KEY, charSequence);
        }
    }

    public void setImportantForAccessibility(boolean z) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.mInfo.setImportantForAccessibility(z);
        }
    }

    public void setInputType(int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.mInfo.setInputType(i);
        }
    }

    public void setLabelFor(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            this.mInfo.setLabelFor(view);
        }
    }

    public void setLabelFor(View view, int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            this.mInfo.setLabelFor(view, i);
        }
    }

    public void setLabeledBy(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            this.mInfo.setLabeledBy(view);
        }
    }

    public void setLabeledBy(View view, int i) {
        if (Build.VERSION.SDK_INT >= 17) {
            this.mInfo.setLabeledBy(view, i);
        }
    }

    public void setLiveRegion(int i) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.mInfo.setLiveRegion(i);
        }
    }

    public void setLongClickable(boolean z) {
        this.mInfo.setLongClickable(z);
    }

    public void setMaxTextLength(int i) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.mInfo.setMaxTextLength(i);
        }
    }

    public void setMovementGranularities(int i) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.mInfo.setMovementGranularities(i);
        }
    }

    public void setMultiLine(boolean z) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.mInfo.setMultiLine(z);
        }
    }

    public void setPackageName(CharSequence charSequence) {
        this.mInfo.setPackageName(charSequence);
    }

    public void setPaneTitle(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.mInfo.setPaneTitle(charSequence);
        } else if (Build.VERSION.SDK_INT >= 19) {
            this.mInfo.getExtras().putCharSequence(PANE_TITLE_KEY, charSequence);
        }
    }

    public void setParent(View view) {
        this.mParentVirtualDescendantId = -1;
        this.mInfo.setParent(view);
    }

    public void setParent(View view, int i) {
        this.mParentVirtualDescendantId = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.mInfo.setParent(view, i);
        }
    }

    public void setPassword(boolean z) {
        this.mInfo.setPassword(z);
    }

    public void setRangeInfo(RangeInfoCompat rangeInfoCompat) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.mInfo.setRangeInfo((AccessibilityNodeInfo.RangeInfo) rangeInfoCompat.mInfo);
        }
    }

    public void setRoleDescription(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 19) {
            this.mInfo.getExtras().putCharSequence(ROLE_DESCRIPTION_KEY, charSequence);
        }
    }

    public void setScreenReaderFocusable(boolean z) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.mInfo.setScreenReaderFocusable(z);
        } else {
            setBooleanProperty(1, z);
        }
    }

    public void setScrollable(boolean z) {
        this.mInfo.setScrollable(z);
    }

    public void setSelected(boolean z) {
        this.mInfo.setSelected(z);
    }

    public void setShowingHintText(boolean z) {
        if (Build.VERSION.SDK_INT >= 26) {
            this.mInfo.setShowingHintText(z);
        } else {
            setBooleanProperty(4, z);
        }
    }

    public void setSource(View view) {
        this.mVirtualDescendantId = -1;
        this.mInfo.setSource(view);
    }

    public void setSource(View view, int i) {
        this.mVirtualDescendantId = i;
        if (Build.VERSION.SDK_INT >= 16) {
            this.mInfo.setSource(view, i);
        }
    }

    public void setStateDescription(CharSequence charSequence) {
        if (BuildCompat.isAtLeastR()) {
            this.mInfo.setStateDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 19) {
            this.mInfo.getExtras().putCharSequence(STATE_DESCRIPTION_KEY, charSequence);
        }
    }

    public void setText(CharSequence charSequence) {
        this.mInfo.setText(charSequence);
    }

    public void setTextEntryKey(boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            this.mInfo.setTextEntryKey(z);
        } else {
            setBooleanProperty(8, z);
        }
    }

    public void setTextSelection(int i, int i2) {
        if (Build.VERSION.SDK_INT >= 18) {
            this.mInfo.setTextSelection(i, i2);
        }
    }

    public void setTooltipText(CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.mInfo.setTooltipText(charSequence);
        } else if (Build.VERSION.SDK_INT >= 19) {
            this.mInfo.getExtras().putCharSequence(TOOLTIP_TEXT_KEY, charSequence);
        }
    }

    public void setTouchDelegateInfo(TouchDelegateInfoCompat touchDelegateInfoCompat) {
        if (Build.VERSION.SDK_INT >= 29) {
            this.mInfo.setTouchDelegateInfo(touchDelegateInfoCompat.mInfo);
        }
    }

    public void setTraversalAfter(View view) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.mInfo.setTraversalAfter(view);
        }
    }

    public void setTraversalAfter(View view, int i) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.mInfo.setTraversalAfter(view, i);
        }
    }

    public void setTraversalBefore(View view) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.mInfo.setTraversalBefore(view);
        }
    }

    public void setTraversalBefore(View view, int i) {
        if (Build.VERSION.SDK_INT >= 22) {
            this.mInfo.setTraversalBefore(view, i);
        }
    }

    public void setViewIdResourceName(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            this.mInfo.setViewIdResourceName(str);
        }
    }

    public void setVisibleToUser(boolean z) {
        if (Build.VERSION.SDK_INT >= 16) {
            this.mInfo.setVisibleToUser(z);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        Rect rect = new Rect();
        getBoundsInParent(rect);
        sb.append(NPStringFog.decode(new byte[]{93, 20, 3, 92, 64, 87, 2, 71, 40, 93, 101, 88, 20, 81, 15, 71, 15, 25}, "f4a359", -85878007L) + rect);
        getBoundsInScreen(rect);
        sb.append(NPStringFog.decode(new byte[]{15, 17, 80, 88, 76, 90, 80, 66, 123, 89, 106, 87, 70, 84, 87, 89, 3, 20}, "412794", 2.018636587E9d) + rect);
        sb.append(NPStringFog.decode(new byte[]{9, 17, 73, 80, 91, 82, 83, 86, 92, 127, 89, 84, 87, 11, 25}, "219189", 672874859L));
        sb.append(getPackageName());
        sb.append(NPStringFog.decode(new byte[]{15, 20, 86, 10, 5, 17, 71, 122, 84, 11, 1, 88, 20}, "445fdb", false));
        sb.append(getClassName());
        sb.append(NPStringFog.decode(new byte[]{88, 20, 65, 93, 28, 69, 89, 20}, "c458d1", false));
        sb.append(getText());
        sb.append(NPStringFog.decode(new byte[]{95, 70, 85, 95, 12, 70, 1, 8, 66, 116, 7, 65, 7, 20, 95, 64, 22, 91, 11, 8, 12, 16}, "df60b2", true));
        sb.append(getContentDescription());
        sb.append(NPStringFog.decode(new byte[]{3, 67, 67, 10, 80, 68, 113, 7, 15, 67}, "8c5c53", true));
        sb.append(getViewIdResourceName());
        sb.append(NPStringFog.decode(new byte[]{89, 18, 87, 92, 92, 5, 9, 83, 86, 88, 92, 92, 66}, "b2449f", false));
        sb.append(isCheckable());
        sb.append(NPStringFog.decode(new byte[]{93, 67, 85, 90, 93, 0, 13, 6, 82, 8, 24}, "fc628c", 5.42353961E8d));
        sb.append(isChecked());
        sb.append(NPStringFog.decode(new byte[]{93, 19, 87, 89, 6, 20, 21, 82, 83, 90, 0, 91, 70}, "f316ea", true));
        sb.append(isFocusable());
        sb.append(NPStringFog.decode(new byte[]{89, 68, 83, 89, 1, 20, 17, 1, 81, 12, 66}, "bd56ba", 603787438L));
        sb.append(isFocused());
        sb.append(NPStringFog.decode(new byte[]{14, 65, 16, 86, 90, 82, 86, 21, 6, 87, 12, 23}, "5ac367", true));
        sb.append(isSelected());
        sb.append(NPStringFog.decode(new byte[]{11, 23, 83, 15, 10, 84, 91, 86, 82, 15, 6, 13, 16}, "070cc7", true, false));
        sb.append(isClickable());
        sb.append(NPStringFog.decode(new byte[]{14, 20, 88, 95, 95, 85, 118, 88, 93, 83, 90, 83, 87, 88, 81, 10, 17}, "544012", -1.378759777E9d));
        sb.append(isLongClickable());
        sb.append(NPStringFog.decode(new byte[]{3, 69, 81, 10, 82, 85, 84, 0, 80, 94, 19}, "8e4d37", 1012267955L));
        sb.append(isEnabled());
        sb.append(NPStringFog.decode(new byte[]{89, 69, 69, 83, 69, 68, 21, 10, 71, 86, 12, 23}, "be5267", 17371));
        sb.append(isPassword());
        sb.append(NPStringFog.decode(new byte[]{89, 23, 64, 1, 19, 11, 14, 91, 82, 0, 13, 1, 88, 23}, "b73bad", false, false) + isScrollable());
        sb.append(NPStringFog.decode(new byte[]{8, 70, 104}, "3f32cb", -1202564150L));
        if (Build.VERSION.SDK_INT >= 21) {
            List<AccessibilityActionCompat> actionList = getActionList();
            for (int i = 0; i < actionList.size(); i++) {
                AccessibilityActionCompat accessibilityActionCompat = actionList.get(i);
                String actionSymbolicName = getActionSymbolicName(accessibilityActionCompat.getId());
                sb.append((!actionSymbolicName.equals(NPStringFog.decode(new byte[]{39, 119, 101, 47, 124, 47, 57, 97, 127, 45, 125, 46, 49, 122}, "f41f3a", true, true)) || accessibilityActionCompat.getLabel() == null) ? actionSymbolicName : accessibilityActionCompat.getLabel().toString());
                if (i != actionList.size() - 1) {
                    sb.append(NPStringFog.decode(new byte[]{74, 25}, "f9ad6b", 3.07801809E8d));
                }
            }
        } else {
            int actions = getActions();
            while (actions != 0) {
                int iNumberOfTrailingZeros = 1 << Integer.numberOfTrailingZeros(actions);
                actions &= iNumberOfTrailingZeros ^ (-1);
                sb.append(getActionSymbolicName(iNumberOfTrailingZeros));
                if (actions != 0) {
                    sb.append(NPStringFog.decode(new byte[]{78, 24}, "b8c349", true));
                }
            }
        }
        sb.append(NPStringFog.decode(new byte[]{111}, "2dd1ff", false));
        return sb.toString();
    }

    public AccessibilityNodeInfo unwrap() {
        return this.mInfo;
    }
}
