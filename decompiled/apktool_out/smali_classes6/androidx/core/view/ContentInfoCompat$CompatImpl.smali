.class final Landroidx/core/view/ContentInfoCompat$CompatImpl;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/view/ContentInfoCompat$Compat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/ContentInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CompatImpl"
.end annotation


# instance fields
.field private final mClip:Landroid/content/ClipData;

.field private final mExtras:Landroid/os/Bundle;

.field private final mFlags:I

.field private final mLinkUri:Landroid/net/Uri;

.field private final mSource:I


# direct methods
.method constructor <init>(Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mClip:Landroid/content/ClipData;

    invoke-static {v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipData;

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mClip:Landroid/content/ClipData;

    iget v0, p1, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mSource:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x6

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "7fd4e0"

    const/16 v5, -0x3060

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Landroidx/core/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mSource:I

    iget v0, p1, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mFlags:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkFlagsArgument(II)I

    move-result v0

    iput v0, p0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mFlags:I

    iget-object v0, p1, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mLinkUri:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mLinkUri:Landroid/net/Uri;

    iget-object v0, p1, Landroidx/core/view/ContentInfoCompat$BuilderCompatImpl;->mExtras:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mExtras:Landroid/os/Bundle;

    return-void

    nop

    :array_0
    .array-data 1
        0x44t
        0x9t
        0x11t
        0x46t
        0x6t
        0x55t
    .end array-data
.end method


# virtual methods
.method public getClip()Landroid/content/ClipData;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mClip:Landroid/content/ClipData;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mFlags:I

    return v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mLinkUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    iget v0, p0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mSource:I

    return v0
.end method

.method public getWrapped()Landroid/view/ContentInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "ce4409"

    const/16 v3, -0x64ac

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mClip:Landroid/content/ClipData;

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "8d83d9"

    const-wide/32 v4, -0x6f2c7be7

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mSource:I

    invoke-static {v0}, Landroidx/core/view/ContentInfoCompat;->sourceToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "4eb31c"

    invoke-static {v0, v1, v8, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mFlags:I

    invoke-static {v0}, Landroidx/core/view/ContentInfoCompat;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mLinkUri:Landroid/net/Uri;

    const-string v1, ""

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v8, [B

    const/16 v1, 0x4a

    aput-byte v1, v0, v9

    const-string v1, "7b50ed"

    invoke-static {v0, v1, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xd

    new-array v3, v3, [B

    fill-array-data v3, :array_3

    const-string v4, "06e404"

    const-wide v6, 0x41d4f9dad1000000L    # 1.407675204E9

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/core/view/ContentInfoCompat$CompatImpl;->mLinkUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v3, v8, [B

    const/16 v4, 0x10

    aput-byte v4, v3, v9

    const-string v4, "91806d"

    const v5, 0x4e322982    # 7.472662E8f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "03fc81"

    const/16 v3, -0x3e0e

    invoke-static {v0, v1, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :array_0
    .array-data 1
        0x20t
        0xat
        0x5at
        0x40t
        0x55t
        0x57t
        0x17t
        0x2ct
        0x5at
        0x52t
        0x5ft
        0x7at
        0xct
        0x8t
        0x44t
        0x55t
        0x44t
        0x42t
        0x0t
        0x9t
        0x5dt
        0x44t
        0xdt
    .end array-data

    :array_1
    .array-data 1
        0x14t
        0x44t
        0x4bt
        0x5ct
        0x11t
        0x4bt
        0x5bt
        0x1t
        0x5t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x18t
        0x45t
        0x4t
        0x5ft
        0x50t
        0x4t
        0x47t
        0x58t
    .end array-data

    :array_3
    .array-data 1
        0x1ct
        0x16t
        0xdt
        0x55t
        0x43t
        0x78t
        0x59t
        0x58t
        0xet
        0x61t
        0x42t
        0x5dt
        0x18t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x1ct
        0x13t
        0xet
        0x2t
        0x4bt
        0x74t
        0x48t
        0x47t
        0x14t
        0x2t
        0x4bt
    .end array-data
.end method
