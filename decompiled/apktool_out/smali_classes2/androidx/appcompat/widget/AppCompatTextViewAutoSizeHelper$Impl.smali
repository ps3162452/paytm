.class Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper$Impl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method computeAndSetTextDirection(Landroid/text/StaticLayout$Builder;Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method

.method isHorizontallyScrollable(Landroid/widget/TextView;)Z
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "dddcbd"

    const v2, 0x4ed1a1c3    # 1.7585197E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->invokeAndReturnWithDefault(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x3t
        0x1t
        0x10t
        0x2bt
        0xdt
        0x16t
        0xdt
        0x1et
        0xbt
        0xdt
        0x16t
        0x5t
        0x8t
        0x8t
        0x1dt
        0x30t
        0x1t
        0x16t
        0xbt
        0x8t
        0x8t
        0xat
        0xct
        0x3t
    .end array-data
.end method
