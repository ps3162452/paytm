.class Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreQAutoCompleteTextViewReflector"
.end annotation


# instance fields
.field private mDoAfterTextChanged:Ljava/lang/reflect/Method;

.field private mDoBeforeTextChanged:Ljava/lang/reflect/Method;

.field private mEnsureImeVisible:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoBeforeTextChanged:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoAfterTextChanged:Ljava/lang/reflect/Method;

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mEnsureImeVisible:Ljava/lang/reflect/Method;

    invoke-static {}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->preApi29Check()V

    :try_start_0
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "190b80"

    const/16 v3, -0xeb6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoBeforeTextChanged:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "25ec3b"

    const-wide v4, -0x3e3d78f98e000000L    # -6.21677796E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoAfterTextChanged:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-class v0, Landroid/widget/AutoCompleteTextView;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "a753d0"

    const-wide v4, -0x3e47ed4b93000000L    # -4.03879021E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mEnsureImeVisible:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x55t
        0x56t
        0x72t
        0x7t
        0x5et
        0x5ft
        0x43t
        0x5ct
        0x64t
        0x7t
        0x40t
        0x44t
        0x72t
        0x51t
        0x51t
        0xct
        0x5ft
        0x55t
        0x55t
    .end array-data

    :array_1
    .array-data 1
        0x56t
        0x5at
        0x24t
        0x5t
        0x47t
        0x7t
        0x40t
        0x61t
        0x0t
        0x1bt
        0x47t
        0x21t
        0x5at
        0x54t
        0xbt
        0x4t
        0x56t
        0x6t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4t
        0x59t
        0x46t
        0x46t
        0x16t
        0x55t
        0x28t
        0x5at
        0x50t
        0x65t
        0xdt
        0x43t
        0x8t
        0x55t
        0x59t
        0x56t
    .end array-data
.end method

.method private static preApi29Check()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedClassVersionError;

    const/16 v1, 0x32

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9baf3e"

    const v3, 0x4d4be30e    # 2.1379094E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedClassVersionError;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x6dt
        0xat
        0x8t
        0x15t
        0x13t
        0x3t
        0x4ct
        0xct
        0x2t
        0x12t
        0x5at
        0xat
        0x57t
        0x42t
        0x2t
        0x7t
        0x5dt
        0x45t
        0x56t
        0xct
        0xdt
        0x1ft
        0x13t
        0x7t
        0x5ct
        0x42t
        0x14t
        0x15t
        0x56t
        0x1t
        0x19t
        0x4t
        0xet
        0x14t
        0x13t
        0x24t
        0x69t
        0x2bt
        0x41t
        0x2at
        0x56t
        0x13t
        0x5ct
        0xet
        0x41t
        0x5at
        0x13t
        0x57t
        0x0t
        0x4ct
    .end array-data
.end method


# virtual methods
.method doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .locals 2

    invoke-static {}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->preApi29Check()V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoAfterTextChanged:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V
    .locals 2

    invoke-static {}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->preApi29Check()V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mDoBeforeTextChanged:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method ensureImeVisible(Landroid/widget/AutoCompleteTextView;)V
    .locals 4

    invoke-static {}, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->preApi29Check()V

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView$PreQAutoCompleteTextViewReflector;->mEnsureImeVisible:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
