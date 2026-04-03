.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveHtmlArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveHtmlArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method


# virtual methods
.method public getHTMLElement()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveHtmlArguments;->mBundle:Landroid/os/Bundle;

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "463b8a"

    const v3, -0x314a641b    # -1.5234464E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x75t
        0x75t
        0x67t
        0x2bt
        0x77t
        0x2ft
        0x6bt
        0x77t
        0x61t
        0x25t
        0x6dt
        0x2ct
        0x71t
        0x78t
        0x67t
        0x3dt
        0x70t
        0x35t
        0x79t
        0x7at
        0x6ct
        0x27t
        0x74t
        0x24t
        0x79t
        0x73t
        0x7dt
        0x36t
        0x67t
        0x32t
        0x60t
        0x64t
        0x7at
        0x2ct
        0x7ft
    .end array-data
.end method
