.class public Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;
.super Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ViewModelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidViewModelFactory"
.end annotation


# static fields
.field private static sInstance:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;


# instance fields
.field private mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->mApplication:Landroid/app/Application;

    return-void
.end method

.method public static getInstance(Landroid/app/Application;)Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;
    .locals 1

    sget-object v0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->sInstance:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;-><init>(Landroid/app/Application;)V

    sput-object v0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->sInstance:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    :cond_0
    sget-object v0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->sInstance:Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;

    return-object v0
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v5, 0x1d

    const/4 v4, 0x1

    const-class v0, Landroidx/lifecycle/AndroidViewModel;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/app/Application;

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->mApplication:Landroid/app/Application;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModel;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v5, [B

    fill-array-data v2, :array_0

    const-string v3, "ac37a2"

    const/16 v4, 0x1877

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v5, [B

    fill-array-data v2, :array_1

    const-string v3, "2e7d68"

    invoke-static {v2, v3, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v5, [B

    fill-array-data v2, :array_2

    const-string v3, "59d6c6"

    const v4, -0x310254a5    # -2.1279328E9f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v5, [B

    fill-array-data v2, :array_3

    const-string v3, "8c7a91"

    invoke-static {v2, v3, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    invoke-super {p0, p1}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;->create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x22t
        0x2t
        0x5dt
        0x59t
        0xet
        0x46t
        0x41t
        0x0t
        0x41t
        0x52t
        0x0t
        0x46t
        0x4t
        0x43t
        0x52t
        0x59t
        0x41t
        0x5bt
        0xft
        0x10t
        0x47t
        0x56t
        0xft
        0x51t
        0x4t
        0x43t
        0x5ct
        0x51t
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x71t
        0x4t
        0x59t
        0xat
        0x59t
        0x4ct
        0x12t
        0x6t
        0x45t
        0x1t
        0x57t
        0x4ct
        0x57t
        0x45t
        0x56t
        0xat
        0x16t
        0x51t
        0x5ct
        0x16t
        0x43t
        0x5t
        0x58t
        0x5bt
        0x57t
        0x45t
        0x58t
        0x2t
        0x16t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x76t
        0x58t
        0xat
        0x58t
        0xct
        0x42t
        0x15t
        0x5at
        0x16t
        0x53t
        0x2t
        0x42t
        0x50t
        0x19t
        0x5t
        0x58t
        0x43t
        0x5ft
        0x5bt
        0x4at
        0x10t
        0x57t
        0xdt
        0x55t
        0x50t
        0x19t
        0xbt
        0x50t
        0x43t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7bt
        0x2t
        0x59t
        0xft
        0x56t
        0x45t
        0x18t
        0x0t
        0x45t
        0x4t
        0x58t
        0x45t
        0x5dt
        0x43t
        0x56t
        0xft
        0x19t
        0x58t
        0x56t
        0x10t
        0x43t
        0x0t
        0x57t
        0x52t
        0x5dt
        0x43t
        0x58t
        0x7t
        0x19t
    .end array-data
.end method
