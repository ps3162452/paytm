.class public Lcom/google/android/gms/common/api/GoogleApiActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field protected zaa:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    return-void
.end method

.method public static zaa(Landroid/content/Context;Landroid/app/PendingIntent;IZ)Landroid/content/Intent;
    .locals 6

    const/16 v5, 0xe

    const/4 v4, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-array v1, v5, [B

    fill-array-data v1, :array_0

    const-string v2, "371c74"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "fa2774"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-array v1, v5, [B

    fill-array-data v1, :array_2

    const-string v2, "4a49d1"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0

    :array_0
    .array-data 1
        0x43t
        0x52t
        0x5ft
        0x7t
        0x5et
        0x5at
        0x54t
        0x68t
        0x58t
        0xdt
        0x43t
        0x51t
        0x5dt
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x5bt
        0x5bt
        0x5et
        0x5at
        0x1t
        0x3et
        0x51t
        0x5bt
        0x5et
        0x51t
        0x8t
        0x15t
        0x6dt
        0x5et
        0x53t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5at
        0xet
        0x40t
        0x50t
        0x2t
        0x48t
        0x6bt
        0xct
        0x55t
        0x57t
        0x5t
        0x56t
        0x51t
        0x13t
    .end array-data
.end method

.method private final zab()V
    .locals 14

    const/16 v13, 0x23

    const/16 v12, 0xe

    const/16 v11, 0x11

    const/4 v10, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-nez v8, :cond_0

    new-array v0, v11, [B

    fill-array-data v0, :array_0

    const-string v1, "f126c0"

    const/16 v2, -0x3e9f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "72fb49"

    const v3, -0x32705251

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    new-array v0, v12, [B

    fill-array-data v0, :array_2

    const-string v1, "de358a"

    invoke-static {v0, v1, v9, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/PendingIntent;

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "78f5aa"

    const-wide v2, 0x41d1aef374000000L    # 1.18671304E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v7, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v7, :cond_5

    :try_start_0
    invoke-virtual {v7}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/GoogleApiActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    new-array v0, v12, [B

    fill-array-data v0, :array_4

    const-string v2, "87783d"

    const v3, -0x31449271

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    new-array v3, v11, [B

    fill-array-data v3, :array_5

    const-string v4, "fef46f"

    const/16 v5, -0x6da7

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax(Lcom/google/android/gms/common/ConnectionResult;I)V

    :goto_1
    iput v9, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    goto/16 :goto_0

    :cond_2
    new-array v0, v11, [B

    fill-array-data v0, :array_6

    const-string v1, "b85543"

    const-wide v2, -0x3e5f316046000000L    # -1.40988381E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    new-array v1, v13, [B

    fill-array-data v1, :array_7

    const-string v2, "34190e"

    const-wide/32 v4, -0x7fb22df8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    new-array v1, v11, [B

    fill-array-data v1, :array_8

    const-string v2, "80a556"

    invoke-static {v1, v2, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_9

    const-string v3, "4b6b0f"

    invoke-static {v2, v3, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v13, [B

    fill-array-data v3, :array_a

    const-string v4, "bf5256"

    const/16 v5, -0x36ca

    invoke-static {v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v9, [B

    const/16 v3, 0x4a

    aput-byte v3, v0, v10

    const-string v3, "dc4b1c"

    const-wide v4, 0x41dcf5dff8800000L    # 1.943502818E9

    invoke-static {v0, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const/4 v3, 0x7

    new-array v3, v3, [B

    fill-array-data v3, :array_b

    const-string v4, "016617"

    invoke-static {v3, v4, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x7e

    new-array v2, v2, [B

    fill-array-data v2, :array_c

    const-string v3, "525aa7"

    const-wide v4, -0x3e20887035000000L    # -2.111717164E9

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-array v2, v11, [B

    fill-array-data v2, :array_d

    const-string v3, "e7606d"

    const-wide/32 v4, -0x27f489a0

    invoke-static {v2, v3, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    iput v9, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    goto/16 :goto_0

    nop

    :array_0
    .array-data 1
        0x21t
        0x5et
        0x5dt
        0x51t
        0xft
        0x55t
        0x27t
        0x41t
        0x5bt
        0x77t
        0x0t
        0x44t
        0xft
        0x47t
        0x5bt
        0x42t
        0x1at
    .end array-data

    nop

    :array_1
    .array-data 1
        0x76t
        0x51t
        0x12t
        0xbt
        0x42t
        0x50t
        0x43t
        0x4bt
        0x46t
        0x11t
        0x40t
        0x58t
        0x45t
        0x46t
        0x3t
        0x6t
        0x14t
        0x4et
        0x5et
        0x46t
        0xet
        0xdt
        0x41t
        0x4dt
        0x17t
        0x57t
        0x1et
        0x16t
        0x46t
        0x58t
        0x44t
    .end array-data

    :array_2
    .array-data 1
        0x14t
        0x0t
        0x5dt
        0x51t
        0x51t
        0xft
        0x3t
        0x3at
        0x5at
        0x5bt
        0x4ct
        0x4t
        0xat
        0x11t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x52t
        0x4at
        0x14t
        0x5at
        0x13t
        0x3et
        0x54t
        0x57t
        0x2t
        0x50t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x56t
        0x58t
        0x43t
        0x51t
        0x55t
        0x1dt
        0x67t
        0x5at
        0x56t
        0x56t
        0x52t
        0x3t
        0x5dt
        0x45t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x0t
        0x4t
        0xft
        0x58t
        0x5ft
        0x8t
        0x1t
        0x3at
        0x5t
        0x58t
        0x5ft
        0x3t
        0x8t
        0x11t
        0x39t
        0x5dt
        0x52t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x25t
        0x57t
        0x5at
        0x52t
        0x58t
        0x56t
        0x23t
        0x48t
        0x5ct
        0x74t
        0x57t
        0x47t
        0xbt
        0x4et
        0x5ct
        0x41t
        0x4dt
    .end array-data

    nop

    :array_7
    .array-data 1
        0x72t
        0x57t
        0x45t
        0x50t
        0x46t
        0xct
        0x47t
        0x4dt
        0x11t
        0x4at
        0x44t
        0x4t
        0x41t
        0x40t
        0x54t
        0x5dt
        0x10t
        0x12t
        0x5at
        0x40t
        0x59t
        0x56t
        0x45t
        0x11t
        0x13t
        0x46t
        0x54t
        0x4at
        0x5ft
        0x9t
        0x46t
        0x40t
        0x58t
        0x56t
        0x5et
    .end array-data

    :array_8
    .array-data 1
        0x7ft
        0x5ft
        0xet
        0x52t
        0x59t
        0x53t
        0x79t
        0x40t
        0x8t
        0x74t
        0x56t
        0x42t
        0x51t
        0x46t
        0x8t
        0x41t
        0x4ct
    .end array-data

    nop

    :array_9
    .array-data 1
        0x72t
        0x3t
        0x5ft
        0xet
        0x55t
        0x2t
        0x14t
        0x16t
        0x59t
        0x42t
        0x5ct
        0x7t
        0x41t
        0xct
        0x55t
        0xat
        0x10t
        0x16t
        0x51t
        0xct
        0x52t
        0xbt
        0x5et
        0x1t
        0x7dt
        0xct
        0x42t
        0x7t
        0x5et
        0x12t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x23t
        0x5t
        0x41t
        0x5bt
        0x43t
        0x5ft
        0x16t
        0x1ft
        0x15t
        0x5ct
        0x5at
        0x42t
        0x42t
        0x0t
        0x5at
        0x47t
        0x5bt
        0x52t
        0x42t
        0x11t
        0x5dt
        0x5bt
        0x59t
        0x53t
        0x42t
        0xat
        0x54t
        0x47t
        0x5bt
        0x55t
        0xat
        0xft
        0x5bt
        0x55t
        0x15t
    .end array-data

    :array_b
    .array-data 1
        0x57t
        0x54t
        0x58t
        0x53t
        0x43t
        0x5et
        0x53t
    .end array-data

    :array_c
    .array-data 1
        0x15t
        0x66t
        0x5dt
        0x8t
        0x12t
        0x17t
        0x58t
        0x53t
        0x4ct
        0x41t
        0xet
        0x54t
        0x56t
        0x47t
        0x47t
        0x41t
        0x16t
        0x5ft
        0x50t
        0x5ct
        0x15t
        0x13t
        0x4t
        0x44t
        0x5at
        0x5et
        0x43t
        0x8t
        0xft
        0x50t
        0x15t
        0x75t
        0x5at
        0xet
        0x6t
        0x5bt
        0x50t
        0x12t
        0x65t
        0xdt
        0x0t
        0x4et
        0x15t
        0x41t
        0x50t
        0x13t
        0x17t
        0x5et
        0x56t
        0x57t
        0x46t
        0x41t
        0x2t
        0x58t
        0x5bt
        0x5ct
        0x50t
        0x2t
        0x15t
        0x5et
        0x5at
        0x5ct
        0x15t
        0x8t
        0x12t
        0x44t
        0x40t
        0x57t
        0x46t
        0x41t
        0xet
        0x59t
        0x15t
        0x57t
        0x58t
        0x14t
        0xdt
        0x56t
        0x41t
        0x5dt
        0x47t
        0x12t
        0x41t
        0x40t
        0x5ct
        0x46t
        0x5dt
        0x41t
        0x26t
        0x58t
        0x5at
        0x55t
        0x59t
        0x4t
        0x41t
        0x76t
        0x65t
        0x7bt
        0x46t
        0x41t
        0x3t
        0x42t
        0x41t
        0x12t
        0x5bt
        0xet
        0x15t
        0x17t
        0x72t
        0x5dt
        0x5at
        0x6t
        0xdt
        0x52t
        0x15t
        0x62t
        0x59t
        0x0t
        0x18t
        0x17t
        0x66t
        0x46t
        0x5at
        0x13t
        0x4t
        0x19t
    .end array-data

    nop

    :array_d
    .array-data 1
        0x22t
        0x58t
        0x59t
        0x57t
        0x5at
        0x1t
        0x24t
        0x47t
        0x5ft
        0x71t
        0x55t
        0x10t
        0xct
        0x41t
        0x5ft
        0x44t
        0x4ft
    .end array-data
.end method


# virtual methods
.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    if-ne p1, v6, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "25efea"

    const v3, 0x4ed7c704

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput v5, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->setResult(ILandroid/content/Intent;)V

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zak(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    return-void

    :pswitch_0
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x11

    new-array v3, v3, [B

    fill-array-data v3, :array_1

    const-string v4, "955027"

    invoke-static {v3, v4, v6, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zax(Lcom/google/android/gms/common/ConnectionResult;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zay()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iput v5, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/common/api/GoogleApiActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    :array_0
    .array-data 1
        0x5ct
        0x5at
        0x11t
        0xft
        0x3t
        0x18t
        0x6dt
        0x58t
        0x4t
        0x8t
        0x4t
        0x6t
        0x57t
        0x47t
    .end array-data

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_1
    .array-data 1
        0x5ft
        0x54t
        0x5ct
        0x5ct
        0x5bt
        0x59t
        0x5et
        0x6at
        0x56t
        0x5ct
        0x5bt
        0x52t
        0x57t
        0x41t
        0x6at
        0x59t
        0x56t
    .end array-data
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->finish()V

    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "4cc3f8"

    const-wide v2, -0x3e2a181826c00000L    # -1.470078821E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    :cond_0
    iget v0, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/common/api/GoogleApiActivity;->zab()V

    :cond_1
    return-void

    :array_0
    .array-data 1
        0x46t
        0x6t
        0x10t
        0x5ct
        0xat
        0x4dt
        0x40t
        0xat
        0xct
        0x5dt
    .end array-data
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "05a4eb"

    const v2, -0x31173248

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/api/GoogleApiActivity;->zaa:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x42t
        0x50t
        0x12t
        0x5bt
        0x9t
        0x17t
        0x44t
        0x5ct
        0xet
        0x5at
    .end array-data
.end method
