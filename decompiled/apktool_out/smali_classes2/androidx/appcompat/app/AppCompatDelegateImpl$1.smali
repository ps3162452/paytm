.class Landroidx/appcompat/app/AppCompatDelegateImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$1;->val$defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private shouldWrapException(Ljava/lang/Throwable;)Z
    .locals 7

    const/16 v6, 0x8

    const/4 v0, 0x0

    instance-of v1, p1, Landroid/content/res/Resources$NotFoundException;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v2, v6, [B

    fill-array-data v2, :array_0

    const-string v3, "3102b6"

    const-wide/32 v4, 0x315b3cb5

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    const-string v3, "3e3941"

    const-wide v4, -0x3e4fc88a92000000L    # -2.72069998E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    nop

    :array_0
    .array-data 1
        0x57t
        0x43t
        0x51t
        0x45t
        0x3t
        0x54t
        0x5ft
        0x54t
    .end array-data

    :array_1
    .array-data 1
        0x77t
        0x17t
        0x52t
        0x4et
        0x55t
        0x53t
        0x5ft
        0x0t
    .end array-data
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    invoke-direct {p0, p2}, Landroidx/appcompat/app/AppCompatDelegateImpl$1;->shouldWrapException(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xb9

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b061a5"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$1;->val$defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$1;->val$defHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x4ct
        0x10t
        0x7ft
        0x57t
        0x41t
        0x41t
        0xat
        0x55t
        0x16t
        0x43t
        0x4t
        0x46t
        0xdt
        0x45t
        0x44t
        0x52t
        0x4t
        0x15t
        0x1bt
        0x5ft
        0x43t
        0x11t
        0x0t
        0x47t
        0x7t
        0x10t
        0x42t
        0x43t
        0x18t
        0x5ct
        0xct
        0x57t
        0x16t
        0x45t
        0xet
        0x15t
        0x17t
        0x43t
        0x53t
        0x11t
        0x8t
        0x46t
        0x42t
        0x51t
        0x16t
        0x47t
        0x4t
        0x56t
        0x16t
        0x5ft
        0x44t
        0x11t
        0x13t
        0x50t
        0x11t
        0x5ft
        0x43t
        0x43t
        0x2t
        0x50t
        0x4et
        0x10t
        0x4ft
        0x5et
        0x14t
        0x15t
        0xft
        0x51t
        0x4ft
        0x11t
        0x3t
        0x50t
        0x42t
        0x42t
        0x53t
        0x57t
        0x4t
        0x47t
        0x7t
        0x5et
        0x55t
        0x58t
        0xft
        0x52t
        0x42t
        0x59t
        0x42t
        0x11t
        0x8t
        0x5bt
        0x42t
        0x51t
        0x58t
        0x11t
        0x14t
        0x5bt
        0x11t
        0x45t
        0x46t
        0x41t
        0xet
        0x47t
        0x16t
        0x55t
        0x52t
        0x11t
        0x16t
        0x54t
        0x1bt
        0x1et
        0x16t
        0x62t
        0x4t
        0x50t
        0x42t
        0x71t
        0x46t
        0x41t
        0x22t
        0x5at
        0xft
        0x40t
        0x57t
        0x45t
        0x25t
        0x50t
        0xet
        0x55t
        0x51t
        0x50t
        0x15t
        0x50t
        0x4ct
        0x43t
        0x53t
        0x45t
        0x22t
        0x5at
        0xft
        0x40t
        0x57t
        0x45t
        0x37t
        0x50t
        0x1t
        0x44t
        0x59t
        0x43t
        0x27t
        0x47t
        0xdt
        0x5dt
        0x64t
        0x54t
        0x12t
        0x5at
        0x17t
        0x42t
        0x55t
        0x54t
        0x12t
        0x70t
        0xct
        0x51t
        0x54t
        0x5dt
        0x4t
        0x51t
        0x4at
        0x19t
        0x16t
        0x57t
        0xet
        0x47t
        0x42t
        0x5dt
        0x59t
        0x43t
        0x4t
        0x15t
        0xbt
        0x5et
        0x50t
        0x5et
        0x4ft
    .end array-data
.end method
