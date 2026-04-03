.class public Landroidx/versionedparcelable/ParcelUtils;
.super Ljava/lang/Object;


# static fields
.field private static final INNER_BUNDLE_KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-array v0, v3, [B

    const/4 v1, 0x0

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const-string v1, "d088b9"

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/versionedparcelable/ParcelUtils;->INNER_BUNDLE_KEY:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromInputStream(Ljava/io/InputStream;)Landroidx/versionedparcelable/VersionedParcelable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    new-instance v0, Landroidx/versionedparcelable/VersionedParcelStream;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcelStream;->readVersionedParcelable()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    return-object v0
.end method

.method public static fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Landroid/os/Parcelable;",
            ")TT;"
        }
    .end annotation

    instance-of v0, p0, Landroidx/versionedparcelable/ParcelImpl;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-virtual {p0}, Landroidx/versionedparcelable/ParcelImpl;->getVersionedParcel()Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "ee6bcf"

    const-wide/32 v4, 0x78c95631

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x2ct
        0xbt
        0x40t
        0x3t
        0xft
        0xft
        0x1t
        0x45t
        0x46t
        0x3t
        0x11t
        0x5t
        0x0t
        0x9t
    .end array-data
.end method

.method public static getVersionedParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/versionedparcelable/VersionedParcelable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-class v2, Landroidx/versionedparcelable/ParcelUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    sget-object v2, Landroidx/versionedparcelable/ParcelUtils;->INNER_BUNDLE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-static {v0}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getVersionedParcelableList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-class v2, Landroidx/versionedparcelable/ParcelUtils;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    sget-object v2, Landroidx/versionedparcelable/ParcelUtils;->INNER_BUNDLE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-static {v0}, Landroidx/versionedparcelable/ParcelUtils;->fromParcelable(Landroid/os/Parcelable;)Landroidx/versionedparcelable/VersionedParcelable;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_1
.end method

.method public static putVersionedParcelable(Landroid/os/Bundle;Ljava/lang/String;Landroidx/versionedparcelable/VersionedParcelable;)V
    .locals 3

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Landroidx/versionedparcelable/ParcelUtils;->INNER_BUNDLE_KEY:Ljava/lang/String;

    invoke-static {p2}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public static putVersionedParcelableList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<+",
            "Landroidx/versionedparcelable/VersionedParcelable;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/versionedparcelable/VersionedParcelable;

    invoke-static {v0}, Landroidx/versionedparcelable/ParcelUtils;->toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/versionedparcelable/ParcelUtils;->INNER_BUNDLE_KEY:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static toOutputStream(Landroidx/versionedparcelable/VersionedParcelable;Ljava/io/OutputStream;)V
    .locals 2

    new-instance v0, Landroidx/versionedparcelable/VersionedParcelStream;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeVersionedParcelable(Landroidx/versionedparcelable/VersionedParcelable;)V

    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcelStream;->closeField()V

    return-void
.end method

.method public static toParcelable(Landroidx/versionedparcelable/VersionedParcelable;)Landroid/os/Parcelable;
    .locals 1

    new-instance v0, Landroidx/versionedparcelable/ParcelImpl;

    invoke-direct {v0, p0}, Landroidx/versionedparcelable/ParcelImpl;-><init>(Landroidx/versionedparcelable/VersionedParcelable;)V

    return-object v0
.end method
