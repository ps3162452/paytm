.class Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/color/ColorResourcesTableCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageChunk"
.end annotation


# static fields
.field private static final HEADER_SIZE:S = 0x120s

.field private static final PACKAGE_NAME_MAX_LENGTH:I = 0x80


# instance fields
.field private final header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

.field private final keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

.field private final packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

.field private final typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

.field private final typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;


# direct methods
.method constructor <init>(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;",
            ">;)V"
        }
    .end annotation

    const/4 v10, 0x5

    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v8, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    new-instance v1, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    new-array v3, v8, [B

    fill-array-data v3, :array_0

    const-string v4, "c9b832"

    const-wide v6, 0x41d87a5dd3800000L    # 1.642690382E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    new-array v3, v8, [B

    fill-array-data v3, :array_1

    const-string v4, "96a4a9"

    const-wide/32 v6, 0x6cfb438

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    new-array v3, v8, [B

    fill-array-data v3, :array_2

    const-string v4, "687ba4"

    invoke-static {v3, v4, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x3

    new-array v4, v8, [B

    fill-array-data v4, :array_3

    const-string v5, "15aed1"

    invoke-static {v4, v5, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-array v4, v8, [B

    fill-array-data v4, :array_4

    const-string v5, "f6be99"

    invoke-static {v4, v5, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    new-array v3, v10, [B

    fill-array-data v3, :array_5

    const-string v4, "1f334b"

    const/16 v5, -0x188b

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-direct {v1, v0, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>(Z[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    move v1, v0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;->access$100(Lcom/google/android/material/color/ColorResourcesTableCreator$ColorResource;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-direct {v0, v9, v2}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;-><init>(Z[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    invoke-direct {v0, p2}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    new-instance v0, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    const/16 v1, 0x200

    const/16 v2, 0x120

    invoke-virtual {p0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->getChunkSize()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;-><init>(SSI)V

    iput-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    return-void

    :array_0
    .array-data 1
        0x5ct
        0x8t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6t
        0x4t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x9t
        0xbt
    .end array-data

    nop

    :array_3
    .array-data 1
        0xet
        0x1t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x59t
        0x3t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x52t
        0x9t
        0x5ft
        0x5ct
        0x46t
    .end array-data
.end method


# virtual methods
.method getChunkSize()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-virtual {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    move-result v0

    add-int/lit16 v0, v0, 0x120

    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-virtual {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    invoke-virtual {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->getChunkSizeWithTypeChunk()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method writeTo(Ljava/io/ByteArrayOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->header:Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$ResChunkHeader;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->access$1000(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->packageInfo:Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;->access$1100(Lcom/google/android/material/color/ColorResourcesTableCreator$PackageInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    move v0, v1

    :goto_0
    const/16 v3, 0x80

    if-ge v0, v3, :cond_1

    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-char v3, v2, v0

    invoke-static {v3}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$1200(C)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$1200(C)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x120

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-virtual {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->getChunkSize()I

    move-result v0

    add-int/lit16 v0, v0, 0x120

    invoke-static {v0}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {v1}, Lcom/google/android/material/color/ColorResourcesTableCreator;->access$500(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->keyStrings:Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$StringPoolChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    iget-object v0, p0, Lcom/google/android/material/color/ColorResourcesTableCreator$PackageChunk;->typeSpecChunk:Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;

    invoke-virtual {v0, p1}, Lcom/google/android/material/color/ColorResourcesTableCreator$TypeSpecChunk;->writeTo(Ljava/io/ByteArrayOutputStream;)V

    return-void
.end method
