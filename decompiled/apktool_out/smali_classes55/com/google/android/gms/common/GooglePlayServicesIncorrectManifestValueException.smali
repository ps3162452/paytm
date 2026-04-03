.class public final Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException;
.super Lcom/google/android/gms/common/GooglePlayServicesManifestException;


# direct methods
.method public constructor <init>(I)V
    .locals 5

    sget v0, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x5d

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "48a9b7"

    const v4, -0x33465774    # -9.733846E7f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "564f1a"

    const/16 v3, 0x3413

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0xc2

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v2, "b7bb02"

    const/16 v3, 0x5bdc

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/GooglePlayServicesManifestException;-><init>(ILjava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x60t
        0x50t
        0x4t
        0x19t
        0xft
        0x52t
        0x40t
        0x59t
        0x4ct
        0x5dt
        0x3t
        0x43t
        0x55t
        0x18t
        0x15t
        0x58t
        0x5t
        0x17t
        0x5dt
        0x56t
        0x41t
        0x40t
        0xdt
        0x42t
        0x46t
        0x18t
        0x0t
        0x49t
        0x12t
        0x10t
        0x47t
        0x18t
        0x20t
        0x57t
        0x6t
        0x45t
        0x5bt
        0x51t
        0x5t
        0x74t
        0x3t
        0x59t
        0x5dt
        0x5et
        0x4t
        0x4at
        0x16t
        0x19t
        0x4ct
        0x55t
        0xdt
        0x19t
        0x6t
        0x58t
        0x51t
        0x4bt
        0x41t
        0x57t
        0xdt
        0x43t
        0x14t
        0x50t
        0x0t
        0x4ft
        0x7t
        0x17t
        0x40t
        0x50t
        0x4t
        0x19t
        0x10t
        0x5et
        0x53t
        0x50t
        0x15t
        0x19t
        0x14t
        0x56t
        0x58t
        0x4dt
        0x4t
        0x17t
        0x42t
        0x17t
        0x71t
        0x40t
        0x11t
        0x5ct
        0x1t
        0x43t
        0x51t
        0x5ct
        0x41t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x15t
        0x54t
        0x41t
        0x12t
        0x11t
        0x7t
        0x5at
        0x43t
        0x5at
        0x2t
        0x11t
    .end array-data

    :array_2
    .array-data 1
        0x4ct
        0x17t
        0x42t
        0x3bt
        0x5ft
        0x47t
        0x42t
        0x5at
        0x17t
        0x11t
        0x44t
        0x12t
        0xat
        0x56t
        0x14t
        0x7t
        0x10t
        0x46t
        0xat
        0x52t
        0x42t
        0x4t
        0x5ft
        0x5et
        0xet
        0x58t
        0x15t
        0xbt
        0x5et
        0x55t
        0x42t
        0x53t
        0x7t
        0x1t
        0x5ct
        0x53t
        0x10t
        0x56t
        0x16t
        0xbt
        0x5ft
        0x5ct
        0x42t
        0x40t
        0xbt
        0x16t
        0x58t
        0x5bt
        0xct
        0x17t
        0x16t
        0xat
        0x55t
        0x12t
        0x5et
        0x56t
        0x12t
        0x12t
        0x5ct
        0x5bt
        0x1t
        0x56t
        0x16t
        0xbt
        0x5ft
        0x5ct
        0x5ct
        0x17t
        0x7t
        0xet
        0x55t
        0x5ft
        0x7t
        0x59t
        0x16t
        0x58t
        0x10t
        0x12t
        0x42t
        0x17t
        0x42t
        0x5et
        0x5dt
        0x57t
        0x16t
        0x56t
        0x4ft
        0x6t
        0x51t
        0x46t
        0x3t
        0x17t
        0x3t
        0xct
        0x54t
        0x40t
        0xdt
        0x5et
        0x6t
        0x58t
        0x5et
        0x53t
        0xft
        0x52t
        0x5ft
        0x40t
        0x53t
        0x5dt
        0xft
        0x19t
        0x5t
        0xdt
        0x5ft
        0x55t
        0xet
        0x52t
        0x4ct
        0x3t
        0x5et
        0x56t
        0x10t
        0x58t
        0xbt
        0x6t
        0x1et
        0x55t
        0xft
        0x44t
        0x4ct
        0x14t
        0x55t
        0x40t
        0x11t
        0x5et
        0xdt
        0xct
        0x12t
        0x12t
        0x3t
        0x59t
        0x6t
        0x10t
        0x5ft
        0x5bt
        0x6t
        0xdt
        0x14t
        0x3t
        0x5ct
        0x47t
        0x7t
        0xat
        0x40t
        0x22t
        0x59t
        0x5ct
        0x16t
        0x52t
        0x5t
        0x7t
        0x42t
        0x1dt
        0x5t
        0x58t
        0xdt
        0x5t
        0x5ct
        0x57t
        0x3dt
        0x47t
        0xet
        0x3t
        0x49t
        0x6dt
        0x11t
        0x52t
        0x10t
        0x14t
        0x59t
        0x51t
        0x7t
        0x44t
        0x3dt
        0x14t
        0x55t
        0x40t
        0x11t
        0x5et
        0xdt
        0xct
        0x12t
        0x12t
        0x4dt
        0x9t
    .end array-data
.end method
