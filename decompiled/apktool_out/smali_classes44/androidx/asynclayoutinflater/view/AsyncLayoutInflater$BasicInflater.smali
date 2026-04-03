.class Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;
.super Landroid/view/LayoutInflater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasicInflater"
.end annotation


# static fields
.field private static final sClassPrefixList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v3, 0xf

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    const-string v2, "8bf890"

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const-string v2, "3045e8"

    const v3, -0x31fb4b18

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const/16 v2, 0xc

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "0ff176"

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;->sClassPrefixList:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x59t
        0xct
        0x2t
        0x4at
        0x56t
        0x59t
        0x5ct
        0x4ct
        0x11t
        0x51t
        0x5dt
        0x57t
        0x5dt
        0x16t
        0x48t
    .end array-data

    :array_1
    .array-data 1
        0x52t
        0x5et
        0x50t
        0x47t
        0xat
        0x51t
        0x57t
        0x1et
        0x43t
        0x50t
        0x7t
        0x53t
        0x5at
        0x44t
        0x1at
    .end array-data

    :array_2
    .array-data 1
        0x51t
        0x8t
        0x2t
        0x43t
        0x58t
        0x5ft
        0x54t
        0x48t
        0x7t
        0x41t
        0x47t
        0x18t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1

    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;

    invoke-direct {v0, p1}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    sget-object v2, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$BasicInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_1
.end method
