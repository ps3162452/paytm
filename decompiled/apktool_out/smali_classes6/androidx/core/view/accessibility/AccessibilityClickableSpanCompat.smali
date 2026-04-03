.class public final Landroidx/core/view/accessibility/AccessibilityClickableSpanCompat;
.super Landroid/text/style/ClickableSpan;


# static fields
.field public static final SPAN_ID:Ljava/lang/String;


# instance fields
.field private final mClickableSpanActionId:I

.field private final mNodeInfoCompat:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

.field private final mOriginalClickableSpanId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "1f7ac3"

    const-wide v2, 0x41d064ec3a000000L    # 1.10019812E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/view/accessibility/AccessibilityClickableSpanCompat;->SPAN_ID:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x70t
        0x25t
        0x74t
        0x24t
        0x30t
        0x60t
        0x78t
        0x24t
        0x7et
        0x2dt
        0x2at
        0x67t
        0x68t
        0x39t
        0x74t
        0x2dt
        0x2at
        0x70t
        0x7at
        0x27t
        0x75t
        0x2dt
        0x26t
        0x6ct
        0x62t
        0x36t
        0x76t
        0x2ft
        0x3ct
        0x7at
        0x75t
    .end array-data
.end method

.method public constructor <init>(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;I)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Landroidx/core/view/accessibility/AccessibilityClickableSpanCompat;->mOriginalClickableSpanId:I

    iput-object p2, p0, Landroidx/core/view/accessibility/AccessibilityClickableSpanCompat;->mNodeInfoCompat:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    iput p3, p0, Landroidx/core/view/accessibility/AccessibilityClickableSpanCompat;->mClickableSpanActionId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/core/view/accessibility/AccessibilityClickableSpanCompat;->SPAN_ID:Ljava/lang/String;

    iget v2, p0, Landroidx/core/view/accessibility/AccessibilityClickableSpanCompat;->mOriginalClickableSpanId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Landroidx/core/view/accessibility/AccessibilityClickableSpanCompat;->mNodeInfoCompat:Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    iget v2, p0, Landroidx/core/view/accessibility/AccessibilityClickableSpanCompat;->mClickableSpanActionId:I

    invoke-virtual {v1, v2, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->performAction(ILandroid/os/Bundle;)Z

    return-void
.end method
