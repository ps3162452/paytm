.class public final Lcom/google/firebase/FirebaseOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/FirebaseOptions$Builder;
    }
.end annotation


# static fields
.field private static final API_KEY_RESOURCE_NAME:Ljava/lang/String;

.field private static final APP_ID_RESOURCE_NAME:Ljava/lang/String;

.field private static final DATABASE_URL_RESOURCE_NAME:Ljava/lang/String;

.field private static final GA_TRACKING_ID_RESOURCE_NAME:Ljava/lang/String;

.field private static final GCM_SENDER_ID_RESOURCE_NAME:Ljava/lang/String;

.field private static final PROJECT_ID_RESOURCE_NAME:Ljava/lang/String;

.field private static final STORAGE_BUCKET_RESOURCE_NAME:Ljava/lang/String;


# instance fields
.field private final apiKey:Ljava/lang/String;

.field private final applicationId:Ljava/lang/String;

.field private final databaseUrl:Ljava/lang/String;

.field private final gaTrackingId:Ljava/lang/String;

.field private final gcmSenderId:Ljava/lang/String;

.field private final projectId:Ljava/lang/String;

.field private final storageBucket:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x15

    const/16 v5, 0xd

    const/4 v4, 0x1

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "b54776"

    const-wide v2, -0x3e2b63d658800000L    # -1.383114398E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/FirebaseOptions;->API_KEY_RESOURCE_NAME:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_1

    const-string v1, "a8079d"

    const-wide/32 v2, 0x2e4c7123

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/FirebaseOptions;->APP_ID_RESOURCE_NAME:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_2

    const-string v1, "2ea078"

    const-wide/32 v2, 0x114b75fa

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/FirebaseOptions;->DATABASE_URL_RESOURCE_NAME:Ljava/lang/String;

    new-array v0, v5, [B

    fill-array-data v0, :array_3

    const-string v1, "242377"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/FirebaseOptions;->GA_TRACKING_ID_RESOURCE_NAME:Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "363dbb"

    const/16 v2, -0x4e5f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/FirebaseOptions;->GCM_SENDER_ID_RESOURCE_NAME:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_5

    const-string v1, "930218"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/FirebaseOptions;->PROJECT_ID_RESOURCE_NAME:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_6

    const-string v1, "4d2d40"

    const/16 v2, 0xe64

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/FirebaseOptions;->STORAGE_BUCKET_RESOURCE_NAME:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x5t
        0x5at
        0x5bt
        0x50t
        0x5bt
        0x53t
        0x3dt
        0x54t
        0x44t
        0x5et
        0x68t
        0x5dt
        0x7t
        0x4ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6t
        0x57t
        0x5ft
        0x50t
        0x55t
        0x1t
        0x3et
        0x59t
        0x40t
        0x47t
        0x66t
        0xdt
        0x5t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x54t
        0xct
        0x13t
        0x55t
        0x55t
        0x59t
        0x41t
        0x0t
        0x3et
        0x54t
        0x56t
        0x4ct
        0x53t
        0x7t
        0x0t
        0x43t
        0x52t
        0x67t
        0x47t
        0x17t
        0xdt
    .end array-data

    nop

    :array_3
    .array-data 1
        0x55t
        0x55t
        0x6dt
        0x47t
        0x45t
        0x56t
        0x51t
        0x5ft
        0x5bt
        0x5dt
        0x50t
        0x7et
        0x56t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x54t
        0x55t
        0x5et
        0x3bt
        0x6t
        0x7t
        0x55t
        0x57t
        0x46t
        0x8t
        0x16t
        0x31t
        0x56t
        0x58t
        0x57t
        0x1t
        0x10t
        0x2bt
        0x57t
    .end array-data

    :array_5
    .array-data 1
        0x49t
        0x41t
        0x5ft
        0x58t
        0x54t
        0x5bt
        0x4dt
        0x6ct
        0x59t
        0x56t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x53t
        0xbt
        0x5dt
        0x3t
        0x58t
        0x55t
        0x6bt
        0x17t
        0x46t
        0xbt
        0x46t
        0x51t
        0x53t
        0x1t
        0x6dt
        0x6t
        0x41t
        0x53t
        0x5ft
        0x1t
        0x46t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/util/Strings;->isEmptyOrWhitespace(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "f66909"

    const v3, 0x4ec3cc4b

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/firebase/FirebaseOptions;->applicationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/firebase/FirebaseOptions;->apiKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/firebase/FirebaseOptions;->databaseUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/firebase/FirebaseOptions;->gaTrackingId:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/firebase/FirebaseOptions;->gcmSenderId:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/firebase/FirebaseOptions;->storageBucket:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/firebase/FirebaseOptions;->projectId:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x27t
        0x46t
        0x46t
        0x55t
        0x59t
        0x5at
        0x7t
        0x42t
        0x5ft
        0x56t
        0x5et
        0x70t
        0x2t
        0x16t
        0x5bt
        0x4ct
        0x43t
        0x4dt
        0x46t
        0x54t
        0x53t
        0x19t
        0x43t
        0x5ct
        0x12t
        0x18t
    .end array-data
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/FirebaseOptions$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/firebase/FirebaseOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->databaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->gaTrackingId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->gcmSenderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->storageBucket:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public static fromResource(Landroid/content/Context;)Lcom/google/firebase/FirebaseOptions;
    .locals 9

    new-instance v7, Lcom/google/android/gms/common/internal/StringResourceValueReader;

    invoke-direct {v7, p0}, Lcom/google/android/gms/common/internal/StringResourceValueReader;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/google/firebase/FirebaseOptions;->APP_ID_RESOURCE_NAME:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/firebase/FirebaseOptions;

    sget-object v2, Lcom/google/firebase/FirebaseOptions;->API_KEY_RESOURCE_NAME:Ljava/lang/String;

    invoke-virtual {v7, v2}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/FirebaseOptions;->DATABASE_URL_RESOURCE_NAME:Ljava/lang/String;

    invoke-virtual {v7, v3}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/firebase/FirebaseOptions;->GA_TRACKING_ID_RESOURCE_NAME:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/FirebaseOptions;->GCM_SENDER_ID_RESOURCE_NAME:Ljava/lang/String;

    invoke-virtual {v7, v5}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/firebase/FirebaseOptions;->STORAGE_BUCKET_RESOURCE_NAME:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/google/firebase/FirebaseOptions;->PROJECT_ID_RESOURCE_NAME:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/common/internal/StringResourceValueReader;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/FirebaseOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/firebase/FirebaseOptions;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/firebase/FirebaseOptions;

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->applicationId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->applicationId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->apiKey:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->apiKey:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->databaseUrl:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->databaseUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->gaTrackingId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->gaTrackingId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->gcmSenderId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->gcmSenderId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->storageBucket:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->storageBucket:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/FirebaseOptions;->projectId:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/firebase/FirebaseOptions;->projectId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getApiKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->apiKey:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->databaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getGaTrackingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->gaTrackingId:Ljava/lang/String;

    return-object v0
.end method

.method public getGcmSenderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->gcmSenderId:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageBucket()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/FirebaseOptions;->storageBucket:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->applicationId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->apiKey:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->databaseUrl:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->gaTrackingId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->gcmSenderId:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->storageBucket:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->projectId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/16 v7, 0xd

    const/16 v6, 0xb

    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    new-array v1, v7, [B

    fill-array-data v1, :array_0

    const-string v2, "f5bc4d"

    const-wide v4, -0x3e2f87b5f7000000L    # -1.105274916E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->applicationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "9276cf"

    const v3, 0x4ed0d51d    # 1.7518138E9f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->apiKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    new-array v1, v6, [B

    fill-array-data v1, :array_2

    const-string v2, "d858c2"

    const-wide/32 v4, -0xbdd4c49

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->databaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    new-array v1, v6, [B

    fill-array-data v1, :array_3

    const-string v2, "a63e51"

    const v3, -0x31dbfd30

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->gcmSenderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    new-array v1, v7, [B

    fill-array-data v1, :array_4

    const-string v2, "59c4bf"

    const-wide v4, 0x41af7f3f86000000L    # 2.64216515E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->storageBucket:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "c696e1"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/FirebaseOptions;->projectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x7t
        0x45t
        0x12t
        0xft
        0x5dt
        0x7t
        0x7t
        0x41t
        0xbt
        0xct
        0x5at
        0x2dt
        0x2t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x58t
        0x42t
        0x5et
        0x7dt
        0x6t
        0x1ft
    .end array-data

    nop

    :array_2
    .array-data 1
        0x0t
        0x59t
        0x41t
        0x59t
        0x1t
        0x53t
        0x17t
        0x5dt
        0x60t
        0x4at
        0xft
    .end array-data

    :array_3
    .array-data 1
        0x6t
        0x55t
        0x5et
        0x36t
        0x50t
        0x5ft
        0x5t
        0x53t
        0x41t
        0x2ct
        0x51t
    .end array-data

    :array_4
    .array-data 1
        0x46t
        0x4dt
        0xct
        0x46t
        0x3t
        0x1t
        0x50t
        0x7bt
        0x16t
        0x57t
        0x9t
        0x3t
        0x41t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x13t
        0x44t
        0x56t
        0x5ct
        0x0t
        0x52t
        0x17t
        0x7ft
        0x5dt
    .end array-data
.end method
