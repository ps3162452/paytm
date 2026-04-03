.class public Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final zaa:Lcom/google/android/gms/common/util/Clock;


# instance fields
.field final zab:I

.field final zac:Ljava/util/List;

.field private final zad:Ljava/lang/String;

.field private final zae:Ljava/lang/String;

.field private final zaf:Ljava/lang/String;

.field private final zag:Ljava/lang/String;

.field private final zah:Landroid/net/Uri;

.field private zai:Ljava/lang/String;

.field private final zaj:J

.field private final zak:Ljava/lang/String;

.field private final zal:Ljava/lang/String;

.field private final zam:Ljava/lang/String;

.field private final zan:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/signin/zab;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/zab;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zaa:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zan:Ljava/util/Set;

    iput p1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zab:I

    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zad:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zae:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zaf:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zag:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zah:Landroid/net/Uri;

    iput-object p7, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zai:Ljava/lang/String;

    iput-wide p8, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zaj:J

    iput-object p10, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zak:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zac:Ljava/util/List;

    iput-object p12, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zal:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zam:Ljava/lang/String;

    return-void
.end method

.method public static createDefault()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 5

    new-instance v0, Landroid/accounts/Account;

    const/16 v1, 0x13

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d812b0"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "ba3477"

    const v4, -0x3234c64f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zae(Landroid/accounts/Account;Ljava/util/Set;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x58t
        0x4t
        0x55t
        0x57t
        0x4t
        0x51t
        0x11t
        0x54t
        0x45t
        0x12t
        0x3t
        0x53t
        0x7t
        0x57t
        0x44t
        0x5ct
        0x16t
        0xet
        0x5at
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0xet
        0x5et
        0x1at
        0x50t
        0x58t
        0xdt
        0x6t
        0x5ft
        0x51t
    .end array-data
.end method

.method public static fromAccount(Landroid/accounts/Account;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zae(Landroid/accounts/Account;Ljava/util/Set;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    return-object v0
.end method

.method public static zaa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 14

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    const/4 v1, 0x3

    const/4 v7, 0x0

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static/range {p8 .. p8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/util/ArrayList;

    invoke-static/range {p9 .. p9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static zab(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v12, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v13, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "aa0467"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    :goto_1
    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "ae4531"

    const/16 v4, -0x14d4

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    const-string v3, "fa5aea"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v4, :cond_2

    new-instance v5, Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "ef24e5"

    const-wide v4, 0x41d6fd1029400000L    # 1.542733989E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_4

    const-string v4, "77bc33"

    const-wide/32 v6, 0x60877f66

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_5

    const-string v4, "1d1d01"

    const/16 v5, -0x662f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    const/4 v4, 0x5

    new-array v4, v4, [B

    fill-array-data v4, :array_6

    const-string v5, "c7acc9"

    const-wide/32 v6, 0x71a5b17f

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    new-array v4, v4, [B

    fill-array-data v4, :array_7

    const-string v5, "0d85c8"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_4
    const/16 v5, 0xb

    new-array v5, v5, [B

    fill-array-data v5, :array_8

    const-string v6, "aedacb"

    const v7, -0x3117a1a9

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0xb

    new-array v5, v5, [B

    fill-array-data v5, :array_9

    const-string v6, "758195"

    const/16 v7, -0x47b8

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_5
    const/16 v6, 0x9

    new-array v6, v6, [B

    fill-array-data v6, :array_a

    const-string v7, "2f20a7"

    const-wide/32 v16, 0x3bb6d059

    move-wide/from16 v0, v16

    invoke-static {v6, v7, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/16 v6, 0x9

    new-array v6, v6, [B

    fill-array-data v6, :array_b

    const-string v7, "7c2c3e"

    const/16 v9, -0x4987

    invoke-static {v6, v7, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_6
    const/16 v7, 0xa

    new-array v7, v7, [B

    fill-array-data v7, :array_c

    const-string v9, "df57dd"

    const v10, -0x311e6bc1

    invoke-static {v7, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/16 v7, 0xa

    new-array v7, v7, [B

    fill-array-data v7, :array_d

    const-string v9, "45cf99"

    const v10, -0x3156c8a4

    invoke-static {v7, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_7
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/16 v10, 0x14

    new-array v10, v10, [B

    fill-array-data v10, :array_e

    const-string v14, "6a95c1"

    const/4 v15, 0x0

    invoke-static {v10, v14, v15}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v2 .. v11}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zaa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v3

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_f

    const-string v4, "0efe66"

    const/16 v5, 0x7042

    invoke-static {v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0xe

    new-array v2, v2, [B

    fill-array-data v2, :array_10

    const-string v4, "666fc0"

    const-wide/32 v6, 0x4de1d591

    invoke-static {v2, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_8
    iput-object v2, v3, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zai:Ljava/lang/String;

    move-object v2, v3

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_3

    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    const/4 v7, 0x0

    goto :goto_7

    :cond_8
    move-object v2, v12

    goto :goto_8

    :array_0
    .array-data 1
        0x11t
        0x9t
        0x5ft
        0x40t
        0x59t
        0x62t
        0x13t
        0xdt
    .end array-data

    :array_1
    .array-data 1
        0x4t
        0x1dt
        0x44t
        0x5ct
        0x41t
        0x50t
        0x15t
        0xct
        0x5bt
        0x5bt
        0x67t
        0x58t
        0xct
        0x0t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1t
        0x13t
        0x54t
        0xft
        0x11t
        0x4t
        0x2t
        0x32t
        0x56t
        0xet
        0x15t
        0x4t
        0x15t
    .end array-data

    nop

    :array_3
    .array-data 1
        0xct
        0x2t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x43t
        0x58t
        0x9t
        0x6t
        0x5dt
        0x7at
        0x53t
    .end array-data

    :array_5
    .array-data 1
        0x45t
        0xbt
        0x5at
        0x1t
        0x5et
        0x78t
        0x55t
    .end array-data

    :array_6
    .array-data 1
        0x6t
        0x5at
        0x0t
        0xat
        0xft
    .end array-data

    nop

    :array_7
    .array-data 1
        0x55t
        0x9t
        0x59t
        0x5ct
        0xft
    .end array-data

    nop

    :array_8
    .array-data 1
        0x5t
        0xct
        0x17t
        0x11t
        0xft
        0x3t
        0x18t
        0x2bt
        0x5t
        0xct
        0x6t
    .end array-data

    :array_9
    .array-data 1
        0x53t
        0x5ct
        0x4bt
        0x41t
        0x55t
        0x54t
        0x4et
        0x7bt
        0x59t
        0x5ct
        0x5ct
    .end array-data

    :array_a
    .array-data 1
        0x55t
        0xft
        0x44t
        0x55t
        0xft
        0x79t
        0x53t
        0xbt
        0x57t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x50t
        0xat
        0x44t
        0x6t
        0x5dt
        0x2bt
        0x56t
        0xet
        0x57t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x2t
        0x7t
        0x58t
        0x5et
        0x8t
        0x1dt
        0x2at
        0x7t
        0x58t
        0x52t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x52t
        0x54t
        0xet
        0xft
        0x55t
        0x40t
        0x7at
        0x54t
        0xet
        0x3t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x59t
        0x3t
        0x5ft
        0x40t
        0x10t
        0x52t
        0x57t
        0x15t
        0x5ct
        0x51t
        0x2at
        0x55t
        0x53t
        0xft
        0x4dt
        0x5ct
        0x5t
        0x58t
        0x53t
        0x13t
    .end array-data

    :array_f
    .array-data 1
        0x43t
        0x0t
        0x14t
        0x13t
        0x53t
        0x44t
        0x71t
        0x10t
        0x12t
        0xdt
        0x75t
        0x59t
        0x54t
        0x0t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x45t
        0x53t
        0x44t
        0x10t
        0x6t
        0x42t
        0x77t
        0x43t
        0x42t
        0xet
        0x20t
        0x5ft
        0x52t
        0x53t
    .end array-data
.end method

.method private static zae(Landroid/accounts/Account;Ljava/util/Set;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 10

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-object v8, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v1, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zaa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Long;Ljava/lang/String;Ljava/util/Set;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p1, p0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz v2, :cond_0

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    iget-object v2, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zak:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zak:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getRequestedScopes()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getRequestedScopes()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zaf:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "d0cf7c"

    const/16 v4, -0xfdf

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x7t
        0x5ft
        0xet
        0x48t
        0x50t
        0xct
        0xbt
        0x57t
        0xft
        0x3t
    .end array-data
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zag:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zaf:Ljava/lang/String;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zam:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zal:Ljava/lang/String;

    return-object v0
.end method

.method public getGrantedScopes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zac:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zad:Ljava/lang/String;

    return-object v0
.end method

.method public getIdToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zae:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoUrl()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zah:Landroid/net/Uri;

    return-object v0
.end method

.method public getRequestedScopes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zac:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zan:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getServerAuthCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zai:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zak:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getRequestedScopes()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isExpired()Z
    .locals 6

    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zaa:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zaj:J

    const-wide/16 v4, 0x12c

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public varargs requestExtraScopes([Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zan:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zab:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0x8

    iget-wide v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zaj:J

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zak:Ljava/lang/String;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zac:Ljava/util/List;

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getGivenName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getFamilyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method

.method public final zac()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zak:Ljava/lang/String;

    return-object v0
.end method

.method public final zad()Ljava/lang/String;
    .locals 9

    const/16 v8, 0xe

    const/4 v1, 0x0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v3, "324422"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v3, "ad0a6c"

    const/16 v4, -0x68d8

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getIdToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v3, "966856"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v3, "8855b8"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getGivenName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v3, "e42ee6"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getGivenName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getFamilyName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v3, "a69971"

    const/16 v4, -0x581f

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getFamilyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getPhotoUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    const/16 v3, 0x8

    new-array v3, v3, [B

    fill-array-data v3, :array_6

    const-string v4, "22c405"

    const-wide/32 v6, 0x12a2e226

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v3, "ed8c3b"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_8

    const-string v3, "b281b1"

    const v4, -0x336dee9a    # -7.658168E7f

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    iget-wide v4, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zaj:J

    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v3, "2f1b28"

    const-wide v4, -0x3e228384d9000000L    # -1.97878902E9

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zak:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zac:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/common/api/Scope;

    sget-object v4, Lcom/google/android/gms/auth/api/signin/zaa;->zaa:Lcom/google/android/gms/auth/api/signin/zaa;

    invoke-static {v0, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    array-length v4, v0

    :goto_0
    if-ge v1, v4, :cond_8

    aget-object v5, v0, v1

    invoke-virtual {v5}, Lcom/google/android/gms/common/api/Scope;->getScopeUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    const-string v1, "2962c7"

    const-wide v4, 0x41dfcac0dbc00000L    # 2.133525359E9

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    new-array v0, v8, [B

    fill-array-data v0, :array_b

    const-string v1, "a78343"

    const/16 v3, -0x104e

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x5at
        0x56t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x15t
        0xbt
        0x5bt
        0x4t
        0x58t
        0x2at
        0x5t
    .end array-data

    :array_2
    .array-data 1
        0x5ct
        0x5bt
        0x57t
        0x51t
        0x59t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x5ct
        0x51t
        0x46t
        0x45t
        0xet
        0x59t
        0x41t
        0x76t
        0x54t
        0x58t
        0x7t
    .end array-data

    :array_4
    .array-data 1
        0x2t
        0x5dt
        0x44t
        0x0t
        0xbt
        0x78t
        0x4t
        0x59t
        0x57t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x7t
        0x57t
        0x54t
        0x50t
        0x5bt
        0x48t
        0x2ft
        0x57t
        0x54t
        0x5ct
    .end array-data

    nop

    :array_6
    .array-data 1
        0x42t
        0x5at
        0xct
        0x40t
        0x5ft
        0x60t
        0x40t
        0x5et
    .end array-data

    :array_7
    .array-data 1
        0x16t
        0x1t
        0x4at
        0x15t
        0x56t
        0x10t
        0x24t
        0x11t
        0x4ct
        0xbt
        0x70t
        0xdt
        0x1t
        0x1t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x7t
        0x4at
        0x48t
        0x58t
        0x10t
        0x50t
        0x16t
        0x5bt
        0x57t
        0x5ft
        0x36t
        0x58t
        0xft
        0x57t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x5dt
        0x4t
        0x57t
        0x17t
        0x41t
        0x5bt
        0x53t
        0x12t
        0x54t
        0x6t
        0x7bt
        0x5ct
        0x57t
        0x8t
        0x45t
        0xbt
        0x54t
        0x51t
        0x57t
        0x14t
    .end array-data

    :array_a
    .array-data 1
        0x55t
        0x4bt
        0x57t
        0x5ct
        0x17t
        0x52t
        0x56t
        0x6at
        0x55t
        0x5dt
        0x13t
        0x52t
        0x41t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x12t
        0x52t
        0x4at
        0x45t
        0x51t
        0x41t
        0x20t
        0x42t
        0x4ct
        0x5bt
        0x77t
        0x5ct
        0x5t
        0x52t
    .end array-data
.end method
