.class Landroidx/core/view/inputmethod/InputConnectionCompat$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/view/inputmethod/InputConnectionCompat;->createOnCommitContentListenerUsingPerformReceiveContent(Landroid/view/View;)Landroidx/core/view/inputmethod/InputConnectionCompat$OnCommitContentListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/view/inputmethod/InputConnectionCompat$3;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommitContent(Landroidx/core/view/inputmethod/InputContentInfoCompat;ILandroid/os/Bundle;)Z
    .locals 8

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->requestPermission()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->unwrap()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputContentInfo;

    new-instance v1, Landroid/os/Bundle;

    if-nez p3, :cond_1

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    const/16 v3, 0x2b

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    const-string v4, "28d573"

    const-wide/32 v6, 0x2450bc0f

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object p3, v1

    :cond_0
    new-instance v0, Landroidx/core/view/ContentInfoCompat$Builder;

    new-instance v1, Landroid/content/ClipData;

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    new-instance v4, Landroid/content/ClipData$Item;

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/ClipData$Item;-><init>(Landroid/net/Uri;)V

    invoke-direct {v1, v3, v4}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Landroidx/core/view/ContentInfoCompat$Builder;-><init>(Landroid/content/ClipData;I)V

    invoke-virtual {p1}, Landroidx/core/view/inputmethod/InputContentInfoCompat;->getLinkUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/view/ContentInfoCompat$Builder;->setLinkUri(Landroid/net/Uri;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroidx/core/view/ContentInfoCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/core/view/ContentInfoCompat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/view/ContentInfoCompat$Builder;->build()Landroidx/core/view/ContentInfoCompat;

    move-result-object v0

    iget-object v1, p0, Landroidx/core/view/inputmethod/InputConnectionCompat$3;->val$view:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->performReceiveContent(Landroid/view/View;Landroidx/core/view/ContentInfoCompat;)Landroidx/core/view/ContentInfoCompat;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v2, v0

    :goto_2
    return v2

    :cond_1
    invoke-direct {v1, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/16 v1, 0x15

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v3, "f2f0f2"

    const/16 v4, 0x439c

    invoke-static {v1, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x39

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "225c90"

    const/16 v5, 0x7bdc

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1

    nop

    :array_0
    .array-data 1
        0x53t
        0x56t
        0x0t
        0x47t
        0x58t
        0x5at
        0x56t
        0x40t
        0x4at
        0x56t
        0x58t
        0x41t
        0x57t
        0x16t
        0x12t
        0x5ct
        0x52t
        0x44t
        0x1ct
        0x5dt
        0x1ct
        0x41t
        0x45t
        0x52t
        0x1ct
        0x71t
        0x2at
        0x65t
        0x62t
        0x67t
        0x6dt
        0x7bt
        0x2bt
        0x7bt
        0x63t
        0x76t
        0x7ct
        0x6ct
        0x3bt
        0x7ct
        0x79t
        0x75t
        0x7dt
    .end array-data

    :array_1
    .array-data 1
        0x2ft
        0x5ct
        0x16t
        0x45t
        0x12t
        0x71t
        0x9t
        0x5ct
        0x8t
        0x55t
        0x5t
        0x46t
        0xft
        0x5dt
        0x8t
        0x73t
        0x9t
        0x5ft
        0x16t
        0x53t
        0x12t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x71t
        0x53t
        0x5bt
        0x44t
        0x4dt
        0x10t
        0x5bt
        0x5ct
        0x46t
        0x6t
        0x4bt
        0x44t
        0x12t
        0x51t
        0x5at
        0xdt
        0x4dt
        0x55t
        0x5ct
        0x46t
        0x15t
        0x5t
        0x4bt
        0x5ft
        0x5ft
        0x12t
        0x7ct
        0x2et
        0x7ct
        0xbt
        0x12t
        0x40t
        0x50t
        0x12t
        0x4ct
        0x55t
        0x41t
        0x46t
        0x65t
        0x6t
        0x4bt
        0x5dt
        0x5bt
        0x41t
        0x46t
        0xat
        0x56t
        0x5et
        0x1at
        0x1bt
        0x15t
        0x5t
        0x58t
        0x59t
        0x5et
        0x57t
        0x51t
    .end array-data
.end method
