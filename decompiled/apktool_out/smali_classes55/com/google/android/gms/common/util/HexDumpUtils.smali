.class public final Lcom/google/android/gms/common/util/HexDumpUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([BIIZ)Ljava/lang/String;
    .locals 9
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    if-eqz p0, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lez p2, :cond_0

    add-int v1, p1, p2

    if-le v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    if-eqz p3, :cond_4

    const/16 v0, 0x4b

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, 0xf

    div-int/lit8 v1, v1, 0x10

    mul-int/2addr v0, v1

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v3, v2

    move v1, p1

    move v2, p2

    :goto_2
    if-lez v2, :cond_e

    if-nez v3, :cond_6

    const/high16 v0, 0x10000

    if-ge p2, v0, :cond_5

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v4, "83ac46"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    move v0, v1

    :cond_2
    :goto_4
    const/4 v4, 0x5

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "f0493f"

    const v7, -0x32a3112a

    invoke-static {v4, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-byte v8, p0, v1

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, -0x1

    add-int/lit8 v3, v3, 0x1

    if-eqz p3, :cond_b

    const/16 v2, 0x10

    if-eq v3, v2, :cond_3

    if-nez v5, :cond_b

    :cond_3
    rsub-int/lit8 v4, v3, 0x10

    if-lez v4, :cond_7

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_7

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    const/16 v0, 0x39

    goto :goto_1

    :cond_5
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v4, "b7746b"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "d6f90e"

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    const/16 v2, 0x8

    if-lt v4, v2, :cond_8

    const-string v2, "  "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v2, "  "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move v4, v2

    :goto_6
    if-ge v4, v3, :cond_b

    add-int v2, v0, v4

    aget-byte v2, p0, v2

    int-to-char v2, v2

    const/16 v7, 0x20

    if-lt v2, v7, :cond_a

    const/16 v7, 0x7e

    if-le v2, v7, :cond_9

    const/16 v2, 0x2e

    :cond_9
    :goto_7
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_6

    :cond_a
    const/16 v2, 0x2e

    goto :goto_7

    :cond_b
    const/16 v2, 0x10

    if-eq v3, v2, :cond_c

    if-nez v5, :cond_d

    :cond_c
    const/16 v2, 0xa

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    move v2, v5

    goto/16 :goto_2

    :cond_d
    move v2, v3

    goto :goto_8

    :cond_e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x1dt
        0x3t
        0x55t
        0x3bt
        0xet
    .end array-data

    nop

    :array_1
    .array-data 1
        0x46t
        0x15t
        0x4t
        0xbt
        0x6bt
    .end array-data

    nop

    :array_2
    .array-data 1
        0x47t
        0x7t
        0xft
        0x6ct
        0xct
    .end array-data

    nop

    :array_3
    .array-data 1
        0x44t
        0x1bt
    .end array-data
.end method
