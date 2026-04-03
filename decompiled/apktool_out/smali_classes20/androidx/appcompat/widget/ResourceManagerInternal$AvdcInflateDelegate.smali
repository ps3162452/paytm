.class Landroidx/appcompat/widget/ResourceManagerInternal$AvdcInflateDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ResourceManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvdcInflateDelegate"
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

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0, p2, p3, p4}, Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "cc7392"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2b

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "bf941c"

    const v4, 0x4e91c514

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x22t
        0x15t
        0x53t
        0x50t
        0x70t
        0x5ct
        0x5t
        0xft
        0x56t
        0x47t
        0x5ct
        0x76t
        0x6t
        0xft
        0x52t
        0x54t
        0x58t
        0x46t
        0x6t
    .end array-data

    :array_1
    .array-data 1
        0x27t
        0x1et
        0x5at
        0x51t
        0x41t
        0x17t
        0xbt
        0x9t
        0x57t
        0x14t
        0x46t
        0xbt
        0xbt
        0xat
        0x5ct
        0x14t
        0x58t
        0xdt
        0x4t
        0xat
        0x58t
        0x40t
        0x58t
        0xdt
        0x5t
        0x46t
        0x5t
        0x55t
        0x5ft
        0xat
        0xft
        0x7t
        0x4dt
        0x51t
        0x55t
        0x4et
        0x14t
        0x3t
        0x5at
        0x40t
        0x5et
        0x11t
        0x5ct
    .end array-data
.end method
