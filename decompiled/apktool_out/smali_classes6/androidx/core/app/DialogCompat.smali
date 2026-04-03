.class public Landroidx/core/app/DialogCompat;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requireViewById(Landroid/app/Dialog;I)Landroid/view/View;
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ff0543"

    const/16 v3, -0x15d4

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x2ft
        0x22t
        0x10t
        0x51t
        0x5bt
        0x56t
        0x15t
        0x46t
        0x5et
        0x5at
        0x40t
        0x13t
        0x14t
        0x3t
        0x56t
        0x50t
        0x46t
        0x56t
        0x8t
        0x5t
        0x55t
        0x15t
        0x55t
        0x13t
        0x30t
        0xft
        0x55t
        0x42t
        0x14t
        0x5at
        0x8t
        0x15t
        0x59t
        0x51t
        0x51t
        0x13t
        0x12t
        0xet
        0x59t
        0x46t
        0x14t
        0x77t
        0xft
        0x7t
        0x5ct
        0x5at
        0x53t
    .end array-data
.end method
