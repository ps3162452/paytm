.class Landroidx/appcompat/widget/ResourceManagerInternal$DrawableDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/appcompat/widget/ResourceManagerInternal$InflateDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ResourceManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableDelegate"
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

    const/4 v1, 0x0

    invoke-interface {p3}, Landroid/util/AttributeSet;->getClassAttribute()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    const-class v2, Landroidx/appcompat/widget/ResourceManagerInternal$DrawableDelegate;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2, p2, p3, p4}, Landroidx/appcompat/resources/Compatibility$Api21Impl;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v0, v2, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "fffc66"

    const-wide/32 v4, -0x36133e4a

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "ac1481"

    const/16 v5, 0x21b6

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x22t
        0x14t
        0x7t
        0x14t
        0x57t
        0x54t
        0xat
        0x3t
        0x22t
        0x6t
        0x5at
        0x53t
        0x1t
        0x7t
        0x12t
        0x6t
    .end array-data

    :array_1
    .array-data 1
        0x24t
        0x1bt
        0x52t
        0x51t
        0x48t
        0x45t
        0x8t
        0xct
        0x5ft
        0x14t
        0x4ft
        0x59t
        0x8t
        0xft
        0x54t
        0x14t
        0x51t
        0x5ft
        0x7t
        0xft
        0x50t
        0x40t
        0x51t
        0x5ft
        0x6t
        0x43t
        0xdt
        0x50t
        0x4at
        0x50t
        0x16t
        0x2t
        0x53t
        0x58t
        0x5dt
        0xft
    .end array-data
.end method
