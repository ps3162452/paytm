.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveWindowArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveWindowArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method


# virtual methods
.method public getX()I
    .locals 5

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveWindowArguments;->mBundle:Landroid/os/Bundle;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d90c06"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x25t
        0x7at
        0x64t
        0x2at
        0x7ft
        0x78t
        0x3bt
        0x78t
        0x62t
        0x24t
        0x65t
        0x7bt
        0x21t
        0x77t
        0x64t
        0x3ct
        0x7dt
        0x79t
        0x32t
        0x7ct
        0x6ft
        0x34t
        0x79t
        0x78t
        0x20t
        0x76t
        0x67t
        0x3ct
        0x68t
    .end array-data
.end method

.method public getY()I
    .locals 6

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveWindowArguments;->mBundle:Landroid/os/Bundle;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "0df5d1"

    const-wide v4, -0x3e47f243d4000000L    # -4.03553324E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x71t
        0x27t
        0x32t
        0x7ct
        0x2bt
        0x7ft
        0x6ft
        0x25t
        0x34t
        0x72t
        0x31t
        0x7ct
        0x75t
        0x2at
        0x32t
        0x6at
        0x29t
        0x7et
        0x66t
        0x21t
        0x39t
        0x62t
        0x2dt
        0x7ft
        0x74t
        0x2bt
        0x31t
        0x6at
        0x3dt
    .end array-data
.end method
