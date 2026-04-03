package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.ShowableListMenu;
import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import androidx.core.view.PointerIconCompat;
import androidx.core.view.ViewCompat;
import androidx.core.widget.PopupWindowCompat;
import java.lang.reflect.Method;
import n.NPStringFog;

/* JADX INFO: loaded from: classes2.dex */
public class ListPopupWindow implements ShowableListMenu {
    private static final boolean DEBUG = false;
    static final int EXPAND_LIST_TIMEOUT = 250;
    public static final int INPUT_METHOD_FROM_FOCUSABLE = 0;
    public static final int INPUT_METHOD_NEEDED = 1;
    public static final int INPUT_METHOD_NOT_NEEDED = 2;
    public static final int MATCH_PARENT = -1;
    public static final int POSITION_PROMPT_ABOVE = 0;
    public static final int POSITION_PROMPT_BELOW = 1;
    private static final String TAG = NPStringFog.decode(new byte[]{117, 94, 66, 18, 53, 10, 73, 66, 65, 49, 12, 11, 93, 88, 70}, "971fee", 1.273842917E9d);
    public static final int WRAP_CONTENT = -2;
    private static Method sGetMaxAvailableHeightMethod;
    private static Method sSetClipToWindowEnabledMethod;
    private static Method sSetEpicenterBoundsMethod;
    private ListAdapter mAdapter;
    private Context mContext;
    private boolean mDropDownAlwaysVisible;
    private View mDropDownAnchorView;
    private int mDropDownGravity;
    private int mDropDownHeight;
    private int mDropDownHorizontalOffset;
    DropDownListView mDropDownList;
    private Drawable mDropDownListHighlight;
    private int mDropDownVerticalOffset;
    private boolean mDropDownVerticalOffsetSet;
    private int mDropDownWidth;
    private int mDropDownWindowLayoutType;
    private Rect mEpicenterBounds;
    private boolean mForceIgnoreOutsideTouch;
    final Handler mHandler;
    private final ListSelectorHider mHideSelector;
    private AdapterView.OnItemClickListener mItemClickListener;
    private AdapterView.OnItemSelectedListener mItemSelectedListener;
    int mListItemExpandMaximum;
    private boolean mModal;
    private DataSetObserver mObserver;
    private boolean mOverlapAnchor;
    private boolean mOverlapAnchorSet;
    PopupWindow mPopup;
    private int mPromptPosition;
    private View mPromptView;
    final ResizePopupRunnable mResizePopupRunnable;
    private final PopupScrollListener mScrollListener;
    private Runnable mShowDropDownRunnable;
    private final Rect mTempRect;
    private final PopupTouchInterceptor mTouchInterceptor;

    private class ListSelectorHider implements Runnable {
        final ListPopupWindow this$0;

        ListSelectorHider(ListPopupWindow listPopupWindow) {
            this.this$0 = listPopupWindow;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.this$0.clearListSelection();
        }
    }

    private class PopupDataSetObserver extends DataSetObserver {
        final ListPopupWindow this$0;

        PopupDataSetObserver(ListPopupWindow listPopupWindow) {
            this.this$0 = listPopupWindow;
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            if (this.this$0.isShowing()) {
                this.this$0.show();
            }
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            this.this$0.dismiss();
        }
    }

    private class PopupScrollListener implements AbsListView.OnScrollListener {
        final ListPopupWindow this$0;

        PopupScrollListener(ListPopupWindow listPopupWindow) {
            this.this$0 = listPopupWindow;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScroll(AbsListView absListView, int i, int i2, int i3) {
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public void onScrollStateChanged(AbsListView absListView, int i) {
            if (i != 1 || this.this$0.isInputMethodNotNeeded() || this.this$0.mPopup.getContentView() == null) {
                return;
            }
            this.this$0.mHandler.removeCallbacks(this.this$0.mResizePopupRunnable);
            this.this$0.mResizePopupRunnable.run();
        }
    }

    private class PopupTouchInterceptor implements View.OnTouchListener {
        final ListPopupWindow this$0;

        PopupTouchInterceptor(ListPopupWindow listPopupWindow) {
            this.this$0 = listPopupWindow;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            int x = (int) motionEvent.getX();
            int y = (int) motionEvent.getY();
            if (action == 0 && this.this$0.mPopup != null && this.this$0.mPopup.isShowing() && x >= 0 && x < this.this$0.mPopup.getWidth() && y >= 0 && y < this.this$0.mPopup.getHeight()) {
                this.this$0.mHandler.postDelayed(this.this$0.mResizePopupRunnable, 250L);
                return false;
            }
            if (action != 1) {
                return false;
            }
            this.this$0.mHandler.removeCallbacks(this.this$0.mResizePopupRunnable);
            return false;
        }
    }

    private class ResizePopupRunnable implements Runnable {
        final ListPopupWindow this$0;

        ResizePopupRunnable(ListPopupWindow listPopupWindow) {
            this.this$0 = listPopupWindow;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.this$0.mDropDownList == null || !ViewCompat.isAttachedToWindow(this.this$0.mDropDownList) || this.this$0.mDropDownList.getCount() <= this.this$0.mDropDownList.getChildCount() || this.this$0.mDropDownList.getChildCount() > this.this$0.mListItemExpandMaximum) {
                return;
            }
            this.this$0.mPopup.setInputMethodMode(2);
            this.this$0.show();
        }
    }

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                sSetClipToWindowEnabledMethod = PopupWindow.class.getDeclaredMethod(NPStringFog.decode(new byte[]{66, 0, 76, 117, 95, 13, 65, 49, 87, 101, 80, 22, 84, 0, 86, 115, 93, 5, 83, 9, 93, 82}, "1e863d", true, true), Boolean.TYPE);
            } catch (NoSuchMethodException e) {
                Log.i(NPStringFog.decode(new byte[]{117, 15, 66, 77, 103, 94, 73, 19, 65, 110, 94, 95, 93, 9, 70}, "9f1971", true, true), NPStringFog.decode(new byte[]{123, 12, 68, 14, 80, 22, 86, 12, 69, 66, 82, 95, 86, 7, 17, 15, 81, 66, 80, 12, 85, 66, 71, 83, 76, 32, 93, 11, 68, 98, 87, 48, 82, 16, 81, 83, 86, 38, 95, 3, 86, 90, 93, 7, 25, 75, 20, 89, 86, 67, 97, 13, 68, 67, 72, 52, 88, 12, 80, 89, 79, 77, 17, 45, 92, 22, 79, 6, 93, 14, 26}, "8c1b46", 1.456133455E9d));
            }
            try {
                sSetEpicenterBoundsMethod = PopupWindow.class.getDeclaredMethod(NPStringFog.decode(new byte[]{22, 81, 16, 35, 66, 89, 6, 81, 10, 18, 87, 66, 39, 91, 17, 8, 86, 67}, "e4df20", true), Rect.class);
            } catch (NoSuchMethodException e2) {
                Log.i(NPStringFog.decode(new byte[]{124, 91, 23, 16, 103, 89, 64, 71, 20, 51, 94, 88, 84, 93, 19}, "02dd76", 214066805L), NPStringFog.decode(new byte[]{116, 13, 17, 9, 92, 16, 89, 13, 16, 69, 94, 89, 89, 6, 68, 8, 93, 68, 95, 13, 0, 69, 75, 85, 67, 39, 20, 12, 91, 85, 89, 22, 1, 23, 122, 95, 66, 12, 0, 22, 16, 98, 82, 1, 16, 76, 24, 95, 89, 66, 52, 10, 72, 69, 71, 53, 13, 11, 92, 95, 64, 76, 68, 42, 80, 16, 64, 7, 8, 9, 22}, "7bde80", 2.0880516E9f));
            }
        }
        if (Build.VERSION.SDK_INT <= 23) {
            try {
                sGetMaxAvailableHeightMethod = PopupWindow.class.getDeclaredMethod(NPStringFog.decode(new byte[]{1, 4, 18, 120, 0, 74, 39, 23, 7, 92, 13, 83, 4, 13, 3, 125, 4, 91, 1, 9, 18}, "faf5a2", -1.5856801E9f), View.class, Integer.TYPE, Boolean.TYPE);
            } catch (NoSuchMethodException e3) {
                Log.i(NPStringFog.decode(new byte[]{40, 11, 70, 21, 99, 93, 20, 23, 69, 54, 90, 92, 0, 13, 66}, "db5a32", 5.924715E8f), NPStringFog.decode(new byte[]{39, 89, 17, 84, 7, 16, 10, 89, 16, 24, 5, 89, 10, 82, 68, 85, 6, 68, 12, 89, 0, 24, 4, 85, 16, 123, 5, 64, 34, 70, 5, 95, 8, 89, 1, 92, 1, 126, 1, 81, 4, 88, 16, 30, 50, 81, 6, 71, 72, 22, 13, 86, 23, 28, 68, 84, 11, 87, 15, 85, 5, 88, 77, 24, 12, 94, 68, 102, 11, 72, 22, 64, 51, 95, 10, 92, 12, 71, 74, 22, 43, 80, 67, 71, 1, 90, 8, 22}, "d6d8c0", true, true));
            }
        }
    }

    public ListPopupWindow(Context context) {
        this(context, null, R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listPopupWindowStyle);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public ListPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mDropDownHeight = -2;
        this.mDropDownWidth = -2;
        this.mDropDownWindowLayoutType = PointerIconCompat.TYPE_HAND;
        this.mDropDownGravity = 0;
        this.mDropDownAlwaysVisible = false;
        this.mForceIgnoreOutsideTouch = false;
        this.mListItemExpandMaximum = Integer.MAX_VALUE;
        this.mPromptPosition = 0;
        this.mResizePopupRunnable = new ResizePopupRunnable(this);
        this.mTouchInterceptor = new PopupTouchInterceptor(this);
        this.mScrollListener = new PopupScrollListener(this);
        this.mHideSelector = new ListSelectorHider(this);
        this.mTempRect = new Rect();
        this.mContext = context;
        this.mHandler = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ListPopupWindow, i, i2);
        this.mDropDownHorizontalOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownHorizontalOffset, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(R.styleable.ListPopupWindow_android_dropDownVerticalOffset, 0);
        this.mDropDownVerticalOffset = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.mDropDownVerticalOffsetSet = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        AppCompatPopupWindow appCompatPopupWindow = new AppCompatPopupWindow(context, attributeSet, i, i2);
        this.mPopup = appCompatPopupWindow;
        appCompatPopupWindow.setInputMethodMode(1);
    }

    private int buildDropDown() {
        int measuredHeight;
        int i;
        int iMakeMeasureSpec;
        int measuredHeight2;
        View view;
        int i2;
        int i3;
        if (this.mDropDownList == null) {
            Context context = this.mContext;
            this.mShowDropDownRunnable = new Runnable(this) { // from class: androidx.appcompat.widget.ListPopupWindow.2
                final ListPopupWindow this$0;

                {
                    this.this$0 = this;
                }

                @Override // java.lang.Runnable
                public void run() {
                    View anchorView = this.this$0.getAnchorView();
                    if (anchorView == null || anchorView.getWindowToken() == null) {
                        return;
                    }
                    this.this$0.show();
                }
            };
            DropDownListView dropDownListViewCreateDropDownListView = createDropDownListView(context, !this.mModal);
            this.mDropDownList = dropDownListViewCreateDropDownListView;
            Drawable drawable = this.mDropDownListHighlight;
            if (drawable != null) {
                dropDownListViewCreateDropDownListView.setSelector(drawable);
            }
            this.mDropDownList.setAdapter(this.mAdapter);
            this.mDropDownList.setOnItemClickListener(this.mItemClickListener);
            this.mDropDownList.setFocusable(true);
            this.mDropDownList.setFocusableInTouchMode(true);
            this.mDropDownList.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener(this) { // from class: androidx.appcompat.widget.ListPopupWindow.3
                final ListPopupWindow this$0;

                {
                    this.this$0 = this;
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onItemSelected(AdapterView<?> adapterView, View view2, int i4, long j) {
                    DropDownListView dropDownListView;
                    if (i4 == -1 || (dropDownListView = this.this$0.mDropDownList) == null) {
                        return;
                    }
                    dropDownListView.setListSelectionHidden(false);
                }

                @Override // android.widget.AdapterView.OnItemSelectedListener
                public void onNothingSelected(AdapterView<?> adapterView) {
                }
            });
            this.mDropDownList.setOnScrollListener(this.mScrollListener);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.mItemSelectedListener;
            if (onItemSelectedListener != null) {
                this.mDropDownList.setOnItemSelectedListener(onItemSelectedListener);
            }
            DropDownListView dropDownListView = this.mDropDownList;
            View view2 = this.mPromptView;
            if (view2 != null) {
                LinearLayout linearLayout = new LinearLayout(context);
                linearLayout.setOrientation(1);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0, 1.0f);
                switch (this.mPromptPosition) {
                    case 0:
                        linearLayout.addView(view2);
                        linearLayout.addView(dropDownListView, layoutParams);
                        break;
                    case 1:
                        linearLayout.addView(dropDownListView, layoutParams);
                        linearLayout.addView(view2);
                        break;
                    default:
                        Log.e(TAG, NPStringFog.decode(new byte[]{126, 12, 65, 81, 85, 81, 83, 66, 95, 89, 87, 76, 23, 18, 88, 67, 80, 76, 94, 13, 89, 16}, "7b7098", 1321141753L) + this.mPromptPosition);
                        break;
                }
                if (this.mDropDownWidth >= 0) {
                    i3 = this.mDropDownWidth;
                    i2 = Integer.MIN_VALUE;
                } else {
                    i2 = 0;
                    i3 = 0;
                }
                view2.measure(View.MeasureSpec.makeMeasureSpec(i3, i2), 0);
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) view2.getLayoutParams();
                measuredHeight2 = layoutParams2.bottomMargin + view2.getMeasuredHeight() + layoutParams2.topMargin;
                view = linearLayout;
            } else {
                measuredHeight2 = 0;
                view = dropDownListView;
            }
            this.mPopup.setContentView(view);
            measuredHeight = measuredHeight2;
        } else {
            View view3 = this.mPromptView;
            if (view3 != null) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) view3.getLayoutParams();
                measuredHeight = view3.getMeasuredHeight() + layoutParams3.topMargin + layoutParams3.bottomMargin;
            } else {
                measuredHeight = 0;
            }
        }
        Drawable background = this.mPopup.getBackground();
        if (background != null) {
            background.getPadding(this.mTempRect);
            int i4 = this.mTempRect.top + this.mTempRect.bottom;
            if (this.mDropDownVerticalOffsetSet) {
                i = i4;
            } else {
                this.mDropDownVerticalOffset = -this.mTempRect.top;
                i = i4;
            }
        } else {
            this.mTempRect.setEmpty();
            i = 0;
        }
        int maxAvailableHeight = getMaxAvailableHeight(getAnchorView(), this.mDropDownVerticalOffset, this.mPopup.getInputMethodMode() == 2);
        if (this.mDropDownAlwaysVisible || this.mDropDownHeight == -1) {
            return maxAvailableHeight + i;
        }
        int i5 = this.mDropDownWidth;
        switch (i5) {
            case -2:
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mContext.getResources().getDisplayMetrics().widthPixels - (this.mTempRect.left + this.mTempRect.right), Integer.MIN_VALUE);
                break;
            case -1:
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(this.mContext.getResources().getDisplayMetrics().widthPixels - (this.mTempRect.left + this.mTempRect.right), BasicMeasure.EXACTLY);
                break;
            default:
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, BasicMeasure.EXACTLY);
                break;
        }
        int iMeasureHeightOfChildrenCompat = this.mDropDownList.measureHeightOfChildrenCompat(iMakeMeasureSpec, 0, -1, maxAvailableHeight - measuredHeight, -1);
        if (iMeasureHeightOfChildrenCompat > 0) {
            measuredHeight += this.mDropDownList.getPaddingTop() + this.mDropDownList.getPaddingBottom() + i;
        }
        return iMeasureHeightOfChildrenCompat + measuredHeight;
    }

    private int getMaxAvailableHeight(View view, int i, boolean z) {
        if (Build.VERSION.SDK_INT > 23) {
            return this.mPopup.getMaxAvailableHeight(view, i, z);
        }
        Method method = sGetMaxAvailableHeightMethod;
        if (method != null) {
            try {
                return ((Integer) method.invoke(this.mPopup, view, Integer.valueOf(i), Boolean.valueOf(z))).intValue();
            } catch (Exception e) {
                Log.i(TAG, NPStringFog.decode(new byte[]{117, 10, 16, 14, 6, 68, 88, 10, 17, 66, 1, 5, 90, 9, 69, 5, 7, 16, 123, 4, 29, 35, 20, 5, 95, 9, 4, 0, 14, 1, 126, 0, 12, 5, 10, 16, 123, 0, 17, 10, 13, 0, 30, 51, 12, 7, 21, 72, 22, 12, 11, 22, 78, 68, 84, 10, 10, 14, 7, 5, 88, 76, 69, 13, 12, 68, 102, 10, 21, 23, 18, 51, 95, 11, 1, 13, 21, 74, 22, 48, 22, 11, 12, 3, 22, 17, 13, 7, 66, 20, 67, 7, 9, 11, 1, 68, 64, 0, 23, 17, 11, 11, 88, 75}, "6eebbd", false, true));
            }
        }
        return this.mPopup.getMaxAvailableHeight(view, i);
    }

    private static boolean isConfirmKey(int i) {
        return i == 66 || i == 23;
    }

    private void removePromptView() {
        View view = this.mPromptView;
        if (view != null) {
            ViewParent parent = view.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.mPromptView);
            }
        }
    }

    private void setPopupClipToScreenEnabled(boolean z) {
        if (Build.VERSION.SDK_INT > 28) {
            this.mPopup.setIsClippedToScreen(z);
            return;
        }
        Method method = sSetClipToWindowEnabledMethod;
        if (method != null) {
            try {
                method.invoke(this.mPopup, Boolean.valueOf(z));
            } catch (Exception e) {
                Log.i(TAG, NPStringFog.decode(new byte[]{37, 86, 17, 15, 1, 65, 8, 86, 16, 67, 6, 0, 10, 85, 68, 16, 0, 21, 37, 85, 13, 19, 49, 14, 53, 90, 22, 6, 0, 15, 35, 87, 5, 1, 9, 4, 2, 17, 77, 67, 10, 15, 70, 105, 11, 19, 16, 17, 49, 80, 10, 7, 10, 22, 72, 25, 43, 11, 69, 22, 3, 85, 8, 77}, "f9dcea", 19454));
            }
        }
    }

    public void clearListSelection() {
        DropDownListView dropDownListView = this.mDropDownList;
        if (dropDownListView != null) {
            dropDownListView.setListSelectionHidden(true);
            dropDownListView.requestLayout();
        }
    }

    public View.OnTouchListener createDragToOpenListener(View view) {
        return new ForwardingListener(this, view) { // from class: androidx.appcompat.widget.ListPopupWindow.1
            final ListPopupWindow this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.appcompat.widget.ForwardingListener
            public ListPopupWindow getPopup() {
                return this.this$0;
            }
        };
    }

    DropDownListView createDropDownListView(Context context, boolean z) {
        return new DropDownListView(context, z);
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void dismiss() {
        this.mPopup.dismiss();
        removePromptView();
        this.mPopup.setContentView(null);
        this.mDropDownList = null;
        this.mHandler.removeCallbacks(this.mResizePopupRunnable);
    }

    public View getAnchorView() {
        return this.mDropDownAnchorView;
    }

    public int getAnimationStyle() {
        return this.mPopup.getAnimationStyle();
    }

    public Drawable getBackground() {
        return this.mPopup.getBackground();
    }

    public Rect getEpicenterBounds() {
        if (this.mEpicenterBounds != null) {
            return new Rect(this.mEpicenterBounds);
        }
        return null;
    }

    public int getHeight() {
        return this.mDropDownHeight;
    }

    public int getHorizontalOffset() {
        return this.mDropDownHorizontalOffset;
    }

    public int getInputMethodMode() {
        return this.mPopup.getInputMethodMode();
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public ListView getListView() {
        return this.mDropDownList;
    }

    public int getPromptPosition() {
        return this.mPromptPosition;
    }

    public Object getSelectedItem() {
        if (isShowing()) {
            return this.mDropDownList.getSelectedItem();
        }
        return null;
    }

    public long getSelectedItemId() {
        if (isShowing()) {
            return this.mDropDownList.getSelectedItemId();
        }
        return Long.MIN_VALUE;
    }

    public int getSelectedItemPosition() {
        if (isShowing()) {
            return this.mDropDownList.getSelectedItemPosition();
        }
        return -1;
    }

    public View getSelectedView() {
        if (isShowing()) {
            return this.mDropDownList.getSelectedView();
        }
        return null;
    }

    public int getSoftInputMode() {
        return this.mPopup.getSoftInputMode();
    }

    public int getVerticalOffset() {
        if (this.mDropDownVerticalOffsetSet) {
            return this.mDropDownVerticalOffset;
        }
        return 0;
    }

    public int getWidth() {
        return this.mDropDownWidth;
    }

    public boolean isDropDownAlwaysVisible() {
        return this.mDropDownAlwaysVisible;
    }

    public boolean isInputMethodNotNeeded() {
        return this.mPopup.getInputMethodMode() == 2;
    }

    public boolean isModal() {
        return this.mModal;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public boolean isShowing() {
        return this.mPopup.isShowing();
    }

    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!isShowing() || i == 62) {
            return false;
        }
        if (this.mDropDownList.getSelectedItemPosition() < 0 && isConfirmKey(i)) {
            return false;
        }
        int selectedItemPosition = this.mDropDownList.getSelectedItemPosition();
        boolean z = !this.mPopup.isAboveAnchor();
        ListAdapter listAdapter = this.mAdapter;
        int iLookForSelectablePosition = Integer.MAX_VALUE;
        int count = Integer.MIN_VALUE;
        if (listAdapter != null) {
            boolean zAreAllItemsEnabled = listAdapter.areAllItemsEnabled();
            iLookForSelectablePosition = zAreAllItemsEnabled ? 0 : this.mDropDownList.lookForSelectablePosition(0, true);
            count = zAreAllItemsEnabled ? listAdapter.getCount() - 1 : this.mDropDownList.lookForSelectablePosition(listAdapter.getCount() - 1, false);
        }
        if ((z && i == 19 && selectedItemPosition <= iLookForSelectablePosition) || (!z && i == 20 && selectedItemPosition >= count)) {
            clearListSelection();
            this.mPopup.setInputMethodMode(1);
            show();
            return true;
        }
        this.mDropDownList.setListSelectionHidden(false);
        if (!this.mDropDownList.onKeyDown(i, keyEvent)) {
            return (z && i == 20) ? selectedItemPosition == count : !z && i == 19 && selectedItemPosition == iLookForSelectablePosition;
        }
        this.mPopup.setInputMethodMode(2);
        this.mDropDownList.requestFocusFromTouch();
        show();
        switch (i) {
            case 19:
            case 20:
            case 23:
            case 66:
                break;
        }
        return true;
    }

    public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
        if (i == 4 && isShowing()) {
            View view = this.mDropDownAnchorView;
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                KeyEvent.DispatcherState keyDispatcherState = view.getKeyDispatcherState();
                if (keyDispatcherState == null) {
                    return true;
                }
                keyDispatcherState.startTracking(keyEvent, this);
                return true;
            }
            if (keyEvent.getAction() == 1) {
                KeyEvent.DispatcherState keyDispatcherState2 = view.getKeyDispatcherState();
                if (keyDispatcherState2 != null) {
                    keyDispatcherState2.handleUpEvent(keyEvent);
                }
                if (keyEvent.isTracking() && !keyEvent.isCanceled()) {
                    dismiss();
                    return true;
                }
            }
        }
        return false;
    }

    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (!isShowing() || this.mDropDownList.getSelectedItemPosition() < 0) {
            return false;
        }
        boolean zOnKeyUp = this.mDropDownList.onKeyUp(i, keyEvent);
        if (!zOnKeyUp || !isConfirmKey(i)) {
            return zOnKeyUp;
        }
        dismiss();
        return zOnKeyUp;
    }

    public boolean performItemClick(int i) {
        if (!isShowing()) {
            return false;
        }
        if (this.mItemClickListener != null) {
            DropDownListView dropDownListView = this.mDropDownList;
            this.mItemClickListener.onItemClick(dropDownListView, dropDownListView.getChildAt(i - dropDownListView.getFirstVisiblePosition()), i, dropDownListView.getAdapter().getItemId(i));
        }
        return true;
    }

    public void postShow() {
        this.mHandler.post(this.mShowDropDownRunnable);
    }

    public void setAdapter(ListAdapter listAdapter) {
        DataSetObserver dataSetObserver = this.mObserver;
        if (dataSetObserver == null) {
            this.mObserver = new PopupDataSetObserver(this);
        } else {
            ListAdapter listAdapter2 = this.mAdapter;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.mAdapter = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.mObserver);
        }
        DropDownListView dropDownListView = this.mDropDownList;
        if (dropDownListView != null) {
            dropDownListView.setAdapter(this.mAdapter);
        }
    }

    public void setAnchorView(View view) {
        this.mDropDownAnchorView = view;
    }

    public void setAnimationStyle(int i) {
        this.mPopup.setAnimationStyle(i);
    }

    public void setBackgroundDrawable(Drawable drawable) {
        this.mPopup.setBackgroundDrawable(drawable);
    }

    public void setContentWidth(int i) {
        Drawable background = this.mPopup.getBackground();
        if (background == null) {
            setWidth(i);
        } else {
            background.getPadding(this.mTempRect);
            this.mDropDownWidth = this.mTempRect.left + this.mTempRect.right + i;
        }
    }

    public void setDropDownAlwaysVisible(boolean z) {
        this.mDropDownAlwaysVisible = z;
    }

    public void setDropDownGravity(int i) {
        this.mDropDownGravity = i;
    }

    public void setEpicenterBounds(Rect rect) {
        this.mEpicenterBounds = rect != null ? new Rect(rect) : null;
    }

    public void setForceIgnoreOutsideTouch(boolean z) {
        this.mForceIgnoreOutsideTouch = z;
    }

    public void setHeight(int i) {
        if (i < 0 && -2 != i && -1 != i) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{120, 12, 64, 0, 93, 88, 85, 66, 94, 4, 88, 86, 89, 22, 24, 65, 124, 68, 66, 22, 22, 3, 84, 17, 80, 66, 70, 14, 66, 88, 69, 11, 64, 4, 17, 71, 80, 14, 67, 4, 29, 17, 124, 35, 98, 34, 121, 110, 97, 35, 100, 36, 127, 101, 29, 66, 89, 19, 17, 102, 99, 35, 102, 62, 114, 126, 127, 54, 115, 47, 101, 31}, "1b6a11", -8.2281216E8f));
        }
        this.mDropDownHeight = i;
    }

    public void setHorizontalOffset(int i) {
        this.mDropDownHorizontalOffset = i;
    }

    public void setInputMethodMode(int i) {
        this.mPopup.setInputMethodMode(i);
    }

    void setListItemExpandMax(int i) {
        this.mListItemExpandMaximum = i;
    }

    public void setListSelector(Drawable drawable) {
        this.mDropDownListHighlight = drawable;
    }

    public void setModal(boolean z) {
        this.mModal = z;
        this.mPopup.setFocusable(z);
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.mPopup.setOnDismissListener(onDismissListener);
    }

    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
        this.mItemClickListener = onItemClickListener;
    }

    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        this.mItemSelectedListener = onItemSelectedListener;
    }

    public void setOverlapAnchor(boolean z) {
        this.mOverlapAnchorSet = true;
        this.mOverlapAnchor = z;
    }

    public void setPromptPosition(int i) {
        this.mPromptPosition = i;
    }

    public void setPromptView(View view) {
        boolean zIsShowing = isShowing();
        if (zIsShowing) {
            removePromptView();
        }
        this.mPromptView = view;
        if (zIsShowing) {
            show();
        }
    }

    public void setSelection(int i) {
        DropDownListView dropDownListView = this.mDropDownList;
        if (!isShowing() || dropDownListView == null) {
            return;
        }
        dropDownListView.setListSelectionHidden(false);
        dropDownListView.setSelection(i);
        if (dropDownListView.getChoiceMode() != 0) {
            dropDownListView.setItemChecked(i, true);
        }
    }

    public void setSoftInputMode(int i) {
        this.mPopup.setSoftInputMode(i);
    }

    public void setVerticalOffset(int i) {
        this.mDropDownVerticalOffset = i;
        this.mDropDownVerticalOffsetSet = true;
    }

    public void setWidth(int i) {
        this.mDropDownWidth = i;
    }

    public void setWindowLayoutType(int i) {
        this.mDropDownWindowLayoutType = i;
    }

    @Override // androidx.appcompat.view.menu.ShowableListMenu
    public void show() {
        int i;
        boolean z = false;
        int iBuildDropDown = buildDropDown();
        boolean zIsInputMethodNotNeeded = isInputMethodNotNeeded();
        PopupWindowCompat.setWindowLayoutType(this.mPopup, this.mDropDownWindowLayoutType);
        if (this.mPopup.isShowing()) {
            if (ViewCompat.isAttachedToWindow(getAnchorView())) {
                int i2 = this.mDropDownWidth;
                int width = i2 == -1 ? -1 : i2 == -2 ? getAnchorView().getWidth() : this.mDropDownWidth;
                int i3 = this.mDropDownHeight;
                if (i3 == -1) {
                    if (!zIsInputMethodNotNeeded) {
                        iBuildDropDown = -1;
                    }
                    if (zIsInputMethodNotNeeded) {
                        this.mPopup.setWidth(this.mDropDownWidth == -1 ? -1 : 0);
                        this.mPopup.setHeight(0);
                        i = iBuildDropDown;
                    } else {
                        this.mPopup.setWidth(this.mDropDownWidth == -1 ? -1 : 0);
                        this.mPopup.setHeight(-1);
                        i = iBuildDropDown;
                    }
                } else {
                    i = i3 == -2 ? iBuildDropDown : this.mDropDownHeight;
                }
                PopupWindow popupWindow = this.mPopup;
                if (!this.mForceIgnoreOutsideTouch && !this.mDropDownAlwaysVisible) {
                    z = true;
                }
                popupWindow.setOutsideTouchable(z);
                PopupWindow popupWindow2 = this.mPopup;
                View anchorView = getAnchorView();
                int i4 = this.mDropDownHorizontalOffset;
                int i5 = this.mDropDownVerticalOffset;
                if (width < 0) {
                    width = -1;
                }
                popupWindow2.update(anchorView, i4, i5, width, i >= 0 ? i : -1);
                return;
            }
            return;
        }
        int i6 = this.mDropDownWidth;
        int width2 = i6 == -1 ? -1 : i6 == -2 ? getAnchorView().getWidth() : this.mDropDownWidth;
        int i7 = this.mDropDownHeight;
        if (i7 == -1) {
            iBuildDropDown = -1;
        } else if (i7 != -2) {
            iBuildDropDown = this.mDropDownHeight;
        }
        this.mPopup.setWidth(width2);
        this.mPopup.setHeight(iBuildDropDown);
        setPopupClipToScreenEnabled(true);
        this.mPopup.setOutsideTouchable((this.mForceIgnoreOutsideTouch || this.mDropDownAlwaysVisible) ? false : true);
        this.mPopup.setTouchInterceptor(this.mTouchInterceptor);
        if (this.mOverlapAnchorSet) {
            PopupWindowCompat.setOverlapAnchor(this.mPopup, this.mOverlapAnchor);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = sSetEpicenterBoundsMethod;
            if (method != null) {
                try {
                    method.invoke(this.mPopup, this.mEpicenterBounds);
                } catch (Exception e) {
                    Log.e(TAG, NPStringFog.decode(new byte[]{33, 12, 70, 92, 83, 21, 12, 12, 71, 16, 94, 91, 20, 12, 88, 85, 23, 70, 7, 23, 118, 64, 94, 86, 7, 13, 71, 85, 69, 119, 13, 22, 93, 84, 68, 21, 13, 13, 19, 96, 88, 69, 23, 19, 100, 89, 89, 81, 13, 20}, "bc3075", true, false), e);
                }
            }
        } else {
            this.mPopup.setEpicenterBounds(this.mEpicenterBounds);
        }
        PopupWindowCompat.showAsDropDown(this.mPopup, getAnchorView(), this.mDropDownHorizontalOffset, this.mDropDownVerticalOffset, this.mDropDownGravity);
        this.mDropDownList.setSelection(-1);
        if (!this.mModal || this.mDropDownList.isInTouchMode()) {
            clearListSelection();
        }
        if (this.mModal) {
            return;
        }
        this.mHandler.post(this.mHideSelector);
    }
}
