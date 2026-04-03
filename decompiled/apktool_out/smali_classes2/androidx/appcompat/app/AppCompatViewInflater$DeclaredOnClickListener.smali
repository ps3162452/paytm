.class Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatViewInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeclaredOnClickListener"
.end annotation


# instance fields
.field private final mHostView:Landroid/view/View;

.field private final mMethodName:Ljava/lang/String;

.field private mResolvedContext:Landroid/content/Context;

.field private mResolvedMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    iput-object p2, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    return-void
.end method

.method private resolveMethod(Landroid/content/Context;)V
    .locals 9

    const/16 v8, 0x16

    const/4 v7, 0x1

    const/4 v6, 0x0

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/View;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    :cond_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const-string v0, ""

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v8, [B

    fill-array-data v2, :array_0

    const-string v3, "fd02b1"

    invoke-static {v2, v3, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x55

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "e0c8e0"

    const/16 v4, 0xfde

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "cb18b8"

    const v4, -0x32eecc8a

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v7, [B

    aput-byte v8, v0, v6

    const-string v2, "13bad8"

    invoke-static {v0, v2, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :array_0
    .array-data 1
        0x25t
        0xbt
        0x45t
        0x5et
        0x6t
        0x11t
        0x8t
        0xbt
        0x44t
        0x12t
        0x4t
        0x58t
        0x8t
        0x0t
        0x10t
        0x5ft
        0x7t
        0x45t
        0xet
        0xbt
        0x54t
        0x12t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4dt
        0x66t
        0xat
        0x5dt
        0x12t
        0x19t
        0x45t
        0x59t
        0xdt
        0x18t
        0x4t
        0x10t
        0x15t
        0x51t
        0x11t
        0x5dt
        0xbt
        0x44t
        0x45t
        0x5ft
        0x11t
        0x18t
        0x4t
        0x5et
        0x6t
        0x55t
        0x10t
        0x4ct
        0xat
        0x42t
        0x45t
        0x73t
        0xct
        0x56t
        0x11t
        0x55t
        0x1dt
        0x44t
        0x43t
        0x5et
        0xat
        0x42t
        0x45t
        0x51t
        0xdt
        0x5ct
        0x17t
        0x5ft
        0xct
        0x54t
        0x59t
        0x57t
        0xbt
        0x73t
        0x9t
        0x59t
        0x0t
        0x53t
        0x45t
        0x51t
        0x11t
        0x44t
        0x11t
        0x51t
        0x7t
        0x45t
        0x11t
        0x55t
        0x43t
        0x5ct
        0x0t
        0x56t
        0xct
        0x5et
        0x6t
        0x5ct
        0x45t
        0x5ft
        0xbt
        0x10t
        0x15t
        0x51t
        0x0t
        0x47t
        0x45t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x43t
        0x15t
        0x58t
        0x4ct
        0xat
        0x18t
        0xat
        0x6t
        0x11t
        0x1ft
    .end array-data
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->resolveMethod(Landroid/content/Context;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroidx/appcompat/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedContext:Landroid/content/Context;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x2c

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "8dfcfc"

    const-wide v4, 0x41a310f1f2000000L    # 1.59938809E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const/16 v2, 0x37

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "17fefc"

    const-wide/32 v4, -0x668a0375

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x7bt
        0xbt
        0x13t
        0xft
        0x2t
        0x43t
        0x56t
        0xbt
        0x12t
        0x43t
        0x3t
        0x1bt
        0x5dt
        0x7t
        0x13t
        0x17t
        0x3t
        0x43t
        0x55t
        0x1t
        0x12t
        0xbt
        0x9t
        0x7t
        0x18t
        0x2t
        0x9t
        0x11t
        0x46t
        0x2t
        0x56t
        0x0t
        0x14t
        0xct
        0xft
        0x7t
        0x2t
        0xbt
        0x8t
        0x20t
        0xat
        0xat
        0x5bt
        0xft
    .end array-data

    :array_1
    .array-data 1
        0x72t
        0x58t
        0x13t
        0x9t
        0x2t
        0x43t
        0x5ft
        0x58t
        0x12t
        0x45t
        0x3t
        0x1bt
        0x54t
        0x54t
        0x13t
        0x11t
        0x3t
        0x43t
        0x5ft
        0x58t
        0x8t
        0x48t
        0x16t
        0x16t
        0x53t
        0x5bt
        0xft
        0x6t
        0x46t
        0xet
        0x54t
        0x43t
        0xet
        0xat
        0x2t
        0x43t
        0x57t
        0x58t
        0x14t
        0x45t
        0x7t
        0xdt
        0x55t
        0x45t
        0x9t
        0xct
        0x2t
        0x59t
        0x5et
        0x59t
        0x25t
        0x9t
        0xft
        0x0t
        0x5at
    .end array-data
.end method
