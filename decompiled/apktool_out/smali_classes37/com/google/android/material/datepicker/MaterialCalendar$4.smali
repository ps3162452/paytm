.class Lcom/google/android/material/datepicker/MaterialCalendar$4;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/MaterialCalendar;->createItemDecoration()Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final endItem:Ljava/util/Calendar;

.field private final startItem:Ljava/util/Calendar;

.field final this$0:Lcom/google/android/material/datepicker/MaterialCalendar;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/MaterialCalendar;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->startItem:Ljava/util/Calendar;

    invoke-static {}, Lcom/google/android/material/datepicker/UtcDates;->getUtcCalendar()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->endItem:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 15

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/datepicker/YearGridAdapter;

    if-eqz v0, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/material/datepicker/YearGridAdapter;

    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$200(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/DateSelector;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/material/datepicker/DateSelector;->getSelectedRanges()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/util/Pair;

    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->startItem:Ljava/util/Calendar;

    iget-object v1, v0, Landroidx/core/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->endItem:Ljava/util/Calendar;

    iget-object v0, v0, Landroidx/core/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->startItem:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/android/material/datepicker/YearGridAdapter;->getPositionForYear(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->endItem:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/google/android/material/datepicker/YearGridAdapter;->getPositionForYear(I)I

    move-result v1

    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v7}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    div-int v9, v0, v2

    invoke-virtual {v7}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    div-int v13, v1, v0

    move v8, v9

    :goto_0
    if-gt v8, v13, :cond_2

    invoke-virtual {v7}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    mul-int/2addr v0, v8

    invoke-virtual {v7, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v1}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarStyle;->year:Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getTopInset()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarStyle;->year:Lcom/google/android/material/datepicker/CalendarItemStyle;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/CalendarItemStyle;->getBottomInset()I

    move-result v5

    if-ne v8, v9, :cond_4

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    move v1, v0

    :goto_2
    if-ne v8, v13, :cond_5

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v0, v14

    :goto_3
    int-to-float v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v0

    sub-int v0, v4, v5

    int-to-float v4, v0

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialCalendar$4;->this$0:Lcom/google/android/material/datepicker/MaterialCalendar;

    invoke-static {v0}, Lcom/google/android/material/datepicker/MaterialCalendar;->access$400(Lcom/google/android/material/datepicker/MaterialCalendar;)Lcom/google/android/material/datepicker/CalendarStyle;

    move-result-object v0

    iget-object v5, v0, Lcom/google/android/material/datepicker/CalendarStyle;->rangeFill:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v0

    goto :goto_3
.end method
