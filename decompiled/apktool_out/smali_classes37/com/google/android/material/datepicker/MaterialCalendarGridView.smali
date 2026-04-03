.class final Lcom/google/android/material/datepicker/MaterialCalendarGridView;
.super Landroid/widget/GridView;


# instance fields
.field private final dayCompute:Ljava/util/Calendar;

.field private final nestedScrollable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isFullscreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/google/android/material/R$id;->cancel_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNextFocusLeftId(I)V

    sget v0, Lcom/google/android/material/R$id;->confirm_button:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNextFocusRightId(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialDatePicker;->isNestedScrollable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->nestedScrollable:Z

    new-instance v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView$1;-><init>(Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private gainFocus(ILandroid/graphics/Rect;)V
    .locals 1

    const/16 v0, 0x21

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x82

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-super {p0, v0, p1, p2}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private getChildAtPosition(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static horizontalMidPoint(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private static skipMonth(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 6

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;
    .locals 1

    invoke-super {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/MonthAdapter;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 23

    invoke-super/range {p0 .. p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v15

    iget-object v2, v15, Lcom/google/android/material/datepicker/MonthAdapter;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v0, v15, Lcom/google/android/material/datepicker/MonthAdapter;->calendarStyle:Lcom/google/android/material/datepicker/CalendarStyle;

    move-object/from16 v16, v0

    invoke-virtual {v15}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getFirstVisiblePosition()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v15}, Lcom/google/android/material/datepicker/MonthAdapter;->lastPositionInMonth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getLastVisiblePosition()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {v15, v10}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object v17

    invoke-virtual {v15, v12}, Lcom/google/android/material/datepicker/MonthAdapter;->getItem(I)Ljava/lang/Long;

    move-result-object v18

    invoke-interface {v2}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/core/util/Pair;

    iget-object v3, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v2, v2, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->skipMonth(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/google/android/material/internal/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v20

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_3

    invoke-virtual {v15, v10}, Lcom/google/android/material/datepicker/MonthAdapter;->isFirstInRow(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move v8, v2

    move v9, v10

    :goto_1
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-lez v2, :cond_6

    invoke-virtual {v15, v12}, Lcom/google/android/material/datepicker/MonthAdapter;->isLastInRow(I)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    move-result v2

    :goto_2
    move v11, v12

    move v13, v2

    :goto_3
    invoke-virtual {v15, v9}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v15, v11}, Lcom/google/android/material/datepicker/MonthAdapter;->getItemId(I)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v21, v0

    move v14, v2

    :goto_4
    move/from16 v0, v21

    if-gt v14, v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getNumColumns()I

    move-result v2

    mul-int/2addr v2, v14

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getNumColumns()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v4, v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-virtual {v6}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getTopInset()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/google/android/material/datepicker/CalendarStyle;->day:Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-virtual {v3}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getBottomInset()I

    move-result v22

    if-nez v20, :cond_9

    if-le v2, v9, :cond_7

    const/4 v3, 0x0

    :goto_5
    if-le v11, v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    move-result v2

    :goto_6
    int-to-float v3, v3

    add-int v4, v5, v6

    int-to-float v4, v4

    int-to-float v5, v2

    sub-int v2, v7, v22

    int-to-float v6, v2

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_4

    :cond_1
    if-nez v20, :cond_2

    add-int/lit8 v2, v10, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v10, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v15, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->horizontalMidPoint(Landroid/view/View;)I

    move-result v2

    move v8, v2

    move v9, v3

    goto/16 :goto_1

    :cond_4
    if-nez v20, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    invoke-virtual {v2, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->dayCompute:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v15, v2}, Lcom/google/android/material/datepicker/MonthAdapter;->dayToPosition(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getChildAtPosition(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->horizontalMidPoint(Landroid/view/View;)I

    move-result v3

    move v11, v2

    move v13, v3

    goto/16 :goto_3

    :cond_7
    move v3, v8

    goto/16 :goto_5

    :cond_8
    move v2, v13

    goto/16 :goto_6

    :cond_9
    if-le v11, v4, :cond_a

    const/4 v3, 0x0

    :goto_7
    if-le v2, v9, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getWidth()I

    move-result v2

    goto/16 :goto_6

    :cond_a
    move v3, v13

    goto :goto_7

    :cond_b
    move v2, v8

    goto/16 :goto_6

    :cond_c
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->gainFocus(ILandroid/graphics/Rect;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0, p2, p3}, Landroid/widget/GridView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v3

    if-lt v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v2, 0x13

    if-ne v2, p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setSelection(I)V

    move v0, v1

    goto :goto_0
.end method

.method public onMeasure(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->nestedScrollable:Z

    if-eqz v0, :cond_0

    const v0, 0xffffff

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public final setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6

    instance-of v0, p1, Lcom/google/android/material/datepicker/MonthAdapter;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "716c16"

    const-wide/32 v4, -0x66559466

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-class v4, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/google/android/material/datepicker/MonthAdapter;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x12t
        0x0t
        0x12t
        0x10t
        0x11t
        0x5bt
        0x42t
        0x42t
        0x42t
        0x43t
        0x59t
        0x57t
        0x41t
        0x54t
        0x16t
        0xat
        0x45t
        0x45t
        0x17t
        0x70t
        0x52t
        0x2t
        0x41t
        0x42t
        0x52t
        0x43t
        0x16t
        0x10t
        0x54t
        0x42t
        0x17t
        0x45t
        0x59t
        0x43t
        0x50t
        0x16t
        0x12t
        0x3t
        0x12t
        0x10t
    .end array-data
.end method

.method public setSelection(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->getAdapter()Lcom/google/android/material/datepicker/MonthAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/MonthAdapter;->firstPositionInMonth()I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/GridView;->setSelection(I)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_0
.end method
