.class Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/components/ComponentDiscovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MetadataRegistrarNameRetriever"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/components/ComponentDiscovery$RegistrarNameRetriever",
        "<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final discoveryService:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;->discoveryService:Ljava/lang/Class;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Lcom/google/firebase/components/ComponentDiscovery$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method private getMetadata(Landroid/content/Context;)Landroid/os/Bundle;
    .locals 7

    const/4 v0, 0x0

    const/16 v6, 0x12

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b9cc44"

    const-wide/32 v4, 0x62813331

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "f11384"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;->discoveryService:Ljava/lang/Class;

    invoke-direct {v2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x12

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "323a38"

    const-wide/32 v4, 0xb9d1f97

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;->discoveryService:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x15

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "4b6e9a"

    const v5, 0x4ea026dc

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-array v1, v6, [B

    fill-array-data v1, :array_4

    const-string v2, "462849"

    const-wide/32 v4, -0x3fa33d4d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v3, "250f06"

    const/16 v4, 0x4595

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :array_0
    .array-data 1
        0x21t
        0x56t
        0xet
        0x13t
        0x5bt
        0x5at
        0x7t
        0x57t
        0x17t
        0x27t
        0x5dt
        0x47t
        0x1t
        0x56t
        0x15t
        0x6t
        0x46t
        0x4dt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x25t
        0x5et
        0x5ft
        0x47t
        0x5dt
        0x4ct
        0x12t
        0x11t
        0x59t
        0x52t
        0x4bt
        0x14t
        0x8t
        0x5et
        0x11t
        0x63t
        0x59t
        0x57t
        0xdt
        0x50t
        0x56t
        0x56t
        0x75t
        0x55t
        0x8t
        0x50t
        0x56t
        0x56t
        0x4at
        0x1at
    .end array-data

    nop

    :array_2
    .array-data 1
        0x70t
        0x5dt
        0x5et
        0x11t
        0x5ct
        0x56t
        0x56t
        0x5ct
        0x47t
        0x25t
        0x5at
        0x4bt
        0x50t
        0x5dt
        0x45t
        0x4t
        0x41t
        0x41t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x14t
        0xat
        0x57t
        0x16t
        0x19t
        0xft
        0x5bt
        0x42t
        0x45t
        0x0t
        0x4bt
        0x17t
        0x5dt
        0x1t
        0x53t
        0x45t
        0x50t
        0xft
        0x52t
        0xdt
        0x18t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x77t
        0x59t
        0x5ft
        0x48t
        0x5bt
        0x57t
        0x51t
        0x58t
        0x46t
        0x7ct
        0x5dt
        0x4at
        0x57t
        0x59t
        0x44t
        0x5dt
        0x46t
        0x40t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x73t
        0x45t
        0x40t
        0xat
        0x59t
        0x55t
        0x53t
        0x41t
        0x59t
        0x9t
        0x5et
        0x16t
        0x5bt
        0x5bt
        0x56t
        0x9t
        0x10t
        0x58t
        0x5dt
        0x41t
        0x10t
        0x0t
        0x5ft
        0x43t
        0x5ct
        0x51t
        0x1et
    .end array-data
.end method


# virtual methods
.method public retrieve(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v8, 0x1f

    const/4 v7, 0x0

    invoke-direct {p0, p1}, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;->getMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    const/16 v0, 0x12

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "43862e"

    const-wide/32 v2, 0x754f6cea

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "868a66"

    invoke-static {v1, v2, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x31

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "76a5eb"

    const v6, -0x312a5dd4

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-array v4, v8, [B

    fill-array-data v4, :array_3

    const-string v5, "dab610"

    invoke-static {v4, v5, v7, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-array v4, v8, [B

    fill-array-data v4, :array_4

    const-string v5, "730526"

    const/4 v6, 0x1

    invoke-static {v4, v5, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    :array_0
    .array-data 1
        0x77t
        0x5ct
        0x55t
        0x46t
        0x5dt
        0xbt
        0x51t
        0x5dt
        0x4ct
        0x72t
        0x5bt
        0x16t
        0x57t
        0x5ct
        0x4et
        0x53t
        0x40t
        0x1ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7bt
        0x59t
        0x4dt
        0xdt
        0x52t
        0x16t
        0x56t
        0x59t
        0x4ct
        0x41t
        0x44t
        0x53t
        0x4ct
        0x44t
        0x51t
        0x4t
        0x40t
        0x53t
        0x18t
        0x5bt
        0x5dt
        0x15t
        0x57t
        0x52t
        0x59t
        0x42t
        0x59t
        0x4dt
        0x16t
        0x44t
        0x5dt
        0x42t
        0x4dt
        0x13t
        0x58t
        0x5ft
        0x56t
        0x51t
        0x18t
        0x4t
        0x5bt
        0x46t
        0x4ct
        0x4ft
        0x18t
        0xdt
        0x5ft
        0x45t
        0x4ct
        0x16t
        0x57t
        0x7t
        0x16t
        0x44t
        0x5dt
        0x51t
        0x51t
        0x12t
        0x42t
        0x44t
        0x59t
        0x44t
        0x4bt
        0x4ft
    .end array-data

    :array_2
    .array-data 1
        0x54t
        0x59t
        0xct
        0x1bt
        0x2t
        0xdt
        0x58t
        0x51t
        0xdt
        0x50t
        0x4bt
        0x4t
        0x5et
        0x44t
        0x4t
        0x57t
        0x4t
        0x11t
        0x52t
        0x18t
        0x2t
        0x5at
        0x8t
        0x12t
        0x58t
        0x58t
        0x4t
        0x5bt
        0x11t
        0x11t
        0x19t
        0x75t
        0xet
        0x58t
        0x15t
        0xdt
        0x59t
        0x53t
        0xft
        0x41t
        0x37t
        0x7t
        0x50t
        0x5ft
        0x12t
        0x41t
        0x17t
        0x3t
        0x45t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x7t
        0xet
        0xft
        0x18t
        0x56t
        0x5ft
        0xbt
        0x6t
        0xet
        0x53t
        0x1ft
        0x56t
        0xdt
        0x13t
        0x7t
        0x54t
        0x50t
        0x43t
        0x1t
        0x4ft
        0x1t
        0x59t
        0x5ct
        0x40t
        0xbt
        0xft
        0x7t
        0x58t
        0x45t
        0x43t
        0x5et
    .end array-data

    :array_4
    .array-data 1
        0x54t
        0x5ct
        0x5dt
        0x1bt
        0x55t
        0x59t
        0x58t
        0x54t
        0x5ct
        0x50t
        0x1ct
        0x50t
        0x5et
        0x41t
        0x55t
        0x57t
        0x53t
        0x45t
        0x52t
        0x1dt
        0x53t
        0x5at
        0x5ft
        0x46t
        0x58t
        0x5dt
        0x55t
        0x5bt
        0x46t
        0x45t
        0xdt
    .end array-data
.end method

.method public bridge synthetic retrieve(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/google/firebase/components/ComponentDiscovery$MetadataRegistrarNameRetriever;->retrieve(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
