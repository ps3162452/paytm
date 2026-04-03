package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.PagerSnapHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import java.util.Calendar;
import java.util.Iterator;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
public final class MaterialCalendar<S> extends PickerFragment<S> {
    private static final int SMOOTH_SCROLL_MAX = 3;
    private CalendarConstraints calendarConstraints;
    private CalendarSelector calendarSelector;
    private CalendarStyle calendarStyle;
    private Month current;
    private DateSelector<S> dateSelector;
    private View dayFrame;
    private RecyclerView recyclerView;
    private int themeResId;
    private View yearFrame;
    private RecyclerView yearSelector;
    private static final String CALENDAR_CONSTRAINTS_KEY = NPStringFog.decode(new byte[]{115, 117, 122, 35, 124, 114, 113, 102, 105, 37, 125, 120, 99, 96, 100, 39, 123, 120, 100, 103, 105, 45, 119, 111}, "046f26", -2.0614571E8f);
    private static final String CURRENT_MONTH_KEY = NPStringFog.decode(new byte[]{117, 98, 96, 48, 33, 125, 98, 104, 127, 45, 42, 103, 126, 104, 121, 39, 61}, "672bd3", 1.424789996E9d);
    private static final String GRID_SELECTOR_KEY = NPStringFog.decode(new byte[]{112, 97, 47, 113, 109, 99, 114, 127, 35, 118, 102, 127, 101, 108, 45, 112, 107}, "73f520", -9072);
    private static final String THEME_RES_ID_KEY = NPStringFog.decode(new byte[]{96, 113, 125, 47, 113, 109, 102, 124, 107, 61, 125, 118, 107, 114, 125, 59}, "498b42", -2.0148052E9f);
    static final Object MONTHS_VIEW_GROUP_TAG = NPStringFog.decode(new byte[]{41, 120, 42, 108, 113, 49, 59, 97, 45, 125, 110, 61, 35, 101, 43, 109, 105, 61, 48, 118, 35}, "d7d89b", -1047650074L);
    static final Object NAVIGATION_PREV_TAG = NPStringFog.decode(new byte[]{125, 112, 101, 113, 37, 115, 103, 120, 124, 118, 61, 98, 97, 116, 101, 103, 54, 115, 116}, "3138b2", true);
    static final Object NAVIGATION_NEXT_TAG = NPStringFog.decode(new byte[]{44, 112, 48, 120, 113, 118, 54, 120, 41, 127, 105, 121, 39, 105, 50, 110, 98, 118, 37}, "b1f167", -2.4274488E8f);
    static final Object SELECTOR_TOGGLE_TAG = NPStringFog.decode(new byte[]{96, 113, 127, 113, 38, 97, 124, 102, 108, 96, 42, 114, 116, 120, 118, 107, 49, 116, 116}, "3434e5", false);

    enum CalendarSelector {
        DAY,
        YEAR
    }

    interface OnDayClickListener {
        void onDayClick(long j);
    }

    private void addActionsToMonthNavigation(View view, MonthsPagerAdapter monthsPagerAdapter) {
        MaterialButton materialButton = (MaterialButton) view.findViewById(R.id.month_navigation_fragment_toggle);
        materialButton.setTag(SELECTOR_TOGGLE_TAG);
        ViewCompat.setAccessibilityDelegate(materialButton, new AccessibilityDelegateCompat(this) { // from class: com.google.android.material.datepicker.MaterialCalendar.5
            final MaterialCalendar this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view2, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view2, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setHintText(this.this$0.dayFrame.getVisibility() == 0 ? this.this$0.getString(R.string.mtrl_picker_toggle_to_year_selection) : this.this$0.getString(R.string.mtrl_picker_toggle_to_day_selection));
            }
        });
        MaterialButton materialButton2 = (MaterialButton) view.findViewById(R.id.month_navigation_previous);
        materialButton2.setTag(NAVIGATION_PREV_TAG);
        MaterialButton materialButton3 = (MaterialButton) view.findViewById(R.id.month_navigation_next);
        materialButton3.setTag(NAVIGATION_NEXT_TAG);
        this.yearFrame = view.findViewById(R.id.mtrl_calendar_year_selector_frame);
        this.dayFrame = view.findViewById(R.id.mtrl_calendar_day_selector_frame);
        setSelector(CalendarSelector.DAY);
        materialButton.setText(this.current.getLongName());
        this.recyclerView.addOnScrollListener(new RecyclerView.OnScrollListener(this, monthsPagerAdapter, materialButton) { // from class: com.google.android.material.datepicker.MaterialCalendar.6
            final MaterialCalendar this$0;
            final MaterialButton val$monthDropSelect;
            final MonthsPagerAdapter val$monthsPagerAdapter;

            {
                this.this$0 = this;
                this.val$monthsPagerAdapter = monthsPagerAdapter;
                this.val$monthDropSelect = materialButton;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int i) {
                if (i == 0) {
                    CharSequence text = this.val$monthDropSelect.getText();
                    if (Build.VERSION.SDK_INT >= 16) {
                        recyclerView.announceForAccessibility(text);
                    } else {
                        recyclerView.sendAccessibilityEvent(2048);
                    }
                }
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i, int i2) {
                int iFindFirstVisibleItemPosition = i < 0 ? this.this$0.getLayoutManager().findFirstVisibleItemPosition() : this.this$0.getLayoutManager().findLastVisibleItemPosition();
                this.this$0.current = this.val$monthsPagerAdapter.getPageMonth(iFindFirstVisibleItemPosition);
                this.val$monthDropSelect.setText(this.val$monthsPagerAdapter.getPageTitle(iFindFirstVisibleItemPosition));
            }
        });
        materialButton.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.material.datepicker.MaterialCalendar.7
            final MaterialCalendar this$0;

            {
                this.this$0 = this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                this.this$0.toggleVisibleSelector();
            }
        });
        materialButton3.setOnClickListener(new View.OnClickListener(this, monthsPagerAdapter) { // from class: com.google.android.material.datepicker.MaterialCalendar.8
            final MaterialCalendar this$0;
            final MonthsPagerAdapter val$monthsPagerAdapter;

            {
                this.this$0 = this;
                this.val$monthsPagerAdapter = monthsPagerAdapter;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int iFindFirstVisibleItemPosition = this.this$0.getLayoutManager().findFirstVisibleItemPosition();
                if (iFindFirstVisibleItemPosition + 1 < this.this$0.recyclerView.getAdapter().getItemCount()) {
                    this.this$0.setCurrentMonth(this.val$monthsPagerAdapter.getPageMonth(iFindFirstVisibleItemPosition + 1));
                }
            }
        });
        materialButton2.setOnClickListener(new View.OnClickListener(this, monthsPagerAdapter) { // from class: com.google.android.material.datepicker.MaterialCalendar.9
            final MaterialCalendar this$0;
            final MonthsPagerAdapter val$monthsPagerAdapter;

            {
                this.this$0 = this;
                this.val$monthsPagerAdapter = monthsPagerAdapter;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                int iFindLastVisibleItemPosition = this.this$0.getLayoutManager().findLastVisibleItemPosition();
                if (iFindLastVisibleItemPosition - 1 >= 0) {
                    this.this$0.setCurrentMonth(this.val$monthsPagerAdapter.getPageMonth(iFindLastVisibleItemPosition - 1));
                }
            }
        });
    }

    private RecyclerView.ItemDecoration createItemDecoration() {
        return new RecyclerView.ItemDecoration(this) { // from class: com.google.android.material.datepicker.MaterialCalendar.4
            final MaterialCalendar this$0;
            private final Calendar startItem = UtcDates.getUtcCalendar();
            private final Calendar endItem = UtcDates.getUtcCalendar();

            {
                this.this$0 = this;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void onDraw(Canvas canvas, RecyclerView recyclerView, RecyclerView.State state) {
                if ((recyclerView.getAdapter() instanceof YearGridAdapter) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
                    YearGridAdapter yearGridAdapter = (YearGridAdapter) recyclerView.getAdapter();
                    GridLayoutManager gridLayoutManager = (GridLayoutManager) recyclerView.getLayoutManager();
                    for (Pair<Long, Long> pair : this.this$0.dateSelector.getSelectedRanges()) {
                        if (pair.first != null && pair.second != null) {
                            this.startItem.setTimeInMillis(pair.first.longValue());
                            this.endItem.setTimeInMillis(pair.second.longValue());
                            int positionForYear = yearGridAdapter.getPositionForYear(this.startItem.get(1));
                            int positionForYear2 = yearGridAdapter.getPositionForYear(this.endItem.get(1));
                            View viewFindViewByPosition = gridLayoutManager.findViewByPosition(positionForYear);
                            View viewFindViewByPosition2 = gridLayoutManager.findViewByPosition(positionForYear2);
                            int spanCount = positionForYear / gridLayoutManager.getSpanCount();
                            int spanCount2 = positionForYear2 / gridLayoutManager.getSpanCount();
                            int i = spanCount;
                            while (i <= spanCount2) {
                                if (gridLayoutManager.findViewByPosition(gridLayoutManager.getSpanCount() * i) != null) {
                                    canvas.drawRect(i == spanCount ? viewFindViewByPosition.getLeft() + (viewFindViewByPosition.getWidth() / 2) : 0, r0.getTop() + this.this$0.calendarStyle.year.getTopInset(), i == spanCount2 ? viewFindViewByPosition2.getLeft() + (viewFindViewByPosition2.getWidth() / 2) : recyclerView.getWidth(), r0.getBottom() - this.this$0.calendarStyle.year.getBottomInset(), this.this$0.calendarStyle.rangeFill);
                                }
                                i++;
                            }
                        }
                    }
                }
            }
        };
    }

    static int getDayHeight(Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height);
    }

    private static int getDialogPickerHeight(Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_bottom_padding) + resources.getDimensionPixelSize(R.dimen.mtrl_calendar_navigation_height) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_top_padding) + resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_navigation_bottom_padding) + resources.getDimensionPixelSize(R.dimen.mtrl_calendar_days_of_week_height) + (MonthAdapter.MAXIMUM_WEEKS * resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_height)) + ((MonthAdapter.MAXIMUM_WEEKS - 1) * resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_vertical_padding));
    }

    public static <T> MaterialCalendar<T> newInstance(DateSelector<T> dateSelector, int i, CalendarConstraints calendarConstraints) {
        MaterialCalendar<T> materialCalendar = new MaterialCalendar<>();
        Bundle bundle = new Bundle();
        bundle.putInt(THEME_RES_ID_KEY, i);
        bundle.putParcelable(GRID_SELECTOR_KEY, dateSelector);
        bundle.putParcelable(CALENDAR_CONSTRAINTS_KEY, calendarConstraints);
        bundle.putParcelable(CURRENT_MONTH_KEY, calendarConstraints.getOpenAt());
        materialCalendar.setArguments(bundle);
        return materialCalendar;
    }

    private void postSmoothRecyclerViewScroll(int i) {
        this.recyclerView.post(new Runnable(this, i) { // from class: com.google.android.material.datepicker.MaterialCalendar.10
            final MaterialCalendar this$0;
            final int val$position;

            {
                this.this$0 = this;
                this.val$position = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.this$0.recyclerView.smoothScrollToPosition(this.val$position);
            }
        });
    }

    @Override // com.google.android.material.datepicker.PickerFragment
    public boolean addOnSelectionChangedListener(OnSelectionChangedListener<S> onSelectionChangedListener) {
        return super.addOnSelectionChangedListener(onSelectionChangedListener);
    }

    CalendarConstraints getCalendarConstraints() {
        return this.calendarConstraints;
    }

    CalendarStyle getCalendarStyle() {
        return this.calendarStyle;
    }

    Month getCurrentMonth() {
        return this.current;
    }

    @Override // com.google.android.material.datepicker.PickerFragment
    public DateSelector<S> getDateSelector() {
        return this.dateSelector;
    }

    LinearLayoutManager getLayoutManager() {
        return (LinearLayoutManager) this.recyclerView.getLayoutManager();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.themeResId = bundle.getInt(THEME_RES_ID_KEY);
        this.dateSelector = (DateSelector) bundle.getParcelable(GRID_SELECTOR_KEY);
        this.calendarConstraints = (CalendarConstraints) bundle.getParcelable(CALENDAR_CONSTRAINTS_KEY);
        this.current = (Month) bundle.getParcelable(CURRENT_MONTH_KEY);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        int i;
        int i2;
        boolean z = false;
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(getContext(), this.themeResId);
        this.calendarStyle = new CalendarStyle(contextThemeWrapper);
        LayoutInflater layoutInflaterCloneInContext = layoutInflater.cloneInContext(contextThemeWrapper);
        Month start = this.calendarConstraints.getStart();
        if (MaterialDatePicker.isFullscreen(contextThemeWrapper)) {
            i = R.layout.mtrl_calendar_vertical;
            i2 = 1;
        } else {
            i = R.layout.mtrl_calendar_horizontal;
            i2 = 0;
        }
        View viewInflate = layoutInflaterCloneInContext.inflate(i, viewGroup, false);
        viewInflate.setMinimumHeight(getDialogPickerHeight(requireContext()));
        GridView gridView = (GridView) viewInflate.findViewById(R.id.mtrl_calendar_days_of_week);
        ViewCompat.setAccessibilityDelegate(gridView, new AccessibilityDelegateCompat(this) { // from class: com.google.android.material.datepicker.MaterialCalendar.1
            final MaterialCalendar this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCollectionInfo(null);
            }
        });
        gridView.setAdapter((ListAdapter) new DaysOfWeekAdapter());
        gridView.setNumColumns(start.daysInWeek);
        gridView.setEnabled(false);
        this.recyclerView = (RecyclerView) viewInflate.findViewById(R.id.mtrl_calendar_months);
        this.recyclerView.setLayoutManager(new SmoothCalendarLayoutManager(this, getContext(), i2, z, i2) { // from class: com.google.android.material.datepicker.MaterialCalendar.2
            final MaterialCalendar this$0;
            final int val$orientation;

            {
                this.this$0 = this;
                this.val$orientation = i2;
            }

            @Override // androidx.recyclerview.widget.LinearLayoutManager
            protected void calculateExtraLayoutSpace(RecyclerView.State state, int[] iArr) {
                if (this.val$orientation == 0) {
                    iArr[0] = this.this$0.recyclerView.getWidth();
                    iArr[1] = this.this$0.recyclerView.getWidth();
                } else {
                    iArr[0] = this.this$0.recyclerView.getHeight();
                    iArr[1] = this.this$0.recyclerView.getHeight();
                }
            }
        });
        this.recyclerView.setTag(MONTHS_VIEW_GROUP_TAG);
        MonthsPagerAdapter monthsPagerAdapter = new MonthsPagerAdapter(contextThemeWrapper, this.dateSelector, this.calendarConstraints, new OnDayClickListener(this) { // from class: com.google.android.material.datepicker.MaterialCalendar.3
            final MaterialCalendar this$0;

            {
                this.this$0 = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.material.datepicker.MaterialCalendar.OnDayClickListener
            public void onDayClick(long j) {
                if (this.this$0.calendarConstraints.getDateValidator().isValid(j)) {
                    this.this$0.dateSelector.select(j);
                    Iterator<OnSelectionChangedListener<S>> it = this.this$0.onSelectionChangedListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onSelectionChanged(this.this$0.dateSelector.getSelection());
                    }
                    this.this$0.recyclerView.getAdapter().notifyDataSetChanged();
                    if (this.this$0.yearSelector != null) {
                        this.this$0.yearSelector.getAdapter().notifyDataSetChanged();
                    }
                }
            }
        });
        this.recyclerView.setAdapter(monthsPagerAdapter);
        int integer = contextThemeWrapper.getResources().getInteger(R.integer.mtrl_calendar_year_selector_span);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.mtrl_calendar_year_selector_frame);
        this.yearSelector = recyclerView;
        if (recyclerView != null) {
            recyclerView.setHasFixedSize(true);
            this.yearSelector.setLayoutManager(new GridLayoutManager((Context) contextThemeWrapper, integer, 1, false));
            this.yearSelector.setAdapter(new YearGridAdapter(this));
            this.yearSelector.addItemDecoration(createItemDecoration());
        }
        if (viewInflate.findViewById(R.id.month_navigation_fragment_toggle) != null) {
            addActionsToMonthNavigation(viewInflate, monthsPagerAdapter);
        }
        if (!MaterialDatePicker.isFullscreen(contextThemeWrapper)) {
            new PagerSnapHelper().attachToRecyclerView(this.recyclerView);
        }
        this.recyclerView.scrollToPosition(monthsPagerAdapter.getPosition(this.current));
        return viewInflate;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt(THEME_RES_ID_KEY, this.themeResId);
        bundle.putParcelable(GRID_SELECTOR_KEY, this.dateSelector);
        bundle.putParcelable(CALENDAR_CONSTRAINTS_KEY, this.calendarConstraints);
        bundle.putParcelable(CURRENT_MONTH_KEY, this.current);
    }

    void setCurrentMonth(Month month) {
        MonthsPagerAdapter monthsPagerAdapter = (MonthsPagerAdapter) this.recyclerView.getAdapter();
        int position = monthsPagerAdapter.getPosition(month);
        int position2 = position - monthsPagerAdapter.getPosition(this.current);
        boolean z = Math.abs(position2) > 3;
        boolean z2 = position2 > 0;
        this.current = month;
        if (z && z2) {
            this.recyclerView.scrollToPosition(position - 3);
            postSmoothRecyclerViewScroll(position);
        } else if (!z) {
            postSmoothRecyclerViewScroll(position);
        } else {
            this.recyclerView.scrollToPosition(position + 3);
            postSmoothRecyclerViewScroll(position);
        }
    }

    void setSelector(CalendarSelector calendarSelector) {
        this.calendarSelector = calendarSelector;
        if (calendarSelector == CalendarSelector.YEAR) {
            this.yearSelector.getLayoutManager().scrollToPosition(((YearGridAdapter) this.yearSelector.getAdapter()).getPositionForYear(this.current.year));
            this.yearFrame.setVisibility(0);
            this.dayFrame.setVisibility(8);
        } else if (calendarSelector == CalendarSelector.DAY) {
            this.yearFrame.setVisibility(8);
            this.dayFrame.setVisibility(0);
            setCurrentMonth(this.current);
        }
    }

    void toggleVisibleSelector() {
        if (this.calendarSelector == CalendarSelector.YEAR) {
            setSelector(CalendarSelector.DAY);
        } else if (this.calendarSelector == CalendarSelector.DAY) {
            setSelector(CalendarSelector.YEAR);
        }
    }
}
