.class public final Lokhttp3/MediaType;
.super Ljava/lang/Object;


# static fields
.field private static final PARAMETER:Ljava/util/regex/Pattern;

.field private static final QUOTED:Ljava/lang/String;

.field private static final TOKEN:Ljava/lang/String;

.field private static final TYPE_SUBTYPE:Ljava/util/regex/Pattern;


# instance fields
.field private final charset:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mediaType:Ljava/lang/String;

.field private final subtype:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d2271b"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/MediaType;->QUOTED:Ljava/lang/String;

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "7271c6"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lokhttp3/MediaType;->TOKEN:Ljava/lang/String;

    const/16 v0, 0x3f

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "801b73"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    const/16 v0, 0x56

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "4ca76f"

    const-wide/32 v2, -0x65040900

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 1
        0x46t
        0x1at
        0x69t
        0x69t
        0x13t
        0x3ft
        0x4et
        0x1bt
        0x10t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1ft
        0x69t
        0x56t
        0x1ct
        0x19t
        0x77t
        0x1at
        0x68t
        0x7t
        0x1ct
        0x5at
        0x1bt
        0x16t
        0x11t
        0x13t
        0x14t
        0x45t
        0x11t
        0x1dt
        0x19t
        0x19t
        0x6ft
        0x3ct
        0x56t
        0x4ct
        0x4et
        0x4at
        0x4ft
        0x3et
        0x1dt
        0x1et
    .end array-data

    :array_2
    .array-data 1
        0x10t
        0x6bt
        0x50t
        0x4ft
        0x4dt
        0x72t
        0x15t
        0x6at
        0x1t
        0x4ft
        0xet
        0x1et
        0x19t
        0x13t
        0x15t
        0x47t
        0x11t
        0x14t
        0x12t
        0x1bt
        0x1ft
        0x3ct
        0x68t
        0x53t
        0x43t
        0x4ct
        0x4ct
        0x1ct
        0x6at
        0x18t
        0x11t
        0x1ft
        0x19t
        0x39t
        0x56t
        0x1et
        0x42t
        0x71t
        0x1ct
        0x38t
        0x7t
        0x1et
        0x1t
        0x1dt
        0x10t
        0x41t
        0x13t
        0x16t
        0x1et
        0x17t
        0x1bt
        0x49t
        0x19t
        0x6dt
        0x67t
        0x50t
        0x4at
        0x1et
        0x4at
        0x4dt
        0x65t
        0x1bt
        0x18t
    .end array-data

    :array_3
    .array-data 1
        0xft
        0x3ft
        0x12t
        0x1dt
        0x1et
        0x59t
        0xet
        0x4bt
        0x3at
        0x56t
        0x1bt
        0x1ct
        0x75t
        0x4et
        0x3bt
        0x7t
        0x1bt
        0x5ft
        0x19t
        0x42t
        0x42t
        0x13t
        0x13t
        0x40t
        0x13t
        0x49t
        0x4at
        0x19t
        0x68t
        0x39t
        0x54t
        0x18t
        0x1dt
        0x4at
        0x48t
        0x3bt
        0x1ft
        0x4at
        0x5ct
        0x1ft
        0x9t
        0x5ct
        0x1ct
        0x38t
        0x0t
        0x1at
        0x4ct
        0x27t
        0x19t
        0x39t
        0x51t
        0x1at
        0xft
        0x4bt
        0x15t
        0x40t
        0x45t
        0x12t
        0x10t
        0x41t
        0x1et
        0x48t
        0x4ft
        0x69t
        0x69t
        0x6t
        0x4ft
        0x1ft
        0x1ct
        0x49t
        0x6bt
        0x4dt
        0x1dt
        0x1ft
        0x43t
        0x1ft
        0x6dt
        0x38t
        0x16t
        0x3et
        0x4bt
        0x1et
        0x14t
        0x4ft
        0x1dt
        0x5ct
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    iput-object p2, p0, Lokhttp3/MediaType;->type:Ljava/lang/String;

    iput-object p3, p0, Lokhttp3/MediaType;->subtype:Ljava/lang/String;

    iput-object p4, p0, Lokhttp3/MediaType;->charset:Ljava/lang/String;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lokhttp3/MediaType;
    .locals 12
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v2, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    sget-object v0, Lokhttp3/MediaType;->TYPE_SUBTYPE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v1, Lokhttp3/MediaType;->PARAMETER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    move-object v1, v2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v6, 0x7

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    const-string v7, "6038c2"

    const/16 v8, -0x373d

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    new-array v6, v9, [B

    const/16 v7, 0x46

    aput-byte v7, v6, v10

    const-string v7, "a2d317"

    invoke-static {v6, v7, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-array v6, v9, [B

    const/16 v7, 0x1f

    aput-byte v7, v6, v10

    const-string v7, "800762"

    const v8, -0x3125b9ff

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v11, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    move-object v1, v0

    goto :goto_2

    :cond_6
    const/4 v0, 0x3

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    new-instance v2, Lokhttp3/MediaType;

    invoke-direct {v2, p0, v3, v4, v1}, Lokhttp3/MediaType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x55t
        0x58t
        0x52t
        0x4at
        0x10t
        0x57t
        0x42t
    .end array-data
.end method


# virtual methods
.method public charset()Ljava/nio/charset/Charset;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .locals 1
    .param p1    # Ljava/nio/charset/Charset;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lokhttp3/MediaType;->charset:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/MediaType;->charset:Ljava/lang/String;

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lokhttp3/MediaType;

    if-eqz v0, :cond_0

    check-cast p1, Lokhttp3/MediaType;

    iget-object v0, p1, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    iget-object v1, p0, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public subtype()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/MediaType;->subtype:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/MediaType;->mediaType:Ljava/lang/String;

    return-object v0
.end method

.method public type()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lokhttp3/MediaType;->type:Ljava/lang/String;

    return-object v0
.end method
