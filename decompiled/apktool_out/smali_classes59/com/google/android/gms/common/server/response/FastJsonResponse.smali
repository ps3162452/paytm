.class public abstract Lcom/google/android/gms/common/server/response/FastJsonResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;,
        Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final zaD(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zaf(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private final zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V
    .locals 6

    iget-object v1, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget v2, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v3, "eabe05"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    if-eqz v0, :cond_0

    check-cast v0, [B

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setDecodedBytesInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;[B)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaG(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setStringInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBooleanInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaG(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zab(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigDecimal;)V

    goto :goto_0

    :pswitch_5
    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zan(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;D)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaG(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setLongInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaG(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaf(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigInteger;)V

    goto :goto_0

    :pswitch_8
    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setIntegerInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaG(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 1
        0x30t
        0xft
        0x11t
        0x10t
        0x40t
        0x45t
        0xat
        0x13t
        0x16t
        0x0t
        0x54t
        0x15t
        0x11t
        0x18t
        0x12t
        0x0t
        0x10t
        0x53t
        0xat
        0x13t
        0x42t
        0x6t
        0x5ft
        0x5bt
        0x13t
        0x4t
        0x10t
        0x16t
        0x59t
        0x5at
        0xbt
        0x5bt
        0x42t
    .end array-data
.end method

.method private static final zaF(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zaa:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    new-array v0, v3, [B

    const/16 v1, 0x10

    aput-byte v1, v0, v2

    const-string v1, "2817bb"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/util/JsonUtils;->escapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v3, [B

    const/16 v1, 0x1a

    aput-byte v1, v0, v2

    const-string v1, "872dab"

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zag:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/response/FastJsonResponse;

    invoke-virtual {v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static final zaG(Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x10

    const/4 v3, 0x1

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    const-string v1, "15bf5a"

    const/4 v2, 0x0

    invoke-static {v0, v1, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "6c0598"

    const-wide/32 v4, 0x65a3706a

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "d6516f"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_3

    const-string v2, "a97827"

    const-wide v4, 0x41d58aeba1000000L    # 1.4457033E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x77t
        0x54t
        0x11t
        0x12t
        0x7ft
        0x12t
        0x5et
        0x5bt
        0x30t
        0x3t
        0x46t
        0x11t
        0x5et
        0x5bt
        0x11t
        0x3t
    .end array-data

    :array_1
    .array-data 1
        0x79t
        0x16t
        0x44t
        0x45t
        0x4ct
        0x4ct
        0x16t
        0x5t
        0x59t
        0x50t
        0x55t
        0x5ct
        0x16t
        0x4bt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x4dt
        0x16t
        0x5dt
        0x50t
        0x45t
        0x46t
        0x5t
        0x16t
        0x5bt
        0x44t
        0x5at
        0xat
        0x44t
        0x40t
        0x54t
        0x5dt
        0x43t
        0x3t
        0x48t
        0x16t
        0x57t
        0x44t
        0x42t
        0x46t
        0x1t
        0x4et
        0x45t
        0x54t
        0x55t
        0x12t
        0x1t
        0x52t
        0x15t
        0x50t
        0x16t
        0x16t
        0x16t
        0x5ft
        0x58t
        0x58t
        0x42t
        0xft
        0x12t
        0x53t
    .end array-data

    :array_3
    .array-data 1
        0x27t
        0x58t
        0x44t
        0x4ct
        0x78t
        0x44t
        0xet
        0x57t
        0x65t
        0x5dt
        0x41t
        0x47t
        0xet
        0x57t
        0x44t
        0x5dt
    .end array-data
.end method


# virtual methods
.method public addConcreteTypeArrayInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9ca435"

    const-wide/32 v4, 0x33fa430

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7at
        0xct
        0xft
        0x57t
        0x41t
        0x50t
        0x4dt
        0x6t
        0x41t
        0x40t
        0x4at
        0x45t
        0x5ct
        0x43t
        0x0t
        0x46t
        0x41t
        0x54t
        0x40t
        0x43t
        0xft
        0x5bt
        0x47t
        0x15t
        0x4at
        0x16t
        0x11t
        0x44t
        0x5ct
        0x47t
        0x4dt
        0x6t
        0x5t
    .end array-data
.end method

.method public addConcreteTypeInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Lcom/google/android/gms/common/server/response/FastJsonResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse;",
            ">(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x1b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7f07fb"

    const-wide/32 v4, -0x1bcfec88

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x74t
        0x9t
        0x5et
        0x54t
        0x14t
        0x7t
        0x43t
        0x3t
        0x10t
        0x43t
        0x1ft
        0x12t
        0x52t
        0x46t
        0x5et
        0x58t
        0x12t
        0x42t
        0x44t
        0x13t
        0x40t
        0x47t
        0x9t
        0x10t
        0x43t
        0x3t
        0x54t
    .end array-data
.end method

.method public abstract getFieldMappings()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;>;"
        }
    .end annotation
.end method

.method protected getFieldValue(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zag:Ljava/lang/Class;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getValueObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const/16 v4, 0x2c

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "1cdd4d"

    const-wide/32 v6, -0x327a4c5c

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    aput-object v5, v1, v2

    invoke-static {v0, v4, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zad:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "d72335"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getValueObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x72t
        0xct
        0xat
        0x7t
        0x46t
        0x1t
        0x45t
        0x6t
        0x44t
        0x2t
        0x5dt
        0x1t
        0x5dt
        0x7t
        0x44t
        0x17t
        0x5ct
        0xbt
        0x44t
        0xft
        0x0t
        0xat
        0x13t
        0x10t
        0x11t
        0x1t
        0x1t
        0x44t
        0x42t
        0x5t
        0x5dt
        0x16t
        0x1t
        0x44t
        0x5bt
        0x6t
        0x5bt
        0x6t
        0x7t
        0x10t
        0xet
        0x44t
        0x14t
        0x10t
    .end array-data

    :array_1
    .array-data 1
        0x3t
        0x52t
        0x46t
    .end array-data
.end method

.method protected abstract getValueObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected isFieldSet(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z
    .locals 5

    iget v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zad:Z

    iget-object v1, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "86a7a4"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/16 v0, 0x1c

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "4ddf00"

    const v3, 0x4eb81c0e

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->isPrimitiveFieldSet(Ljava/lang/String;)Z

    move-result v0

    return v0

    :array_0
    .array-data 1
        0x7bt
        0x59t
        0xft
        0x54t
        0x13t
        0x51t
        0x4ct
        0x53t
        0x41t
        0x43t
        0x18t
        0x44t
        0x5dt
        0x16t
        0x0t
        0x45t
        0x13t
        0x55t
        0x41t
        0x45t
        0x41t
        0x59t
        0xet
        0x40t
        0x18t
        0x45t
        0x14t
        0x47t
        0x11t
        0x5bt
        0x4at
        0x42t
        0x4t
        0x53t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x77t
        0xbt
        0xat
        0x5t
        0x42t
        0x55t
        0x40t
        0x1t
        0x44t
        0x12t
        0x49t
        0x40t
        0x51t
        0x17t
        0x44t
        0x8t
        0x5ft
        0x44t
        0x14t
        0x17t
        0x11t
        0x16t
        0x40t
        0x5ft
        0x46t
        0x10t
        0x1t
        0x2t
    .end array-data
.end method

.method protected abstract isPrimitiveFieldSet(Ljava/lang/String;)Z
.end method

.method protected setBooleanInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a5624e"

    const-wide v4, -0x3e44943059000000L    # -4.60050343E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x23t
        0x5at
        0x59t
        0x5et
        0x51t
        0x4t
        0xft
        0x15t
        0x58t
        0x5dt
        0x40t
        0x45t
        0x12t
        0x40t
        0x46t
        0x42t
        0x5bt
        0x17t
        0x15t
        0x50t
        0x52t
    .end array-data
.end method

.method protected setDecodedBytesInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "72a407"

    const/16 v3, -0x29c8

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x55t
        0x4bt
        0x15t
        0x51t
        0x6bt
        0x6at
        0x17t
        0x5ct
        0xet
        0x40t
        0x10t
        0x44t
        0x42t
        0x42t
        0x11t
        0x5bt
        0x42t
        0x43t
        0x52t
        0x56t
    .end array-data
.end method

.method protected setIntegerInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "70ba77"

    const/16 v3, -0x15d3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7et
        0x5et
        0x16t
        0x4t
        0x50t
        0x52t
        0x45t
        0x10t
        0xct
        0xet
        0x43t
        0x17t
        0x44t
        0x45t
        0x12t
        0x11t
        0x58t
        0x45t
        0x43t
        0x55t
        0x6t
    .end array-data
.end method

.method protected setLongInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7bfbd5"

    const-wide/32 v4, 0x203896b3

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x7bt
        0xdt
        0x8t
        0x5t
        0x44t
        0x5bt
        0x58t
        0x16t
        0x46t
        0x11t
        0x11t
        0x45t
        0x47t
        0xdt
        0x14t
        0x16t
        0x1t
        0x51t
    .end array-data
.end method

.method protected setStringInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f71fb8"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x35t
        0x43t
        0x43t
        0xft
        0xct
        0x5ft
        0x46t
        0x59t
        0x5et
        0x12t
        0x42t
        0x4bt
        0x13t
        0x47t
        0x41t
        0x9t
        0x10t
        0x4ct
        0x3t
        0x53t
    .end array-data
.end method

.method protected setStringMapInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d189ba"

    const/16 v3, -0x5d47

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x37t
        0x45t
        0x4at
        0x50t
        0xct
        0x6t
        0x44t
        0x5ct
        0x59t
        0x49t
        0x42t
        0xft
        0xbt
        0x45t
        0x18t
        0x4at
        0x17t
        0x11t
        0x14t
        0x5et
        0x4at
        0x4dt
        0x7t
        0x5t
    .end array-data
.end method

.method protected setStringsInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/server/response/FastJsonResponse$Field",
            "<**>;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "25cac7"

    const/16 v3, -0x4802

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x61t
        0x41t
        0x11t
        0x8t
        0xdt
        0x50t
        0x12t
        0x59t
        0xat
        0x12t
        0x17t
        0x17t
        0x5ct
        0x5at
        0x17t
        0x41t
        0x10t
        0x42t
        0x42t
        0x45t
        0xct
        0x13t
        0x17t
        0x52t
        0x56t
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 15

    const/16 v14, 0x64

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getFieldMappings()Ljava/util/Map;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->isFieldSet(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->getFieldValue(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaD(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_1

    new-array v7, v12, [B

    const/16 v8, 0x48

    aput-byte v8, v7, v3

    const-string v8, "3af646"

    invoke-static {v7, v8, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    new-array v7, v12, [B

    const/16 v8, 0x44

    aput-byte v8, v7, v3

    const-string v8, "f6c024"

    const-wide v10, 0x41dabdebdb000000L    # 1.794617196E9

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v13, [B

    fill-array-data v0, :array_0

    const-string v7, "1d5c7d"

    const/16 v8, 0x18db

    invoke-static {v0, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_2

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "f30ef2"

    invoke-static {v0, v1, v12, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-array v7, v12, [B

    const/16 v8, 0x4d

    aput-byte v8, v7, v3

    const-string v8, "a337a6"

    const-wide/32 v10, -0x1ed9da8

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    iget v0, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, v1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zab:Z

    if-eqz v0, :cond_6

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    new-array v2, v12, [B

    const/16 v7, 0x3a

    aput-byte v7, v2, v3

    const-string v7, "af1558"

    const/16 v8, 0x7af

    invoke-static {v2, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v2, v3

    :goto_2
    if-ge v2, v7, :cond_5

    if-lez v2, :cond_3

    new-array v8, v12, [B

    const/16 v9, 0x18

    aput-byte v9, v8, v3

    const-string v9, "4e5235"

    invoke-static {v8, v9, v12, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-static {v5, v1, v8}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaF(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :pswitch_0
    check-cast v2, Ljava/util/HashMap;

    invoke-static {v5, v2}, Lcom/google/android/gms/common/util/MapUtils;->writeStringMapToJson(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :pswitch_1
    new-array v0, v12, [B

    const/16 v1, 0x47

    aput-byte v1, v0, v3

    const-string v1, "e91a53"

    invoke-static {v0, v1, v12}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/android/gms/common/util/Base64Utils;->encodeUrlSafe([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v12, [B

    const/16 v1, 0x15

    aput-byte v1, v0, v3

    const-string v1, "7d6a9f"

    const-wide v8, 0x41a5198470000000L    # 1.7699692E8

    invoke-static {v0, v1, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :pswitch_2
    new-array v0, v12, [B

    const/16 v1, 0x46

    aput-byte v1, v0, v3

    const-string v1, "d83638"

    const-wide/32 v8, -0x4ee3883

    invoke-static {v0, v1, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/android/gms/common/util/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v12, [B

    const/16 v1, 0x40

    aput-byte v1, v0, v3

    const-string v1, "b11608"

    const-wide/32 v8, 0x49a59afc

    invoke-static {v0, v1, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    new-array v0, v12, [B

    aput-byte v14, v0, v3

    const-string v1, "94781c"

    const-wide/32 v8, 0x1a3c2960

    invoke-static {v0, v1, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_6
    invoke-static {v5, v1, v2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaF(Ljava/lang/StringBuilder;Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_8

    new-array v0, v12, [B

    const/16 v1, 0x19

    aput-byte v1, v0, v3

    const-string v1, "db4459"

    const v2, -0x31ca4f69

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    new-array v0, v13, [B

    fill-array-data v0, :array_2

    const-string v1, "72590d"

    const-wide v2, -0x3e2754d0cfc00000L    # -1.655487681E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :array_0
    .array-data 1
        0x13t
        0x5et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x8t
        0x46t
        0x5ct
        0x9t
    .end array-data

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_2
    .array-data 1
        0x4ct
        0x4ft
    .end array-data
.end method

.method public final zaA(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setStringInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final zaB(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/Map;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setStringMapInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public final zaC(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setStringsInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public final zaa(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigDecimal;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zab(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigDecimal;)V

    goto :goto_0
.end method

.method protected zab(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigDecimal;)V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "1241c6"

    const v3, -0x31776d2f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x73t
        0x5bt
        0x53t
        0x75t
        0x6t
        0x55t
        0x58t
        0x5ft
        0x55t
        0x5dt
        0x43t
        0x58t
        0x5et
        0x46t
        0x14t
        0x42t
        0x16t
        0x46t
        0x41t
        0x5dt
        0x46t
        0x45t
        0x6t
        0x52t
    .end array-data
.end method

.method public final zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zad(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected zad(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b4a51b"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x20t
        0x5dt
        0x6t
        0x71t
        0x54t
        0x1t
        0xbt
        0x59t
        0x0t
        0x59t
        0x11t
        0xet
        0xbt
        0x47t
        0x15t
        0x15t
        0x5ft
        0xdt
        0x16t
        0x14t
        0x12t
        0x40t
        0x41t
        0x12t
        0xdt
        0x46t
        0x15t
        0x50t
        0x55t
    .end array-data
.end method

.method public final zae(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/math/BigInteger;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaf(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigInteger;)V

    goto :goto_0
.end method

.method protected zaf(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "413386"

    const/16 v3, -0x29cd

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x76t
        0x58t
        0x54t
        0x7at
        0x56t
        0x42t
        0x51t
        0x56t
        0x56t
        0x41t
        0x18t
        0x58t
        0x5bt
        0x45t
        0x13t
        0x40t
        0x4dt
        0x46t
        0x44t
        0x5et
        0x41t
        0x47t
        0x5dt
        0x52t
    .end array-data
.end method

.method public final zag(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zah(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected zah(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x1d

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a5f678"

    const/16 v3, 0x2268

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x23t
        0x5ct
        0x1t
        0x7ft
        0x59t
        0x4ct
        0x4t
        0x52t
        0x3t
        0x44t
        0x17t
        0x54t
        0x8t
        0x46t
        0x12t
        0x16t
        0x59t
        0x57t
        0x15t
        0x15t
        0x15t
        0x43t
        0x47t
        0x48t
        0xet
        0x47t
        0x12t
        0x53t
        0x53t
    .end array-data
.end method

.method public final zai(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Z)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setBooleanInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final zaj(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zak(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected zak(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b443f5"

    const v3, 0x4e392c3a    # 7.7667085E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x20t
        0x5bt
        0x5bt
        0x5ft
        0x3t
        0x54t
        0xct
        0x14t
        0x58t
        0x5at
        0x15t
        0x41t
        0x42t
        0x5at
        0x5bt
        0x47t
        0x46t
        0x46t
        0x17t
        0x44t
        0x44t
        0x5ct
        0x14t
        0x41t
        0x7t
        0x50t
    .end array-data
.end method

.method public final zal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;[B)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setDecodedBytesInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public final zam(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;D)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zan(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;D)V

    goto :goto_0
.end method

.method protected zan(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;D)V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x14

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "20b410"

    const/16 v3, 0x134f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x76t
        0x5ft
        0x17t
        0x56t
        0x5dt
        0x55t
        0x12t
        0x5et
        0xdt
        0x40t
        0x11t
        0x43t
        0x47t
        0x40t
        0x12t
        0x5bt
        0x43t
        0x44t
        0x57t
        0x54t
    .end array-data
.end method

.method public final zao(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zap(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected zap(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "483095"

    const/16 v3, -0x6572

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x70t
        0x57t
        0x46t
        0x52t
        0x55t
        0x50t
        0x14t
        0x54t
        0x5at
        0x43t
        0x4dt
        0x15t
        0x5at
        0x57t
        0x47t
        0x10t
        0x4at
        0x40t
        0x44t
        0x48t
        0x5ct
        0x42t
        0x4dt
        0x50t
        0x50t
    .end array-data
.end method

.method public final zaq(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;F)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zar(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;F)V

    goto :goto_0
.end method

.method protected zar(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;F)V
    .locals 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "92cd6c"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7ft
        0x5et
        0xct
        0x5t
        0x42t
        0x43t
        0x57t
        0x5dt
        0x17t
        0x44t
        0x45t
        0x16t
        0x49t
        0x42t
        0xct
        0x16t
        0x42t
        0x6t
        0x5dt
    .end array-data
.end method

.method public final zas(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zat(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected zat(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 6

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "af9a78"

    const-wide v4, -0x3e3cafc8f8800000L    # -6.48048143E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x27t
        0xat
        0x56t
        0x0t
        0x43t
        0x18t
        0xdt
        0xft
        0x4at
        0x15t
        0x17t
        0x56t
        0xet
        0x12t
        0x19t
        0x12t
        0x42t
        0x48t
        0x11t
        0x9t
        0x4bt
        0x15t
        0x52t
        0x5ct
    .end array-data
.end method

.method public final zau(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;I)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setIntegerInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final zav(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaw(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected zaw(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "01d4b8"

    const/16 v3, 0x574

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x79t
        0x5ft
        0x10t
        0x51t
        0x5t
        0x5dt
        0x42t
        0x11t
        0x8t
        0x5dt
        0x11t
        0x4ct
        0x10t
        0x5ft
        0xbt
        0x40t
        0x42t
        0x4bt
        0x45t
        0x41t
        0x14t
        0x5bt
        0x10t
        0x4ct
        0x55t
        0x55t
    .end array-data
.end method

.method public final zax(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;J)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->setLongInternal(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public final zay(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/util/ArrayList;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zac(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$FieldConverter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaE(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->zae:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/gms/common/server/response/FastJsonResponse;->zaz(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected zaz(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f7a5e5"

    const/16 v3, -0x7f0f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x2at
        0x58t
        0xft
        0x52t
        0x45t
        0x59t
        0xft
        0x44t
        0x15t
        0x15t
        0xbt
        0x5at
        0x12t
        0x17t
        0x12t
        0x40t
        0x15t
        0x45t
        0x9t
        0x45t
        0x15t
        0x50t
        0x1t
    .end array-data
.end method
