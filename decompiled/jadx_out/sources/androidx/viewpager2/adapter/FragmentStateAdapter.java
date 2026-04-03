package androidx.viewpager2.adapter;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.collection.ArraySet;
import androidx.collection.LongSparseArray;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes52.dex */
public abstract class FragmentStateAdapter extends RecyclerView.Adapter<FragmentViewHolder> implements StatefulAdapter {
    private static final long GRACE_WINDOW_TIME_MS = 10000;
    private static final String KEY_PREFIX_FRAGMENT = NPStringFog.decode(new byte[]{83, 66}, "5af73e", -339421622L);
    private static final String KEY_PREFIX_STATE = NPStringFog.decode(new byte[]{21, 70}, "feb209", -1.76721107E8d);
    final FragmentManager mFragmentManager;
    private FragmentMaxLifecycleEnforcer mFragmentMaxLifecycleEnforcer;
    final LongSparseArray<Fragment> mFragments;
    private boolean mHasStaleFragments;
    boolean mIsInGracePeriod;
    private final LongSparseArray<Integer> mItemIdToViewHolder;
    final Lifecycle mLifecycle;
    private final LongSparseArray<Fragment.SavedState> mSavedStates;

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

    class FragmentMaxLifecycleEnforcer {
        private RecyclerView.AdapterDataObserver mDataObserver;
        private LifecycleEventObserver mLifecycleObserver;
        private ViewPager2.OnPageChangeCallback mPageChangeCallback;
        private long mPrimaryItemId = -1;
        private ViewPager2 mViewPager;
        final FragmentStateAdapter this$0;

        FragmentMaxLifecycleEnforcer(FragmentStateAdapter fragmentStateAdapter) {
            this.this$0 = fragmentStateAdapter;
        }

        private ViewPager2 inferViewPager(RecyclerView recyclerView) {
            ViewParent parent = recyclerView.getParent();
            if (parent instanceof ViewPager2) {
                return (ViewPager2) parent;
            }
            throw new IllegalStateException(NPStringFog.decode(new byte[]{116, 30, 21, 87, 2, 16, 84, 2, 69, 100, 8, 1, 70, 54, 4, 85, 4, 22, 3, 70, 12, 92, 18, 16, 80, 8, 6, 87, 79, 68, 118, 9, 17, 8, 65}, "1fe2ad", true, true) + parent);
        }

        void register(RecyclerView recyclerView) {
            this.mViewPager = inferViewPager(recyclerView);
            ViewPager2.OnPageChangeCallback onPageChangeCallback = new ViewPager2.OnPageChangeCallback(this) { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.1
                final FragmentMaxLifecycleEnforcer this$1;

                {
                    this.this$1 = this;
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageScrollStateChanged(int i) {
                    this.this$1.updateFragmentMaxLifecycle(false);
                }

                @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
                public void onPageSelected(int i) {
                    this.this$1.updateFragmentMaxLifecycle(false);
                }
            };
            this.mPageChangeCallback = onPageChangeCallback;
            this.mViewPager.registerOnPageChangeCallback(onPageChangeCallback);
            DataSetChangeObserver dataSetChangeObserver = new DataSetChangeObserver(this) { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.2
                final FragmentMaxLifecycleEnforcer this$1;

                {
                    this.this$1 = this;
                }

                @Override // androidx.viewpager2.adapter.FragmentStateAdapter.DataSetChangeObserver, androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
                public void onChanged() {
                    this.this$1.updateFragmentMaxLifecycle(true);
                }
            };
            this.mDataObserver = dataSetChangeObserver;
            this.this$0.registerAdapterDataObserver(dataSetChangeObserver);
            this.mLifecycleObserver = new LifecycleEventObserver(this) { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.FragmentMaxLifecycleEnforcer.3
                final FragmentMaxLifecycleEnforcer this$1;

                {
                    this.this$1 = this;
                }

                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    this.this$1.updateFragmentMaxLifecycle(false);
                }
            };
            this.this$0.mLifecycle.addObserver(this.mLifecycleObserver);
        }

        void unregister(RecyclerView recyclerView) {
            inferViewPager(recyclerView).unregisterOnPageChangeCallback(this.mPageChangeCallback);
            this.this$0.unregisterAdapterDataObserver(this.mDataObserver);
            this.this$0.mLifecycle.removeObserver(this.mLifecycleObserver);
            this.mViewPager = null;
        }

        void updateFragmentMaxLifecycle(boolean z) {
            int currentItem;
            Fragment fragment;
            if (this.this$0.shouldDelayFragmentTransactions() || this.mViewPager.getScrollState() != 0 || this.this$0.mFragments.isEmpty() || this.this$0.getItemCount() == 0 || (currentItem = this.mViewPager.getCurrentItem()) >= this.this$0.getItemCount()) {
                return;
            }
            long itemId = this.this$0.getItemId(currentItem);
            if ((itemId != this.mPrimaryItemId || z) && (fragment = this.this$0.mFragments.get(itemId)) != null && fragment.isAdded()) {
                this.mPrimaryItemId = itemId;
                FragmentTransaction fragmentTransactionBeginTransaction = this.this$0.mFragmentManager.beginTransaction();
                Fragment fragment2 = null;
                for (int i = 0; i < this.this$0.mFragments.size(); i++) {
                    long jKeyAt = this.this$0.mFragments.keyAt(i);
                    Fragment fragmentValueAt = this.this$0.mFragments.valueAt(i);
                    if (fragmentValueAt.isAdded()) {
                        if (jKeyAt != this.mPrimaryItemId) {
                            fragmentTransactionBeginTransaction.setMaxLifecycle(fragmentValueAt, Lifecycle.State.STARTED);
                        } else {
                            fragment2 = fragmentValueAt;
                        }
                        fragmentValueAt.setMenuVisibility(jKeyAt == this.mPrimaryItemId);
                    }
                }
                if (fragment2 != null) {
                    fragmentTransactionBeginTransaction.setMaxLifecycle(fragment2, Lifecycle.State.RESUMED);
                }
                if (fragmentTransactionBeginTransaction.isEmpty()) {
                    return;
                }
                fragmentTransactionBeginTransaction.commitNow();
            }
        }
    }

    public FragmentStateAdapter(Fragment fragment) {
        this(fragment.getChildFragmentManager(), fragment.getLifecycle());
    }

    public FragmentStateAdapter(FragmentActivity fragmentActivity) {
        this(fragmentActivity.getSupportFragmentManager(), fragmentActivity.getLifecycle());
    }

    public FragmentStateAdapter(FragmentManager fragmentManager, Lifecycle lifecycle) {
        this.mFragments = new LongSparseArray<>();
        this.mSavedStates = new LongSparseArray<>();
        this.mItemIdToViewHolder = new LongSparseArray<>();
        this.mIsInGracePeriod = false;
        this.mHasStaleFragments = false;
        this.mFragmentManager = fragmentManager;
        this.mLifecycle = lifecycle;
        super.setHasStableIds(true);
    }

    private static String createKey(String str, long j) {
        return str + j;
    }

    private void ensureFragment(int i) {
        long itemId = getItemId(i);
        if (this.mFragments.containsKey(itemId)) {
            return;
        }
        Fragment fragmentCreateFragment = createFragment(i);
        fragmentCreateFragment.setInitialSavedState(this.mSavedStates.get(itemId));
        this.mFragments.put(itemId, fragmentCreateFragment);
    }

    private boolean isFragmentViewBound(long j) {
        View view;
        if (this.mItemIdToViewHolder.containsKey(j)) {
            return true;
        }
        Fragment fragment = this.mFragments.get(j);
        if (fragment == null || (view = fragment.getView()) == null) {
            return false;
        }
        return view.getParent() != null;
    }

    private static boolean isValidKey(String str, String str2) {
        return str.startsWith(str2) && str.length() > str2.length();
    }

    private Long itemForViewHolder(int i) {
        Long lValueOf = null;
        for (int i2 = 0; i2 < this.mItemIdToViewHolder.size(); i2++) {
            if (this.mItemIdToViewHolder.valueAt(i2).intValue() == i) {
                if (lValueOf != null) {
                    throw new IllegalStateException(NPStringFog.decode(new byte[]{115, 3, 74, 93, 83, 86, 23, 7, 74, 71, 65, 85, 71, 18, 80, 91, 90, 24, 65, 15, 86, 88, 85, 76, 82, 2, 3, 20, 85, 24, 97, 15, 92, 67, 124, 87, 91, 2, 92, 70, 20, 91, 86, 8, 25, 91, 90, 84, 78, 70, 91, 81, 20, 90, 88, 19, 87, 80, 20, 76, 88, 70, 86, 90, 81, 24, 94, 18, 92, 89, 20, 89, 67, 70, 88, 20, 64, 81, 90, 3, 23}, "7f9448", false, false));
                }
                lValueOf = Long.valueOf(this.mItemIdToViewHolder.keyAt(i2));
            }
        }
        return lValueOf;
    }

    private static long parseIdFromKey(String str, String str2) {
        return Long.parseLong(str.substring(str2.length()));
    }

    private void removeFragment(long j) {
        ViewParent parent;
        Fragment fragment = this.mFragments.get(j);
        if (fragment == null) {
            return;
        }
        if (fragment.getView() != null && (parent = fragment.getView().getParent()) != null) {
            ((FrameLayout) parent).removeAllViews();
        }
        if (!containsItem(j)) {
            this.mSavedStates.remove(j);
        }
        if (!fragment.isAdded()) {
            this.mFragments.remove(j);
            return;
        }
        if (shouldDelayFragmentTransactions()) {
            this.mHasStaleFragments = true;
            return;
        }
        if (fragment.isAdded() && containsItem(j)) {
            this.mSavedStates.put(j, this.mFragmentManager.saveFragmentInstanceState(fragment));
        }
        this.mFragmentManager.beginTransaction().remove(fragment).commitNow();
        this.mFragments.remove(j);
    }

    private void scheduleGracePeriodEnd() {
        Handler handler = new Handler(Looper.getMainLooper());
        Runnable runnable = new Runnable(this) { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.4
            final FragmentStateAdapter this$0;

            {
                this.this$0 = this;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.mIsInGracePeriod = false;
                this.this$0.gcFragments();
            }
        };
        this.mLifecycle.addObserver(new LifecycleEventObserver(this, handler, runnable) { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.5
            final FragmentStateAdapter this$0;
            final Handler val$handler;
            final Runnable val$runnable;

            {
                this.this$0 = this;
                this.val$handler = handler;
                this.val$runnable = runnable;
            }

            @Override // androidx.lifecycle.LifecycleEventObserver
            public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                if (event == Lifecycle.Event.ON_DESTROY) {
                    this.val$handler.removeCallbacks(this.val$runnable);
                    lifecycleOwner.getLifecycle().removeObserver(this);
                }
            }
        });
        handler.postDelayed(runnable, GRACE_WINDOW_TIME_MS);
    }

    private void scheduleViewAttach(Fragment fragment, FrameLayout frameLayout) {
        this.mFragmentManager.registerFragmentLifecycleCallbacks(new FragmentManager.FragmentLifecycleCallbacks(this, fragment, frameLayout) { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.3
            final FragmentStateAdapter this$0;
            final FrameLayout val$container;
            final Fragment val$fragment;

            {
                this.this$0 = this;
                this.val$fragment = fragment;
                this.val$container = frameLayout;
            }

            @Override // androidx.fragment.app.FragmentManager.FragmentLifecycleCallbacks
            public void onFragmentViewCreated(FragmentManager fragmentManager, Fragment fragment2, View view, Bundle bundle) {
                if (fragment2 == this.val$fragment) {
                    fragmentManager.unregisterFragmentLifecycleCallbacks(this);
                    this.this$0.addViewToContainer(view, this.val$container);
                }
            }
        }, false);
    }

    void addViewToContainer(View view, FrameLayout frameLayout) {
        if (frameLayout.getChildCount() > 1) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{113, 84, 16, 95, 5, 92, 21, 80, 16, 69, 23, 95, 69, 69, 10, 89, 12, 18, 67, 88, 12, 90, 3, 70, 80, 85, 77}, "51c6b2", 6.2089993E8d));
        }
        if (view.getParent() == frameLayout) {
            return;
        }
        if (frameLayout.getChildCount() > 0) {
            frameLayout.removeAllViews();
        }
        if (view.getParent() != null) {
            ((ViewGroup) view.getParent()).removeView(view);
        }
        frameLayout.addView(view);
    }

    public boolean containsItem(long j) {
        return j >= 0 && j < ((long) getItemCount());
    }

    public abstract Fragment createFragment(int i);

    void gcFragments() {
        if (!this.mHasStaleFragments || shouldDelayFragmentTransactions()) {
            return;
        }
        ArraySet arraySet = new ArraySet();
        for (int i = 0; i < this.mFragments.size(); i++) {
            long jKeyAt = this.mFragments.keyAt(i);
            if (!containsItem(jKeyAt)) {
                arraySet.add(Long.valueOf(jKeyAt));
                this.mItemIdToViewHolder.remove(jKeyAt);
            }
        }
        if (!this.mIsInGracePeriod) {
            this.mHasStaleFragments = false;
            for (int i2 = 0; i2 < this.mFragments.size(); i2++) {
                long jKeyAt2 = this.mFragments.keyAt(i2);
                if (!isFragmentViewBound(jKeyAt2)) {
                    arraySet.add(Long.valueOf(jKeyAt2));
                }
            }
        }
        Iterator<E> it = arraySet.iterator();
        while (it.hasNext()) {
            removeFragment(((Long) it.next()).longValue());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        Preconditions.checkArgument(this.mFragmentMaxLifecycleEnforcer == null);
        FragmentMaxLifecycleEnforcer fragmentMaxLifecycleEnforcer = new FragmentMaxLifecycleEnforcer(this);
        this.mFragmentMaxLifecycleEnforcer = fragmentMaxLifecycleEnforcer;
        fragmentMaxLifecycleEnforcer.register(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onBindViewHolder(FragmentViewHolder fragmentViewHolder, int i) {
        long itemId = fragmentViewHolder.getItemId();
        int id = fragmentViewHolder.getContainer().getId();
        Long lItemForViewHolder = itemForViewHolder(id);
        if (lItemForViewHolder != null && lItemForViewHolder.longValue() != itemId) {
            removeFragment(lItemForViewHolder.longValue());
            this.mItemIdToViewHolder.remove(lItemForViewHolder.longValue());
        }
        this.mItemIdToViewHolder.put(itemId, Integer.valueOf(id));
        ensureFragment(i);
        FrameLayout container = fragmentViewHolder.getContainer();
        if (ViewCompat.isAttachedToWindow(container)) {
            if (container.getParent() != null) {
                throw new IllegalStateException(NPStringFog.decode(new byte[]{112, 87, 66, 10, 95, 88, 20, 83, 66, 16, 77, 91, 68, 70, 88, 12, 86, 22, 66, 91, 94, 15, 89, 66, 81, 86, 31}, "421c86", -2.0928796E9f));
            }
            container.addOnLayoutChangeListener(new View.OnLayoutChangeListener(this, container, fragmentViewHolder) { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.1
                final FragmentStateAdapter this$0;
                final FrameLayout val$container;
                final FragmentViewHolder val$holder;

                {
                    this.this$0 = this;
                    this.val$container = container;
                    this.val$holder = fragmentViewHolder;
                }

                @Override // android.view.View.OnLayoutChangeListener
                public void onLayoutChange(View view, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
                    if (this.val$container.getParent() != null) {
                        this.val$container.removeOnLayoutChangeListener(this);
                        this.this$0.placeFragmentInViewHolder(this.val$holder);
                    }
                }
            });
        }
        gcFragments();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final FragmentViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return FragmentViewHolder.create(viewGroup);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.mFragmentMaxLifecycleEnforcer.unregister(recyclerView);
        this.mFragmentMaxLifecycleEnforcer = null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final boolean onFailedToRecycleView(FragmentViewHolder fragmentViewHolder) {
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewAttachedToWindow(FragmentViewHolder fragmentViewHolder) {
        placeFragmentInViewHolder(fragmentViewHolder);
        gcFragments();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void onViewRecycled(FragmentViewHolder fragmentViewHolder) {
        Long lItemForViewHolder = itemForViewHolder(fragmentViewHolder.getContainer().getId());
        if (lItemForViewHolder != null) {
            removeFragment(lItemForViewHolder.longValue());
            this.mItemIdToViewHolder.remove(lItemForViewHolder.longValue());
        }
    }

    void placeFragmentInViewHolder(FragmentViewHolder fragmentViewHolder) {
        Fragment fragment = this.mFragments.get(fragmentViewHolder.getItemId());
        if (fragment == null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{39, 7, 21, 13, 81, 15, 67, 3, 21, 23, 67, 12, 19, 22, 15, 11, 88, 65, 21, 11, 9, 8, 87, 21, 6, 6, 72}, "cbfd6a", true, false));
        }
        FrameLayout container = fragmentViewHolder.getContainer();
        View view = fragment.getView();
        if (!fragment.isAdded() && view != null) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{125, 1, 67, 10, 6, 95, 25, 5, 67, 16, 20, 92, 73, 16, 89, 12, 15, 17, 79, 13, 95, 15, 0, 69, 92, 0, 30}, "9d0ca1", false));
        }
        if (fragment.isAdded() && view == null) {
            scheduleViewAttach(fragment, container);
            return;
        }
        if (fragment.isAdded() && view.getParent() != null) {
            if (view.getParent() != container) {
                addViewToContainer(view, container);
                return;
            }
            return;
        }
        if (fragment.isAdded()) {
            addViewToContainer(view, container);
            return;
        }
        if (shouldDelayFragmentTransactions()) {
            if (this.mFragmentManager.isDestroyed()) {
                return;
            }
            this.mLifecycle.addObserver(new LifecycleEventObserver(this, fragmentViewHolder) { // from class: androidx.viewpager2.adapter.FragmentStateAdapter.2
                final FragmentStateAdapter this$0;
                final FragmentViewHolder val$holder;

                {
                    this.this$0 = this;
                    this.val$holder = fragmentViewHolder;
                }

                @Override // androidx.lifecycle.LifecycleEventObserver
                public void onStateChanged(LifecycleOwner lifecycleOwner, Lifecycle.Event event) {
                    if (this.this$0.shouldDelayFragmentTransactions()) {
                        return;
                    }
                    lifecycleOwner.getLifecycle().removeObserver(this);
                    if (ViewCompat.isAttachedToWindow(this.val$holder.getContainer())) {
                        this.this$0.placeFragmentInViewHolder(this.val$holder);
                    }
                }
            });
            return;
        }
        scheduleViewAttach(fragment, container);
        this.mFragmentManager.beginTransaction().add(fragment, NPStringFog.decode(new byte[]{86}, "0f54ff", -1965555859L) + fragmentViewHolder.getItemId()).setMaxLifecycle(fragment, Lifecycle.State.STARTED).commitNow();
        this.mFragmentMaxLifecycleEnforcer.updateFragmentMaxLifecycle(false);
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    public final void restoreState(Parcelable parcelable) {
        if (!this.mSavedStates.isEmpty() || !this.mFragments.isEmpty()) {
            throw new IllegalStateException(NPStringFog.decode(new byte[]{118, 28, 17, 83, 84, 65, 86, 0, 65, 66, 95, 80, 19, 5, 5, 87, 71, 65, 86, 22, 65, 66, 88, 21, 81, 1, 65, 17, 81, 71, 86, 23, 9, 17, 23, 66, 91, 13, 13, 83, 23, 71, 86, 23, 21, 89, 69, 92, 93, 3, 65, 69, 67, 84, 71, 1, 79}, "3da675", true, true));
        }
        Bundle bundle = (Bundle) parcelable;
        if (bundle.getClassLoader() == null) {
            bundle.setClassLoader(getClass().getClassLoader());
        }
        for (String str : bundle.keySet()) {
            if (isValidKey(str, KEY_PREFIX_FRAGMENT)) {
                this.mFragments.put(parseIdFromKey(str, KEY_PREFIX_FRAGMENT), this.mFragmentManager.getFragment(bundle, str));
            } else {
                if (!isValidKey(str, KEY_PREFIX_STATE)) {
                    throw new IllegalArgumentException(NPStringFog.decode(new byte[]{96, 87, 87, 28, 21, 3, 86, 77, 87, 0, 69, 13, 80, 64, 18, 13, 11, 70, 70, 88, 68, 1, 1, 53, 65, 88, 70, 1, 95, 70}, "592def", -694965350L) + str);
                }
                long idFromKey = parseIdFromKey(str, KEY_PREFIX_STATE);
                Fragment.SavedState savedState = (Fragment.SavedState) bundle.getParcelable(str);
                if (containsItem(idFromKey)) {
                    this.mSavedStates.put(idFromKey, savedState);
                }
            }
        }
        if (this.mFragments.isEmpty()) {
            return;
        }
        this.mHasStaleFragments = true;
        this.mIsInGracePeriod = true;
        gcFragments();
        scheduleGracePeriodEnd();
    }

    @Override // androidx.viewpager2.adapter.StatefulAdapter
    public final Parcelable saveState() {
        Bundle bundle = new Bundle(this.mFragments.size() + this.mSavedStates.size());
        for (int i = 0; i < this.mFragments.size(); i++) {
            long jKeyAt = this.mFragments.keyAt(i);
            Fragment fragment = this.mFragments.get(jKeyAt);
            if (fragment != null && fragment.isAdded()) {
                this.mFragmentManager.putFragment(bundle, createKey(KEY_PREFIX_FRAGMENT, jKeyAt), fragment);
            }
        }
        for (int i2 = 0; i2 < this.mSavedStates.size(); i2++) {
            long jKeyAt2 = this.mSavedStates.keyAt(i2);
            if (containsItem(jKeyAt2)) {
                bundle.putParcelable(createKey(KEY_PREFIX_STATE, jKeyAt2), this.mSavedStates.get(jKeyAt2));
            }
        }
        return bundle;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void setHasStableIds(boolean z) {
        throw new UnsupportedOperationException(NPStringFog.decode(new byte[]{103, 23, 5, 84, 95, 86, 20, 42, 0, 69, 19, 82, 70, 6, 68, 68, 86, 66, 65, 10, 22, 83, 87, 19, 82, 12, 22, 22, 71, 91, 81, 67, 5, 82, 82, 67, 64, 6, 22, 22, 71, 92, 20, 5, 17, 88, 80, 71, 93, 12, 10, 22, 67, 65, 91, 19, 1, 68, 95, 74, 24, 67, 5, 88, 87, 19, 64, 11, 1, 22, 82, 87, 85, 19, 16, 83, 65, 19, 64, 2, 15, 83, 64, 19, 87, 2, 22, 83, 19, 92, 82, 67, 23, 83, 71, 71, 93, 13, 3, 22, 71, 91, 81, 67, 2, 90, 82, 84, 26}, "4cd633", 10573));
    }

    boolean shouldDelayFragmentTransactions() {
        return this.mFragmentManager.isStateSaved();
    }
}
