.class public Lcom/google/android/gms/common/util/MapUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeStringMapToJson(Ljava/lang/StringBuilder;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [B

    const/16 v1, 0x18

    aput-byte v1, v0, v3

    const-string v1, "cdb2a0"

    const v4, 0x4e96209c

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v1, :cond_0

    new-array v1, v2, [B

    const/16 v5, 0x4e

    aput-byte v5, v1, v3

    const-string v5, "b19d47"

    const-wide v6, 0x41dab8a563c00000L    # 1.793234319E9

    invoke-static {v1, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v5, v2, [B

    const/16 v6, 0x15

    aput-byte v6, v5, v3

    const-string v6, "704ab7"

    const-wide/32 v8, -0x2de4beb8

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v5, "4669fe"

    const/16 v6, -0x7a7b

    invoke-static {v0, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "4cbffb"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0

    :cond_1
    new-array v0, v2, [B

    const/16 v5, 0x16

    aput-byte v5, v0, v3

    const-string v5, "45f275"

    const-wide/32 v6, -0x48a1548a

    invoke-static {v0, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v2, [B

    const/16 v1, 0x46

    aput-byte v1, v0, v3

    const-string v1, "d045b8"

    const v5, 0x4ee65314

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto/16 :goto_0

    :cond_2
    new-array v0, v2, [B

    const/16 v1, 0x1e

    aput-byte v1, v0, v3

    const-string v1, "c54352"

    const v2, 0x4ec5aac4

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    nop

    :array_0
    .array-data 1
        0x16t
        0xct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5at
        0x16t
        0xet
        0xat
    .end array-data
.end method
