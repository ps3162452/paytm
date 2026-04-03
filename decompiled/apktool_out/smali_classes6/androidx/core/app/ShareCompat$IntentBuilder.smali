.class public Landroidx/core/app/ShareCompat$IntentBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentBuilder"
.end annotation


# instance fields
.field private mBccAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCcAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChooserTitle:Ljava/lang/CharSequence;

.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;

.field private mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mToAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "4876e8"

    const-wide/32 v4, 0x5bd3f08f

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x27

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "7175e3"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x2c

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "c74c9d"

    const/16 v3, -0x58b9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    move-object v0, p1

    :goto_0
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_2

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/app/Activity;

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/16 v2, 0x28

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "3f3fda"

    const/16 v4, 0x6ca5

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/16 v2, 0x2d

    new-array v2, v2, [B

    fill-array-data v2, :array_4

    const-string v3, "f276aa"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-void

    :cond_1
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x55t
        0x56t
        0x53t
        0x44t
        0xat
        0x51t
        0x50t
        0x16t
        0x5et
        0x58t
        0x11t
        0x5dt
        0x5at
        0x4ct
        0x19t
        0x57t
        0x6t
        0x4ct
        0x5dt
        0x57t
        0x59t
        0x18t
        0x36t
        0x7dt
        0x7at
        0x7ct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x56t
        0x5ft
        0x53t
        0x47t
        0xat
        0x5at
        0x53t
        0x49t
        0x19t
        0x56t
        0xat
        0x41t
        0x52t
        0x1ft
        0x56t
        0x45t
        0x15t
        0x1dt
        0x72t
        0x69t
        0x63t
        0x67t
        0x24t
        0x6ct
        0x74t
        0x70t
        0x7bt
        0x79t
        0x2ct
        0x7dt
        0x70t
        0x6et
        0x67t
        0x74t
        0x26t
        0x78t
        0x76t
        0x76t
        0x72t
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x59t
        0x50t
        0x11t
        0x56t
        0xdt
        0x7t
        0x19t
        0x47t
        0x16t
        0x49t
        0x14t
        0xct
        0x45t
        0x40t
        0x4dt
        0x4ft
        0x50t
        0x4dt
        0x56t
        0x44t
        0x13t
        0x17t
        0x21t
        0x3bt
        0x63t
        0x66t
        0x22t
        0x66t
        0x27t
        0x22t
        0x7bt
        0x78t
        0x2at
        0x77t
        0x23t
        0x3ct
        0x67t
        0x75t
        0x20t
        0x72t
        0x25t
        0x24t
        0x72t
    .end array-data

    :array_3
    .array-data 1
        0x52t
        0x8t
        0x57t
        0x14t
        0xbt
        0x8t
        0x57t
        0x1et
        0x1dt
        0x5t
        0xbt
        0x13t
        0x56t
        0x48t
        0x52t
        0x16t
        0x14t
        0x4ft
        0x76t
        0x3et
        0x67t
        0x34t
        0x25t
        0x3et
        0x70t
        0x27t
        0x7ft
        0x2at
        0x2dt
        0x2ft
        0x74t
        0x39t
        0x72t
        0x25t
        0x30t
        0x28t
        0x65t
        0x2ft
        0x67t
        0x3ft
    .end array-data

    :array_4
    .array-data 1
        0x7t
        0x5ct
        0x53t
        0x44t
        0xet
        0x8t
        0x2t
        0x1ct
        0x44t
        0x43t
        0x11t
        0x11t
        0x9t
        0x40t
        0x43t
        0x18t
        0x17t
        0x55t
        0x48t
        0x53t
        0x47t
        0x46t
        0x4ft
        0x24t
        0x3et
        0x66t
        0x65t
        0x77t
        0x3et
        0x22t
        0x27t
        0x7et
        0x7bt
        0x7ft
        0x2ft
        0x26t
        0x39t
        0x73t
        0x74t
        0x62t
        0x28t
        0x37t
        0x2ft
        0x66t
        0x6et
    .end array-data
.end method

.method private combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v0, v2

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v0, v3

    :goto_0
    array-length v4, p2

    add-int/2addr v4, v0

    new-array v4, v4, [Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-static {v3, v1, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    array-length v3, p2

    invoke-static {p2, v1, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v2, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static from(Landroid/app/Activity;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroidx/core/app/ShareCompat$IntentBuilder;

    invoke-direct {v0, p0}, Landroidx/core/app/ShareCompat$IntentBuilder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public addEmailBcc(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addEmailBcc([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "d26afd"

    const v2, -0x31a7408f    # -9.0910624E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0

    :array_0
    .array-data 1
        0x5t
        0x5ct
        0x52t
        0x13t
        0x9t
        0xdt
        0x0t
        0x1ct
        0x5ft
        0xft
        0x12t
        0x1t
        0xat
        0x46t
        0x18t
        0x4t
        0x1et
        0x10t
        0x16t
        0x53t
        0x18t
        0x23t
        0x25t
        0x27t
    .end array-data
.end method

.method public addEmailCc(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addEmailCc([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 4

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "98cf3f"

    const-wide/32 v2, -0x5fdb5f0d

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0

    :array_0
    .array-data 1
        0x58t
        0x56t
        0x7t
        0x14t
        0x5ct
        0xft
        0x5dt
        0x16t
        0xat
        0x8t
        0x47t
        0x3t
        0x57t
        0x4ct
        0x4dt
        0x3t
        0x4bt
        0x12t
        0x4bt
        0x59t
        0x4dt
        0x25t
        0x70t
    .end array-data
.end method

.method public addEmailTo(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addEmailTo([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 4

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "a37855"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;[Ljava/lang/String;)V

    return-object p0

    nop

    :array_0
    .array-data 1
        0x0t
        0x5dt
        0x53t
        0x4at
        0x5at
        0x5ct
        0x5t
        0x1dt
        0x5et
        0x56t
        0x41t
        0x50t
        0xft
        0x47t
        0x19t
        0x5dt
        0x4dt
        0x41t
        0x13t
        0x52t
        0x19t
        0x7dt
        0x78t
        0x74t
        0x28t
        0x7ft
    .end array-data
.end method

.method public addStream(Landroid/net/Uri;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public createChooserIntent()Landroid/content/Intent;
    .locals 2

    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mChooserTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/16 v7, 0x1b

    const/16 v6, 0x10

    const/4 v0, 0x1

    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    const/16 v3, 0x1a

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "6dea97"

    const/16 v5, 0x4e9a

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v8, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    :cond_0
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    const/16 v3, 0x17

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "f4c4dc"

    const v5, 0x4e807069    # 1.0774253E9f

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v8, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mCcAddresses:Ljava/util/ArrayList;

    :cond_1
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    const/16 v3, 0x18

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "c0938c"

    invoke-static {v3, v4, v0, v0}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Landroidx/core/app/ShareCompat$IntentBuilder;->combineArrayExtra(Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v8, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mBccAddresses:Ljava/util/ArrayList;

    :cond_2
    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v0, :cond_4

    :goto_0
    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/16 v2, 0x1a

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v3, "a9284b"

    const-wide v4, -0x3e3d118ac0000000L    # -6.35234944E8

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    new-array v0, v7, [B

    fill-array-data v0, :array_4

    const-string v3, "e4a0d8"

    const v4, -0x31b93fd4

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_3

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroidx/core/app/ShareCompat$Api16Impl;->migrateExtraStreamToClipData(Landroid/content/Intent;Ljava/util/ArrayList;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    new-array v1, v7, [B

    fill-array-data v1, :array_5

    const-string v2, "bd9d7b"

    const/16 v3, -0x27ce

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_3

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-static {v0}, Landroidx/core/app/ShareCompat$Api16Impl;->removeClipData(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x23

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "e50cb9"

    const-wide v4, 0x41d4d55e73000000L    # 1.398110668E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    new-array v1, v7, [B

    fill-array-data v1, :array_7

    const-string v2, "5cbd9f"

    const-wide/32 v4, 0x15052c94

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_3

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroidx/core/app/ShareCompat$Api16Impl;->migrateExtraStreamToClipData(Landroid/content/Intent;Ljava/util/ArrayList;)V

    goto :goto_1

    :array_0
    .array-data 1
        0x57t
        0xat
        0x1t
        0x13t
        0x56t
        0x5et
        0x52t
        0x4at
        0xct
        0xft
        0x4dt
        0x52t
        0x58t
        0x10t
        0x4bt
        0x4t
        0x41t
        0x43t
        0x44t
        0x5t
        0x4bt
        0x24t
        0x74t
        0x76t
        0x7ft
        0x28t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x7t
        0x5at
        0x7t
        0x46t
        0xbt
        0xat
        0x2t
        0x1at
        0xat
        0x5at
        0x10t
        0x6t
        0x8t
        0x40t
        0x4dt
        0x51t
        0x1ct
        0x17t
        0x14t
        0x55t
        0x4dt
        0x77t
        0x27t
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x5et
        0x5dt
        0x41t
        0x57t
        0xat
        0x7t
        0x1et
        0x50t
        0x5dt
        0x4ct
        0x6t
        0xdt
        0x44t
        0x17t
        0x56t
        0x40t
        0x17t
        0x11t
        0x51t
        0x17t
        0x71t
        0x7bt
        0x20t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x57t
        0x56t
        0x4at
        0x5bt
        0xbt
        0x5t
        0x17t
        0x5bt
        0x56t
        0x40t
        0x7t
        0xft
        0x4dt
        0x1ct
        0x59t
        0x57t
        0x16t
        0x8t
        0x56t
        0x5ct
        0x16t
        0x67t
        0x27t
        0x2ft
        0x7dt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x4t
        0x5at
        0x5t
        0x42t
        0xbt
        0x51t
        0x1t
        0x1at
        0x8t
        0x5et
        0x10t
        0x5dt
        0xbt
        0x40t
        0x4ft
        0x55t
        0x1ct
        0x4ct
        0x17t
        0x55t
        0x4ft
        0x63t
        0x30t
        0x6at
        0x20t
        0x75t
        0x2ct
    .end array-data

    :array_5
    .array-data 1
        0x3t
        0xat
        0x5dt
        0x16t
        0x58t
        0xbt
        0x6t
        0x4at
        0x50t
        0xat
        0x43t
        0x7t
        0xct
        0x10t
        0x17t
        0x1t
        0x4ft
        0x16t
        0x10t
        0x5t
        0x17t
        0x37t
        0x63t
        0x30t
        0x27t
        0x25t
        0x74t
    .end array-data

    :array_6
    .array-data 1
        0x4t
        0x5bt
        0x54t
        0x11t
        0xdt
        0x50t
        0x1t
        0x1bt
        0x59t
        0xdt
        0x16t
        0x5ct
        0xbt
        0x41t
        0x1et
        0x2t
        0x1t
        0x4dt
        0xct
        0x5at
        0x5et
        0x4dt
        0x31t
        0x7ct
        0x2bt
        0x71t
        0x6ft
        0x2et
        0x37t
        0x75t
        0x31t
        0x7ct
        0x60t
        0x2ft
        0x27t
    .end array-data

    :array_7
    .array-data 1
        0x54t
        0xdt
        0x6t
        0x16t
        0x56t
        0xft
        0x51t
        0x4dt
        0xbt
        0xat
        0x4dt
        0x3t
        0x5bt
        0x17t
        0x4ct
        0x1t
        0x41t
        0x12t
        0x47t
        0x2t
        0x4ct
        0x37t
        0x6dt
        0x34t
        0x70t
        0x22t
        0x2ft
    .end array-data
.end method

.method public setChooserTitle(I)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/app/ShareCompat$IntentBuilder;->setChooserTitle(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setChooserTitle(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 0

    iput-object p1, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mChooserTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setEmailBcc([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 6

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x18

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "44d530"

    const-wide v4, 0x41c7583a2a000000L    # 7.83316052E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :array_0
    .array-data 1
        0x55t
        0x5at
        0x0t
        0x47t
        0x5ct
        0x59t
        0x50t
        0x1at
        0xdt
        0x5bt
        0x47t
        0x55t
        0x5at
        0x40t
        0x4at
        0x50t
        0x4bt
        0x44t
        0x46t
        0x55t
        0x4at
        0x77t
        0x70t
        0x73t
    .end array-data
.end method

.method public setEmailCc([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 6

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x17

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "50af0f"

    const-wide v4, 0x41c5337211800000L    # 7.11386147E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :array_0
    .array-data 1
        0x54t
        0x5et
        0x5t
        0x14t
        0x5ft
        0xft
        0x51t
        0x1et
        0x8t
        0x8t
        0x44t
        0x3t
        0x5bt
        0x44t
        0x4ft
        0x3t
        0x48t
        0x12t
        0x47t
        0x51t
        0x4ft
        0x25t
        0x73t
    .end array-data
.end method

.method public setEmailTo([Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 4

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mToAddresses:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x1a

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "a719f7"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x0t
        0x59t
        0x55t
        0x4bt
        0x9t
        0x5et
        0x5t
        0x19t
        0x58t
        0x57t
        0x12t
        0x52t
        0xft
        0x43t
        0x1ft
        0x5ct
        0x1et
        0x43t
        0x13t
        0x56t
        0x1ft
        0x7ct
        0x2bt
        0x76t
        0x28t
        0x7bt
    .end array-data
.end method

.method public setHtmlText(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x1e

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7d6ec5"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "b02a79"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/core/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;

    :cond_0
    return-object p0

    :array_0
    .array-data 1
        0x56t
        0xat
        0x52t
        0x17t
        0xct
        0x5ct
        0x53t
        0x4at
        0x5ft
        0xbt
        0x17t
        0x50t
        0x59t
        0x10t
        0x18t
        0x0t
        0x1bt
        0x41t
        0x45t
        0x5t
        0x18t
        0x2dt
        0x37t
        0x78t
        0x7bt
        0x3bt
        0x62t
        0x20t
        0x3bt
        0x61t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3t
        0x5et
        0x56t
        0x13t
        0x58t
        0x50t
        0x6t
        0x1et
        0x5bt
        0xft
        0x43t
        0x5ct
        0xct
        0x44t
        0x1ct
        0x4t
        0x4ft
        0x4dt
        0x10t
        0x51t
        0x1ct
        0x35t
        0x72t
        0x61t
        0x36t
    .end array-data
.end method

.method public setStream(Landroid/net/Uri;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mStreams:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->addStream(Landroid/net/Uri;)Landroidx/core/app/ShareCompat$IntentBuilder;

    :cond_0
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 4

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "804496"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0

    :array_0
    .array-data 1
        0x59t
        0x5et
        0x50t
        0x46t
        0x56t
        0x5ft
        0x5ct
        0x1et
        0x5dt
        0x5at
        0x4dt
        0x53t
        0x56t
        0x44t
        0x1at
        0x51t
        0x41t
        0x42t
        0x4at
        0x51t
        0x1at
        0x67t
        0x6ct
        0x74t
        0x72t
        0x75t
        0x77t
        0x60t
    .end array-data
.end method

.method public setText(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 4

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "9f6749"

    const/16 v3, -0x7ba8

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object p0

    nop

    :array_0
    .array-data 1
        0x58t
        0x8t
        0x52t
        0x45t
        0x5bt
        0x50t
        0x5dt
        0x48t
        0x5ft
        0x59t
        0x40t
        0x5ct
        0x57t
        0x12t
        0x18t
        0x52t
        0x4ct
        0x4dt
        0x4bt
        0x7t
        0x18t
        0x63t
        0x71t
        0x61t
        0x6dt
    .end array-data
.end method

.method public setType(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public startChooser()V
    .locals 2

    iget-object v0, p0, Landroidx/core/app/ShareCompat$IntentBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroidx/core/app/ShareCompat$IntentBuilder;->createChooserIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
