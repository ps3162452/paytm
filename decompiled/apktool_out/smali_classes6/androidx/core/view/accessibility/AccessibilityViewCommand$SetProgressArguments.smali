.class public final Landroidx/core/view/accessibility/AccessibilityViewCommand$SetProgressArguments;
.super Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/accessibility/AccessibilityViewCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetProgressArguments"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/core/view/accessibility/AccessibilityViewCommand$CommandArguments;-><init>()V

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 6

    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityViewCommand$SetProgressArguments;->mBundle:Landroid/os/Bundle;

    const/16 v1, 0x39

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "49bcb9"

    const-wide/32 v4, 0x745fa59f

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x55t
        0x57t
        0x6t
        0x11t
        0xdt
        0x50t
        0x50t
        0x17t
        0x14t
        0xat
        0x7t
        0x4et
        0x1at
        0x58t
        0x1t
        0x0t
        0x7t
        0x4at
        0x47t
        0x50t
        0x0t
        0xat
        0xet
        0x50t
        0x40t
        0x40t
        0x4ct
        0x2t
        0x1t
        0x4dt
        0x5dt
        0x56t
        0xct
        0x4dt
        0x23t
        0x6bt
        0x73t
        0x6ct
        0x2ft
        0x26t
        0x2ct
        0x6dt
        0x6bt
        0x69t
        0x30t
        0x2ct
        0x25t
        0x6bt
        0x71t
        0x6at
        0x31t
        0x3ct
        0x34t
        0x78t
        0x78t
        0x6ct
        0x27t
    .end array-data
.end method
