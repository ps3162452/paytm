.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveAtGranularityArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MoveAtGranularityArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtendSelection()Z
    .locals 6

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveAtGranularityArguments;->mBundle:Landroid/os/Bundle;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "78ac12"

    const-wide v4, 0x41d93d4081400000L    # 1.693778437E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x76t
        0x7bt
        0x35t
        0x2at
        0x7et
        0x7ct
        0x68t
        0x79t
        0x33t
        0x24t
        0x64t
        0x7ft
        0x72t
        0x76t
        0x35t
        0x3ct
        0x74t
        0x6at
        0x63t
        0x7dt
        0x2ft
        0x27t
        0x6et
        0x61t
        0x72t
        0x74t
        0x24t
        0x20t
        0x65t
        0x7bt
        0x78t
        0x76t
        0x3et
        0x21t
        0x7et
        0x7dt
        0x7bt
        0x7dt
        0x20t
        0x2dt
    .end array-data
.end method

.method public getGranularity()I
    .locals 6

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$MoveAtGranularityArguments;->mBundle:Landroid/os/Bundle;

    const/16 v1, 0x28

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "88df5c"

    const-wide/32 v4, 0x703d3a6b

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x79t
        0x7bt
        0x30t
        0x2ft
        0x7at
        0x2dt
        0x67t
        0x79t
        0x36t
        0x21t
        0x60t
        0x2et
        0x7dt
        0x76t
        0x30t
        0x39t
        0x78t
        0x2ct
        0x6et
        0x7dt
        0x29t
        0x23t
        0x7bt
        0x37t
        0x67t
        0x7ft
        0x36t
        0x27t
        0x7bt
        0x36t
        0x74t
        0x79t
        0x36t
        0x2ft
        0x61t
        0x3at
        0x67t
        0x71t
        0x2at
        0x32t
    .end array-data
.end method
