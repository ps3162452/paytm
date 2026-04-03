.class Landroidx/appcompat/widget/ResourceManagerInternal$VdcInflateDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ResourceManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VdcInflateDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2, p3, p4}, Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/VectorDrawableCompat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "870664"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x22

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "2582ae"

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x6et
        0x53t
        0x53t
        0x7ft
        0x58t
        0x52t
        0x54t
        0x56t
        0x44t
        0x53t
        0x72t
        0x51t
        0x54t
        0x52t
        0x57t
        0x57t
        0x42t
        0x51t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x77t
        0x4dt
        0x5bt
        0x57t
        0x11t
        0x11t
        0x5bt
        0x5at
        0x56t
        0x12t
        0x16t
        0xdt
        0x5bt
        0x59t
        0x5dt
        0x12t
        0x8t
        0xbt
        0x54t
        0x59t
        0x59t
        0x46t
        0x8t
        0xbt
        0x55t
        0x15t
        0x4t
        0x44t
        0x4t
        0x6t
        0x46t
        0x5at
        0x4at
        0xct
    .end array-data
.end method
