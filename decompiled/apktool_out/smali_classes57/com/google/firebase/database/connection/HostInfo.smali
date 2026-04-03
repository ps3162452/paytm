.class public Lcom/google/firebase/database/connection/HostInfo;
.super Ljava/lang/Object;


# static fields
.field private static final LAST_SESSION_ID_PARAM:Ljava/lang/String;

.field private static final VERSION_PARAM:Ljava/lang/String;


# instance fields
.field private final host:Ljava/lang/String;

.field private final namespace:Ljava/lang/String;

.field private final secure:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "bd722b"

    const-wide/32 v2, -0x57f0282

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/HostInfo;->LAST_SESSION_ID_PARAM:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const-string v1, "a8582b"

    const-wide/32 v2, 0x461945af

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/connection/HostInfo;->VERSION_PARAM:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0xet
        0x17t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/HostInfo;->host:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/database/connection/HostInfo;->namespace:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/firebase/database/connection/HostInfo;->secure:Z

    return-void
.end method

.method public static getConnectionUrl(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 8

    const/4 v3, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v1, "94472c"

    invoke-static {v0, v1, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    const-string v2, "472073"

    invoke-static {v1, v2, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "9ce3a1"

    const v3, 0x4e4076d6    # 8.072534E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v7, [B

    const/16 v2, 0x42

    aput-byte v2, v1, v6

    const-string v2, "d042ba"

    const/16 v3, -0x6ca6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/connection/HostInfo;->VERSION_PARAM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v7, [B

    const/16 v2, 0xd

    aput-byte v2, v1, v6

    const-string v2, "0b2f35"

    const-wide/32 v4, 0xae6ff18

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v7, [B

    const/4 v2, 0x7

    aput-byte v2, v1, v6

    const-string v2, "29bdbc"

    const-wide/32 v4, -0x31f82e03

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "a48cf3"

    const/16 v3, 0x1840

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "01bf65"

    const/16 v2, -0x6abb

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x4et
        0x47t
        0x47t
    .end array-data

    :array_1
    .array-data 1
        0xet
        0x18t
        0x1dt
    .end array-data

    :array_2
    .array-data 1
        0x16t
        0x4dt
        0x12t
        0x40t
        0x5et
        0x5ft
        0x4at
        0x5et
    .end array-data

    :array_3
    .array-data 1
        0x47t
        0x58t
        0x4bt
        0x5et
    .end array-data

    :array_4
    .array-data 1
        0x47t
        0x42t
    .end array-data
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/HostInfo;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/HostInfo;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public isSecure()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/firebase/database/connection/HostInfo;->secure:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ba6201"

    const/16 v3, 0x1288

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/google/firebase/database/connection/HostInfo;->secure:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x46

    aput-byte v3, v0, v2

    const-string v2, "58b82c"

    const-wide v4, 0x41d7658918c00000L    # 1.570120803E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "3ac5ed"

    const-wide v4, -0x3e2620a25a000000L    # -1.736275608E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/connection/HostInfo;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0xat
        0x15t
        0x42t
        0x42t
    .end array-data

    :array_1
    .array-data 1
        0x9t
        0x4et
        0x4ct
    .end array-data
.end method
