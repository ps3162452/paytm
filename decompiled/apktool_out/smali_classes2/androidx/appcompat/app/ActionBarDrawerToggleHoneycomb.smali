.class Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final THEME_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "517479"

    const v2, -0x3216a925

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101030b

    aput v2, v0, v1

    sput-object v0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->THEME_ATTRS:[I

    return-void

    :array_0
    .array-data 1
        0x74t
        0x52t
        0x43t
        0x5dt
        0x58t
        0x57t
        0x77t
        0x50t
        0x45t
        0x70t
        0x45t
        0x58t
        0x42t
        0x54t
        0x45t
        0x60t
        0x58t
        0x5et
        0x52t
        0x5dt
        0x52t
        0x7ct
        0x74t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget-object v0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->THEME_ATTRS:[I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static setActionBarDescription(Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;I)Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    .locals 6

    const/4 v5, 0x1

    if-nez p0, :cond_0

    new-instance p0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    sget-object v1, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->TAG:Ljava/lang/String;

    const/16 v2, 0x2f

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "9102a4"

    invoke-static {v2, v3, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x7at
        0x5et
        0x45t
        0x5et
        0x5t
        0x5at
        0x1et
        0x45t
        0x10t
        0x41t
        0x4t
        0x40t
        0x19t
        0x52t
        0x5ft
        0x5ct
        0x15t
        0x51t
        0x57t
        0x45t
        0x10t
        0x56t
        0x4t
        0x47t
        0x5at
        0x43t
        0x59t
        0x42t
        0x15t
        0x5dt
        0x56t
        0x5ft
        0x10t
        0x44t
        0x8t
        0x55t
        0x19t
        0x7bt
        0x72t
        0x1ft
        0x2ct
        0x66t
        0xbt
        0x11t
        0x71t
        0x62t
        0x28t
    .end array-data
.end method

.method public static setActionBarUpIndicator(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
    .locals 7

    const/4 v6, 0x1

    new-instance v1, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;-><init>(Landroid/app/Activity;)V

    iget-object v0, v1, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v2, v1, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    sget-object v2, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->TAG:Ljava/lang/String;

    const/16 v3, 0x30

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "76bc3e"

    invoke-static {v3, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v0, v1, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, v1, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/appcompat/app/ActionBarDrawerToggleHoneycomb;->TAG:Ljava/lang/String;

    const/16 v2, 0x21

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "e0f5c6"

    const v4, 0x4ec0af88

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x74t
        0x59t
        0x17t
        0xft
        0x57t
        0xbt
        0x10t
        0x42t
        0x42t
        0x10t
        0x56t
        0x11t
        0x17t
        0x5et
        0xdt
        0xet
        0x56t
        0x48t
        0x56t
        0x45t
        0x4ft
        0x16t
        0x43t
        0x45t
        0x5et
        0x58t
        0x6t
        0xat
        0x50t
        0x4t
        0x43t
        0x59t
        0x10t
        0x43t
        0x45t
        0xct
        0x56t
        0x16t
        0x28t
        0x21t
        0x1et
        0x28t
        0x65t
        0x4t
        0x42t
        0x22t
        0x63t
        0x2ct
    .end array-data

    :array_1
    .array-data 1
        0x26t
        0x5ft
        0x13t
        0x59t
        0x7t
        0x58t
        0x42t
        0x44t
        0x46t
        0x46t
        0x6t
        0x42t
        0x45t
        0x58t
        0x9t
        0x58t
        0x6t
        0x1bt
        0x4t
        0x43t
        0x4bt
        0x40t
        0x13t
        0x16t
        0xct
        0x5et
        0x2t
        0x5ct
        0x0t
        0x57t
        0x11t
        0x5ft
        0x14t
    .end array-data
.end method
