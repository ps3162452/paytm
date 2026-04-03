.class Landroidx/core/content/FileProvider$SimplePathStrategy;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/content/FileProvider$PathStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/content/FileProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SimplePathStrategy"
.end annotation


# instance fields
.field private final mAuthority:Ljava/lang/String;

.field private final mRoots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    iput-object p1, p0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mAuthority:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method addRoot(Ljava/lang/String;Ljava/io/File;)V
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v1, p0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x25

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "fa3cca"

    const-wide v4, 0x41833cf248000000L    # 4.0345161E7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x16

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "871759"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x20t
        0x0t
        0x5at
        0xft
        0x6t
        0x5t
        0x46t
        0x15t
        0x5ct
        0x43t
        0x11t
        0x4t
        0x15t
        0xet
        0x5ft
        0x15t
        0x6t
        0x41t
        0x5t
        0x0t
        0x5dt
        0xct
        0xdt
        0x8t
        0x5t
        0x0t
        0x5ft
        0x43t
        0x13t
        0x0t
        0x12t
        0x9t
        0x13t
        0x5t
        0xct
        0x13t
        0x46t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x76t
        0x56t
        0x5ct
        0x52t
        0x15t
        0x54t
        0x4dt
        0x44t
        0x45t
        0x17t
        0x5bt
        0x56t
        0x4ct
        0x17t
        0x53t
        0x52t
        0x15t
        0x5ct
        0x55t
        0x47t
        0x45t
        0x4et
    .end array-data
.end method

.method public getFileForUri(Landroid/net/Uri;)Ljava/io/File;
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    if-eqz v0, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const/16 v1, 0x2b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f0cf59"

    const/4 v3, 0x0

    invoke-static {v1, v2, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x25

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v3, "274515"

    const/16 v4, -0x532a

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "04ae43"

    const v3, 0x4e991db6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x34t
        0x55t
        0x10t
        0x9t
        0x59t
        0x4ft
        0x3t
        0x54t
        0x43t
        0x16t
        0x54t
        0x4dt
        0xet
        0x10t
        0x9t
        0x13t
        0x58t
        0x49t
        0x3t
        0x54t
        0x43t
        0x4t
        0x50t
        0x40t
        0x9t
        0x5et
        0x7t
        0x46t
        0x56t
        0x56t
        0x8t
        0x56t
        0xat
        0x1t
        0x40t
        0x4bt
        0x3t
        0x54t
        0x43t
        0x14t
        0x5at
        0x56t
        0x12t
    .end array-data

    :array_1
    .array-data 1
        0x74t
        0x56t
        0x5dt
        0x59t
        0x54t
        0x51t
        0x12t
        0x43t
        0x5bt
        0x15t
        0x43t
        0x50t
        0x41t
        0x58t
        0x58t
        0x43t
        0x54t
        0x15t
        0x51t
        0x56t
        0x5at
        0x5at
        0x5ft
        0x5ct
        0x51t
        0x56t
        0x58t
        0x15t
        0x41t
        0x54t
        0x46t
        0x5ft
        0x14t
        0x53t
        0x5et
        0x47t
        0x12t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x65t
        0x5at
        0x0t
        0x7t
        0x58t
        0x56t
        0x10t
        0x40t
        0xet
        0x45t
        0x52t
        0x5at
        0x5et
        0x50t
        0x41t
        0x6t
        0x5bt
        0x5dt
        0x56t
        0x5dt
        0x6t
        0x10t
        0x46t
        0x56t
        0x54t
        0x14t
        0x13t
        0xat
        0x5bt
        0x47t
        0x10t
        0x52t
        0xet
        0x17t
        0x14t
    .end array-data
.end method

.method public getUriForFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v5, v1, :cond_4

    :cond_0
    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [B

    const/16 v4, 0x16

    aput-byte v4, v1, v8

    const-string v4, "96edc0"

    const-wide/32 v6, 0x7b6fcd09

    invoke-static {v1, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-array v0, v9, [B

    const/16 v2, 0x1f

    aput-byte v2, v0, v8

    const-string v2, "0ad2b2"

    invoke-static {v0, v2, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "40fcab"

    const/16 v4, 0x31cb

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    iget-object v2, p0, Landroidx/core/content/FileProvider$SimplePathStrategy;->mAuthority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2d

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "4eb713"

    const-wide v4, -0x3e323a2b52000000L    # -9.99008604E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x25

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "50b436"

    invoke-static {v1, v2, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    move-object v0, v2

    goto/16 :goto_1

    nop

    :array_0
    .array-data 1
        0x57t
        0x5ft
        0x8t
        0x17t
        0x4t
        0xct
        0x40t
    .end array-data

    :array_1
    .array-data 1
        0x72t
        0x4t
        0xbt
        0x5bt
        0x54t
        0x57t
        0x14t
        0x11t
        0xdt
        0x17t
        0x57t
        0x5at
        0x5at
        0x1t
        0x42t
        0x54t
        0x5et
        0x5dt
        0x52t
        0xct
        0x5t
        0x42t
        0x43t
        0x56t
        0x50t
        0x45t
        0x10t
        0x58t
        0x5et
        0x47t
        0x14t
        0x11t
        0xat
        0x56t
        0x45t
        0x13t
        0x57t
        0xat
        0xct
        0x43t
        0x50t
        0x5at
        0x5at
        0x16t
        0x42t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x73t
        0x51t
        0xbt
        0x58t
        0x56t
        0x52t
        0x15t
        0x44t
        0xdt
        0x14t
        0x41t
        0x53t
        0x46t
        0x5ft
        0xet
        0x42t
        0x56t
        0x16t
        0x56t
        0x51t
        0xct
        0x5bt
        0x5dt
        0x5ft
        0x56t
        0x51t
        0xet
        0x14t
        0x43t
        0x57t
        0x41t
        0x58t
        0x42t
        0x52t
        0x5ct
        0x44t
        0x15t
    .end array-data
.end method
