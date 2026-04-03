.class public final Lcom/google/android/material/datepicker/MaterialTextInputPicker;
.super Lcom/google/android/material/datepicker/PickerFragment;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/PickerFragment",
        "<TS;>;"
    }
.end annotation


# static fields
.field private static final CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String;

.field private static final DATE_SELECTOR_KEY:Ljava/lang/String;

.field private static final THEME_RES_ID_KEY:Ljava/lang/String;


# instance fields
.field private calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

.field private dateSelector:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector",
            "<TS;>;"
        }
    .end annotation
.end field

.field private themeResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ae7ff4"

    const v2, -0x3169c06a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "6fb77f"

    const-wide/32 v2, 0x37238a67

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->DATE_SELECTOR_KEY:Ljava/lang/String;

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "a1496f"

    const-wide/32 v2, 0x2be09a25

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->THEME_RES_ID_KEY:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x22t
        0x24t
        0x7bt
        0x23t
        0x28t
        0x70t
        0x20t
        0x37t
        0x68t
        0x25t
        0x29t
        0x7at
        0x32t
        0x31t
        0x65t
        0x27t
        0x2ft
        0x7at
        0x35t
        0x36t
        0x68t
        0x2dt
        0x23t
        0x6dt
    .end array-data

    :array_1
    .array-data 1
        0x72t
        0x27t
        0x36t
        0x72t
        0x68t
        0x35t
        0x73t
        0x2at
        0x27t
        0x74t
        0x63t
        0x29t
        0x64t
        0x39t
        0x29t
        0x72t
        0x6et
    .end array-data

    nop

    :array_2
    .array-data 1
        0x35t
        0x79t
        0x71t
        0x74t
        0x73t
        0x39t
        0x33t
        0x74t
        0x67t
        0x66t
        0x7ft
        0x22t
        0x3et
        0x7at
        0x71t
        0x60t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/material/datepicker/PickerFragment;-><init>()V

    return-void
.end method

.method static newInstance(Lcom/google/android/material/datepicker/DateSelector;ILcom/google/android/material/datepicker/CalendarConstraints;)Lcom/google/android/material/datepicker/MaterialTextInputPicker;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/DateSelector",
            "<TT;>;I",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ")",
            "Lcom/google/android/material/datepicker/MaterialTextInputPicker",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/MaterialTextInputPicker;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->THEME_RES_ID_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v2, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->DATE_SELECTOR_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v2, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getDateSelector()Lcom/google/android/material/datepicker/DateSelector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/DateSelector",
            "<TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0xb1

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3a6b3f"

    const/16 v3, -0x1c55

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x57t
        0x0t
        0x42t
        0x7t
        0x60t
        0x3t
        0x5ft
        0x4t
        0x55t
        0x16t
        0x5ct
        0x14t
        0x13t
        0x12t
        0x5et
        0xdt
        0x46t
        0xat
        0x57t
        0x41t
        0x58t
        0xdt
        0x47t
        0x46t
        0x51t
        0x4t
        0x16t
        0xct
        0x46t
        0xat
        0x5ft
        0x4ft
        0x16t
        0x37t
        0x40t
        0x3t
        0x13t
        0x2ct
        0x57t
        0x16t
        0x56t
        0x14t
        0x5at
        0x0t
        0x5at
        0x36t
        0x56t
        0x1et
        0x47t
        0x28t
        0x58t
        0x12t
        0x46t
        0x12t
        0x63t
        0x8t
        0x55t
        0x9t
        0x56t
        0x14t
        0x10t
        0xft
        0x53t
        0x15t
        0x7at
        0x8t
        0x40t
        0x15t
        0x57t
        0xct
        0x50t
        0x3t
        0x1bt
        0x48t
        0x16t
        0x16t
        0x5ct
        0x46t
        0x50t
        0x13t
        0x53t
        0x3t
        0x47t
        0x3t
        0x13t
        0x15t
        0x5et
        0xbt
        0x40t
        0x46t
        0x55t
        0x13t
        0x57t
        0x5t
        0x5et
        0x3t
        0x5dt
        0x15t
        0x16t
        0x15t
        0x5at
        0x12t
        0x5bt
        0x41t
        0x57t
        0x42t
        0x77t
        0x7t
        0x47t
        0x4t
        0x65t
        0x7t
        0x5ft
        0x3t
        0x50t
        0x15t
        0x59t
        0x10t
        0x1ft
        0x46t
        0x52t
        0xft
        0x52t
        0x42t
        0x50t
        0x7t
        0x5ft
        0xdt
        0x16t
        0x16t
        0x5bt
        0xft
        0x40t
        0x41t
        0x5bt
        0x7t
        0x47t
        0xet
        0x5ct
        0x5t
        0x16t
        0x3t
        0x55t
        0x12t
        0x56t
        0x13t
        0x16t
        0x16t
        0x5bt
        0x3t
        0x13t
        0x7t
        0x44t
        0x3t
        0x54t
        0xbt
        0x56t
        0xft
        0x42t
        0x42t
        0x5bt
        0x7t
        0x40t
        0x41t
        0x54t
        0x7t
        0x56t
        0x8t
        0x13t
        0x2t
        0x44t
        0x7t
        0x52t
        0x12t
        0x56t
        0x5t
        0x18t
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/PickerFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    sget-object v0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->THEME_RES_ID_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->themeResId:I

    sget-object v0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->DATE_SELECTOR_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    sget-object v0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    iput-object v0, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->themeResId:I

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v4, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    new-instance v5, Lcom/google/android/material/datepicker/MaterialTextInputPicker$1;

    invoke-direct {v5, p0}, Lcom/google/android/material/datepicker/MaterialTextInputPicker$1;-><init>(Lcom/google/android/material/datepicker/MaterialTextInputPicker;)V

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/material/datepicker/DateSelector;->onCreateTextInputView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/CalendarConstraints;Lcom/google/android/material/datepicker/OnSelectionChangedListener;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/PickerFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    sget-object v0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->THEME_RES_ID_KEY:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->themeResId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->DATE_SELECTOR_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->dateSelector:Lcom/google/android/material/datepicker/DateSelector;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    sget-object v0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->CALENDAR_CONSTRAINTS_KEY:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/material/datepicker/MaterialTextInputPicker;->calendarConstraints:Lcom/google/android/material/datepicker/CalendarConstraints;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
