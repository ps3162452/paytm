package com.google.android.material.datepicker;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.GridView;
import android.widget.ListAdapter;
import androidx.core.util.Pair;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.internal.ViewUtils;
import java.util.Calendar;
import n.NPStringFog;

/* JADX INFO: loaded from: classes37.dex */
final class MaterialCalendarGridView extends GridView {
    private final Calendar dayCompute;
    private final boolean nestedScrollable;

    public MaterialCalendarGridView(Context context) {
        this(context, null);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaterialCalendarGridView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.dayCompute = UtcDates.getUtcCalendar();
        if (MaterialDatePicker.isFullscreen(getContext())) {
            setNextFocusLeftId(R.id.cancel_button);
            setNextFocusRightId(R.id.confirm_button);
        }
        this.nestedScrollable = MaterialDatePicker.isNestedScrollable(getContext());
        ViewCompat.setAccessibilityDelegate(this, new AccessibilityDelegateCompat(this) { // from class: com.google.android.material.datepicker.MaterialCalendarGridView.1
            final MaterialCalendarGridView this$0;

            {
                this.this$0 = this;
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCollectionInfo(null);
            }
        });
    }

    private void gainFocus(int i, Rect rect) {
        if (i == 33) {
            setSelection(getAdapter().lastPositionInMonth());
        } else if (i == 130) {
            setSelection(getAdapter().firstPositionInMonth());
        } else {
            super.onFocusChanged(true, i, rect);
        }
    }

    private View getChildAtPosition(int i) {
        return getChildAt(i - getFirstVisiblePosition());
    }

    private static int horizontalMidPoint(View view) {
        return view.getLeft() + (view.getWidth() / 2);
    }

    private static boolean skipMonth(Long l, Long l2, Long l3, Long l4) {
        return l == null || l2 == null || l3 == null || l4 == null || l3.longValue() > l2.longValue() || l4.longValue() < l.longValue();
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public MonthAdapter getAdapter() {
        return (MonthAdapter) super.getAdapter();
    }

    @Override // android.widget.AbsListView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAdapter().notifyDataSetChanged();
    }

    @Override // android.view.View
    protected final void onDraw(Canvas canvas) {
        int iHorizontalMidPoint;
        int i;
        int i2;
        int iHorizontalMidPoint2;
        int i3;
        int width;
        super.onDraw(canvas);
        MonthAdapter adapter = getAdapter();
        DateSelector<?> dateSelector = adapter.dateSelector;
        CalendarStyle calendarStyle = adapter.calendarStyle;
        int iMax = Math.max(adapter.firstPositionInMonth(), getFirstVisiblePosition());
        int iMin = Math.min(adapter.lastPositionInMonth(), getLastVisiblePosition());
        Long item = adapter.getItem(iMax);
        Long item2 = adapter.getItem(iMin);
        for (Pair<Long, Long> pair : dateSelector.getSelectedRanges()) {
            if (pair.first != null && pair.second != null) {
                long jLongValue = pair.first.longValue();
                long jLongValue2 = pair.second.longValue();
                if (!skipMonth(item, item2, Long.valueOf(jLongValue), Long.valueOf(jLongValue2))) {
                    boolean zIsLayoutRtl = ViewUtils.isLayoutRtl(this);
                    if (jLongValue < item.longValue()) {
                        iHorizontalMidPoint = adapter.isFirstInRow(iMax) ? 0 : !zIsLayoutRtl ? getChildAtPosition(iMax - 1).getRight() : getChildAtPosition(iMax - 1).getLeft();
                        i = iMax;
                    } else {
                        this.dayCompute.setTimeInMillis(jLongValue);
                        int iDayToPosition = adapter.dayToPosition(this.dayCompute.get(5));
                        iHorizontalMidPoint = horizontalMidPoint(getChildAtPosition(iDayToPosition));
                        i = iDayToPosition;
                    }
                    if (jLongValue2 > item2.longValue()) {
                        i2 = iMin;
                        iHorizontalMidPoint2 = adapter.isLastInRow(iMin) ? getWidth() : !zIsLayoutRtl ? getChildAtPosition(iMin).getRight() : getChildAtPosition(iMin).getLeft();
                    } else {
                        this.dayCompute.setTimeInMillis(jLongValue2);
                        int iDayToPosition2 = adapter.dayToPosition(this.dayCompute.get(5));
                        i2 = iDayToPosition2;
                        iHorizontalMidPoint2 = horizontalMidPoint(getChildAtPosition(iDayToPosition2));
                    }
                    int itemId = (int) adapter.getItemId(i);
                    int itemId2 = (int) adapter.getItemId(i2);
                    while (true) {
                        int i4 = itemId;
                        if (i4 <= itemId2) {
                            int numColumns = getNumColumns() * i4;
                            int numColumns2 = (getNumColumns() + numColumns) - 1;
                            View childAtPosition = getChildAtPosition(numColumns);
                            int top = childAtPosition.getTop();
                            int topInset = calendarStyle.day.getTopInset();
                            int bottom = childAtPosition.getBottom();
                            int bottomInset = calendarStyle.day.getBottomInset();
                            if (zIsLayoutRtl) {
                                i3 = i2 > numColumns2 ? 0 : iHorizontalMidPoint2;
                                width = numColumns > i ? getWidth() : iHorizontalMidPoint;
                            } else {
                                i3 = numColumns > i ? 0 : iHorizontalMidPoint;
                                width = i2 > numColumns2 ? getWidth() : iHorizontalMidPoint2;
                            }
                            canvas.drawRect(i3, top + topInset, width, bottom - bottomInset, calendarStyle.rangeFill);
                            itemId = i4 + 1;
                        }
                    }
                }
            }
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    protected void onFocusChanged(boolean z, int i, Rect rect) {
        if (z) {
            gainFocus(i, rect);
        } else {
            super.onFocusChanged(false, i, rect);
        }
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!super.onKeyDown(i, keyEvent)) {
            return false;
        }
        if (getSelectedItemPosition() == -1 || getSelectedItemPosition() >= getAdapter().firstPositionInMonth()) {
            return true;
        }
        if (19 != i) {
            return false;
        }
        setSelection(getAdapter().firstPositionInMonth());
        return true;
    }

    @Override // android.widget.GridView, android.widget.AbsListView, android.view.View
    public void onMeasure(int i, int i2) {
        if (!this.nestedScrollable) {
            super.onMeasure(i, i2);
            return;
        }
        super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(ViewCompat.MEASURED_SIZE_MASK, Integer.MIN_VALUE));
        getLayoutParams().height = getMeasuredHeight();
    }

    @Override // android.widget.AdapterView
    public final void setAdapter(ListAdapter listAdapter) {
        if (!(listAdapter instanceof MonthAdapter)) {
            throw new IllegalArgumentException(String.format(NPStringFog.decode(new byte[]{18, 0, 18, 16, 17, 91, 66, 66, 66, 67, 89, 87, 65, 84, 22, 10, 69, 69, 23, 112, 82, 2, 65, 66, 82, 67, 22, 16, 84, 66, 23, 69, 89, 67, 80, 22, 18, 3, 18, 16}, "716c16", -1716884582L), MaterialCalendarGridView.class.getCanonicalName(), MonthAdapter.class.getCanonicalName()));
        }
        super.setAdapter(listAdapter);
    }

    @Override // android.widget.GridView, android.widget.AdapterView
    public void setSelection(int i) {
        if (i < getAdapter().firstPositionInMonth()) {
            super.setSelection(getAdapter().firstPositionInMonth());
        } else {
            super.setSelection(i);
        }
    }
}
