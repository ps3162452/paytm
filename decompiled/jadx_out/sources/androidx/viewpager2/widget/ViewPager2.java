package androidx.viewpager2.widget;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityViewCommand;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.StatefulAdapter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import n.NPStringFog;

/* JADX INFO: loaded from: classes52.dex */
public final class ViewPager2 extends ViewGroup {
    public static final int OFFSCREEN_PAGE_LIMIT_DEFAULT = -1;
    public static final int ORIENTATION_HORIZONTAL = 0;
    public static final int ORIENTATION_VERTICAL = 1;
    public static final int SCROLL_STATE_DRAGGING = 1;
    public static final int SCROLL_STATE_IDLE = 0;
    public static final int SCROLL_STATE_SETTLING = 2;
    static boolean sFeatureEnhancedA11yEnabled = true;
    AccessibilityProvider mAccessibilityProvider;
    int mCurrentItem;
    private RecyclerView.AdapterDataObserver mCurrentItemDataSetChangeObserver;
    boolean mCurrentItemDirty;
    private CompositeOnPageChangeCallback mExternalPageChangeCallbacks;
    private FakeDrag mFakeDragger;
    private LinearLayoutManager mLayoutManager;
    private int mOffscreenPageLimit;
    private CompositeOnPageChangeCallback mPageChangeEventDispatcher;
    private PageTransformerAdapter mPageTransformerAdapter;
    private PagerSnapHelper mPagerSnapHelper;
    private Parcelable mPendingAdapterState;
    private int mPendingCurrentItem;
    RecyclerView mRecyclerView;
    private RecyclerView.ItemAnimator mSavedItemAnimator;
    private boolean mSavedItemAnimatorPresent;
    ScrollEventAdapter mScrollEventAdapter;
    private final Rect mTmpChildRect;
    private final Rect mTmpContainerRect;
    private boolean mUserInputEnabled;

    private abstract class AccessibilityProvider {
        final ViewPager2 this$0;

        private AccessibilityProvider(ViewPager2 viewPager2) {
            this.this$0 = viewPager2;
        }

        boolean handlesGetAccessibilityClassName() {
            return false;
        }

        boolean handlesLmPerformAccessibilityAction(int i) {
            return false;
        }

        boolean handlesPerformAccessibilityAction(int i, Bundle bundle) {
            return false;
        }

        boolean handlesRvGetAccessibilityClassName() {
            return false;
        }

        void onAttachAdapter(RecyclerView.Adapter<?> adapter) {
        }

        void onDetachAdapter(RecyclerView.Adapter<?> adapter) {
        }

        String onGetAccessibilityClassName() {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{125, 10, 68, 65, 92, 95, 67, 9, 85, 12, 80, 92, 71, 0, 84, 79}, "3e0a52", true));
        }

        void onInitialize(CompositeOnPageChangeCallback compositeOnPageChangeCallback, RecyclerView recyclerView) {
        }

        void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        }

        void onLmInitializeAccessibilityNodeInfo(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        }

        boolean onLmPerformAccessibilityAction(int i) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{43, 87, 65, 20, 81, 15, 21, 84, 80, 89, 93, 12, 17, 93, 81, 26}, "e8548b", 658107752L));
        }

        boolean onPerformAccessibilityAction(int i, Bundle bundle) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{125, 94, 65, 70, 92, 8, 67, 93, 80, 11, 80, 11, 71, 84, 81, 72}, "315f5e", true, true));
        }

        void onRestorePendingState() {
        }

        CharSequence onRvGetAccessibilityClassName() {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{118, 12, 17, 25, 12, 88, 72, 15, 0, 84, 0, 91, 76, 6, 1, 23}, "8ce9e5", 19398));
        }

        void onRvInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        }

        void onSetLayoutDirection() {
        }

        void onSetNewCurrentItem() {
        }

        void onSetOrientation() {
        }

        void onSetUserInputEnabled() {
        }
    }

    class BasicAccessibilityProvider extends AccessibilityProvider {
        final ViewPager2 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        BasicAccessibilityProvider(ViewPager2 viewPager2) {
            super();
            this.this$0 = viewPager2;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public boolean handlesLmPerformAccessibilityAction(int i) {
            return (i == 8192 || i == 4096) && !this.this$0.isUserInputEnabled();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public boolean handlesRvGetAccessibilityClassName() {
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onLmInitializeAccessibilityNodeInfo(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            if (this.this$0.isUserInputEnabled()) {
                return;
            }
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_BACKWARD);
            accessibilityNodeInfoCompat.removeAction(AccessibilityNodeInfoCompat.AccessibilityActionCompat.ACTION_SCROLL_FORWARD);
            accessibilityNodeInfoCompat.setScrollable(false);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public boolean onLmPerformAccessibilityAction(int i) {
            if (handlesLmPerformAccessibilityAction(i)) {
                return false;
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public CharSequence onRvGetAccessibilityClassName() {
            if (handlesRvGetAccessibilityClassName()) {
                return NPStringFog.decode(new byte[]{85, 90, 1, 23, 91, 95, 80, 76, 75, 19, 93, 83, 67, 68, 4, 2, 81, 68, 26, 67, 12, 1, 83, 83, 64, 26, 51, 12, 81, 65, 100, 85, 2, 0, 70}, "44ee46", 1.78809862E8d);
            }
            throw new IllegalStateException();
        }
    }

    private static abstract class DataSetChangeObserver extends RecyclerView.AdapterDataObserver {
        private DataSetChangeObserver() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public abstract void onChanged();

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeChanged(int i, int i2, Object obj) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeInserted(int i, int i2) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeMoved(int i, int i2, int i3) {
            onChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void onItemRangeRemoved(int i, int i2) {
            onChanged();
        }
    }

    private class LinearLayoutManagerImpl extends LinearLayoutManager {
        final ViewPager2 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        LinearLayoutManagerImpl(ViewPager2 viewPager2, Context context) {
            super(context);
            this.this$0 = viewPager2;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager
        protected void calculateExtraLayoutSpace(RecyclerView.State state, int[] iArr) {
            int offscreenPageLimit = this.this$0.getOffscreenPageLimit();
            if (offscreenPageLimit == -1) {
                super.calculateExtraLayoutSpace(state, iArr);
                return;
            }
            int pageSize = offscreenPageLimit * this.this$0.getPageSize();
            iArr[0] = pageSize;
            iArr[1] = pageSize;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public void onInitializeAccessibilityNodeInfo(RecyclerView.Recycler recycler, RecyclerView.State state, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(recycler, state, accessibilityNodeInfoCompat);
            this.this$0.mAccessibilityProvider.onLmInitializeAccessibilityNodeInfo(accessibilityNodeInfoCompat);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean performAccessibilityAction(RecyclerView.Recycler recycler, RecyclerView.State state, int i, Bundle bundle) {
            return this.this$0.mAccessibilityProvider.handlesLmPerformAccessibilityAction(i) ? this.this$0.mAccessibilityProvider.onLmPerformAccessibilityAction(i) : super.performAccessibilityAction(recycler, state, i, bundle);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean requestChildRectangleOnScreen(RecyclerView recyclerView, View view, Rect rect, boolean z, boolean z2) {
            return false;
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface OffscreenPageLimit {
    }

    public static abstract class OnPageChangeCallback {
        public void onPageScrollStateChanged(int i) {
        }

        public void onPageScrolled(int i, float f, int i2) {
        }

        public void onPageSelected(int i) {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Orientation {
    }

    class PageAwareAccessibilityProvider extends AccessibilityProvider {
        private final AccessibilityViewCommand mActionPageBackward;
        private final AccessibilityViewCommand mActionPageForward;
        private RecyclerView.AdapterDataObserver mAdapterDataObserver;
        final ViewPager2 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        PageAwareAccessibilityProvider(ViewPager2 viewPager2) {
            super();
            this.this$0 = viewPager2;
            this.mActionPageForward = new AccessibilityViewCommand(this) { // from class: androidx.viewpager2.widget.ViewPager2.PageAwareAccessibilityProvider.1
                final PageAwareAccessibilityProvider this$1;

                {
                    this.this$1 = this;
                }

                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
                    this.this$1.setCurrentItemFromAccessibilityCommand(((ViewPager2) view).getCurrentItem() + 1);
                    return true;
                }
            };
            this.mActionPageBackward = new AccessibilityViewCommand(this) { // from class: androidx.viewpager2.widget.ViewPager2.PageAwareAccessibilityProvider.2
                final PageAwareAccessibilityProvider this$1;

                {
                    this.this$1 = this;
                }

                @Override // androidx.core.view.accessibility.AccessibilityViewCommand
                public boolean perform(View view, AccessibilityViewCommand.CommandArguments commandArguments) {
                    this.this$1.setCurrentItemFromAccessibilityCommand(((ViewPager2) view).getCurrentItem() - 1);
                    return true;
                }
            };
        }

        private void addCollectionInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            int itemCount;
            int itemCount2;
            if (this.this$0.getAdapter() == null) {
                itemCount = 0;
                itemCount2 = 0;
            } else if (this.this$0.getOrientation() == 1) {
                itemCount2 = this.this$0.getAdapter().getItemCount();
                itemCount = 0;
            } else {
                itemCount = this.this$0.getAdapter().getItemCount();
                itemCount2 = 0;
            }
            AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(itemCount2, itemCount, false, 0));
        }

        private void addScrollActions(AccessibilityNodeInfo accessibilityNodeInfo) {
            int itemCount;
            RecyclerView.Adapter adapter = this.this$0.getAdapter();
            if (adapter == null || (itemCount = adapter.getItemCount()) == 0 || !this.this$0.isUserInputEnabled()) {
                return;
            }
            if (this.this$0.mCurrentItem > 0) {
                accessibilityNodeInfo.addAction(8192);
            }
            if (this.this$0.mCurrentItem < itemCount - 1) {
                accessibilityNodeInfo.addAction(4096);
            }
            accessibilityNodeInfo.setScrollable(true);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public boolean handlesGetAccessibilityClassName() {
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public boolean handlesPerformAccessibilityAction(int i, Bundle bundle) {
            return i == 8192 || i == 4096;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onAttachAdapter(RecyclerView.Adapter<?> adapter) {
            updatePageAccessibilityActions();
            if (adapter != null) {
                adapter.registerAdapterDataObserver(this.mAdapterDataObserver);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onDetachAdapter(RecyclerView.Adapter<?> adapter) {
            if (adapter != null) {
                adapter.unregisterAdapterDataObserver(this.mAdapterDataObserver);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public String onGetAccessibilityClassName() {
            if (handlesGetAccessibilityClassName()) {
                return NPStringFog.decode(new byte[]{82, 15, 0, 23, 12, 95, 87, 25, 74, 19, 10, 83, 68, 17, 5, 2, 6, 68, 29, 22, 13, 1, 4, 83, 71, 79, 50, 12, 6, 65, 99, 0, 3, 0, 17}, "3adec6", 1.9978216E7f);
            }
            throw new IllegalStateException();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onInitialize(CompositeOnPageChangeCallback compositeOnPageChangeCallback, RecyclerView recyclerView) {
            ViewCompat.setImportantForAccessibility(recyclerView, 2);
            this.mAdapterDataObserver = new DataSetChangeObserver(this) { // from class: androidx.viewpager2.widget.ViewPager2.PageAwareAccessibilityProvider.3
                final PageAwareAccessibilityProvider this$1;

                {
                    this.this$1 = this;
                }

                @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public void onChanged() {
                    this.this$1.updatePageAccessibilityActions();
                }
            };
            if (ViewCompat.getImportantForAccessibility(this.this$0) == 0) {
                ViewCompat.setImportantForAccessibility(this.this$0, 1);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
            addCollectionInfo(accessibilityNodeInfo);
            if (Build.VERSION.SDK_INT >= 16) {
                addScrollActions(accessibilityNodeInfo);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public boolean onPerformAccessibilityAction(int i, Bundle bundle) {
            if (!handlesPerformAccessibilityAction(i, bundle)) {
                throw new IllegalStateException();
            }
            setCurrentItemFromAccessibilityCommand(i == 8192 ? this.this$0.getCurrentItem() - 1 : this.this$0.getCurrentItem() + 1);
            return true;
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onRestorePendingState() {
            updatePageAccessibilityActions();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onRvInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            accessibilityEvent.setSource(this.this$0);
            accessibilityEvent.setClassName(onGetAccessibilityClassName());
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onSetLayoutDirection() {
            updatePageAccessibilityActions();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onSetNewCurrentItem() {
            updatePageAccessibilityActions();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onSetOrientation() {
            updatePageAccessibilityActions();
        }

        @Override // androidx.viewpager2.widget.ViewPager2.AccessibilityProvider
        public void onSetUserInputEnabled() {
            updatePageAccessibilityActions();
            if (Build.VERSION.SDK_INT < 21) {
                this.this$0.sendAccessibilityEvent(2048);
            }
        }

        void setCurrentItemFromAccessibilityCommand(int i) {
            if (this.this$0.isUserInputEnabled()) {
                this.this$0.setCurrentItemInternal(i, true);
            }
        }

        void updatePageAccessibilityActions() {
            int itemCount;
            int i = R.id.accessibilityActionPageRight;
            ViewPager2 viewPager2 = this.this$0;
            ViewCompat.removeAccessibilityAction(viewPager2, R.id.accessibilityActionPageLeft);
            ViewCompat.removeAccessibilityAction(viewPager2, R.id.accessibilityActionPageRight);
            ViewCompat.removeAccessibilityAction(viewPager2, R.id.accessibilityActionPageUp);
            ViewCompat.removeAccessibilityAction(viewPager2, R.id.accessibilityActionPageDown);
            if (this.this$0.getAdapter() == null || (itemCount = this.this$0.getAdapter().getItemCount()) == 0 || !this.this$0.isUserInputEnabled()) {
                return;
            }
            if (this.this$0.getOrientation() != 0) {
                if (this.this$0.mCurrentItem < itemCount - 1) {
                    ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageDown, null), null, this.mActionPageForward);
                }
                if (this.this$0.mCurrentItem > 0) {
                    ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(R.id.accessibilityActionPageUp, null), null, this.mActionPageBackward);
                    return;
                }
                return;
            }
            boolean zIsRtl = this.this$0.isRtl();
            int i2 = zIsRtl ? 16908360 : 16908361;
            if (!zIsRtl) {
                i = 16908360;
            }
            if (this.this$0.mCurrentItem < itemCount - 1) {
                ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i2, null), null, this.mActionPageForward);
            }
            if (this.this$0.mCurrentItem > 0) {
                ViewCompat.replaceAccessibilityAction(viewPager2, new AccessibilityNodeInfoCompat.AccessibilityActionCompat(i, null), null, this.mActionPageBackward);
            }
        }
    }

    public interface PageTransformer {
        void transformPage(View view, float f);
    }

    private class PagerSnapHelperImpl extends PagerSnapHelper {
        final ViewPager2 this$0;

        PagerSnapHelperImpl(ViewPager2 viewPager2) {
            this.this$0 = viewPager2;
        }

        @Override // androidx.recyclerview.widget.PagerSnapHelper, androidx.recyclerview.widget.SnapHelper
        public View findSnapView(RecyclerView.LayoutManager layoutManager) {
            if (this.this$0.isFakeDragging()) {
                return null;
            }
            return super.findSnapView(layoutManager);
        }
    }

    private class RecyclerViewImpl extends RecyclerView {
        final ViewPager2 this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        RecyclerViewImpl(ViewPager2 viewPager2, Context context) {
            super(context);
            this.this$0 = viewPager2;
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, android.view.View
        public CharSequence getAccessibilityClassName() {
            return this.this$0.mAccessibilityProvider.handlesRvGetAccessibilityClassName() ? this.this$0.mAccessibilityProvider.onRvGetAccessibilityClassName() : super.getAccessibilityClassName();
        }

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setFromIndex(this.this$0.mCurrentItem);
            accessibilityEvent.setToIndex(this.this$0.mCurrentItem);
            this.this$0.mAccessibilityProvider.onRvInitializeAccessibilityEvent(accessibilityEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return this.this$0.isUserInputEnabled() && super.onInterceptTouchEvent(motionEvent);
        }

        @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return this.this$0.isUserInputEnabled() && super.onTouchEvent(motionEvent);
        }
    }

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.ClassLoaderCreator<SavedState>() { // from class: androidx.viewpager2.widget.ViewPager2.SavedState.1
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return createFromParcel(parcel, (ClassLoader) null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return Build.VERSION.SDK_INT >= 24 ? new SavedState(parcel, classLoader) : new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        Parcelable mAdapterState;
        int mCurrentItem;
        int mRecyclerViewId;

        SavedState(Parcel parcel) {
            super(parcel);
            readValues(parcel, null);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            readValues(parcel, classLoader);
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        private void readValues(Parcel parcel, ClassLoader classLoader) {
            this.mRecyclerViewId = parcel.readInt();
            this.mCurrentItem = parcel.readInt();
            this.mAdapterState = parcel.readParcelable(classLoader);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.mRecyclerViewId);
            parcel.writeInt(this.mCurrentItem);
            parcel.writeParcelable(this.mAdapterState, i);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ScrollState {
    }

    private static class SmoothScrollToPosition implements Runnable {
        private final int mPosition;
        private final RecyclerView mRecyclerView;

        SmoothScrollToPosition(int i, RecyclerView recyclerView) {
            this.mPosition = i;
            this.mRecyclerView = recyclerView;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.mRecyclerView.smoothScrollToPosition(this.mPosition);
        }
    }

    public ViewPager2(Context context) {
        super(context);
        this.mTmpContainerRect = new Rect();
        this.mTmpChildRect = new Rect();
        this.mExternalPageChangeCallbacks = new CompositeOnPageChangeCallback(3);
        this.mCurrentItemDirty = false;
        this.mCurrentItemDataSetChangeObserver = new DataSetChangeObserver(this) { // from class: androidx.viewpager2.widget.ViewPager2.1
            final ViewPager2 this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                this.this$0.mCurrentItemDirty = true;
                this.this$0.mScrollEventAdapter.notifyDataSetChangeHappened();
            }
        };
        this.mPendingCurrentItem = -1;
        this.mSavedItemAnimator = null;
        this.mSavedItemAnimatorPresent = false;
        this.mUserInputEnabled = true;
        this.mOffscreenPageLimit = -1;
        initialize(context, null);
    }

    public ViewPager2(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTmpContainerRect = new Rect();
        this.mTmpChildRect = new Rect();
        this.mExternalPageChangeCallbacks = new CompositeOnPageChangeCallback(3);
        this.mCurrentItemDirty = false;
        this.mCurrentItemDataSetChangeObserver = new DataSetChangeObserver(this) { // from class: androidx.viewpager2.widget.ViewPager2.1
            final ViewPager2 this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                this.this$0.mCurrentItemDirty = true;
                this.this$0.mScrollEventAdapter.notifyDataSetChangeHappened();
            }
        };
        this.mPendingCurrentItem = -1;
        this.mSavedItemAnimator = null;
        this.mSavedItemAnimatorPresent = false;
        this.mUserInputEnabled = true;
        this.mOffscreenPageLimit = -1;
        initialize(context, attributeSet);
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTmpContainerRect = new Rect();
        this.mTmpChildRect = new Rect();
        this.mExternalPageChangeCallbacks = new CompositeOnPageChangeCallback(3);
        this.mCurrentItemDirty = false;
        this.mCurrentItemDataSetChangeObserver = new DataSetChangeObserver(this) { // from class: androidx.viewpager2.widget.ViewPager2.1
            final ViewPager2 this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                this.this$0.mCurrentItemDirty = true;
                this.this$0.mScrollEventAdapter.notifyDataSetChangeHappened();
            }
        };
        this.mPendingCurrentItem = -1;
        this.mSavedItemAnimator = null;
        this.mSavedItemAnimatorPresent = false;
        this.mUserInputEnabled = true;
        this.mOffscreenPageLimit = -1;
        initialize(context, attributeSet);
    }

    public ViewPager2(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.mTmpContainerRect = new Rect();
        this.mTmpChildRect = new Rect();
        this.mExternalPageChangeCallbacks = new CompositeOnPageChangeCallback(3);
        this.mCurrentItemDirty = false;
        this.mCurrentItemDataSetChangeObserver = new DataSetChangeObserver(this) { // from class: androidx.viewpager2.widget.ViewPager2.1
            final ViewPager2 this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.viewpager2.widget.ViewPager2.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
            public void onChanged() {
                this.this$0.mCurrentItemDirty = true;
                this.this$0.mScrollEventAdapter.notifyDataSetChangeHappened();
            }
        };
        this.mPendingCurrentItem = -1;
        this.mSavedItemAnimator = null;
        this.mSavedItemAnimatorPresent = false;
        this.mUserInputEnabled = true;
        this.mOffscreenPageLimit = -1;
        initialize(context, attributeSet);
    }

    private RecyclerView.OnChildAttachStateChangeListener enforceChildFillListener() {
        return new RecyclerView.OnChildAttachStateChangeListener(this) { // from class: androidx.viewpager2.widget.ViewPager2.4
            final ViewPager2 this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewAttachedToWindow(View view) {
                RecyclerView.LayoutParams layoutParams = (RecyclerView.LayoutParams) view.getLayoutParams();
                if (layoutParams.width != -1 || layoutParams.height != -1) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{52, 80, 81, 85, 18, 21, 9, 68, 69, 68, 65, 83, 13, 93, 90, 16, 21, 93, 1, 17, 65, 88, 14, 89, 1, 17, 96, 89, 4, 66, 52, 80, 81, 85, 19, 7, 68, 25, 67, 67, 4, 21, 9, 80, 66, 83, 9, 106, 20, 80, 68, 85, 15, 65, 77}, "d160a5", false));
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnChildAttachStateChangeListener
            public void onChildViewDetachedFromWindow(View view) {
            }
        };
    }

    private void initialize(Context context, AttributeSet attributeSet) {
        this.mAccessibilityProvider = sFeatureEnhancedA11yEnabled ? new PageAwareAccessibilityProvider(this) : new BasicAccessibilityProvider(this);
        RecyclerViewImpl recyclerViewImpl = new RecyclerViewImpl(this, context);
        this.mRecyclerView = recyclerViewImpl;
        recyclerViewImpl.setId(ViewCompat.generateViewId());
        this.mRecyclerView.setDescendantFocusability(131072);
        LinearLayoutManagerImpl linearLayoutManagerImpl = new LinearLayoutManagerImpl(this, context);
        this.mLayoutManager = linearLayoutManagerImpl;
        this.mRecyclerView.setLayoutManager(linearLayoutManagerImpl);
        this.mRecyclerView.setScrollingTouchSlop(1);
        setOrientation(context, attributeSet);
        this.mRecyclerView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        this.mRecyclerView.addOnChildAttachStateChangeListener(enforceChildFillListener());
        ScrollEventAdapter scrollEventAdapter = new ScrollEventAdapter(this);
        this.mScrollEventAdapter = scrollEventAdapter;
        this.mFakeDragger = new FakeDrag(this, scrollEventAdapter, this.mRecyclerView);
        PagerSnapHelperImpl pagerSnapHelperImpl = new PagerSnapHelperImpl(this);
        this.mPagerSnapHelper = pagerSnapHelperImpl;
        pagerSnapHelperImpl.attachToRecyclerView(this.mRecyclerView);
        this.mRecyclerView.addOnScrollListener(this.mScrollEventAdapter);
        CompositeOnPageChangeCallback compositeOnPageChangeCallback = new CompositeOnPageChangeCallback(3);
        this.mPageChangeEventDispatcher = compositeOnPageChangeCallback;
        this.mScrollEventAdapter.setOnPageChangeCallback(compositeOnPageChangeCallback);
        OnPageChangeCallback onPageChangeCallback = new OnPageChangeCallback(this) { // from class: androidx.viewpager2.widget.ViewPager2.2
            final ViewPager2 this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageScrollStateChanged(int i) {
                if (i == 0) {
                    this.this$0.updateCurrentItem();
                }
            }

            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                if (this.this$0.mCurrentItem != i) {
                    this.this$0.mCurrentItem = i;
                    this.this$0.mAccessibilityProvider.onSetNewCurrentItem();
                }
            }
        };
        OnPageChangeCallback onPageChangeCallback2 = new OnPageChangeCallback(this) { // from class: androidx.viewpager2.widget.ViewPager2.3
            final ViewPager2 this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int i) {
                this.this$0.clearFocus();
                if (this.this$0.hasFocus()) {
                    this.this$0.mRecyclerView.requestFocus(2);
                }
            }
        };
        this.mPageChangeEventDispatcher.addOnPageChangeCallback(onPageChangeCallback);
        this.mPageChangeEventDispatcher.addOnPageChangeCallback(onPageChangeCallback2);
        this.mAccessibilityProvider.onInitialize(this.mPageChangeEventDispatcher, this.mRecyclerView);
        this.mPageChangeEventDispatcher.addOnPageChangeCallback(this.mExternalPageChangeCallbacks);
        PageTransformerAdapter pageTransformerAdapter = new PageTransformerAdapter(this.mLayoutManager);
        this.mPageTransformerAdapter = pageTransformerAdapter;
        this.mPageChangeEventDispatcher.addOnPageChangeCallback(pageTransformerAdapter);
        RecyclerView recyclerView = this.mRecyclerView;
        attachViewToParent(recyclerView, 0, recyclerView.getLayoutParams());
    }

    private void registerCurrentItemDataSetTracker(RecyclerView.Adapter<?> adapter) {
        if (adapter != null) {
            adapter.registerAdapterDataObserver(this.mCurrentItemDataSetChangeObserver);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void restorePendingState() {
        RecyclerView.Adapter adapter;
        if (this.mPendingCurrentItem == -1 || (adapter = getAdapter()) == 0) {
            return;
        }
        Parcelable parcelable = this.mPendingAdapterState;
        if (parcelable != null) {
            if (adapter instanceof StatefulAdapter) {
                ((StatefulAdapter) adapter).restoreState(parcelable);
            }
            this.mPendingAdapterState = null;
        }
        int iMax = Math.max(0, Math.min(this.mPendingCurrentItem, adapter.getItemCount() - 1));
        this.mCurrentItem = iMax;
        this.mPendingCurrentItem = -1;
        this.mRecyclerView.scrollToPosition(iMax);
        this.mAccessibilityProvider.onRestorePendingState();
    }

    private void setOrientation(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.viewpager2.R.styleable.ViewPager2);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, androidx.viewpager2.R.styleable.ViewPager2, attributeSet, typedArrayObtainStyledAttributes, 0, 0);
        }
        try {
            setOrientation(typedArrayObtainStyledAttributes.getInt(androidx.viewpager2.R.styleable.ViewPager2_android_orientation, 0));
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void unregisterCurrentItemDataSetTracker(RecyclerView.Adapter<?> adapter) {
        if (adapter != null) {
            adapter.unregisterAdapterDataObserver(this.mCurrentItemDataSetChangeObserver);
        }
    }

    public void addItemDecoration(RecyclerView.ItemDecoration itemDecoration) {
        this.mRecyclerView.addItemDecoration(itemDecoration);
    }

    public void addItemDecoration(RecyclerView.ItemDecoration itemDecoration, int i) {
        this.mRecyclerView.addItemDecoration(itemDecoration, i);
    }

    public boolean beginFakeDrag() {
        return this.mFakeDragger.beginFakeDrag();
    }

    @Override // android.view.View
    public boolean canScrollHorizontally(int i) {
        return this.mRecyclerView.canScrollHorizontally(i);
    }

    @Override // android.view.View
    public boolean canScrollVertically(int i) {
        return this.mRecyclerView.canScrollVertically(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        Parcelable parcelable = sparseArray.get(getId());
        if (parcelable instanceof SavedState) {
            int i = ((SavedState) parcelable).mRecyclerViewId;
            sparseArray.put(this.mRecyclerView.getId(), sparseArray.get(i));
            sparseArray.remove(i);
        }
        super.dispatchRestoreInstanceState(sparseArray);
        restorePendingState();
    }

    public boolean endFakeDrag() {
        return this.mFakeDragger.endFakeDrag();
    }

    public boolean fakeDragBy(float f) {
        return this.mFakeDragger.fakeDragBy(f);
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return this.mAccessibilityProvider.handlesGetAccessibilityClassName() ? this.mAccessibilityProvider.onGetAccessibilityClassName() : super.getAccessibilityClassName();
    }

    public RecyclerView.Adapter getAdapter() {
        return this.mRecyclerView.getAdapter();
    }

    public int getCurrentItem() {
        return this.mCurrentItem;
    }

    public RecyclerView.ItemDecoration getItemDecorationAt(int i) {
        return this.mRecyclerView.getItemDecorationAt(i);
    }

    public int getItemDecorationCount() {
        return this.mRecyclerView.getItemDecorationCount();
    }

    public int getOffscreenPageLimit() {
        return this.mOffscreenPageLimit;
    }

    public int getOrientation() {
        return this.mLayoutManager.getOrientation();
    }

    int getPageSize() {
        RecyclerView recyclerView = this.mRecyclerView;
        return getOrientation() == 0 ? (recyclerView.getWidth() - recyclerView.getPaddingLeft()) - recyclerView.getPaddingRight() : (recyclerView.getHeight() - recyclerView.getPaddingTop()) - recyclerView.getPaddingBottom();
    }

    public int getScrollState() {
        return this.mScrollEventAdapter.getScrollState();
    }

    public void invalidateItemDecorations() {
        this.mRecyclerView.invalidateItemDecorations();
    }

    public boolean isFakeDragging() {
        return this.mFakeDragger.isFakeDragging();
    }

    boolean isRtl() {
        return this.mLayoutManager.getLayoutDirection() == 1;
    }

    public boolean isUserInputEnabled() {
        return this.mUserInputEnabled;
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        this.mAccessibilityProvider.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int measuredWidth = this.mRecyclerView.getMeasuredWidth();
        int measuredHeight = this.mRecyclerView.getMeasuredHeight();
        this.mTmpContainerRect.left = getPaddingLeft();
        this.mTmpContainerRect.right = (i3 - i) - getPaddingRight();
        this.mTmpContainerRect.top = getPaddingTop();
        this.mTmpContainerRect.bottom = (i4 - i2) - getPaddingBottom();
        Gravity.apply(8388659, measuredWidth, measuredHeight, this.mTmpContainerRect, this.mTmpChildRect);
        this.mRecyclerView.layout(this.mTmpChildRect.left, this.mTmpChildRect.top, this.mTmpChildRect.right, this.mTmpChildRect.bottom);
        if (this.mCurrentItemDirty) {
            updateCurrentItem();
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        measureChild(this.mRecyclerView, i, i2);
        int measuredWidth = this.mRecyclerView.getMeasuredWidth();
        int measuredHeight = this.mRecyclerView.getMeasuredHeight();
        int measuredState = this.mRecyclerView.getMeasuredState();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        setMeasuredDimension(resolveSizeAndState(Math.max(measuredWidth + paddingLeft + paddingRight, getSuggestedMinimumWidth()), i, measuredState), resolveSizeAndState(Math.max(measuredHeight + paddingTop + paddingBottom, getSuggestedMinimumHeight()), i2, measuredState << 16));
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.mPendingCurrentItem = savedState.mCurrentItem;
        this.mPendingAdapterState = savedState.mAdapterState;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.mRecyclerViewId = this.mRecyclerView.getId();
        int i = this.mPendingCurrentItem;
        if (i == -1) {
            i = this.mCurrentItem;
        }
        savedState.mCurrentItem = i;
        Parcelable parcelable = this.mPendingAdapterState;
        if (parcelable != null) {
            savedState.mAdapterState = parcelable;
        } else {
            Object adapter = this.mRecyclerView.getAdapter();
            if (adapter instanceof StatefulAdapter) {
                savedState.mAdapterState = ((StatefulAdapter) adapter).saveState();
            }
        }
        return savedState;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        throw new IllegalStateException(getClass().getSimpleName() + NPStringFog.decode(new byte[]{66, 6, 93, 82, 66, 67, 12, 13, 70, 23, 66, 22, 18, 18, 93, 69, 69, 67, 6, 11, 64, 82, 82, 23, 66, 1, 90, 94, 93, 7, 66, 20, 91, 82, 70, 16}, "bb271c", -1336928748L));
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i, Bundle bundle) {
        return this.mAccessibilityProvider.handlesPerformAccessibilityAction(i, bundle) ? this.mAccessibilityProvider.onPerformAccessibilityAction(i, bundle) : super.performAccessibilityAction(i, bundle);
    }

    public void registerOnPageChangeCallback(OnPageChangeCallback onPageChangeCallback) {
        this.mExternalPageChangeCallbacks.addOnPageChangeCallback(onPageChangeCallback);
    }

    public void removeItemDecoration(RecyclerView.ItemDecoration itemDecoration) {
        this.mRecyclerView.removeItemDecoration(itemDecoration);
    }

    public void removeItemDecorationAt(int i) {
        this.mRecyclerView.removeItemDecorationAt(i);
    }

    public void requestTransform() {
        if (this.mPageTransformerAdapter.getPageTransformer() == null) {
            return;
        }
        double relativeScrollPosition = this.mScrollEventAdapter.getRelativeScrollPosition();
        int i = (int) relativeScrollPosition;
        double d = i;
        Double.isNaN(d);
        float f = (float) (relativeScrollPosition - d);
        this.mPageTransformerAdapter.onPageScrolled(i, f, Math.round(getPageSize() * f));
    }

    public void setAdapter(RecyclerView.Adapter adapter) {
        RecyclerView.Adapter adapter2 = this.mRecyclerView.getAdapter();
        this.mAccessibilityProvider.onDetachAdapter(adapter2);
        unregisterCurrentItemDataSetTracker(adapter2);
        this.mRecyclerView.setAdapter(adapter);
        this.mCurrentItem = 0;
        restorePendingState();
        this.mAccessibilityProvider.onAttachAdapter(adapter);
        registerCurrentItemDataSetTracker(adapter);
    }

    public void setCurrentItem(int i) {
        setCurrentItem(i, true);
    }

    public void setCurrentItem(int i, boolean z) {
        if (isFakeDragging()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{115, 7, 94, 93, 92, 22, 16, 5, 88, 82, 93, 5, 85, 70, 83, 70, 65, 16, 85, 8, 68, 19, 90, 22, 85, 11, 16, 68, 91, 7, 94, 70, 102, 90, 86, 21, 96, 7, 87, 86, 65, 80, 16, 15, 67, 19, 85, 3, 91, 3, 16, 87, 65, 3, 87, 1, 89, 93, 84}, "0f033b", -1.0763945E9f));
        }
        setCurrentItemInternal(i, z);
    }

    void setCurrentItemInternal(int i, boolean z) {
        RecyclerView.Adapter adapter = getAdapter();
        if (adapter == null) {
            if (this.mPendingCurrentItem != -1) {
                this.mPendingCurrentItem = Math.max(i, 0);
                return;
            }
            return;
        }
        if (adapter.getItemCount() > 0) {
            int iMin = Math.min(Math.max(i, 0), adapter.getItemCount() - 1);
            if (iMin == this.mCurrentItem && this.mScrollEventAdapter.isIdle()) {
                return;
            }
            int i2 = this.mCurrentItem;
            if (iMin == i2 && z) {
                return;
            }
            double relativeScrollPosition = i2;
            this.mCurrentItem = iMin;
            this.mAccessibilityProvider.onSetNewCurrentItem();
            if (!this.mScrollEventAdapter.isIdle()) {
                relativeScrollPosition = this.mScrollEventAdapter.getRelativeScrollPosition();
            }
            this.mScrollEventAdapter.notifyProgrammaticScroll(iMin, z);
            if (!z) {
                this.mRecyclerView.scrollToPosition(iMin);
                return;
            }
            double d = iMin;
            Double.isNaN(d);
            if (Math.abs(d - relativeScrollPosition) <= 3.0d) {
                this.mRecyclerView.smoothScrollToPosition(iMin);
                return;
            }
            this.mRecyclerView.scrollToPosition(((double) iMin) > relativeScrollPosition ? iMin - 3 : iMin + 3);
            RecyclerView recyclerView = this.mRecyclerView;
            recyclerView.post(new SmoothScrollToPosition(iMin, recyclerView));
        }
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        super.setLayoutDirection(i);
        this.mAccessibilityProvider.onSetLayoutDirection();
    }

    public void setOffscreenPageLimit(int i) {
        if (i < 1 && i != -1) {
            throw new IllegalArgumentException(NPStringFog.decode(new byte[]{44, 86, 95, 75, 83, 20, 6, 85, 87, 24, 64, 7, 4, 85, 25, 84, 89, 11, 10, 68, 25, 85, 69, 21, 23, 16, 91, 93, 16, 41, 37, 118, 106, 123, 98, 35, 38, 126, 102, 104, 113, 33, 38, 111, 117, 113, 125, 47, 55, 111, 125, 125, 118, 39, 54, 124, 109, 24, 95, 20, 67, 81, 25, 86, 69, 11, 1, 85, 75, 24, 14, 70, 83}, "c0980f", 1.4751995E9f));
        }
        this.mOffscreenPageLimit = i;
        this.mRecyclerView.requestLayout();
    }

    public void setOrientation(int i) {
        this.mLayoutManager.setOrientation(i);
        this.mAccessibilityProvider.onSetOrientation();
    }

    public void setPageTransformer(PageTransformer pageTransformer) {
        if (pageTransformer != null) {
            if (!this.mSavedItemAnimatorPresent) {
                this.mSavedItemAnimator = this.mRecyclerView.getItemAnimator();
                this.mSavedItemAnimatorPresent = true;
            }
            this.mRecyclerView.setItemAnimator(null);
        } else if (this.mSavedItemAnimatorPresent) {
            this.mRecyclerView.setItemAnimator(this.mSavedItemAnimator);
            this.mSavedItemAnimator = null;
            this.mSavedItemAnimatorPresent = false;
        }
        if (pageTransformer == this.mPageTransformerAdapter.getPageTransformer()) {
            return;
        }
        this.mPageTransformerAdapter.setPageTransformer(pageTransformer);
        requestTransform();
    }

    public void setUserInputEnabled(boolean z) {
        this.mUserInputEnabled = z;
        this.mAccessibilityProvider.onSetUserInputEnabled();
    }

    void snapToPage() {
        View viewFindSnapView = this.mPagerSnapHelper.findSnapView(this.mLayoutManager);
        if (viewFindSnapView == null) {
            return;
        }
        int[] iArrCalculateDistanceToFinalSnap = this.mPagerSnapHelper.calculateDistanceToFinalSnap(this.mLayoutManager, viewFindSnapView);
        if (iArrCalculateDistanceToFinalSnap[0] == 0 && iArrCalculateDistanceToFinalSnap[1] == 0) {
            return;
        }
        this.mRecyclerView.smoothScrollBy(iArrCalculateDistanceToFinalSnap[0], iArrCalculateDistanceToFinalSnap[1]);
    }

    public void unregisterOnPageChangeCallback(OnPageChangeCallback onPageChangeCallback) {
        this.mExternalPageChangeCallbacks.removeOnPageChangeCallback(onPageChangeCallback);
    }

    void updateCurrentItem() {
        PagerSnapHelper pagerSnapHelper = this.mPagerSnapHelper;
        if (pagerSnapHelper == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{124, 83, 70, 93, 80, 90, 24, 87, 70, 71, 66, 89, 72, 66, 92, 91, 89, 20, 78, 95, 90, 88, 86, 64, 93, 82, 27}, "865474", true));
        }
        View viewFindSnapView = pagerSnapHelper.findSnapView(this.mLayoutManager);
        if (viewFindSnapView == null) {
            return;
        }
        int position = this.mLayoutManager.getPosition(viewFindSnapView);
        if (position != this.mCurrentItem && getScrollState() == 0) {
            this.mPageChangeEventDispatcher.onPageSelected(position);
        }
        this.mCurrentItemDirty = false;
    }
}
