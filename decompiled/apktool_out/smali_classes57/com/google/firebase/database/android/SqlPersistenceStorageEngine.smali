.class public Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/core/persistence/PersistenceStorageEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;
    }
.end annotation


# static fields
.field static final $assertionsDisabled:Z = false

.field private static final CHILDREN_NODE_SPLIT_SIZE_THRESHOLD:I = 0x4000

.field private static final CREATE_SERVER_CACHE:Ljava/lang/String;

.field private static final CREATE_TRACKED_KEYS:Ljava/lang/String;

.field private static final CREATE_TRACKED_QUERIES:Ljava/lang/String;

.field private static final CREATE_WRITES:Ljava/lang/String;

.field private static final FIRST_PART_KEY:Ljava/lang/String;

.field private static final LOGGER_COMPONENT:Ljava/lang/String;

.field private static final PART_KEY_FORMAT:Ljava/lang/String;

.field private static final PART_KEY_PREFIX:Ljava/lang/String;

.field private static final PATH_COLUMN_NAME:Ljava/lang/String;

.field private static final ROW_ID_COLUMN_NAME:Ljava/lang/String;

.field private static final ROW_SPLIT_SIZE:I = 0x40000

.field private static final SERVER_CACHE_TABLE:Ljava/lang/String;

.field private static final TRACKED_KEYS_ID_COLUMN_NAME:Ljava/lang/String;

.field private static final TRACKED_KEYS_KEY_COLUMN_NAME:Ljava/lang/String;

.field private static final TRACKED_KEYS_TABLE:Ljava/lang/String;

.field private static final TRACKED_QUERY_ACTIVE_COLUMN_NAME:Ljava/lang/String;

.field private static final TRACKED_QUERY_COMPLETE_COLUMN_NAME:Ljava/lang/String;

.field private static final TRACKED_QUERY_ID_COLUMN_NAME:Ljava/lang/String;

.field private static final TRACKED_QUERY_LAST_USE_COLUMN_NAME:Ljava/lang/String;

.field private static final TRACKED_QUERY_PARAMS_COLUMN_NAME:Ljava/lang/String;

.field private static final TRACKED_QUERY_PATH_COLUMN_NAME:Ljava/lang/String;

.field private static final TRACKED_QUERY_TABLE:Ljava/lang/String;

.field private static final UTF8_CHARSET:Ljava/nio/charset/Charset;

.field private static final VALUE_COLUMN_NAME:Ljava/lang/String;

.field private static final WRITES_TABLE:Ljava/lang/String;

.field private static final WRITE_ID_COLUMN_NAME:Ljava/lang/String;

.field private static final WRITE_NODE_COLUMN_NAME:Ljava/lang/String;

.field private static final WRITE_PART_COLUMN_NAME:Ljava/lang/String;

.field private static final WRITE_TYPE_COLUMN_NAME:Ljava/lang/String;

.field private static final WRITE_TYPE_MERGE:Ljava/lang/String;

.field private static final WRITE_TYPE_OVERWRITE:Ljava/lang/String;


# instance fields
.field private final database:Landroid/database/sqlite/SQLiteDatabase;

.field private insideTransaction:Z

.field private final logger:Lcom/google/firebase/database/logging/LogWrapper;

.field private transactionStart:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/16 v7, 0xb

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "8a012c"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->CREATE_SERVER_CACHE:Ljava/lang/String;

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "5b0ec9"

    const/16 v2, -0x3036

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->CREATE_TRACKED_KEYS:Ljava/lang/String;

    const/16 v0, 0x85

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "c970c8"

    const-wide v2, -0x3e325424b6800000L    # -9.95604115E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->CREATE_TRACKED_QUERIES:Ljava/lang/String;

    const/16 v0, 0x63

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "535b46"

    const v2, 0x4e39272a    # 7.765879E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->CREATE_WRITES:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "56ce6d"

    const-wide/32 v2, -0x61298ee2

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->FIRST_PART_KEY:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_5

    const-string v1, "334294"

    const-wide v2, 0x41d90b5aa4000000L    # 1.680698E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->LOGGER_COMPONENT:Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "b290f2"

    const-wide v2, -0x3e2b792096000000L    # -1.377533352E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PART_KEY_FORMAT:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const-string v1, "8d34c8"

    const v2, -0x310031c3

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PART_KEY_PREFIX:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_8

    const-string v1, "930c38"

    const/16 v2, -0x73d6

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PATH_COLUMN_NAME:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_9

    const-string v1, "67501a"

    const-wide/32 v2, 0x5fb517bc

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->ROW_ID_COLUMN_NAME:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_a

    const-string v1, "25ff4a"

    const-wide v2, 0x41c77cfe72000000L    # 7.8813514E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->SERVER_CACHE_TABLE:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_b

    const-string v1, "902c38"

    const-wide/32 v2, 0x77007820

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_ID_COLUMN_NAME:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const-string v1, "41e0e6"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_KEY_COLUMN_NAME:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_d

    const-string v1, "ce68c0"

    const/16 v2, -0x7e

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_TABLE:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    const-string v1, "45c2cd"

    const/16 v2, 0x1215

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_ACTIVE_COLUMN_NAME:Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_f

    const-string v1, "617539"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_COMPLETE_COLUMN_NAME:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_10

    const-string v1, "ec7ec3"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_ID_COLUMN_NAME:Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_11

    const-string v1, "eb6f17"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_LAST_USE_COLUMN_NAME:Ljava/lang/String;

    new-array v0, v7, [B

    fill-array-data v0, :array_12

    const-string v1, "384994"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_PARAMS_COLUMN_NAME:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_13

    const-string v1, "8ee494"

    const-wide/32 v2, 0x43a3da

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_PATH_COLUMN_NAME:Ljava/lang/String;

    const/16 v0, 0xe

    new-array v0, v0, [B

    fill-array-data v0, :array_14

    const-string v1, "da47ef"

    const-wide v2, 0x41da9d1a6b800000L    # 1.786014126E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_TABLE:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_15

    const-string v1, "a01a0f"

    const/16 v2, 0x7338

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->VALUE_COLUMN_NAME:Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_16

    const-string v1, "55972d"

    const v2, 0x4ecd16df    # 1.7204141E9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITES_TABLE:Ljava/lang/String;

    new-array v0, v8, [B

    fill-array-data v0, :array_17

    const-string v1, "f293c1"

    invoke-static {v0, v1, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_ID_COLUMN_NAME:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_18

    const-string v1, "dadcfb"

    const/16 v2, 0x52cc

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_NODE_COLUMN_NAME:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_19

    const-string v1, "d8b332"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_PART_COLUMN_NAME:Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_1a

    const-string v1, "24955c"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_TYPE_COLUMN_NAME:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0x9

    aput-byte v1, v0, v4

    const-string v1, "d1b975"

    const-wide/32 v2, 0x110dcf85

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_TYPE_MERGE:Ljava/lang/String;

    new-array v0, v5, [B

    const/16 v1, 0xc

    aput-byte v1, v0, v4

    const-string v1, "ce6861"

    const v2, -0x312c3339

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_TYPE_OVERWRITE:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_1b

    const-string v1, "daac3d"

    const-wide/32 v2, 0x17d70d93

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    return-void

    :array_0
    .array-data 1
        0x7bt
        0x33t
        0x75t
        0x70t
        0x66t
        0x26t
        0x18t
        0x35t
        0x71t
        0x73t
        0x7et
        0x26t
        0x18t
        0x12t
        0x55t
        0x43t
        0x44t
        0x6t
        0x4at
        0x22t
        0x51t
        0x52t
        0x5at
        0x6t
        0x18t
        0x49t
        0x40t
        0x50t
        0x46t
        0xbt
        0x18t
        0x35t
        0x75t
        0x69t
        0x66t
        0x43t
        0x68t
        0x33t
        0x79t
        0x7ct
        0x73t
        0x31t
        0x61t
        0x41t
        0x7bt
        0x74t
        0x6bt
        0x4ft
        0x18t
        0x17t
        0x51t
        0x5dt
        0x47t
        0x6t
        0x18t
        0x23t
        0x7ct
        0x7et
        0x70t
        0x4at
        0x3t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x76t
        0x30t
        0x75t
        0x24t
        0x37t
        0x7ct
        0x15t
        0x36t
        0x71t
        0x27t
        0x2ft
        0x7ct
        0x15t
        0x16t
        0x42t
        0x4t
        0x0t
        0x52t
        0x50t
        0x6t
        0x7bt
        0x0t
        0x1at
        0x4at
        0x15t
        0x4at
        0x59t
        0x1t
        0x43t
        0x70t
        0x7bt
        0x36t
        0x75t
        0x22t
        0x26t
        0x6bt
        0x19t
        0x42t
        0x5bt
        0x0t
        0x1at
        0x19t
        0x61t
        0x27t
        0x68t
        0x31t
        0x4at
        0x2t
    .end array-data

    :array_2
    .array-data 1
        0x20t
        0x6bt
        0x72t
        0x71t
        0x37t
        0x7dt
        0x43t
        0x6dt
        0x76t
        0x72t
        0x2ft
        0x7dt
        0x43t
        0x4dt
        0x45t
        0x51t
        0x0t
        0x53t
        0x6t
        0x5dt
        0x66t
        0x45t
        0x6t
        0x4at
        0xat
        0x5ct
        0x44t
        0x10t
        0x4bt
        0x51t
        0x7t
        0x19t
        0x7et
        0x7et
        0x37t
        0x7dt
        0x24t
        0x7ct
        0x65t
        0x10t
        0x33t
        0x6at
        0x2at
        0x74t
        0x76t
        0x62t
        0x3at
        0x18t
        0x28t
        0x7ct
        0x6et
        0x1ct
        0x43t
        0x48t
        0x2t
        0x4dt
        0x5ft
        0x10t
        0x37t
        0x7dt
        0x3bt
        0x6dt
        0x1bt
        0x10t
        0x12t
        0x4dt
        0x6t
        0x4bt
        0x4et
        0x60t
        0x2t
        0x4at
        0x2t
        0x54t
        0x44t
        0x10t
        0x37t
        0x7dt
        0x3bt
        0x6dt
        0x1bt
        0x10t
        0xft
        0x59t
        0x10t
        0x4dt
        0x62t
        0x43t
        0x6t
        0x18t
        0x2at
        0x77t
        0x63t
        0x75t
        0x24t
        0x7dt
        0x31t
        0x15t
        0x17t
        0x53t
        0xct
        0x55t
        0x13t
        0x55t
        0x52t
        0x44t
        0x6t
        0x18t
        0x2at
        0x77t
        0x63t
        0x75t
        0x24t
        0x7dt
        0x31t
        0x15t
        0x17t
        0x51t
        0x0t
        0x4ct
        0xat
        0x4ft
        0x52t
        0x10t
        0x2at
        0x76t
        0x37t
        0x7ct
        0x70t
        0x75t
        0x31t
        0x11t
        0x58t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x76t
        0x61t
        0x70t
        0x23t
        0x60t
        0x73t
        0x15t
        0x67t
        0x74t
        0x20t
        0x78t
        0x73t
        0x15t
        0x44t
        0x47t
        0xbt
        0x40t
        0x53t
        0x46t
        0x13t
        0x1dt
        0xbt
        0x50t
        0x16t
        0x7ct
        0x7dt
        0x61t
        0x27t
        0x73t
        0x73t
        0x67t
        0x1ft
        0x15t
        0x12t
        0x55t
        0x42t
        0x5dt
        0x13t
        0x61t
        0x27t
        0x6ct
        0x62t
        0x19t
        0x13t
        0x41t
        0x1bt
        0x44t
        0x53t
        0x15t
        0x67t
        0x70t
        0x3at
        0x60t
        0x1at
        0x15t
        0x43t
        0x54t
        0x10t
        0x40t
        0x16t
        0x7ct
        0x7dt
        0x61t
        0x27t
        0x73t
        0x73t
        0x67t
        0x1ft
        0x15t
        0xct
        0x5bt
        0x52t
        0x50t
        0x13t
        0x77t
        0x2et
        0x7bt
        0x74t
        0x19t
        0x13t
        0x60t
        0x2ct
        0x7dt
        0x67t
        0x60t
        0x76t
        0x15t
        0x4at
        0x5dt
        0x52t
        0x19t
        0x13t
        0x45t
        0x3t
        0x46t
        0x42t
        0x1ct
        0x1at
        0xet
    .end array-data

    :array_4
    .array-data 1
        0x1bt
        0x46t
        0x2t
        0x17t
        0x42t
        0x49t
        0x5t
        0x6t
        0x53t
        0x55t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x63t
        0x56t
        0x46t
        0x41t
        0x50t
        0x47t
        0x47t
        0x56t
        0x5at
        0x51t
        0x5ct
    .end array-data

    :array_6
    .array-data 1
        0x4ct
        0x42t
        0x58t
        0x42t
        0x12t
        0x1ft
        0x47t
        0x2t
        0xdt
        0x54t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x16t
        0x14t
        0x52t
        0x46t
        0x17t
        0x15t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x49t
        0x52t
        0x44t
        0xbt
    .end array-data

    :array_9
    .array-data 1
        0x44t
        0x58t
        0x42t
        0x59t
        0x55t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x41t
        0x50t
        0x14t
        0x10t
        0x51t
        0x13t
        0x71t
        0x54t
        0x5t
        0xet
        0x51t
    .end array-data

    :array_b
    .array-data 1
        0x50t
        0x54t
    .end array-data

    nop

    :array_c
    .array-data 1
        0x5ft
        0x54t
        0x1ct
    .end array-data

    :array_d
    .array-data 1
        0x17t
        0x17t
        0x57t
        0x5bt
        0x8t
        0x55t
        0x7t
        0x2et
        0x53t
        0x41t
        0x10t
    .end array-data

    :array_e
    .array-data 1
        0x55t
        0x56t
        0x17t
        0x5bt
        0x15t
        0x1t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x55t
        0x5et
        0x5at
        0x45t
        0x5ft
        0x5ct
        0x42t
        0x54t
    .end array-data

    :array_10
    .array-data 1
        0xct
        0x7t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x9t
        0x3t
        0x45t
        0x12t
        0x64t
        0x44t
        0x0t
    .end array-data

    :array_12
    .array-data 1
        0x42t
        0x4dt
        0x51t
        0x4bt
        0x40t
        0x64t
        0x52t
        0x4at
        0x55t
        0x54t
        0x4at
    .end array-data

    :array_13
    .array-data 1
        0x48t
        0x4t
        0x11t
        0x5ct
    .end array-data

    :array_14
    .array-data 1
        0x10t
        0x13t
        0x55t
        0x54t
        0xet
        0x3t
        0x0t
        0x30t
        0x41t
        0x52t
        0x17t
        0xft
        0x1t
        0x12t
    .end array-data

    nop

    :array_15
    .array-data 1
        0x17t
        0x51t
        0x5dt
        0x14t
        0x55t
    .end array-data

    nop

    :array_16
    .array-data 1
        0x42t
        0x47t
        0x50t
        0x43t
        0x57t
        0x17t
    .end array-data

    nop

    :array_17
    .array-data 1
        0xft
        0x56t
    .end array-data

    nop

    :array_18
    .array-data 1
        0xat
        0xet
        0x0t
        0x6t
    .end array-data

    :array_19
    .array-data 1
        0x14t
        0x59t
        0x10t
        0x47t
    .end array-data

    :array_1a
    .array-data 1
        0x46t
        0x4dt
        0x49t
        0x50t
    .end array-data

    :array_1b
    .array-data 1
        0x31t
        0x35t
        0x27t
        0x4et
        0xbt
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/firebase/database/core/Context;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->transactionStart:J

    const/4 v0, 0x5

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ad9475"

    const-wide/32 v2, 0x5d091599

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "136ac1"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/google/firebase/database/core/Context;->getLogger(Ljava/lang/String;)Lcom/google/firebase/database/logging/LogWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->openDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x14t
        0x10t
        0x5ft
        0x19t
        0xft
    .end array-data

    nop

    :array_1
    .array-data 1
        0x61t
        0x56t
        0x44t
        0x12t
        0xat
        0x42t
        0x45t
        0x56t
        0x58t
        0x2t
        0x6t
    .end array-data
.end method

.method private static buildAncestorWhereClause(Lcom/google/firebase/database/core/Path;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/4 v6, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    new-array v2, v6, [B

    const/16 v3, 0x19

    aput-byte v3, v2, v0

    const-string v3, "1feea8"

    const-wide/32 v4, -0x6bbc27ef

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PATH_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "457880"

    invoke-static {v2, v3, v6, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->getParent()Lcom/google/firebase/database/core/Path;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PATH_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "fdf7a8"

    const/16 v4, 0x363d

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x14t
        0x8t
        0x17t
        0x7t
        0x18t
        0x7ft
        0x66t
        0x15t
    .end array-data

    :array_1
    .array-data 1
        0x46t
        0x59t
        0x46t
        0x8t
        0x48t
    .end array-data
.end method

.method private commaSeparatedList(Ljava/util/Collection;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    if-nez v1, :cond_0

    new-array v0, v2, [B

    const/16 v1, 0x1d

    aput-byte v1, v0, v3

    const-string v1, "135d71"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deserializeNode([B)Lcom/google/firebase/database/snapshot/Node;
    .locals 8

    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/google/firebase/database/util/JsonMapper;->parseJsonValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x1c

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "378ccd"

    const-wide v6, -0x3e5c0627fe000000L    # -1.67570433E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    nop

    :array_0
    .array-data 1
        0x70t
        0x58t
        0x4dt
        0xft
        0x7t
        0x44t
        0x5dt
        0x58t
        0x4ct
        0x43t
        0x7t
        0x1t
        0x40t
        0x52t
        0x4at
        0xat
        0x2t
        0x8t
        0x5at
        0x4dt
        0x5dt
        0x43t
        0xdt
        0xbt
        0x57t
        0x52t
        0x2t
        0x43t
    .end array-data
.end method

.method private joinBytes(Ljava/util/List;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;)[B"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    new-array v3, v1, [B

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v5, v0

    invoke-static {v0, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_1
    return-object v3
.end method

.method private loadNested(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 27

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PATH_COLUMN_NAME:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->VALUE_COLUMN_NAME:Ljava/lang/String;

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->loadNestedQuery(Lcom/google/firebase/database/core/Path;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    :goto_0
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v4

    const/4 v3, 0x0

    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    move v5, v2

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_6

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v6, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->FIRST_PART_KEY:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v6, Lcom/google/firebase/database/core/Path;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v21

    sget-object v22, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->FIRST_PART_KEY:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v8, v5}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->splitNodeRunLength(Lcom/google/firebase/database/core/Path;Ljava/util/List;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x18

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    fill-array-data v22, :array_0

    const-string v23, "2620df"

    const-wide v24, -0x3e242a9f2d800000L    # -1.867875146E9

    invoke-static/range {v22 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x7

    move/from16 v0, v22

    new-array v0, v0, [B

    move-object/from16 v22, v0

    fill-array-data v22, :array_1

    const-string v23, "890e66"

    const-wide/32 v24, -0x30ecb56a

    invoke-static/range {v22 .. v25}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    add-int v2, v5, v7

    invoke-interface {v9, v5, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->joinBytes(Ljava/util/List;)[B

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->deserializeNode([B)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v26, v6

    move v6, v5

    move-object/from16 v5, v26

    :goto_3
    invoke-virtual {v5}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Lcom/google/firebase/database/core/Path;->getBack()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/firebase/database/snapshot/ChildKey;->isPriorityChildName()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object/from16 v0, v20

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v3

    move-object v3, v4

    :goto_4
    add-int/lit8 v4, v6, 0x1

    move v5, v4

    move-object v4, v3

    move v3, v2

    goto/16 :goto_2

    :cond_2
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->deserializeNode([B)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v6

    new-instance v7, Lcom/google/firebase/database/core/Path;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v7, v2}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    move v6, v5

    move-object v5, v7

    goto :goto_3

    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v7

    if-eqz v7, :cond_4

    xor-int/lit8 v4, v3, 0x1

    const/16 v7, 0x2e

    new-array v7, v7, [B

    fill-array-data v7, :array_2

    const-string v21, "7d0d4e"

    const v22, -0x333e53cf

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v7, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/firebase/database/snapshot/Node;->getChild(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    move/from16 v26, v3

    move-object v3, v2

    move/from16 v2, v26

    goto :goto_4

    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-interface {v4, v3, v2}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v3

    const/4 v2, 0x1

    goto :goto_4

    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    const/16 v3, 0x2c

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "b8f6e3"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/core/Path;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/Node;

    invoke-interface {v4, v6, v2}, Lcom/google/firebase/database/snapshot/Node;->updateChild(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v4

    goto :goto_5

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v5}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v8, 0x6f

    new-array v8, v8, [B

    fill-array-data v8, :array_4

    const-string v20, "e4d89d"

    const/16 v21, -0x2b55

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v8, v0, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    const/16 v20, 0x7

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v20, v21

    const/4 v9, 0x1

    invoke-static {v4}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->nodeCount(Lcom/google/firebase/database/snapshot/Node;)I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v20, v9

    const/4 v9, 0x2

    aput-object p1, v20, v9

    const/4 v9, 0x3

    sub-long/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v20, v9

    const/4 v6, 0x4

    sub-long v10, v12, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v20, v6

    const/4 v6, 0x5

    sub-long v10, v16, v14

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v20, v6

    const/4 v6, 0x6

    sub-long v2, v2, v18

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v20, v6

    move-object/from16 v0, v20

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    return-object v4

    :catchall_1
    move-exception v2

    goto/16 :goto_1

    nop

    :array_0
    .array-data 1
        0x7et
        0x59t
        0x53t
        0x54t
        0xdt
        0x8t
        0x55t
        0x16t
        0x41t
        0x40t
        0x8t
        0xft
        0x46t
        0x16t
        0x5ct
        0x5ft
        0x0t
        0x3t
        0x12t
        0x41t
        0x5bt
        0x44t
        0xct
        0x46t
    .end array-data

    :array_1
    .array-data 1
        0x18t
        0x49t
        0x51t
        0x17t
        0x42t
        0x45t
        0x16t
    .end array-data

    :array_2
    .array-data 1
        0x73t
        0x1t
        0x43t
        0x7t
        0x51t
        0xbt
        0x53t
        0x5t
        0x5et
        0x10t
        0x47t
        0x45t
        0x58t
        0x2t
        0x10t
        0x14t
        0x55t
        0x11t
        0x5ft
        0x44t
        0x5dt
        0x11t
        0x47t
        0x11t
        0x17t
        0x7t
        0x5ft
        0x9t
        0x51t
        0x45t
        0x56t
        0x2t
        0x44t
        0x1t
        0x46t
        0x45t
        0x56t
        0xat
        0x53t
        0x1t
        0x47t
        0x11t
        0x58t
        0x16t
        0x43t
        0x4at
    .end array-data

    nop

    :array_3
    .array-data 1
        0x2et
        0x57t
        0x7t
        0x52t
        0xct
        0x5dt
        0x5t
        0x18t
        0x7t
        0x58t
        0x45t
        0x46t
        0xct
        0x4at
        0x3t
        0x5at
        0x4t
        0x47t
        0x7t
        0x5ct
        0x46t
        0x44t
        0xat
        0x44t
        0x42t
        0x4ft
        0xft
        0x42t
        0xdt
        0x13t
        0x12t
        0x59t
        0x12t
        0x5et
        0x45t
        0x16t
        0x11t
        0x18t
        0x0t
        0x59t
        0x17t
        0x13t
        0x47t
        0x4bt
    .end array-data

    :array_4
    .array-data 1
        0x29t
        0x5bt
        0x5t
        0x5ct
        0x5ct
        0x0t
        0x45t
        0x55t
        0x44t
        0x4ct
        0x56t
        0x10t
        0x4t
        0x58t
        0x44t
        0x57t
        0x5ft
        0x44t
        0x40t
        0x50t
        0x44t
        0x4at
        0x56t
        0x13t
        0x16t
        0x14t
        0x2t
        0x57t
        0x4bt
        0x44t
        0x4t
        0x14t
        0x10t
        0x57t
        0x4dt
        0x5t
        0x9t
        0x14t
        0xbt
        0x5et
        0x19t
        0x41t
        0x1t
        0x14t
        0xat
        0x57t
        0x5dt
        0x1t
        0x16t
        0x14t
        0x5t
        0x4ct
        0x19t
        0x41t
        0x16t
        0x14t
        0xdt
        0x56t
        0x19t
        0x41t
        0x1t
        0x59t
        0x17t
        0x18t
        0x11t
        0x35t
        0x10t
        0x51t
        0x16t
        0x41t
        0x3t
        0x44t
        0x40t
        0x50t
        0x9t
        0x4bt
        0x15t
        0x44t
        0x29t
        0x5bt
        0x5t
        0x5ct
        0x50t
        0xat
        0x2t
        0xet
        0x44t
        0x1dt
        0x5dt
        0x9t
        0x16t
        0x18t
        0x44t
        0x6bt
        0x5ct
        0x16t
        0xct
        0x55t
        0x8t
        0x51t
        0x43t
        0xdt
        0xbt
        0x53t
        0x5et
        0x18t
        0x1ct
        0x0t
        0x8t
        0x47t
        0x4dt
    .end array-data
.end method

.method private loadNestedQuery(Lcom/google/firebase/database/core/Path;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathPrefixStartToPrefixEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->buildAncestorWhereClause(Lcom/google/firebase/database/core/Path;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x1b

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v6, "b0c704"

    const-wide/32 v8, 0x47bcfb72

    invoke-static {v3, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput-object v0, v4, v2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->SERVER_CACHE_TABLE:Ljava/lang/String;

    sget-object v7, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PATH_COLUMN_NAME:Ljava/lang/String;

    move-object v2, p2

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0x42t
        0x7ft
        0x31t
        0x17t
        0x18t
        0x44t
        0x3t
        0x44t
        0xbt
        0x17t
        0xet
        0x14t
        0x5dt
        0x10t
        0x22t
        0x79t
        0x74t
        0x14t
        0x12t
        0x51t
        0x17t
        0x5ft
        0x10t
        0x8t
        0x42t
        0xft
        0x4at
    .end array-data
.end method

.method private openDatabase(Landroid/content/Context;Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 6

    new-instance v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/16 v1, 0x1f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "aa2344"

    const-wide v4, -0x3e537aca26000000L    # -2.39246061E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    instance-of v1, v0, Landroid/database/sqlite/SQLiteDatabaseLockedException;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/firebase/database/DatabaseException;

    const/16 v2, 0x209

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "e1c08e"

    const/16 v4, -0x2c75

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/google/firebase/database/DatabaseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    throw v0

    nop

    :array_0
    .array-data 1
        0x31t
        0x33t
        0x73t
        0x74t
        0x79t
        0x75t
        0x41t
        0xdt
        0x5dt
        0x50t
        0x5ft
        0x5dt
        0xft
        0x6t
        0x6dt
        0x5et
        0x5bt
        0x50t
        0x4t
        0x41t
        0xft
        0x13t
        0x71t
        0x6ct
        0x22t
        0x2dt
        0x67t
        0x60t
        0x7dt
        0x62t
        0x24t
    .end array-data

    :array_1
    .array-data 1
        0x23t
        0x50t
        0xat
        0x5ct
        0x5dt
        0x1t
        0x45t
        0x45t
        0xct
        0x10t
        0x5ft
        0x4t
        0xct
        0x5ft
        0x43t
        0x55t
        0x40t
        0x6t
        0x9t
        0x44t
        0x10t
        0x59t
        0x4et
        0x0t
        0x45t
        0x5dt
        0xct
        0x53t
        0x53t
        0x45t
        0x11t
        0x5et
        0x43t
        0x76t
        0x51t
        0x17t
        0x0t
        0x53t
        0x2t
        0x43t
        0x5dt
        0x45t
        0x21t
        0x50t
        0x17t
        0x51t
        0x5at
        0x4t
        0x16t
        0x54t
        0x44t
        0x43t
        0x18t
        0xat
        0x3t
        0x57t
        0xft
        0x59t
        0x56t
        0x0t
        0x45t
        0x41t
        0x6t
        0x42t
        0x4bt
        0xct
        0x16t
        0x45t
        0x6t
        0x5et
        0x5bt
        0x0t
        0x4bt
        0x11t
        0x37t
        0x58t
        0x51t
        0x16t
        0x45t
        0x56t
        0x6t
        0x5et
        0x5dt
        0x17t
        0x4t
        0x5dt
        0xft
        0x49t
        0x18t
        0x8t
        0x0t
        0x50t
        0xdt
        0x43t
        0x18t
        0x1ct
        0xat
        0x44t
        0x43t
        0x51t
        0x4at
        0x0t
        0x45t
        0x44t
        0x10t
        0x59t
        0x56t
        0x2t
        0x45t
        0x77t
        0xat
        0x42t
        0x5dt
        0x7t
        0x4t
        0x42t
        0x6t
        0x10t
        0x7ct
        0x4t
        0x11t
        0x50t
        0x1t
        0x51t
        0x4bt
        0x0t
        0x45t
        0x57t
        0x11t
        0x5ft
        0x55t
        0x45t
        0x8t
        0x44t
        0xft
        0x44t
        0x51t
        0x15t
        0x9t
        0x54t
        0x43t
        0x40t
        0x4at
        0xat
        0x6t
        0x54t
        0x10t
        0x43t
        0x5dt
        0x16t
        0x45t
        0x58t
        0xdt
        0x10t
        0x41t
        0xat
        0x10t
        0x43t
        0x43t
        0x51t
        0x48t
        0x15t
        0x4bt
        0x11t
        0x28t
        0x55t
        0x5dt
        0x15t
        0x45t
        0x58t
        0xdt
        0x10t
        0x55t
        0xct
        0xbt
        0x55t
        0x43t
        0x44t
        0x50t
        0x4t
        0x11t
        0x11t
        0xet
        0x45t
        0x54t
        0x11t
        0xct
        0x1ct
        0x13t
        0x42t
        0x57t
        0x6t
        0x0t
        0x42t
        0x10t
        0x10t
        0x79t
        0xbt
        0x1t
        0x43t
        0xct
        0x59t
        0x5ct
        0x45t
        0x4t
        0x41t
        0x13t
        0x43t
        0x18t
        0x0t
        0x1dt
        0x54t
        0x0t
        0x45t
        0x4ct
        0x0t
        0x45t
        0x45t
        0xbt
        0x55t
        0x18t
        0x6t
        0xat
        0x55t
        0x6t
        0x10t
        0x51t
        0xbt
        0x45t
        0x48t
        0xct
        0x45t
        0x4at
        0x45t
        0x24t
        0x41t
        0x13t
        0x5ct
        0x51t
        0x6t
        0x4t
        0x45t
        0xat
        0x5ft
        0x56t
        0x45t
        0x6t
        0x5dt
        0x2t
        0x43t
        0x4bt
        0x45t
        0xct
        0x5ft
        0x43t
        0x51t
        0x54t
        0x9t
        0x45t
        0x41t
        0x11t
        0x5ft
        0x5bt
        0x0t
        0x16t
        0x42t
        0x6t
        0x43t
        0x14t
        0x45t
        0x16t
        0x5et
        0x43t
        0x49t
        0x57t
        0x10t
        0x45t
        0x5ct
        0x2t
        0x49t
        0x18t
        0xbt
        0x0t
        0x54t
        0x7t
        0x10t
        0x4ct
        0xat
        0x45t
        0x50t
        0x15t
        0x5ft
        0x51t
        0x1t
        0x45t
        0x58t
        0xdt
        0x59t
        0x4ct
        0xct
        0x4t
        0x5dt
        0xat
        0x4at
        0x51t
        0xbt
        0x2t
        0x11t
        0x25t
        0x59t
        0x4at
        0x0t
        0x7t
        0x50t
        0x10t
        0x55t
        0x7ct
        0x4t
        0x11t
        0x50t
        0x1t
        0x51t
        0x4bt
        0x0t
        0x45t
        0x58t
        0xdt
        0x10t
        0x41t
        0xat
        0x10t
        0x43t
        0x43t
        0x71t
        0x48t
        0x15t
        0x9t
        0x58t
        0x0t
        0x51t
        0x4ct
        0xct
        0xat
        0x5ft
        0x43t
        0x53t
        0x54t
        0x4t
        0x16t
        0x42t
        0x4dt
        0x10t
        0x71t
        0x3t
        0x45t
        0x48t
        0xct
        0x45t
        0x18t
        0x4t
        0x17t
        0x54t
        0x43t
        0x59t
        0x56t
        0x11t
        0x0t
        0x5ft
        0x17t
        0x59t
        0x57t
        0xbt
        0x4t
        0x5dt
        0xft
        0x49t
        0x18t
        0x10t
        0x16t
        0x58t
        0xdt
        0x57t
        0x18t
        0x23t
        0xct
        0x43t
        0x6t
        0x52t
        0x59t
        0x16t
        0x0t
        0x11t
        0x27t
        0x51t
        0x4ct
        0x4t
        0x7t
        0x50t
        0x10t
        0x55t
        0x18t
        0x3t
        0x17t
        0x5et
        0xet
        0x10t
        0x55t
        0x10t
        0x9t
        0x45t
        0xat
        0x40t
        0x54t
        0x0t
        0x45t
        0x41t
        0x11t
        0x5ft
        0x5bt
        0x0t
        0x16t
        0x42t
        0x6t
        0x43t
        0x14t
        0x45t
        0x1ct
        0x5et
        0x16t
        0x10t
        0x5bt
        0x4t
        0xbt
        0x11t
        0xct
        0x5et
        0x54t
        0x1ct
        0x45t
        0x54t
        0xdt
        0x51t
        0x5at
        0x9t
        0x0t
        0x11t
        0xct
        0x56t
        0x5et
        0x9t
        0xct
        0x5ft
        0x6t
        0x10t
        0x48t
        0x0t
        0x17t
        0x42t
        0xat
        0x43t
        0x4ct
        0x0t
        0xbt
        0x52t
        0x6t
        0x10t
        0x10t
        0xct
        0x4bt
        0x54t
        0x4dt
        0x10t
        0x5bt
        0x4t
        0x9t
        0x5dt
        0x43t
        0x43t
        0x5dt
        0x11t
        0x35t
        0x54t
        0x11t
        0x43t
        0x51t
        0x16t
        0x11t
        0x54t
        0xdt
        0x53t
        0x5dt
        0x20t
        0xbt
        0x50t
        0x1t
        0x5ct
        0x5dt
        0x1t
        0x4dt
        0x45t
        0x11t
        0x45t
        0x5dt
        0x4ct
        0x4ct
        0x11t
        0xat
        0x5et
        0x18t
        0xat
        0xbt
        0x54t
        0x43t
        0x5ft
        0x5et
        0x45t
        0x11t
        0x59t
        0x6t
        0x5dt
        0x16t
    .end array-data
.end method

.method private partKey(Lcom/google/firebase/database/core/Path;I)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PART_KEY_FORMAT:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static pathPrefixStartToPrefixEnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v2, [B

    const/16 v1, 0x19

    aput-byte v1, v0, v3

    const-string v1, "6a8183"

    const v2, -0x32221a5f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/google/firebase/database/core/Path;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v1, v2, [B

    const/16 v2, 0x1d

    aput-byte v2, v1, v3

    const-string v2, "2cb44f"

    const/16 v3, 0x42e9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private pruneTreeRecursive(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/persistence/PruneForest;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/firebase/database/core/utilities/ImmutableTree",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/firebase/database/core/persistence/PruneForest;",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/utilities/Pair",
            "<",
            "Lcom/google/firebase/database/core/Path;",
            "Lcom/google/firebase/database/snapshot/Node;",
            ">;>;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$1;

    invoke-direct {v1, p0, p4}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$1;-><init>(Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;Lcom/google/firebase/database/core/utilities/ImmutableTree;)V

    invoke-virtual {p5, v0, v1}, Lcom/google/firebase/database/core/persistence/PruneForest;->foldKeptNodes(Ljava/lang/Object;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v3, 0x26

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "20949b"

    invoke-static {v3, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v6, 0x0

    new-instance v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;

    invoke-direct {p0, v1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->loadNested(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    move-object v1, p0

    move-object v2, p4

    move-object v3, p6

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$2;-><init>(Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;Lcom/google/firebase/database/core/utilities/ImmutableTree;Ljava/util/List;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    invoke-virtual {p5, v6, v0}, Lcom/google/firebase/database/core/persistence/PruneForest;->foldKeptNodes(Ljava/lang/Object;Lcom/google/firebase/database/core/utilities/ImmutableTree$TreeVisitor;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChildren()Lcom/google/firebase/database/collection/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/collection/ImmutableSortedMap;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/database/snapshot/ChildKey;

    invoke-virtual {p5, v2}, Lcom/google/firebase/database/core/persistence/PruneForest;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/persistence/PruneForest;

    move-result-object v5

    invoke-virtual {p2, v1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    invoke-virtual {p4, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->getChild(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pruneTreeRecursive(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/persistence/PruneForest;Ljava/util/List;)V

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x7ct
        0x55t
        0x5ct
        0x50t
        0x19t
        0x16t
        0x5dt
        0x10t
        0x4bt
        0x51t
        0x4et
        0x10t
        0x5bt
        0x44t
        0x5ct
        0x14t
        0x1ct
        0x6t
        0x12t
        0x5et
        0x56t
        0x50t
        0x5ct
        0x11t
        0x12t
        0x52t
        0x5ct
        0x58t
        0x56t
        0x15t
        0x12t
        0x40t
        0x58t
        0x40t
        0x51t
        0x42t
        0x17t
        0x43t
    .end array-data
.end method

.method private removeNested(Ljava/lang/String;Lcom/google/firebase/database/core/Path;)I
    .locals 6

    const/4 v5, 0x0

    invoke-static {p2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathPrefixStartToPrefixEnd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v3, 0x16

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "cda6b8"

    invoke-static {v3, v4, v5, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-virtual {v2, p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    nop

    :array_0
    .array-data 1
        0x13t
        0x5t
        0x15t
        0x5et
        0x42t
        0x6t
        0x5et
        0x44t
        0x5et
        0x16t
        0x23t
        0x76t
        0x27t
        0x44t
        0x11t
        0x57t
        0x16t
        0x50t
        0x43t
        0x58t
        0x41t
        0x9t
    .end array-data
.end method

.method private saveNested(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)I
    .locals 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/google/firebase/database/core/utilities/NodeSizeEstimator;->estimateSerializedNodeSize(Lcom/google/firebase/database/snapshot/Node;)J

    move-result-wide v2

    instance-of v4, p2, Lcom/google/firebase/database/snapshot/ChildrenNode;

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x4000

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v4}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v5, 0x5e

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "db04fd"

    invoke-static {v5, v6, v1, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x2

    const/16 v2, 0x4000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveNested(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/database/snapshot/Node;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/google/firebase/database/snapshot/ChildKey;->getPriorityKey()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v0

    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->getPriority()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    add-int/lit8 v1, v1, 0x1

    :cond_2
    invoke-static {}, Lcom/google/firebase/database/snapshot/EmptyNode;->Empty()Lcom/google/firebase/database/snapshot/EmptyNode;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    add-int/lit8 v0, v1, 0x1

    :goto_1
    return v0

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V

    move v0, v1

    goto :goto_1

    :array_0
    .array-data 1
        0x2at
        0xdt
        0x54t
        0x51t
        0x46t
        0x1t
        0x17t
        0x16t
        0x59t
        0x59t
        0x7t
        0x10t
        0x1t
        0x6t
        0x10t
        0x47t
        0x3t
        0x16t
        0xdt
        0x3t
        0x5ct
        0x5dt
        0x1ct
        0x1t
        0x0t
        0x42t
        0x43t
        0x5dt
        0x1ct
        0x1t
        0x44t
        0x3t
        0x44t
        0x14t
        0x16t
        0x5t
        0x10t
        0xat
        0x10t
        0x11t
        0x15t
        0x44t
        0xbt
        0x4t
        0x10t
        0x11t
        0x2t
        0x44t
        0x6t
        0x1bt
        0x44t
        0x51t
        0x15t
        0x44t
        0x1t
        0x1at
        0x53t
        0x51t
        0x3t
        0x0t
        0x17t
        0x42t
        0x5ct
        0x5dt
        0xbt
        0xdt
        0x10t
        0x42t
        0x5ft
        0x52t
        0x46t
        0x41t
        0x0t
        0x42t
        0x52t
        0x4dt
        0x12t
        0x1t
        0x17t
        0x4ct
        0x10t
        0x67t
        0x16t
        0x8t
        0xdt
        0x16t
        0x44t
        0x5dt
        0x8t
        0x3t
        0x44t
        0x17t
        0x40t
        0x1at
    .end array-data
.end method

.method private saveNode(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v3, 0x40000

    const/4 v7, 0x5

    const/4 v6, 0x1

    const/4 v0, 0x0

    invoke-interface {p2, v6}, Lcom/google/firebase/database/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v1

    array-length v2, v1

    if-lt v2, v3, :cond_1

    invoke-static {v1, v3}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->splitBytes([BI)Ljava/util/List;

    move-result-object v2

    iget-object v1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v1}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x1b

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "af7dfc"

    invoke-static {v4, v5, v6, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x7

    new-array v4, v4, [B

    fill-array-data v4, :array_1

    const-string v5, "4f4997"

    invoke-static {v4, v5, v0, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PATH_COLUMN_NAME:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->partKey(Lcom/google/firebase/database/core/Path;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->VALUE_COLUMN_NAME:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->SERVER_CACHE_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v4, v8, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PATH_COLUMN_NAME:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->VALUE_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->SERVER_CACHE_TABLE:Ljava/lang/String;

    invoke-virtual {v1, v2, v8, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    :cond_2
    return-void

    :array_0
    .array-data 1
        0x32t
        0x7t
        0x41t
        0xdt
        0x8t
        0x4t
        0x41t
        0xet
        0x42t
        0x3t
        0x3t
        0x43t
        0xdt
        0x3t
        0x56t
        0x2t
        0x46t
        0xdt
        0xet
        0x2t
        0x52t
        0x44t
        0x11t
        0xat
        0x15t
        0xet
        0x17t
    .end array-data

    :array_1
    .array-data 1
        0x14t
        0x16t
        0x55t
        0x4bt
        0x4dt
        0x44t
        0x1at
    .end array-data
.end method

.method private saveWrite(Lcom/google/firebase/database/core/Path;JLjava/lang/String;[B)V
    .locals 10

    const/high16 v9, 0x40000

    const/4 v8, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITES_TABLE:Ljava/lang/String;

    const/4 v4, 0x6

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "bc1d53"

    const-wide v6, -0x3e21c61bc5800000L    # -2.028441834E9

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    array-length v2, p5

    if-lt v2, v9, :cond_0

    invoke-static {p5, v9}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->splitBytes([BI)Ljava/util/List;

    move-result-object v3

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_ID_COLUMN_NAME:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PATH_COLUMN_NAME:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_TYPE_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v4, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_PART_COLUMN_NAME:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v5, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_NODE_COLUMN_NAME:Ljava/lang/String;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITES_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v5, v1, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_ID_COLUMN_NAME:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PATH_COLUMN_NAME:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_TYPE_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v2, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    sget-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_PART_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_NODE_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v2, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITES_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2, v8}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0xbt
        0x7t
        0x11t
        0x59t
        0x15t
        0xct
    .end array-data
.end method

.method private serializeObject(Ljava/lang/Object;)[B
    .locals 5

    :try_start_0
    invoke-static {p1}, Lcom/google/firebase/database/util/JsonMapper;->serializeJsonValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "15bfbf"

    const v4, -0x31b25940

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :array_0
    .array-data 1
        0x72t
        0x5at
        0x17t
        0xat
        0x6t
        0x46t
        0x5ft
        0x5at
        0x16t
        0x46t
        0x11t
        0x3t
        0x43t
        0x5ct
        0x3t
        0xat
        0xbt
        0x1ct
        0x54t
        0x15t
        0xet
        0x3t
        0x3t
        0x0t
        0x11t
        0x5bt
        0xdt
        0x2t
        0x7t
    .end array-data
.end method

.method private static splitBytes([BI)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    const/4 v1, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p1

    add-int/lit8 v2, v0, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    array-length v4, p0

    mul-int v5, v0, p1

    sub-int/2addr v4, v5

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    new-array v5, v4, [B

    mul-int v6, v0, p1

    invoke-static {p0, v6, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private splitNodeRunLength(Lcom/google/firebase/database/core/Path;Ljava/util/List;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/Path;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    add-int/lit8 v1, p3, 0x1

    invoke-static {p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sub-int v3, v1, p3

    invoke-direct {p0, p1, v3}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->partKey(Lcom/google/firebase/database/core/Path;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PART_KEY_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sub-int v0, v1, p3

    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x21

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "2e74ae"

    const/16 v3, -0x4fbc

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x36

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "c87f9f"

    const-wide/32 v4, 0x72c6d1af

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x60t
        0x10t
        0x59t
        0x14t
        0x5t
        0xct
        0x56t
        0x45t
        0x59t
        0x5bt
        0x15t
        0x45t
        0x54t
        0xct
        0x59t
        0x5dt
        0x12t
        0xdt
        0x12t
        0x12t
        0x5et
        0x40t
        0x9t
        0x45t
        0x53t
        0x9t
        0x5bt
        0x14t
        0x11t
        0x4t
        0x40t
        0x11t
        0x44t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x26t
        0x40t
        0x43t
        0x14t
        0x58t
        0x5t
        0x17t
        0x51t
        0x59t
        0x1t
        0x19t
        0x15t
        0x13t
        0x54t
        0x5et
        0x12t
        0x19t
        0x8t
        0xct
        0x5ct
        0x52t
        0x15t
        0x19t
        0x8t
        0x6t
        0x5dt
        0x53t
        0x15t
        0x19t
        0x12t
        0xct
        0x18t
        0x44t
        0x12t
        0x58t
        0x14t
        0x17t
        0x18t
        0x40t
        0xft
        0x4dt
        0xet
        0x43t
        0x48t
        0x56t
        0x12t
        0x51t
        0x46t
        0x13t
        0x4at
        0x52t
        0x0t
        0x50t
        0x1et
    .end array-data
.end method

.method private updateServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Z)V
    .locals 11

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-nez p3, :cond_2

    sget-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->SERVER_CACHE_TABLE:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->removeNested(Ljava/lang/String;Lcom/google/firebase/database/core/Path;)I

    move-result v3

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveNested(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)I

    move-result v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v8, 0x48

    new-array v8, v8, [B

    fill-array-data v8, :array_0

    const-string v9, "31d68e"

    const v10, 0x4ea1006f

    invoke-static {v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v9, v2

    const/4 v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v9, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v1

    const/4 v1, 0x3

    sub-long v4, v6, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {p2}, Lcom/google/firebase/database/snapshot/Node;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/NamedNode;

    sget-object v7, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->SERVER_CACHE_TABLE:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v8

    invoke-direct {p0, v7, v8}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->removeNested(Ljava/lang/String;Lcom/google/firebase/database/core/Path;)I

    move-result v7

    add-int/2addr v3, v7

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getName()Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/snapshot/ChildKey;)Lcom/google/firebase/database/core/Path;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/NamedNode;->getNode()Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveNested(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x63t
        0x54t
        0x16t
        0x45t
        0x51t
        0x16t
        0x47t
        0x54t
        0x0t
        0x16t
        0x59t
        0x45t
        0x47t
        0x5et
        0x10t
        0x57t
        0x54t
        0x45t
        0x5ct
        0x57t
        0x44t
        0x13t
        0x5ct
        0x45t
        0x41t
        0x5et
        0x13t
        0x45t
        0x18t
        0x4t
        0x5dt
        0x55t
        0x44t
        0x52t
        0x5dt
        0x9t
        0x56t
        0x45t
        0x1t
        0x52t
        0x18t
        0x40t
        0x57t
        0x11t
        0x16t
        0x59t
        0x4ft
        0x16t
        0x13t
        0x57t
        0xbt
        0x44t
        0x18t
        0x4t
        0x13t
        0x42t
        0x1t
        0x42t
        0x18t
        0x4t
        0x47t
        0x11t
        0x41t
        0x45t
        0x18t
        0xct
        0x5dt
        0x11t
        0x41t
        0x52t
        0x55t
        0x16t
    .end array-data
.end method

.method private verifyInsideTransaction()V
    .locals 6

    iget-boolean v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->insideTransaction:Z

    const/16 v1, 0x2f

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "93b8a3"

    const-wide/32 v4, 0x3ed2048c

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x6dt
        0x41t
        0x3t
        0x56t
        0x12t
        0x52t
        0x5at
        0x47t
        0xbt
        0x57t
        0xft
        0x13t
        0x5ct
        0x4bt
        0x12t
        0x5dt
        0x2t
        0x47t
        0x5ct
        0x57t
        0x42t
        0x4ct
        0xet
        0x13t
        0x58t
        0x5ft
        0x10t
        0x5dt
        0x0t
        0x57t
        0x40t
        0x13t
        0x0t
        0x5dt
        0x41t
        0x5at
        0x57t
        0x13t
        0x12t
        0x4at
        0xet
        0x54t
        0x4bt
        0x56t
        0x11t
        0x4bt
        0x4ft
    .end array-data
.end method


# virtual methods
.method public beginTransaction()V
    .locals 6

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->insideTransaction:Z

    xor-int/lit8 v0, v0, 0x1

    const/16 v1, 0x4c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ba1855"

    const-wide/32 v4, 0x1822776f    # 2.000531004E-315

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/firebase/database/core/utilities/Utilities;->hardAssert(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v0}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "b4a049"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->insideTransaction:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->transactionStart:J

    return-void

    nop

    :array_0
    .array-data 1
        0x10t
        0x14t
        0x5ft
        0x71t
        0x5bt
        0x61t
        0x10t
        0x0t
        0x5ft
        0x4bt
        0x54t
        0x56t
        0x16t
        0x8t
        0x5et
        0x56t
        0x15t
        0x56t
        0x3t
        0xdt
        0x5dt
        0x5dt
        0x51t
        0x15t
        0x15t
        0x9t
        0x54t
        0x56t
        0x15t
        0x54t
        0xct
        0x41t
        0x54t
        0x40t
        0x5ct
        0x46t
        0x16t
        0x8t
        0x5ft
        0x5ft
        0x15t
        0x41t
        0x10t
        0x0t
        0x5ft
        0x4bt
        0x54t
        0x56t
        0x16t
        0x8t
        0x5et
        0x56t
        0x15t
        0x5ct
        0x11t
        0x41t
        0x50t
        0x54t
        0x47t
        0x50t
        0x3t
        0x5t
        0x48t
        0x18t
        0x5ct
        0x5bt
        0x42t
        0x11t
        0x43t
        0x57t
        0x52t
        0x47t
        0x7t
        0x12t
        0x42t
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x31t
        0x40t
        0x0t
        0x42t
        0x40t
        0x50t
        0xct
        0x53t
        0x41t
        0x44t
        0x46t
        0x58t
        0xct
        0x47t
        0x0t
        0x53t
        0x40t
        0x50t
        0xdt
        0x5at
        0x4ft
    .end array-data
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public deleteTrackedQuery(J)V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_TABLE:Ljava/lang/String;

    new-array v3, v8, [B

    fill-array-data v3, :array_0

    const-string v4, "3109c8"

    const v5, -0x3112f750

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_TABLE:Ljava/lang/String;

    new-array v3, v8, [B

    fill-array-data v3, :array_1

    const-string v4, "6d02ab"

    const/16 v5, -0x3195

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    aput-object v0, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 1
        0x5at
        0x55t
        0x10t
        0x4t
        0x43t
        0x7t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x5ft
        0x0t
        0x10t
        0xft
        0x41t
        0x5dt
    .end array-data
.end method

.method public endTransaction()V
    .locals 10

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iput-boolean v7, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->insideTransaction:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->transactionStart:J

    iget-object v4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v4}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v5, 0x24

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "d6ee7e"

    const-wide v8, 0x41c66df754000000L    # 7.52610984E8

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x30t
        0x44t
        0x4t
        0xbt
        0x44t
        0x4t
        0x7t
        0x42t
        0xct
        0xat
        0x59t
        0x45t
        0x7t
        0x59t
        0x8t
        0x15t
        0x5bt
        0x0t
        0x10t
        0x53t
        0x1t
        0x4bt
        0x17t
        0x20t
        0x8t
        0x57t
        0x15t
        0x16t
        0x52t
        0x1t
        0x5et
        0x16t
        0x40t
        0x1t
        0x5at
        0x16t
    .end array-data
.end method

.method public loadTrackedQueries()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/persistence/TrackedQuery;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_TABLE:Ljava/lang/String;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    sget-object v4, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_ID_COLUMN_NAME:Ljava/lang/String;

    aput-object v4, v2, v9

    sget-object v4, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PATH_COLUMN_NAME:Ljava/lang/String;

    aput-object v4, v2, v8

    sget-object v4, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_PARAMS_COLUMN_NAME:Ljava/lang/String;

    aput-object v4, v2, v5

    sget-object v4, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_LAST_USE_COLUMN_NAME:Ljava/lang/String;

    aput-object v4, v2, v6

    const/4 v4, 0x4

    sget-object v5, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_COMPLETE_COLUMN_NAME:Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x5

    sget-object v5, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_ACTIVE_COLUMN_NAME:Ljava/lang/String;

    aput-object v5, v2, v4

    sget-object v7, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_ID_COLUMN_NAME:Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    new-instance v0, Lcom/google/firebase/database/core/Path;

    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-static {v3}, Lcom/google/firebase/database/util/JsonMapper;->parseJson(Ljava/lang/String;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :try_start_2
    invoke-static {v0, v3}, Lcom/google/firebase/database/core/view/QuerySpec;->fromPathAndQueryObject(Lcom/google/firebase/database/core/Path;Ljava/util/Map;)Lcom/google/firebase/database/core/view/QuerySpec;

    move-result-object v3

    const/4 v0, 0x3

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v0, 0x4

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v6, v8

    :goto_1
    const/4 v0, 0x5

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v7, v8

    :goto_2
    new-instance v0, Lcom/google/firebase/database/core/persistence/TrackedQuery;

    invoke-direct/range {v0 .. v7}, Lcom/google/firebase/database/core/persistence/TrackedQuery;-><init>(JLcom/google/firebase/database/core/view/QuerySpec;JZZ)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move v6, v9

    goto :goto_1

    :cond_1
    move v7, v9

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v3, 0x21

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "3f2707"

    const v5, -0x31b5736b

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sub-long/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    return-object v13

    :array_0
    .array-data 1
        0x7ft
        0x9t
        0x53t
        0x53t
        0x55t
        0x53t
        0x13t
        0x43t
        0x56t
        0x17t
        0x44t
        0x45t
        0x52t
        0x5t
        0x59t
        0x52t
        0x54t
        0x17t
        0x42t
        0x13t
        0x57t
        0x45t
        0x59t
        0x52t
        0x40t
        0x46t
        0x5bt
        0x59t
        0x10t
        0x12t
        0x57t
        0xbt
        0x41t
    .end array-data
.end method

.method public loadTrackedQueryKeys(J)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;"
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->loadTrackedQueryKeys(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public loadTrackedQueryKeys(Ljava/util/Set;)Ljava/util/Set;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x7

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "9638c7"

    const-wide/32 v6, 0x4c761daa

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->commaSeparatedList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-array v2, v1, [B

    const/16 v3, 0x1b

    aput-byte v3, v2, v8

    const-string v3, "21b062"

    const-wide v6, 0x41d7fc5ea7400000L    # 1.609661085E9

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_TABLE:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/String;

    sget-object v6, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_KEY_COLUMN_NAME:Ljava/lang/String;

    aput-object v6, v3, v8

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/database/snapshot/ChildKey;->fromString(Ljava/lang/String;)Lcom/google/firebase/database/snapshot/ChildKey;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v4}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v5, 0x3d

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "f0e053"

    const-wide/32 v8, 0x4bdf62f4

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sub-long/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v3}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-object v0

    :array_0
    .array-data 1
        0x50t
        0x52t
        0x13t
        0x71t
        0x2dt
        0x17t
        0x11t
    .end array-data

    :array_1
    .array-data 1
        0x2at
        0x5ft
        0x4t
        0x54t
        0x50t
        0x57t
        0x46t
        0x15t
        0x1t
        0x10t
        0x41t
        0x41t
        0x7t
        0x53t
        0xet
        0x55t
        0x51t
        0x13t
        0x17t
        0x45t
        0x0t
        0x42t
        0x5ct
        0x56t
        0x15t
        0x10t
        0xet
        0x55t
        0x4ct
        0x40t
        0x46t
        0x56t
        0xat
        0x42t
        0x15t
        0x47t
        0x14t
        0x51t
        0x6t
        0x5bt
        0x50t
        0x57t
        0x46t
        0x41t
        0x10t
        0x55t
        0x47t
        0x5at
        0x3t
        0x43t
        0x45t
        0x15t
        0x46t
        0x13t
        0xft
        0x5et
        0x45t
        0x15t
        0x51t
        0x5et
        0x15t
    .end array-data
.end method

.method public loadUserWrites()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/UserWriteRecord;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x4

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITES_TABLE:Ljava/lang/String;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    sget-object v4, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_ID_COLUMN_NAME:Ljava/lang/String;

    aput-object v4, v2, v5

    sget-object v4, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PATH_COLUMN_NAME:Ljava/lang/String;

    aput-object v4, v2, v6

    sget-object v4, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_TYPE_COLUMN_NAME:Ljava/lang/String;

    aput-object v4, v2, v7

    const/4 v4, 0x3

    sget-object v5, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_PART_COLUMN_NAME:Ljava/lang/String;

    aput-object v5, v2, v4

    sget-object v4, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_NODE_COLUMN_NAME:Ljava/lang/String;

    aput-object v4, v2, v10

    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "1f32b2"

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    new-instance v4, Lcom/google/firebase/database/core/Path;

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    :goto_1
    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->UTF8_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v5}, Lcom/google/firebase/database/util/JsonMapper;->parseJsonValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_TYPE_OVERWRITE:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v0}, Lcom/google/firebase/database/snapshot/NodeUtilities;->NodeFromJSON(Ljava/lang/Object;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v5

    new-instance v1, Lcom/google/firebase/database/core/UserWriteRecord;

    const/4 v6, 0x1

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/database/core/UserWriteRecord;-><init>(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Z)V

    :goto_2
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    const/16 v2, 0x15

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "1d2d22"

    const/16 v4, 0x4db5

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const/4 v5, 0x4

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    cmp-long v5, v12, v2

    if-eqz v5, :cond_1

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToPrevious()Z

    invoke-direct {p0, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->joinBytes(Ljava/util/List;)[B

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_TYPE_MERGE:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v1, Lcom/google/firebase/database/core/UserWriteRecord;

    check-cast v0, Ljava/util/Map;

    invoke-static {v0}, Lcom/google/firebase/database/core/CompoundWrite;->fromValue(Ljava/util/Map;)Lcom/google/firebase/database/core/CompoundWrite;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/google/firebase/database/core/UserWriteRecord;-><init>(JLcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x18

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "d9a879"

    const-wide/32 v8, -0x2571165b

    invoke-static {v3, v4, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v3, 0x18

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "4a8e06"

    const-wide v12, -0x3e2ec82ad3c00000L    # -1.155486897E9

    invoke-static {v3, v4, v12, v13}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sub-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v10

    nop

    :array_0
    .array-data 1
        0x58t
        0x2t
        0x1ft
        0x12t
        0x12t
        0x53t
        0x43t
        0x12t
    .end array-data

    :array_1
    .array-data 1
        0x77t
        0x5t
        0x5bt
        0x8t
        0x57t
        0x56t
        0x11t
        0x10t
        0x5dt
        0x44t
        0x5et
        0x5dt
        0x50t
        0x0t
        0x12t
        0x13t
        0x40t
        0x5bt
        0x45t
        0x1t
        0x41t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x23t
        0x56t
        0x15t
        0x18t
        0x5et
        0x57t
        0x12t
        0x58t
        0xdt
        0x51t
        0x53t
        0x19t
        0x13t
        0x4bt
        0x8t
        0x4ct
        0x52t
        0x19t
        0x10t
        0x40t
        0x11t
        0x5dt
        0xdt
        0x19t
    .end array-data

    :array_3
    .array-data 1
        0x78t
        0xet
        0x59t
        0x1t
        0x55t
        0x52t
        0x14t
        0x44t
        0x5ct
        0x45t
        0x47t
        0x44t
        0x5dt
        0x15t
        0x5dt
        0x16t
        0x10t
        0x5ft
        0x5at
        0x41t
        0x1dt
        0x1t
        0x5dt
        0x45t
    .end array-data
.end method

.method public mergeIntoServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;)V
    .locals 12

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/google/firebase/database/core/CompoundWrite;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    move v4, v3

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v8, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->SERVER_CACHE_TABLE:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-direct {p0, v8, v1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->removeNested(Ljava/lang/String;Lcom/google/firebase/database/core/Path;)I

    move-result v1

    add-int/2addr v2, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {p0, v1, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveNested(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)I

    move-result v0

    add-int/2addr v0, v4

    move v4, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v5}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v8, 0x4a

    new-array v8, v8, [B

    fill-array-data v8, :array_0

    const-string v9, "0b0e79"

    const-wide/32 v10, -0x2f1070f6

    invoke-static {v8, v9, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v9, v3

    const/4 v4, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v4

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/google/firebase/database/core/Path;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    const/4 v2, 0x3

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v2

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x60t
        0x7t
        0x42t
        0x16t
        0x5et
        0x4at
        0x44t
        0x7t
        0x54t
        0x45t
        0x56t
        0x19t
        0x44t
        0xdt
        0x44t
        0x4t
        0x5bt
        0x19t
        0x5ft
        0x4t
        0x10t
        0x40t
        0x53t
        0x19t
        0x42t
        0xdt
        0x47t
        0x16t
        0x17t
        0x58t
        0x5et
        0x6t
        0x10t
        0x1t
        0x52t
        0x55t
        0x55t
        0x16t
        0x55t
        0x1t
        0x17t
        0x1ct
        0x54t
        0x42t
        0x42t
        0xat
        0x40t
        0x4at
        0x10t
        0x4t
        0x5ft
        0x17t
        0x17t
        0x58t
        0x10t
        0xft
        0x55t
        0x17t
        0x50t
        0x5ct
        0x10t
        0x3t
        0x44t
        0x45t
        0x12t
        0x4at
        0x10t
        0xbt
        0x5et
        0x45t
        0x12t
        0x5dt
        0x5dt
        0x11t
    .end array-data
.end method

.method public mergeIntoServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->updateServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Z)V

    return-void
.end method

.method public overwriteServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->updateServerCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;Z)V

    return-void
.end method

.method public pruneCache(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/persistence/PruneForest;)V
    .locals 12

    invoke-virtual {p2}, Lcom/google/firebase/database/core/persistence/PruneForest;->prunesAnything()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->ROW_ID_COLUMN_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PATH_COLUMN_NAME:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->loadNestedQuery(Lcom/google/firebase/database/core/Path;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    new-instance v3, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    const/4 v1, 0x0

    invoke-direct {v3, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/google/firebase/database/core/utilities/ImmutableTree;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;-><init>(Ljava/lang/Object;)V

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    new-instance v1, Lcom/google/firebase/database/core/Path;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/firebase/database/core/Path;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/google/firebase/database/core/Path;->contains(Lcom/google/firebase/database/core/Path;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x12

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    const-string v7, "1ef4e7"

    const-wide/32 v10, -0x2c23e98

    invoke-static {v6, v7, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x26

    new-array v6, v6, [B

    fill-array-data v6, :array_1

    const-string v7, "ee0855"

    const/4 v10, 0x0

    invoke-static {v6, v7, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0xb

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v6, "267389"

    const/16 v7, -0x2c93

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->warn(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/google/firebase/database/core/Path;->getRelative(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/google/firebase/database/core/persistence/PruneForest;->shouldPruneUnkeptDescendants(Lcom/google/firebase/database/core/Path;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v3

    goto :goto_1

    :cond_3
    invoke-virtual {p2, v2}, Lcom/google/firebase/database/core/persistence/PruneForest;->shouldKeep(Lcom/google/firebase/database/core/Path;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v2, v1}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->set(Lcom/google/firebase/database/core/Path;Ljava/lang/Object;)Lcom/google/firebase/database/core/utilities/ImmutableTree;

    move-result-object v4

    goto/16 :goto_1

    :cond_4
    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x12

    new-array v6, v6, [B

    fill-array-data v6, :array_3

    const-string v7, "2773d5"

    const/4 v10, 0x0

    invoke-static {v6, v7, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x12

    new-array v6, v6, [B

    fill-array-data v6, :array_4

    const-string v7, "737015"

    const/4 v10, 0x1

    invoke-static {v6, v7, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v5, 0x34

    new-array v5, v5, [B

    fill-array-data v5, :array_5

    const-string v6, "c64fce"

    const/16 v7, -0x3e83

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/firebase/database/logging/LogWrapper;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/firebase/database/core/Path;->getEmptyPath()Lcom/google/firebase/database/core/Path;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pruneTreeRecursive(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/utilities/ImmutableTree;Lcom/google/firebase/database/core/persistence/PruneForest;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/google/firebase/database/core/utilities/ImmutableTree;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v3, "e9890a"

    const-wide/32 v4, 0x213671f4

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->commaSeparatedList(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v3, 0x0

    const/16 v4, 0x1b

    aput-byte v4, v1, v3

    const-string v3, "2913c7"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->SERVER_CACHE_TABLE:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/firebase/database/core/utilities/Pair;

    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/core/Path;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/core/Path;->child(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-virtual {v1}, Lcom/google/firebase/database/core/utilities/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/Node;

    invoke-direct {p0, v4, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveNested(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;)I

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v4}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v5, 0x2c

    new-array v5, v5, [B

    fill-array-data v5, :array_7

    const-string v6, "9623ac"

    const v7, 0x4ec418b3

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v7

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x2

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x66t
        0x0t
        0x46t
        0x55t
        0x17t
        0x52t
        0x11t
        0x15t
        0x14t
        0x41t
        0xbt
        0x5et
        0x5ft
        0x2t
        0x46t
        0x55t
        0x11t
        0x17t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x45t
        0x7t
        0x45t
        0x4ct
        0x15t
        0x42t
        0x0t
        0x45t
        0x58t
        0x59t
        0x43t
        0x50t
        0x45t
        0x1t
        0x51t
        0x4ct
        0x54t
        0x15t
        0x16t
        0x11t
        0x5ft
        0x4at
        0x50t
        0x51t
        0x45t
        0xdt
        0x59t
        0x5ft
        0x5dt
        0x50t
        0x17t
        0x45t
        0x45t
        0x48t
        0x15t
        0x54t
        0x11t
        0x45t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1ct
        0x16t
        0x7et
        0x54t
        0x56t
        0x56t
        0x40t
        0x5ft
        0x59t
        0x54t
        0x16t
    .end array-data

    :array_3
    .array-data 1
        0x65t
        0x52t
        0x17t
        0x52t
        0x16t
        0x50t
        0x12t
        0x47t
        0x45t
        0x46t
        0xat
        0x5ct
        0x5ct
        0x50t
        0x17t
        0x52t
        0x10t
        0x15t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x17t
        0x52t
        0x59t
        0x54t
        0x11t
        0x5dt
        0x56t
        0x45t
        0x52t
        0x10t
        0x55t
        0x54t
        0x43t
        0x52t
        0x17t
        0x51t
        0x45t
        0x15t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x43t
        0x42t
        0x5ct
        0x7t
        0x17t
        0x45t
        0xat
        0x45t
        0x5at
        0x41t
        0x17t
        0x45t
        0xet
        0x57t
        0x46t
        0xdt
        0x6t
        0x1t
        0x43t
        0x50t
        0x5bt
        0x14t
        0x43t
        0x15t
        0x11t
        0x43t
        0x5at
        0xft
        0xdt
        0x2t
        0x43t
        0x59t
        0x46t
        0x46t
        0x8t
        0x0t
        0x6t
        0x46t
        0x5dt
        0x8t
        0x4t
        0x4bt
        0x43t
        0x7ft
        0x53t
        0x8t
        0xct
        0x17t
        0xat
        0x58t
        0x53t
        0x48t
    .end array-data

    :array_6
    .array-data 1
        0x17t
        0x56t
        0x4ft
        0x50t
        0x54t
        0x41t
        0x2ct
        0x77t
        0x18t
        0x11t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x69t
        0x44t
        0x47t
        0x5dt
        0x4t
        0x7t
        0x19t
        0x13t
        0x56t
        0x13t
        0x13t
        0xct
        0x4et
        0x45t
        0x12t
        0x44t
        0x8t
        0x17t
        0x51t
        0x16t
        0x17t
        0x57t
        0x41t
        0xdt
        0x56t
        0x52t
        0x57t
        0x40t
        0x41t
        0x11t
        0x5ct
        0x45t
        0x53t
        0x45t
        0x4t
        0x7t
        0x19t
        0x5ft
        0x5ct
        0x13t
        0x44t
        0x7t
        0x54t
        0x45t
    .end array-data
.end method

.method public purgeCache()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->SERVER_CACHE_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITES_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_TABLE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public removeAllUserWrites()V
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITES_TABLE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v3}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v6, 0x21

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    const-string v7, "fa8ded"

    const v8, 0x4e4badae    # 8.542893E8f

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v9

    const/4 v2, 0x1

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x22t
        0x4t
        0x54t
        0x1t
        0x11t
        0x1t
        0x2t
        0x41t
        0x1dt
        0x0t
        0x45t
        0x4ct
        0x7t
        0xdt
        0x54t
        0x4dt
        0x45t
        0x13t
        0x14t
        0x8t
        0x4ct
        0x1t
        0x4dt
        0x17t
        0x4ft
        0x41t
        0x51t
        0xat
        0x45t
        0x41t
        0x2t
        0xct
        0x4bt
    .end array-data
.end method

.method public removeUserWrite(J)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v3, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITES_TABLE:Ljava/lang/String;

    const/4 v4, 0x6

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "9eb347"

    invoke-static {v4, v5, v9, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v3}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v6, 0x2b

    new-array v6, v6, [B

    fill-array-data v6, :array_1

    const-string v7, "0a301e"

    const v8, 0x4ef53a31

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v10

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v7, v9

    const/4 v2, 0x2

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x50t
        0x1t
        0x42t
        0xet
        0x14t
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x74t
        0x4t
        0x5ft
        0x55t
        0x45t
        0x0t
        0x54t
        0x41t
        0x16t
        0x54t
        0x11t
        0x12t
        0x42t
        0x8t
        0x47t
        0x55t
        0x19t
        0x16t
        0x19t
        0x41t
        0x44t
        0x59t
        0x45t
        0xdt
        0x10t
        0x16t
        0x41t
        0x59t
        0x45t
        0x0t
        0x79t
        0x5t
        0x13t
        0x15t
        0x55t
        0x45t
        0x59t
        0xft
        0x13t
        0x15t
        0x55t
        0x8t
        0x43t
    .end array-data
.end method

.method public resetPreviouslyActiveTrackedQueries(J)V
    .locals 11

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_ACTIVE_COLUMN_NAME:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_LAST_USE_COLUMN_NAME:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_TABLE:Ljava/lang/String;

    const/16 v3, 0xa

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "bf50b0"

    const-wide v8, 0x41d1043336000000L    # 1.141951704E9

    invoke-static {v3, v4, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/String;

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v3, 0x24

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "0d0f6d"

    const v5, 0x4e9259e2

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x3t
        0x5t
        0x41t
        0x59t
        0x14t
        0x55t
        0x42t
        0x5bt
        0x15t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x62t
        0x1t
        0x43t
        0x3t
        0x42t
        0x44t
        0x51t
        0x7t
        0x44t
        0xft
        0x40t
        0x1t
        0x10t
        0x10t
        0x42t
        0x7t
        0x55t
        0xft
        0x55t
        0x0t
        0x10t
        0x17t
        0x43t
        0x1t
        0x42t
        0xdt
        0x55t
        0x15t
        0x16t
        0xdt
        0x5et
        0x44t
        0x15t
        0x2t
        0x5bt
        0x17t
    .end array-data
.end method

.method public saveTrackedQuery(Lcom/google/firebase/database/core/persistence/TrackedQuery;)V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v3, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_ID_COLUMN_NAME:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PATH_COLUMN_NAME:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/QuerySpec;->getPath()Lcom/google/firebase/database/core/Path;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->pathToKey(Lcom/google/firebase/database/core/Path;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_PARAMS_COLUMN_NAME:Ljava/lang/String;

    iget-object v4, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->querySpec:Lcom/google/firebase/database/core/view/QuerySpec;

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/QuerySpec;->getParams()Lcom/google/firebase/database/core/view/QueryParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/firebase/database/core/view/QueryParams;->toJSON()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_LAST_USE_COLUMN_NAME:Ljava/lang/String;

    iget-wide v4, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->lastUse:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_COMPLETE_COLUMN_NAME:Ljava/lang/String;

    iget-boolean v4, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->complete:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object v3, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_ACTIVE_COLUMN_NAME:Ljava/lang/String;

    iget-boolean v4, p1, Lcom/google/firebase/database/core/persistence/TrackedQuery;->active:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_QUERY_TABLE:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x5

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v4}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v5, 0x1f

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "86e49f"

    const/16 v7, 0x1c1e

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x6bt
        0x57t
        0x13t
        0x51t
        0x5dt
        0x46t
        0x56t
        0x53t
        0x12t
        0x14t
        0x4dt
        0x14t
        0x59t
        0x55t
        0xet
        0x51t
        0x5dt
        0x46t
        0x49t
        0x43t
        0x0t
        0x46t
        0x40t
        0x46t
        0x51t
        0x58t
        0x45t
        0x11t
        0x5dt
        0xbt
        0x4bt
    .end array-data
.end method

.method public saveTrackedQueryKeys(JLjava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v1, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_TABLE:Ljava/lang/String;

    const/4 v4, 0x6

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "254612"

    invoke-static {v4, v5, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/ChildKey;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    sget-object v5, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_ID_COLUMN_NAME:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v5, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_KEY_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_TABLE:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v4}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v5, 0x36

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "479783"

    invoke-static {v5, v6, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 1
        0x5bt
        0x51t
        0x14t
        0xbt
        0x11t
        0xdt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x67t
        0x52t
        0x4dt
        0x17t
        0x1dt
        0x57t
        0x14t
        0x43t
        0x4bt
        0x56t
        0x5bt
        0x58t
        0x51t
        0x53t
        0x19t
        0x46t
        0x4dt
        0x56t
        0x46t
        0x4et
        0x19t
        0x5ct
        0x5dt
        0x4at
        0x47t
        0x17t
        0x5ft
        0x58t
        0x4at
        0x13t
        0x40t
        0x45t
        0x58t
        0x54t
        0x53t
        0x56t
        0x50t
        0x17t
        0x48t
        0x42t
        0x5dt
        0x41t
        0x4dt
        0x17t
        0x1ct
        0x53t
        0x18t
        0x5at
        0x5at
        0x17t
        0x1ct
        0x53t
        0x55t
        0x40t
    .end array-data
.end method

.method public saveUserMerge(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/core/CompoundWrite;J)V
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v4, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_TYPE_MERGE:Ljava/lang/String;

    invoke-virtual {p2, v9}, Lcom/google/firebase/database/core/CompoundWrite;->getValue(Z)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveWrite(Lcom/google/firebase/database/core/Path;JLjava/lang/String;[B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v3, 0x1c

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "4f81ed"

    invoke-static {v3, v4, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x64t
        0x3t
        0x4at
        0x42t
        0xct
        0x17t
        0x40t
        0x3t
        0x5ct
        0x11t
        0x10t
        0x17t
        0x51t
        0x14t
        0x18t
        0x5ct
        0x0t
        0x16t
        0x53t
        0x3t
        0x18t
        0x58t
        0xbt
        0x44t
        0x11t
        0x2t
        0x55t
        0x42t
    .end array-data
.end method

.method public saveUserOverwrite(Lcom/google/firebase/database/core/Path;Lcom/google/firebase/database/snapshot/Node;J)V
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sget-object v4, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->WRITE_TYPE_OVERWRITE:Ljava/lang/String;

    invoke-interface {p2, v9}, Lcom/google/firebase/database/snapshot/Node;->getValue(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->serializeObject(Ljava/lang/Object;)[B

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->saveWrite(Lcom/google/firebase/database/core/Path;JLjava/lang/String;[B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v2}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v3, 0x20

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "7cadf8"

    invoke-static {v3, v4, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/Object;

    sub-long/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        0x67t
        0x6t
        0x13t
        0x17t
        0xft
        0x4bt
        0x43t
        0x6t
        0x5t
        0x44t
        0x13t
        0x4bt
        0x52t
        0x11t
        0x41t
        0xbt
        0x10t
        0x5dt
        0x45t
        0x14t
        0x13t
        0xdt
        0x12t
        0x5dt
        0x17t
        0xat
        0xft
        0x44t
        0x43t
        0x5ct
        0x5at
        0x10t
    .end array-data
.end method

.method public serverCache(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->loadNested(Lcom/google/firebase/database/core/Path;)Lcom/google/firebase/database/snapshot/Node;

    move-result-object v0

    return-object v0
.end method

.method public serverCacheEstimatedSizeInBytes()J
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x2b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "e574bb"

    const-wide/32 v2, -0x441ea909

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->VALUE_COLUMN_NAME:Ljava/lang/String;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->PATH_COLUMN_NAME:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->SERVER_CACHE_TABLE:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-wide v2

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "282e32"

    const/16 v4, 0x724c

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :array_0
    .array-data 1
        0x36t
        0x70t
        0x7bt
        0x71t
        0x21t
        0x36t
        0x45t
        0x46t
        0x42t
        0x59t
        0x4at
        0xet
        0x0t
        0x5bt
        0x50t
        0x40t
        0xat
        0x4at
        0x40t
        0x46t
        0x1et
        0x14t
        0x49t
        0x42t
        0x9t
        0x50t
        0x59t
        0x53t
        0x16t
        0xat
        0x4dt
        0x10t
        0x44t
        0x1dt
        0x4bt
        0x42t
        0x23t
        0x67t
        0x78t
        0x79t
        0x42t
        0x47t
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x71t
        0x57t
        0x47t
        0x9t
        0x57t
        0x5ct
        0x15t
        0x4ct
        0x12t
        0x17t
        0x56t
        0x53t
        0x56t
        0x18t
        0x56t
        0x4t
        0x47t
        0x53t
        0x50t
        0x59t
        0x41t
        0x0t
        0x13t
        0x40t
        0x57t
        0x4bt
        0x47t
        0x9t
        0x47t
        0x13t
    .end array-data
.end method

.method public setTransactionSuccessful()V
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public updateTrackedQueryKeys(JLjava/util/Set;Ljava/util/Set;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/google/firebase/database/snapshot/ChildKey;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->verifyInsideTransaction()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/ChildKey;

    iget-object v4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_TABLE:Ljava/lang/String;

    const/16 v6, 0x12

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    const-string v7, "179a3d"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/database/snapshot/ChildKey;

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    sget-object v5, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_ID_COLUMN_NAME:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v5, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_KEY_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/firebase/database/snapshot/ChildKey;->asString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->database:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v5, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->TRACKED_KEYS_TABLE:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v0, v5, v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    invoke-virtual {v4}, Lcom/google/firebase/database/logging/LogWrapper;->logsDebug()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;->logger:Lcom/google/firebase/database/logging/LogWrapper;

    const/16 v5, 0x51

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "846c7a"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v1}, Lcom/google/firebase/database/logging/LogWrapper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    nop

    :array_0
    .array-data 1
        0x58t
        0x53t
        0x19t
        0x5ct
        0x13t
        0x5bt
        0x11t
        0x76t
        0x77t
        0x25t
        0x13t
        0xft
        0x54t
        0x4et
        0x19t
        0x5ct
        0x13t
        0x5bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6dt
        0x44t
        0x52t
        0x2t
        0x43t
        0x4t
        0x5ct
        0x14t
        0x42t
        0x11t
        0x56t
        0x2t
        0x53t
        0x51t
        0x52t
        0x43t
        0x46t
        0x14t
        0x5dt
        0x46t
        0x4ft
        0x43t
        0x5ct
        0x4t
        0x41t
        0x47t
        0x16t
        0x4bt
        0x12t
        0x5t
        0x18t
        0x55t
        0x52t
        0x7t
        0x52t
        0x5t
        0x14t
        0x14t
        0x13t
        0x7t
        0x17t
        0x13t
        0x5dt
        0x59t
        0x59t
        0x15t
        0x52t
        0x5t
        0x11t
        0x14t
        0x50t
        0xct
        0x45t
        0x41t
        0x4ct
        0x46t
        0x57t
        0x0t
        0x5ct
        0x4t
        0x5ct
        0x14t
        0x47t
        0x16t
        0x52t
        0x13t
        0x41t
        0x14t
        0x5ft
        0x7t
        0x17t
        0x44t
        0x5ct
        0x14t
        0x5ft
        0xdt
        0x17t
        0x44t
        0x5ct
        0x59t
        0x45t
    .end array-data
.end method
