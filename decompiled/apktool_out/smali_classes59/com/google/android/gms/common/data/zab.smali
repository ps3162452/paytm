.class final Lcom/google/android/gms/common/data/zab;
.super Lcom/google/android/gms/common/data/DataHolder$Builder;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gms/common/data/DataHolder$Builder;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/zac;)V

    return-void
.end method


# virtual methods
.method public final withRow(Landroid/content/ContentValues;)Lcom/google/android/gms/common/data/DataHolder$Builder;
    .locals 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "616870"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x75t
        0x50t
        0x58t
        0x56t
        0x58t
        0x44t
        0x16t
        0x50t
        0x52t
        0x5ct
        0x17t
        0x54t
        0x57t
        0x45t
        0x57t
        0x18t
        0x43t
        0x5ft
        0x16t
        0x54t
        0x5bt
        0x48t
        0x43t
        0x49t
        0x16t
        0x53t
        0x43t
        0x51t
        0x5bt
        0x54t
        0x53t
        0x43t
    .end array-data
.end method

.method public final zaa(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/DataHolder$Builder;
    .locals 5

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x20

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "5ed8ca"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x76t
        0x4t
        0xat
        0x56t
        0xct
        0x15t
        0x15t
        0x4t
        0x0t
        0x5ct
        0x43t
        0x5t
        0x54t
        0x11t
        0x5t
        0x18t
        0x17t
        0xet
        0x15t
        0x0t
        0x9t
        0x48t
        0x17t
        0x18t
        0x15t
        0x7t
        0x11t
        0x51t
        0xft
        0x5t
        0x50t
        0x17t
    .end array-data
.end method
