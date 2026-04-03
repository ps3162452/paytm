.class public final enum Lokhttp3/TlsVersion;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lokhttp3/TlsVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lokhttp3/TlsVersion;

.field public static final enum SSL_3_0:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_0:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_1:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_2:Lokhttp3/TlsVersion;

.field public static final enum TLS_1_3:Lokhttp3/TlsVersion;


# instance fields
.field final javaName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x7

    new-instance v0, Lokhttp3/TlsVersion;

    new-array v1, v6, [B

    fill-array-data v1, :array_0

    const-string v2, "37edf8"

    const-wide v4, -0x3e2025b047000000L    # -2.137603812E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    const-string v3, "8b64a9"

    invoke-static {v2, v3, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    new-instance v0, Lokhttp3/TlsVersion;

    new-array v1, v6, [B

    fill-array-data v1, :array_2

    const-string v2, "164686"

    const-wide v4, -0x3e3d6434f0000000L    # -6.24399904E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_3

    const-string v3, "dc490e"

    const v4, 0x4ecb3cf2    # 1.7048845E9f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v9, v2}, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    new-instance v0, Lokhttp3/TlsVersion;

    new-array v1, v6, [B

    fill-array-data v1, :array_4

    const-string v2, "5cecd9"

    invoke-static {v1, v2, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [B

    fill-array-data v2, :array_5

    const-string v3, "086ebd"

    invoke-static {v2, v3, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v11, v2}, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    new-instance v0, Lokhttp3/TlsVersion;

    new-array v1, v6, [B

    fill-array-data v1, :array_6

    const-string v2, "911af0"

    const-wide/32 v4, -0x5b4eaec8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v3, v10, [B

    fill-array-data v3, :array_7

    const-string v4, "5be759"

    const v5, 0x4eb94532

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    new-instance v0, Lokhttp3/TlsVersion;

    new-array v1, v6, [B

    fill-array-data v1, :array_8

    const-string v2, "1172bf"

    const-wide/32 v4, -0x4e612f8c

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v3, v10, [B

    fill-array-data v3, :array_9

    const-string v4, "ae929f"

    const-wide v6, -0x3e343a7dee800000L    # -9.31857443E8

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lokhttp3/TlsVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    new-array v0, v10, [Lokhttp3/TlsVersion;

    sget-object v1, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    aput-object v1, v0, v8

    sget-object v1, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    aput-object v1, v0, v9

    sget-object v1, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    aput-object v1, v0, v11

    const/4 v1, 0x3

    sget-object v2, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    aput-object v2, v0, v1

    sput-object v0, Lokhttp3/TlsVersion;->$VALUES:[Lokhttp3/TlsVersion;

    return-void

    :array_0
    .array-data 1
        0x67t
        0x7bt
        0x36t
        0x3bt
        0x57t
        0x67t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x6ct
        0x2et
        0x65t
        0x42t
        0x50t
        0x17t
        0xbt
    .end array-data

    :array_2
    .array-data 1
        0x65t
        0x7at
        0x67t
        0x69t
        0x9t
        0x69t
        0x3t
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x2ft
        0x67t
        0x4ft
        0x1t
        0x4bt
        0x56t
    .end array-data

    :array_4
    .array-data 1
        0x61t
        0x2ft
        0x36t
        0x3ct
        0x55t
        0x66t
        0x4t
    .end array-data

    :array_5
    .array-data 1
        0x64t
        0x74t
        0x65t
        0x13t
        0x53t
        0x4at
        0x1t
    .end array-data

    :array_6
    .array-data 1
        0x6dt
        0x7dt
        0x62t
        0x3et
        0x57t
        0x6ft
        0x9t
    .end array-data

    :array_7
    .array-data 1
        0x61t
        0x2et
        0x36t
        0x41t
        0x4t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x62t
        0x62t
        0x7bt
        0x6dt
        0x51t
        0x39t
        0x1t
    .end array-data

    :array_9
    .array-data 1
        0x32t
        0x36t
        0x75t
        0x44t
        0xat
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    return-void
.end method

.method public static forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;
    .locals 6

    const/4 v4, 0x5

    const/4 v3, 0x7

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "c51368"

    const-wide v4, -0x3e708ba360000000L    # -6.5964948E7

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-array v2, v3, [B

    fill-array-data v2, :array_1

    const-string v3, "7876ad"

    const-wide/32 v4, -0x70f5f85

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :sswitch_1
    new-array v2, v3, [B

    fill-array-data v2, :array_2

    const-string v3, "9a0e1f"

    invoke-static {v2, v3, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    new-array v0, v3, [B

    fill-array-data v0, :array_3

    const-string v2, "fcd76f"

    const-wide v4, 0x41d34297ad000000L    # 1.292525236E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    new-array v2, v4, [B

    fill-array-data v2, :array_4

    const-string v3, "745796"

    invoke-static {v2, v3, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    new-array v0, v4, [B

    fill-array-data v0, :array_5

    const-string v2, "ceba2c"

    const v3, -0x3181a49a

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_0

    :pswitch_0
    sget-object v0, Lokhttp3/TlsVersion;->TLS_1_3:Lokhttp3/TlsVersion;

    :goto_1
    return-object v0

    :pswitch_1
    sget-object v0, Lokhttp3/TlsVersion;->TLS_1_2:Lokhttp3/TlsVersion;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lokhttp3/TlsVersion;->TLS_1_1:Lokhttp3/TlsVersion;

    goto :goto_1

    :pswitch_3
    sget-object v0, Lokhttp3/TlsVersion;->TLS_1_0:Lokhttp3/TlsVersion;

    goto :goto_1

    :pswitch_4
    sget-object v0, Lokhttp3/TlsVersion;->SSL_3_0:Lokhttp3/TlsVersion;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1dfc3f27 -> :sswitch_2
        -0x1dfc3f26 -> :sswitch_1
        -0x1dfc3f25 -> :sswitch_0
        0x4b88569 -> :sswitch_4
        0x4c38896 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :array_0
    .array-data 1
        0x36t
        0x5bt
        0x54t
        0x4bt
        0x46t
        0x5dt
        0x0t
        0x41t
        0x54t
        0x57t
        0x16t
        0x6ct
        0x2ft
        0x66t
        0x11t
        0x45t
        0x53t
        0x4at
        0x10t
        0x5ct
        0x5et
        0x5dt
        0xct
        0x18t
    .end array-data

    :array_1
    .array-data 1
        0x63t
        0x74t
        0x64t
        0x40t
        0x50t
        0x4at
        0x4t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x2dt
        0x63t
        0x13t
        0x0t
        0x48t
        0xbt
    .end array-data

    :array_3
    .array-data 1
        0x32t
        0x2ft
        0x37t
        0x41t
        0x7t
        0x48t
        0x57t
    .end array-data

    :array_4
    .array-data 1
        0x63t
        0x78t
        0x66t
        0x41t
        0x8t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x30t
        0x36t
        0x2et
        0x17t
        0x1t
    .end array-data
.end method

.method static varargs forJavaNames([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/TlsVersion;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    invoke-static {v3}, Lokhttp3/TlsVersion;->forJavaName(Ljava/lang/String;)Lokhttp3/TlsVersion;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lokhttp3/TlsVersion;
    .locals 1

    const-class v0, Lokhttp3/TlsVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lokhttp3/TlsVersion;

    return-object v0
.end method

.method public static values()[Lokhttp3/TlsVersion;
    .locals 1

    sget-object v0, Lokhttp3/TlsVersion;->$VALUES:[Lokhttp3/TlsVersion;

    invoke-virtual {v0}, [Lokhttp3/TlsVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/TlsVersion;

    return-object v0
.end method


# virtual methods
.method public javaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/TlsVersion;->javaName:Ljava/lang/String;

    return-object v0
.end method
