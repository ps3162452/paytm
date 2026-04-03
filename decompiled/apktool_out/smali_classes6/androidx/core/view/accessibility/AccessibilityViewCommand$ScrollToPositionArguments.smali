.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$ScrollToPositionArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScrollToPositionArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method


# virtual methods
.method public getColumn()I
    .locals 4

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$ScrollToPositionArguments;->mBundle:Landroid/os/Bundle;

    const/16 v1, 0x35

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f05e27"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x7t
        0x5et
        0x51t
        0x17t
        0x5dt
        0x5et
        0x2t
        0x1et
        0x43t
        0xct
        0x57t
        0x40t
        0x48t
        0x51t
        0x56t
        0x6t
        0x57t
        0x44t
        0x15t
        0x59t
        0x57t
        0xct
        0x5et
        0x5et
        0x12t
        0x49t
        0x1bt
        0x4t
        0x51t
        0x43t
        0xft
        0x5ft
        0x5bt
        0x4bt
        0x73t
        0x65t
        0x21t
        0x65t
        0x78t
        0x20t
        0x7ct
        0x63t
        0x39t
        0x73t
        0x7at
        0x29t
        0x67t
        0x7at
        0x28t
        0x6ft
        0x7ct
        0x2bt
        0x66t
    .end array-data
.end method

.method public getRow()I
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$ScrollToPositionArguments;->mBundle:Landroid/os/Bundle;

    const/16 v1, 0x32

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9018ec"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x58t
        0x5et
        0x55t
        0x4at
        0xat
        0xat
        0x5dt
        0x1et
        0x47t
        0x51t
        0x0t
        0x14t
        0x17t
        0x51t
        0x52t
        0x5bt
        0x0t
        0x10t
        0x4at
        0x59t
        0x53t
        0x51t
        0x9t
        0xat
        0x4dt
        0x49t
        0x1ft
        0x59t
        0x6t
        0x17t
        0x50t
        0x5ft
        0x5ft
        0x16t
        0x24t
        0x31t
        0x7et
        0x65t
        0x7ct
        0x7dt
        0x2bt
        0x37t
        0x66t
        0x62t
        0x7et
        0x6ft
        0x3at
        0x2at
        0x77t
        0x64t
    .end array-data
.end method
