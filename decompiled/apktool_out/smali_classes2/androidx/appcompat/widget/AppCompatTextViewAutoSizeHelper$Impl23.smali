.class Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl23;
.super Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl23"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;-><init>()V

    return-void
.end method


# virtual methods
.method computeAndSetTextDirection(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
    .locals 3

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "80a186"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p2, v0, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p1, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    return-void

    :array_0
    .array-data 1
        0x5ft
        0x55t
        0x15t
        0x65t
        0x5dt
        0x4et
        0x4ct
        0x74t
        0x8t
        0x43t
        0x5dt
        0x55t
        0x4ct
        0x59t
        0xet
        0x5ft
        0x70t
        0x53t
        0x4dt
        0x42t
        0x8t
        0x42t
        0x4ct
        0x5ft
        0x5bt
    .end array-data
.end method
