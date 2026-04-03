.class Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/android/SqlPersistenceStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PersistentCacheOpenHelper"
.end annotation


# static fields
.field static final $assertionsDisabled:Z = false

.field private static final DATABASE_VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "86d72a"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x7ct
        0x64t
        0x2bt
        0x67t
        0x12t
        0x35t
        0x79t
        0x74t
        0x28t
        0x72t
        0x12t
        0x28t
        0x7et
        0x16t
        0x21t
        0x6ft
        0x7bt
        0x32t
        0x6ct
        0x65t
        0x44t
    .end array-data
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a1150f"

    const v2, -0x32a17694

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0x63

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "ab8a02"

    const/16 v2, -0x7315

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0x85

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "47cadf"

    invoke-static {v0, v1, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "4c9f02"

    invoke-static {v0, v1, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x22t
        0x63t
        0x74t
        0x74t
        0x64t
        0x23t
        0x41t
        0x65t
        0x70t
        0x77t
        0x7ct
        0x23t
        0x41t
        0x42t
        0x54t
        0x47t
        0x46t
        0x3t
        0x13t
        0x72t
        0x50t
        0x56t
        0x58t
        0x3t
        0x41t
        0x19t
        0x41t
        0x54t
        0x44t
        0xet
        0x41t
        0x65t
        0x74t
        0x6dt
        0x64t
        0x46t
        0x31t
        0x63t
        0x78t
        0x78t
        0x71t
        0x34t
        0x38t
        0x11t
        0x7at
        0x70t
        0x69t
        0x4at
        0x41t
        0x47t
        0x50t
        0x59t
        0x45t
        0x3t
        0x41t
        0x73t
        0x7dt
        0x7at
        0x72t
        0x4ft
        0x5at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x22t
        0x30t
        0x7dt
        0x20t
        0x64t
        0x77t
        0x41t
        0x36t
        0x79t
        0x23t
        0x7ct
        0x77t
        0x41t
        0x15t
        0x4at
        0x8t
        0x44t
        0x57t
        0x12t
        0x42t
        0x10t
        0x8t
        0x54t
        0x12t
        0x28t
        0x2ct
        0x6ct
        0x24t
        0x77t
        0x77t
        0x33t
        0x4et
        0x18t
        0x11t
        0x51t
        0x46t
        0x9t
        0x42t
        0x6ct
        0x24t
        0x68t
        0x66t
        0x4dt
        0x42t
        0x4ct
        0x18t
        0x40t
        0x57t
        0x41t
        0x36t
        0x7dt
        0x39t
        0x64t
        0x1et
        0x41t
        0x12t
        0x59t
        0x13t
        0x44t
        0x12t
        0x28t
        0x2ct
        0x6ct
        0x24t
        0x77t
        0x77t
        0x33t
        0x4et
        0x18t
        0xft
        0x5ft
        0x56t
        0x4t
        0x42t
        0x7at
        0x2dt
        0x7ft
        0x70t
        0x4dt
        0x42t
        0x6dt
        0x2ft
        0x79t
        0x63t
        0x34t
        0x27t
        0x18t
        0x49t
        0x59t
        0x56t
        0x4dt
        0x42t
        0x48t
        0x0t
        0x42t
        0x46t
        0x48t
        0x4bt
        0x3t
    .end array-data

    :array_2
    .array-data 1
        0x77t
        0x65t
        0x26t
        0x20t
        0x30t
        0x23t
        0x14t
        0x63t
        0x22t
        0x23t
        0x28t
        0x23t
        0x14t
        0x43t
        0x11t
        0x0t
        0x7t
        0xdt
        0x51t
        0x53t
        0x32t
        0x14t
        0x1t
        0x14t
        0x5dt
        0x52t
        0x10t
        0x41t
        0x4ct
        0xft
        0x50t
        0x17t
        0x2at
        0x2ft
        0x30t
        0x23t
        0x73t
        0x72t
        0x31t
        0x41t
        0x34t
        0x34t
        0x7dt
        0x7at
        0x22t
        0x33t
        0x3dt
        0x46t
        0x7ft
        0x72t
        0x3at
        0x4dt
        0x44t
        0x16t
        0x55t
        0x43t
        0xbt
        0x41t
        0x30t
        0x23t
        0x6ct
        0x63t
        0x4ft
        0x41t
        0x15t
        0x13t
        0x51t
        0x45t
        0x1at
        0x31t
        0x5t
        0x14t
        0x55t
        0x5at
        0x10t
        0x41t
        0x30t
        0x23t
        0x6ct
        0x63t
        0x4ft
        0x41t
        0x8t
        0x7t
        0x47t
        0x43t
        0x36t
        0x12t
        0x1t
        0x46t
        0x7dt
        0x79t
        0x37t
        0x24t
        0x23t
        0x23t
        0x66t
        0x1bt
        0x43t
        0x2t
        0xbt
        0xbt
        0x44t
        0x5bt
        0x6t
        0x15t
        0x1t
        0x46t
        0x7dt
        0x79t
        0x37t
        0x24t
        0x23t
        0x23t
        0x66t
        0x1bt
        0x43t
        0x0t
        0x7t
        0x12t
        0x5dt
        0x41t
        0x6t
        0x41t
        0x2dt
        0x28t
        0x60t
        0x72t
        0x24t
        0x24t
        0x36t
        0x4ft
        0xft
    .end array-data

    nop

    :array_3
    .array-data 1
        0x77t
        0x31t
        0x7ct
        0x27t
        0x64t
        0x77t
        0x14t
        0x37t
        0x78t
        0x24t
        0x7ct
        0x77t
        0x14t
        0x17t
        0x4bt
        0x7t
        0x53t
        0x59t
        0x51t
        0x7t
        0x72t
        0x3t
        0x49t
        0x41t
        0x14t
        0x4bt
        0x50t
        0x2t
        0x10t
        0x7bt
        0x7at
        0x37t
        0x7ct
        0x21t
        0x75t
        0x60t
        0x18t
        0x43t
        0x52t
        0x3t
        0x49t
        0x12t
        0x60t
        0x26t
        0x61t
        0x32t
        0x19t
        0x9t
    .end array-data
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-gt p2, v4, :cond_0

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "cfe16d"

    const/16 v2, 0x7358

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v0, 0x3d

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "8ff8b1"

    const-wide/32 v2, -0x54217583

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "eb6c64"

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/database/android/SqlPersistenceStorageEngine$PersistentCacheOpenHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "57cd83"

    invoke-static {v0, v1, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v0, 0x85

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "0cb808"

    invoke-static {v0, v1, v4, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1d

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const-string v3, "5d57d0"

    const/16 v4, -0x23fc

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :array_0
    .array-data 1
        0x10t
        0x3t
        0x17t
        0x47t
        0x53t
        0x16t
        0x20t
        0x7t
        0x6t
        0x59t
        0x53t
    .end array-data

    :array_1
    .array-data 1
        0x7bt
        0x34t
        0x23t
        0x79t
        0x36t
        0x74t
        0x18t
        0x32t
        0x27t
        0x7at
        0x2et
        0x74t
        0x18t
        0x15t
        0x3t
        0x4at
        0x14t
        0x54t
        0x4at
        0x25t
        0x7t
        0x5bt
        0xat
        0x54t
        0x18t
        0x4et
        0x16t
        0x59t
        0x16t
        0x59t
        0x18t
        0x32t
        0x23t
        0x60t
        0x36t
        0x11t
        0x68t
        0x34t
        0x2ft
        0x75t
        0x23t
        0x63t
        0x61t
        0x46t
        0x2dt
        0x7dt
        0x3bt
        0x1dt
        0x18t
        0x10t
        0x7t
        0x54t
        0x17t
        0x54t
        0x18t
        0x24t
        0x2at
        0x77t
        0x20t
        0x18t
        0x3t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6t
        0xdt
        0x5bt
        0x13t
        0x5at
        0x51t
        0x11t
        0x7t
    .end array-data

    :array_3
    .array-data 1
        0x76t
        0x65t
        0x26t
        0x25t
        0x6ct
        0x76t
        0x15t
        0x63t
        0x22t
        0x26t
        0x74t
        0x76t
        0x15t
        0x43t
        0x11t
        0x5t
        0x5bt
        0x58t
        0x50t
        0x53t
        0x28t
        0x1t
        0x41t
        0x40t
        0x15t
        0x1ft
        0xat
        0x0t
        0x18t
        0x7at
        0x7bt
        0x63t
        0x26t
        0x23t
        0x7dt
        0x61t
        0x19t
        0x17t
        0x8t
        0x1t
        0x41t
        0x13t
        0x61t
        0x72t
        0x3bt
        0x30t
        0x11t
        0x8t
    .end array-data

    :array_4
    .array-data 1
        0x73t
        0x31t
        0x27t
        0x79t
        0x64t
        0x7dt
        0x10t
        0x37t
        0x23t
        0x7at
        0x7ct
        0x7dt
        0x10t
        0x17t
        0x10t
        0x59t
        0x53t
        0x53t
        0x55t
        0x7t
        0x33t
        0x4dt
        0x55t
        0x4at
        0x59t
        0x6t
        0x11t
        0x18t
        0x18t
        0x51t
        0x54t
        0x43t
        0x2bt
        0x76t
        0x64t
        0x7dt
        0x77t
        0x26t
        0x30t
        0x18t
        0x60t
        0x6at
        0x79t
        0x2et
        0x23t
        0x6at
        0x69t
        0x18t
        0x7bt
        0x26t
        0x3bt
        0x14t
        0x10t
        0x48t
        0x51t
        0x17t
        0xat
        0x18t
        0x64t
        0x7dt
        0x68t
        0x37t
        0x4et
        0x18t
        0x41t
        0x4dt
        0x55t
        0x11t
        0x1bt
        0x68t
        0x51t
        0x4at
        0x51t
        0xet
        0x11t
        0x18t
        0x64t
        0x7dt
        0x68t
        0x37t
        0x4et
        0x18t
        0x5ct
        0x59t
        0x43t
        0x17t
        0x37t
        0x4bt
        0x55t
        0x18t
        0x79t
        0x2dt
        0x36t
        0x7dt
        0x77t
        0x7dt
        0x62t
        0x4ft
        0x42t
        0x5bt
        0x5ft
        0x55t
        0x40t
        0xft
        0x7t
        0x4ct
        0x55t
        0x18t
        0x79t
        0x2dt
        0x36t
        0x7dt
        0x77t
        0x7dt
        0x62t
        0x4ft
        0x42t
        0x59t
        0x53t
        0x4ct
        0x59t
        0x15t
        0x7t
        0x18t
        0x79t
        0x76t
        0x64t
        0x26t
        0x25t
        0x7dt
        0x62t
        0x11t
        0xbt
    .end array-data

    nop

    :array_5
    .array-data 1
        0x62t
        0x1t
        0x15t
        0x53t
        0xbt
        0x5et
        0x12t
        0x10t
        0x15t
        0x5ft
        0x5t
        0x5et
        0x51t
        0x8t
        0x50t
        0x17t
        0x11t
        0x40t
        0x52t
        0x16t
        0x54t
        0x53t
        0xdt
        0x5et
        0x52t
        0x44t
        0x41t
        0x58t
        0x44t
    .end array-data
.end method
