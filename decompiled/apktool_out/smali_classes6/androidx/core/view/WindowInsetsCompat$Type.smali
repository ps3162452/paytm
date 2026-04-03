.class public final Landroidx/core/view/WindowInsetsCompat$Type;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/WindowInsetsCompat$Type$InsetsType;
    }
.end annotation


# static fields
.field static final CAPTION_BAR:I = 0x4

.field static final DISPLAY_CUTOUT:I = 0x80

.field static final FIRST:I = 0x1

.field static final IME:I = 0x8

.field static final LAST:I = 0x100

.field static final MANDATORY_SYSTEM_GESTURES:I = 0x20

.field static final NAVIGATION_BARS:I = 0x2

.field static final SIZE:I = 0x9

.field static final STATUS_BARS:I = 0x1

.field static final SYSTEM_GESTURES:I = 0x10

.field static final TAPPABLE_ELEMENT:I = 0x40

.field static final WINDOW_DECOR:I = 0x100


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static all()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public static captionBar()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public static displayCutout()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public static ime()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method static indexOf(I)I
    .locals 6

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0fd22c"

    const-wide/32 v4, -0x25795cfc

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const/16 v0, 0x8

    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_8
    const/4 v0, 0x0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x4 -> :sswitch_6
        0x8 -> :sswitch_5
        0x10 -> :sswitch_4
        0x20 -> :sswitch_3
        0x40 -> :sswitch_2
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 1
        0x44t
        0x1ft
        0x14t
        0x57t
        0x12t
        0xdt
        0x55t
        0x3t
        0x0t
        0x41t
        0x12t
        0x17t
        0x5ft
        0x46t
        0x6t
        0x57t
        0x12t
        0x5dt
        0xdt
        0x46t
        0x22t
        0x7bt
        0x60t
        0x30t
        0x64t
        0x46t
        0x5t
        0x5ct
        0x56t
        0x43t
        0xct
        0x5bt
        0x44t
        0x7et
        0x73t
        0x30t
        0x64t
        0x4at
        0x44t
        0x46t
        0x4bt
        0x13t
        0x55t
        0x5bt
    .end array-data
.end method

.method public static mandatorySystemGestures()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public static navigationBars()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static statusBars()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static systemBars()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public static systemGestures()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public static tappableElement()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method
