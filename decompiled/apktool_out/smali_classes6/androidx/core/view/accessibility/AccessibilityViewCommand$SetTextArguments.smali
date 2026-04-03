.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$SetTextArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetTextArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 4

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$SetTextArguments;->mBundle:Landroid/os/Bundle;

    const/16 v1, 0x25

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9afe19"

    const/16 v3, -0x7d75

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x78t
        0x22t
        0x32t
        0x2ct
        0x7et
        0x77t
        0x66t
        0x20t
        0x34t
        0x22t
        0x64t
        0x74t
        0x7ct
        0x2ft
        0x32t
        0x3at
        0x62t
        0x7ct
        0x6dt
        0x3et
        0x32t
        0x20t
        0x69t
        0x6dt
        0x66t
        0x22t
        0x2et
        0x24t
        0x63t
        0x6at
        0x7ct
        0x30t
        0x33t
        0x20t
        0x7ft
        0x7at
        0x7ct
    .end array-data
.end method
