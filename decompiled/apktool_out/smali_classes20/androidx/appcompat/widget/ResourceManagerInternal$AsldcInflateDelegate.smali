.class Landroidx/appcompat/widget/ResourceManagerInternal$AsldcInflateDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ResourceManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsldcInflateDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0, p2, p3, p4}, Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;->createFromXmlInner(Landroid/content/Context;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroidx/appcompat/graphics/drawable/AnimatedStateListDrawableCompat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7da292"

    const/16 v3, -0x5e47

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2d

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "c84fc4"

    const-wide/32 v4, 0x18952cc4

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0

    :array_0
    .array-data 1
        0x76t
        0x17t
        0xdt
        0x56t
        0x5at
        0x7bt
        0x59t
        0x2t
        0xdt
        0x53t
        0x4dt
        0x57t
        0x73t
        0x1t
        0xdt
        0x57t
        0x5et
        0x53t
        0x43t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x26t
        0x40t
        0x57t
        0x3t
        0x13t
        0x40t
        0xat
        0x57t
        0x5at
        0x46t
        0x14t
        0x5ct
        0xat
        0x54t
        0x51t
        0x46t
        0xat
        0x5at
        0x5t
        0x54t
        0x55t
        0x12t
        0xat
        0x5at
        0x4t
        0x18t
        0x8t
        0x7t
        0xdt
        0x5dt
        0xet
        0x59t
        0x40t
        0x3t
        0x7t
        0x19t
        0x10t
        0x5dt
        0x58t
        0x3t
        0x0t
        0x40t
        0xct
        0x4at
        0xat
    .end array-data
.end method
