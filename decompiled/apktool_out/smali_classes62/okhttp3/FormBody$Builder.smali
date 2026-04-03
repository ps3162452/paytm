.class public final Lokhttp3/FormBody$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/FormBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lokhttp3/FormBody$Builder;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/FormBody$Builder;->names:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lokhttp3/FormBody$Builder;->values:Ljava/util/List;

    iput-object p1, p0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 11

    const/16 v10, 0x1b

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v7, p0, Lokhttp3/FormBody$Builder;->names:Ljava/util/List;

    new-array v0, v10, [B

    fill-array-data v0, :array_0

    const-string v1, "40df62"

    const-wide/32 v8, 0x7c0f1917

    invoke-static {v0, v1, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    move-object v0, p1

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lokhttp3/FormBody$Builder;->values:Ljava/util/List;

    new-array v0, v10, [B

    fill-array-data v0, :array_1

    const-string v1, "b228bc"

    const/16 v3, -0x6337

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    move-object v0, p2

    move v3, v2

    move v5, v4

    invoke-static/range {v0 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :array_0
    .array-data 1
        0x14t
        0x12t
        0x43t
        0x5ct
        0xdt
        0xet
        0x9t
        0xet
        0x24t
        0x3dt
        0x6bt
        0x6ct
        0x54t
        0x4bt
        0x19t
        0x1at
        0x19t
        0x6et
        0xbt
        0x13t
        0x42t
        0x47t
        0x12t
        0x1at
        0x1dt
        0x1ct
        0x1at
    .end array-data

    :array_1
    .array-data 1
        0x42t
        0x10t
        0x15t
        0x2t
        0x59t
        0x5ft
        0x5ft
        0xct
        0x72t
        0x63t
        0x3ft
        0x3dt
        0x2t
        0x49t
        0x4ft
        0x44t
        0x4dt
        0x3ft
        0x5dt
        0x11t
        0x14t
        0x19t
        0x46t
        0x4bt
        0x4bt
        0x1et
        0x4ct
    .end array-data
.end method

.method public addEncoded(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;
    .locals 9

    const/16 v8, 0x1b

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v7, p0, Lokhttp3/FormBody$Builder;->names:Ljava/util/List;

    new-array v0, v8, [B

    fill-array-data v0, :array_0

    const-string v1, "8931b8"

    const-wide/32 v4, -0x278f489c

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lokhttp3/FormBody$Builder;->values:Ljava/util/List;

    new-array v0, v8, [B

    fill-array-data v0, :array_1

    const-string v1, "29f4be"

    const-wide/32 v4, -0x1439358c

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lokhttp3/FormBody$Builder;->charset:Ljava/nio/charset/Charset;

    move-object v0, p2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v6}, Lokhttp3/HttpUrl;->canonicalize(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    nop

    :array_0
    .array-data 1
        0x18t
        0x1bt
        0x14t
        0xbt
        0x59t
        0x4t
        0x5t
        0x7t
        0x73t
        0x6at
        0x3ft
        0x66t
        0x58t
        0x42t
        0x4et
        0x4dt
        0x4dt
        0x64t
        0x7t
        0x1at
        0x15t
        0x10t
        0x46t
        0x10t
        0x11t
        0x15t
        0x4dt
    .end array-data

    :array_1
    .array-data 1
        0x12t
        0x1bt
        0x41t
        0xet
        0x59t
        0x59t
        0xft
        0x7t
        0x26t
        0x6ft
        0x3ft
        0x3bt
        0x52t
        0x42t
        0x1bt
        0x48t
        0x4dt
        0x39t
        0xdt
        0x1at
        0x40t
        0x15t
        0x46t
        0x4dt
        0x1bt
        0x15t
        0x18t
    .end array-data
.end method

.method public build()Lokhttp3/FormBody;
    .locals 3

    new-instance v0, Lokhttp3/FormBody;

    iget-object v1, p0, Lokhttp3/FormBody$Builder;->names:Ljava/util/List;

    iget-object v2, p0, Lokhttp3/FormBody$Builder;->values:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lokhttp3/FormBody;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method
