.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$SetSelectionArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetSelectionArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 6

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$SetSelectionArguments;->mBundle:Landroid/os/Bundle;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9a02e3"

    const-wide v4, 0x41cd0c8e7a000000L    # 9.7472434E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x78t
        0x22t
        0x64t
        0x7bt
        0x2at
        0x7dt
        0x66t
        0x20t
        0x62t
        0x75t
        0x30t
        0x7et
        0x7ct
        0x2ft
        0x64t
        0x6dt
        0x36t
        0x76t
        0x75t
        0x24t
        0x73t
        0x66t
        0x2ct
        0x7ct
        0x77t
        0x3et
        0x75t
        0x7ct
        0x21t
        0x6ct
        0x70t
        0x2ft
        0x64t
    .end array-data
.end method

.method public getStart()I
    .locals 4

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$SetSelectionArguments;->mBundle:Landroid/os/Bundle;

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "cd226d"

    const v3, 0x4e8a4e00

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x22t
        0x27t
        0x66t
        0x7bt
        0x79t
        0x2at
        0x3ct
        0x25t
        0x60t
        0x75t
        0x63t
        0x29t
        0x26t
        0x2at
        0x66t
        0x6dt
        0x65t
        0x21t
        0x2ft
        0x21t
        0x71t
        0x66t
        0x7ft
        0x2bt
        0x2dt
        0x3bt
        0x61t
        0x66t
        0x77t
        0x36t
        0x37t
        0x3bt
        0x7bt
        0x7ct
        0x62t
    .end array-data
.end method
