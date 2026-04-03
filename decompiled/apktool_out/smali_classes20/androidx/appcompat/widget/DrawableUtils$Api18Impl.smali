.class Landroidx/appcompat/widget/DrawableUtils$Api18Impl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/DrawableUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api18Impl"
.end annotation


# static fields
.field private static final sBottom:Ljava/lang/reflect/Field;

.field private static final sGetOpticalInsets:Ljava/lang/reflect/Method;

.field private static final sLeft:Ljava/lang/reflect/Field;

.field private static final sReflectionSuccessful:Z

.field private static final sRight:Ljava/lang/reflect/Field;

.field private static final sTop:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x17

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "0cbdfa"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-class v0, Landroid/graphics/drawable/Drawable;

    const/16 v2, 0x10

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "3e4db3"

    const/16 v4, -0x3582

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v2, "cfa986"

    const-wide/32 v8, 0x15de729d

    invoke-static {v0, v2, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_b

    move-result-object v3

    const/4 v0, 0x3

    :try_start_2
    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v2, "38b3e3"

    const v8, -0x32739f2b

    invoke-static {v0, v2, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_c

    move-result-object v2

    const/4 v0, 0x5

    :try_start_3
    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v8, "6b2f53"

    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_d

    move-result-object v0

    const/4 v8, 0x6

    :try_start_4
    new-array v8, v8, [B

    fill-array-data v8, :array_5

    const-string v9, "73ed03"

    const-wide/32 v10, 0x7db948b2

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_e

    move-result-object v5

    move-object v8, v4

    move-object v4, v2

    move v2, v6

    move-object v12, v0

    move-object v0, v5

    move-object v5, v3

    move-object v3, v12

    :goto_0
    if-eqz v2, :cond_0

    sput-object v8, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sGetOpticalInsets:Ljava/lang/reflect/Method;

    sput-object v5, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sLeft:Ljava/lang/reflect/Field;

    sput-object v4, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sTop:Ljava/lang/reflect/Field;

    sput-object v3, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sRight:Ljava/lang/reflect/Field;

    sput-object v0, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sBottom:Ljava/lang/reflect/Field;

    sput-boolean v6, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sReflectionSuccessful:Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_2
    move-object v5, v3

    move-object v8, v4

    move-object v3, v0

    move-object v4, v2

    move-object v0, v1

    move v2, v7

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_3
    move-object v5, v3

    move-object v8, v4

    move-object v3, v0

    move-object v4, v2

    move-object v0, v1

    move v2, v7

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    :goto_4
    move-object v5, v3

    move-object v8, v4

    move-object v3, v0

    move-object v4, v2

    move-object v0, v1

    move v2, v7

    goto :goto_0

    :cond_0
    sput-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sGetOpticalInsets:Ljava/lang/reflect/Method;

    sput-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sLeft:Ljava/lang/reflect/Field;

    sput-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sTop:Ljava/lang/reflect/Field;

    sput-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sRight:Ljava/lang/reflect/Field;

    sput-object v1, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sBottom:Ljava/lang/reflect/Field;

    sput-boolean v7, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sReflectionSuccessful:Z

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_4

    :catch_6
    move-exception v5

    goto :goto_4

    :catch_7
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto :goto_3

    :catch_8
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_3

    :catch_9
    move-exception v0

    move-object v0, v1

    goto :goto_3

    :catch_a
    move-exception v5

    goto :goto_3

    :catch_b
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto :goto_2

    :catch_c
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    goto :goto_2

    :catch_d
    move-exception v0

    move-object v0, v1

    goto :goto_2

    :catch_e
    move-exception v5

    goto :goto_2

    :array_0
    .array-data 1
        0x51t
        0xdt
        0x6t
        0x16t
        0x9t
        0x8t
        0x54t
        0x4dt
        0x5t
        0x16t
        0x7t
        0x11t
        0x58t
        0xat
        0x1t
        0x17t
        0x48t
        0x28t
        0x5et
        0x10t
        0x7t
        0x10t
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x54t
        0x0t
        0x40t
        0x2bt
        0x12t
        0x47t
        0x5at
        0x6t
        0x55t
        0x8t
        0x2bt
        0x5dt
        0x40t
        0x0t
        0x40t
        0x17t
    .end array-data

    :array_2
    .array-data 1
        0xft
        0x3t
        0x7t
        0x4dt
    .end array-data

    :array_3
    .array-data 1
        0x47t
        0x57t
        0x12t
    .end array-data

    :array_4
    .array-data 1
        0x44t
        0xbt
        0x55t
        0xet
        0x41t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x55t
        0x5ct
        0x11t
        0x10t
        0x5ft
        0x5et
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getOpticalInsets(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    sget-boolean v0, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sReflectionSuccessful:Z

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sGetOpticalInsets:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    sget-object v2, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sLeft:Ljava/lang/reflect/Field;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sget-object v3, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sTop:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sget-object v4, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sRight:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sget-object v5, Landroidx/appcompat/widget/DrawableUtils$Api18Impl;->sBottom:Ljava/lang/reflect/Field;

    invoke-virtual {v5, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    :goto_1
    sget-object v0, Landroidx/appcompat/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method
