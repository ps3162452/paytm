.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/data/DataHolder$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final zaf:Lcom/google/android/gms/common/data/DataHolder$Builder;


# instance fields
.field final zaa:I

.field zab:Landroid/os/Bundle;

.field zac:[I

.field zad:I

.field zae:Z

.field private final zag:[Ljava/lang/String;

.field private final zah:[Landroid/database/CursorWindow;

.field private final zai:I

.field private final zaj:Landroid/os/Bundle;

.field private zak:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/data/zaf;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/zaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/common/data/zab;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/data/zab;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->zaf:Lcom/google/android/gms/common/data/DataHolder$Builder;

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zak:Z

    iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->zaa:I

    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->zai:I

    iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->zaj:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;ILandroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Lcom/google/android/gms/common/sqlite/CursorWrapper;

    invoke-direct {v2, p1}, Lcom/google/android/gms/common/sqlite/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {v2}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {v2}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getCount()I

    move-result v5

    invoke-virtual {v2}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getWindow()Landroid/database/CursorWindow;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v1}, Landroid/database/CursorWindow;->acquireReference()V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->setWindow(Landroid/database/CursorWindow;)V

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->getWindow()Landroid/database/CursorWindow;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/CursorWindow;->acquireReference()V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->setWindow(Landroid/database/CursorWindow;)V

    :goto_1
    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->close()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    invoke-direct {p0, v3, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v0, Landroid/database/CursorWindow;

    const/4 v6, 0x0

    invoke-direct {v0, v6}, Landroid/database/CursorWindow;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->fillWindow(ILandroid/database/CursorWindow;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/google/android/gms/common/sqlite/CursorWrapper;->close()V

    throw v0

    :cond_4
    :try_start_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v1

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getNumRows()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;ILcom/google/android/gms/common/data/zae;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/google/android/gms/common/data/DataHolder;->zaf(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;Lcom/google/android/gms/common/data/zae;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zak:Z

    iput v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zaa:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    iput p3, p0, Lcom/google/android/gms/common/data/DataHolder;->zai:I

    iput-object p4, p0, Lcom/google/android/gms/common/data/DataHolder;->zaj:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zad()V

    return-void
.end method

.method public static builder([Ljava/lang/String;)Lcom/google/android/gms/common/data/DataHolder$Builder;
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder$Builder;

    invoke-direct {v0, p0, v1, v1}, Lcom/google/android/gms/common/data/DataHolder$Builder;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/zac;)V

    return-object v0
.end method

.method public static empty(I)Lcom/google/android/gms/common/data/DataHolder;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->zaf:Lcom/google/android/gms/common/data/DataHolder$Builder;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$Builder;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method private final zae(Ljava/lang/String;I)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz p2, :cond_0

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    if-ge p2, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    invoke-direct {v0, p2, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "03b3ed"

    const-wide v4, -0x3e4494b9fd000000L    # -4.60015107E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x10

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "eb6374"

    const v3, 0x4da0cde2    # 3.372309E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x72t
        0x46t
        0x4t
        0x55t
        0x0t
        0x16t
        0x10t
        0x5at
        0x11t
        0x13t
        0x6t
        0x8t
        0x5ft
        0x40t
        0x7t
        0x57t
        0x4bt
    .end array-data

    nop

    :array_1
    .array-data 1
        0x2bt
        0xdt
        0x16t
        0x40t
        0x42t
        0x57t
        0xdt
        0x42t
        0x55t
        0x5ct
        0x5bt
        0x41t
        0x8t
        0xct
        0xct
        0x13t
    .end array-data
.end method

.method private static zaf(Lcom/google/android/gms/common/data/DataHolder$Builder;I)[Landroid/database/CursorWindow;
    .locals 13

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    new-array v0, v2, [Landroid/database/CursorWindow;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zab(Lcom/google/android/gms/common/data/DataHolder$Builder;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    new-instance v4, Landroid/database/CursorWindow;

    invoke-direct {v4, v2}, Landroid/database/CursorWindow;-><init>(Z)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v4, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    move v9, v2

    move v5, v2

    :goto_1
    if-ge v5, v11, :cond_f

    :try_start_0
    invoke-virtual {v4}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v4, "9f027d"

    const/4 v6, 0x1

    invoke-static {v1, v4, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v4, 0x0

    const/16 v6, 0x1c

    aput-byte v6, v1, v4

    const-string v4, "59c7da"

    const-wide/32 v6, 0x5ff637dc

    invoke-static {v1, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v4, "4cb1e0"

    const-wide v6, -0x3e238892b5000000L    # -1.910355244E9

    invoke-static {v1, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/database/CursorWindow;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Landroid/database/CursorWindow;-><init>(Z)V

    invoke-virtual {v4, v5}, Landroid/database/CursorWindow;->setStartPosition(I)V

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v4, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "723bb1"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v3, "4792e1"

    const-wide v6, -0x3e2ed909d3000000L    # -1.151064244E9

    invoke-static {v1, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    goto/16 :goto_0

    :cond_1
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move v8, v2

    move v1, v3

    :goto_2
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v8, v6, :cond_b

    if-eqz v1, :cond_c

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v1

    aget-object v6, v1, v8

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {v4, v5, v8}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v1

    :goto_3
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_2

    :cond_2
    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1, v5, v8}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v1

    goto :goto_3

    :cond_3
    instance-of v7, v1, Ljava/lang/Long;

    if-eqz v7, :cond_4

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v5, v8}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v1

    goto :goto_3

    :cond_4
    instance-of v7, v1, Ljava/lang/Integer;

    if-eqz v7, :cond_5

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    invoke-virtual {v4, v6, v7, v5, v8}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v1

    goto :goto_3

    :cond_5
    instance-of v7, v1, Ljava/lang/Boolean;

    if-eqz v7, :cond_7

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v3, v1, :cond_6

    const-wide/16 v6, 0x0

    :goto_4
    invoke-virtual {v4, v6, v7, v5, v8}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v1

    goto :goto_3

    :cond_6
    const-wide/16 v6, 0x1

    goto :goto_4

    :cond_7
    instance-of v7, v1, [B

    if-eqz v7, :cond_8

    check-cast v1, [B

    invoke-virtual {v4, v1, v5, v8}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v1

    goto :goto_3

    :cond_8
    instance-of v7, v1, Ljava/lang/Double;

    if-eqz v7, :cond_9

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v5, v8}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v1

    goto :goto_3

    :cond_9
    instance-of v7, v1, Ljava/lang/Float;

    if-eqz v7, :cond_a

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v6, v1

    invoke-virtual {v4, v6, v7, v5, v8}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v1

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x1e

    new-array v4, v4, [B

    fill-array-data v4, :array_4

    const-string v5, "3cb064"

    const-wide/32 v8, 0x78726cad

    invoke-static {v4, v5, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    new-array v4, v4, [B

    fill-array-data v4, :array_5

    const-string v5, "db9788"

    const-wide v6, 0x41b7d07626000000L    # 3.99537702E8

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_5
    if-ge v2, v3, :cond_e

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    if-eqz v1, :cond_c

    move v0, v2

    move-object v1, v4

    move v4, v5

    :goto_6
    add-int/lit8 v5, v4, 0x1

    move v9, v0

    move-object v4, v1

    goto/16 :goto_1

    :cond_c
    if-nez v9, :cond_d

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x26

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v6, "3c9282"

    const v7, -0x3128dc45

    invoke-static {v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v6, "3ec172"

    const-wide v8, -0x3e4d4f7144000000L    # -3.13560764E8

    invoke-static {v1, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_8

    const-string v6, "8289b0"

    const/4 v7, 0x1

    invoke-static {v1, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Landroid/database/CursorWindow;->freeLastRow()V

    new-instance v0, Landroid/database/CursorWindow;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/database/CursorWindow;-><init>(Z)V

    invoke-virtual {v0, v5}, Landroid/database/CursorWindow;->setStartPosition(I)V

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$Builder;->zac(Lcom/google/android/gms/common/data/DataHolder$Builder;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v5, -0x1

    move v4, v1

    move-object v1, v0

    move v0, v3

    goto :goto_6

    :cond_d
    new-instance v0, Lcom/google/android/gms/common/data/zad;

    const/16 v1, 0x73

    new-array v1, v1, [B

    fill-array-data v1, :array_9

    const-string v3, "8508aa"

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/data/zad;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_e
    throw v1

    :cond_f
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    goto/16 :goto_0

    :array_0
    .array-data 1
        0x78t
        0xat
        0x5ct
        0x5dt
        0x54t
        0x5t
        0x4dt
        0xft
        0x5et
        0x55t
        0x17t
        0x5t
        0x5dt
        0x2t
        0x59t
        0x46t
        0x5et
        0xbt
        0x57t
        0x7t
        0x5ct
        0x12t
        0x54t
        0x11t
        0x4bt
        0x15t
        0x5ft
        0x40t
        0x17t
        0x13t
        0x50t
        0x8t
        0x54t
        0x5dt
        0x40t
        0x44t
        0x5ft
        0x9t
        0x42t
        0x12t
        0x5bt
        0x5t
        0x4bt
        0x1t
        0x55t
        0x12t
        0x53t
        0x5t
        0x4dt
        0x7t
        0x10t
        0x41t
        0x52t
        0x10t
        0x19t
        0x4et
        0x42t
        0x5dt
        0x40t
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x70t
        0x2t
        0x16t
        0x50t
        0x2dt
        0x5ft
        0x58t
        0x7t
        0x7t
        0x43t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x73t
        0x53t
        0x47t
        0x3t
        0x2at
        0x5et
        0x5bt
        0x56t
        0x56t
        0x10t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x61t
        0x59t
        0x58t
        0x50t
        0x9t
        0x54t
        0x14t
        0x43t
        0x56t
        0x12t
        0x4t
        0x5dt
        0x58t
        0x58t
        0x5at
        0x53t
        0x11t
        0x54t
        0x14t
        0x45t
        0x56t
        0x45t
        0x45t
        0x45t
        0x5bt
        0x17t
        0x51t
        0x5dt
        0x9t
        0x55t
        0x14t
        0x53t
        0x58t
        0x46t
        0x4t
        0x1ft
    .end array-data

    :array_4
    .array-data 1
        0x66t
        0xdt
        0x11t
        0x45t
        0x46t
        0x44t
        0x5ct
        0x11t
        0x16t
        0x55t
        0x52t
        0x14t
        0x5ct
        0x1t
        0x8t
        0x55t
        0x55t
        0x40t
        0x13t
        0x5t
        0xdt
        0x42t
        0x16t
        0x57t
        0x5ct
        0xft
        0x17t
        0x5dt
        0x58t
        0x14t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x5et
        0x42t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x70t
        0xct
        0x4ct
        0x5et
        0x5ct
        0x5ct
        0x14t
        0x17t
        0x19t
        0x42t
        0x57t
        0x42t
        0x46t
        0xft
        0x58t
        0x46t
        0x5dt
        0x12t
        0x44t
        0xat
        0x57t
        0x56t
        0x57t
        0x45t
        0x13t
        0x7t
        0x58t
        0x46t
        0x59t
        0x12t
        0x55t
        0xct
        0x4bt
        0x12t
        0x4at
        0x5dt
        0x44t
        0x43t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x13t
        0x48t
        0x43t
        0x50t
        0x5bt
        0x5et
        0x5ct
        0x6t
        0x2t
        0x45t
        0x5et
        0x5ct
        0x54t
        0x45t
        0xdt
        0x54t
        0x40t
        0x12t
        0x44t
        0xct
        0xdt
        0x55t
        0x58t
        0x45t
        0x1dt
    .end array-data

    nop

    :array_8
    .array-data 1
        0x7ct
        0x53t
        0x4ct
        0x58t
        0x2at
        0x5ft
        0x54t
        0x56t
        0x5dt
        0x4bt
    .end array-data

    nop

    :array_9
    .array-data 1
        0x7bt
        0x5at
        0x45t
        0x54t
        0x5t
        0x41t
        0x56t
        0x5at
        0x44t
        0x18t
        0x0t
        0x5t
        0x5ct
        0x15t
        0x44t
        0x50t
        0x4t
        0x41t
        0x4et
        0x54t
        0x5ct
        0x4dt
        0x4t
        0x41t
        0x4ct
        0x5at
        0x10t
        0x59t
        0x41t
        0xft
        0x5dt
        0x42t
        0x10t
        0x7bt
        0x14t
        0x13t
        0x4bt
        0x5at
        0x42t
        0x6ft
        0x8t
        0xft
        0x5ct
        0x5at
        0x47t
        0x16t
        0x41t
        0x35t
        0x50t
        0x50t
        0x10t
        0x4bt
        0x8t
        0x1bt
        0x5dt
        0x15t
        0x5ft
        0x5et
        0x41t
        0x17t
        0x59t
        0x59t
        0x45t
        0x5dt
        0x41t
        0xct
        0x59t
        0x4ct
        0x10t
        0x5at
        0x4t
        0x41t
        0x54t
        0x54t
        0x42t
        0x5ft
        0x4t
        0x13t
        0x18t
        0x41t
        0x58t
        0x59t
        0xft
        0x41t
        0x4ft
        0x5dt
        0x51t
        0x4ct
        0x41t
        0x0t
        0x18t
        0x76t
        0x45t
        0x4at
        0x12t
        0xet
        0x4at
        0x62t
        0x59t
        0x56t
        0x5t
        0xet
        0x4ft
        0x15t
        0x53t
        0x59t
        0xft
        0x41t
        0x50t
        0x54t
        0x5et
        0x5ct
        0xdt
        0x4t
        0x16t
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected final finalize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zak:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xb1

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "78cc71"

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/16 v3, 0x11

    aput-byte v3, v0, v2

    const-string v2, "8dd59f"

    const-wide v4, 0x41d38e38d1c00000L    # 1.312351047E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "52cb6b"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x7et
        0x56t
        0x17t
        0x6t
        0x45t
        0x5ft
        0x56t
        0x54t
        0x43t
        0x7t
        0x56t
        0x45t
        0x56t
        0x18t
        0xft
        0x6t
        0x56t
        0x5at
        0x17t
        0x4ft
        0xat
        0x17t
        0x5ft
        0x58t
        0x59t
        0x18t
        0x2t
        0x43t
        0x73t
        0x50t
        0x43t
        0x59t
        0x21t
        0x16t
        0x51t
        0x57t
        0x52t
        0x4at
        0x43t
        0xct
        0x55t
        0x5bt
        0x52t
        0x5bt
        0x17t
        0x43t
        0x53t
        0x54t
        0x43t
        0x5dt
        0x0t
        0x17t
        0x52t
        0x55t
        0x16t
        0x18t
        0x43t
        0x21t
        0x52t
        0x11t
        0x44t
        0x4dt
        0x11t
        0x6t
        0x17t
        0x45t
        0x58t
        0x18t
        0x6t
        0x1bt
        0x47t
        0x5dt
        0x5et
        0x5bt
        0xat
        0x17t
        0x5bt
        0x48t
        0x17t
        0x5bt
        0x2t
        0xft
        0x5bt
        0x11t
        0x45t
        0x5dt
        0xft
        0x6t
        0x56t
        0x42t
        0x52t
        0x10t
        0x4at
        0x43t
        0x58t
        0x5ft
        0x17t
        0x59t
        0xft
        0xft
        0x17t
        0x75t
        0x56t
        0x4ct
        0x2t
        0x21t
        0x42t
        0x57t
        0x51t
        0x5dt
        0x11t
        0x43t
        0x52t
        0x49t
        0x43t
        0x5dt
        0xdt
        0x7t
        0x5et
        0x5ft
        0x50t
        0x18t
        0xct
        0x1t
        0x5dt
        0x54t
        0x54t
        0x4ct
        0x10t
        0x43t
        0x40t
        0x59t
        0x52t
        0x56t
        0x43t
        0x1at
        0x58t
        0x44t
        0x17t
        0x59t
        0x11t
        0x6t
        0x17t
        0x55t
        0x58t
        0x56t
        0x6t
        0x43t
        0x40t
        0x58t
        0x43t
        0x50t
        0x43t
        0x17t
        0x5ft
        0x54t
        0x5at
        0x16t
        0x43t
        0x4bt
        0x5et
        0x5ft
        0x43t
        0x5dt
        0x11t
        0xdt
        0x56t
        0x5dt
        0x17t
        0x57t
        0x1t
        0x9t
        0x52t
        0x52t
        0x43t
        0x2t
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x71t
        0x53t
        0x17t
        0x3t
        0x74t
        0x17t
        0x53t
        0x54t
        0x6t
        0x10t
    .end array-data
.end method

.method public getBoolean(Ljava/lang/String;II)Z
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getByteArray(Ljava/lang/String;II)[B
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    return v0
.end method

.method public getInteger(Ljava/lang/String;II)I
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;II)J
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetadata()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zaj:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zai:I

    return v0
.end method

.method public getString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWindowIndex(I)I
    .locals 3

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    if-ge p1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zac:[I

    array-length v2, v0

    if-ge v1, v2, :cond_3

    aget v0, v0, v1

    if-ge p1, v0, :cond_2

    add-int/lit8 v0, v1, -0x1

    :goto_2
    if-ne v0, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public hasColumn(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasNull(Ljava/lang/String;II)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->isNull(II)Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zae:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getMetadata()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBundle(Landroid/os/Parcel;ILandroid/os/Bundle;Z)V

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zaa:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    return-void
.end method

.method public final zaa(Ljava/lang/String;II)D
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getDouble(II)D

    move-result-wide v0

    return-wide v0
.end method

.method public final zab(Ljava/lang/String;II)F
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result v0

    return v0
.end method

.method public final zac(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zae(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1, p4}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public final zad()V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zag:[Ljava/lang/String;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zab:Landroid/os/Bundle;

    aget-object v2, v2, v0

    invoke-virtual {v3, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->zac:[I

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zac:[I

    aput v1, v3, v0

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->zah:[Landroid/database/CursorWindow;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    sub-int v2, v1, v2

    sub-int v2, v3, v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iput v1, p0, Lcom/google/android/gms/common/data/DataHolder;->zad:I

    return-void
.end method
