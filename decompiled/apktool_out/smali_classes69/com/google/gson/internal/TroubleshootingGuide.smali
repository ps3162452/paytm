.class public Lcom/google/gson/internal/TroubleshootingGuide;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d421b4"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 1
        0xct
        0x40t
        0x46t
        0x41t
        0x11t
        0xet
        0x4bt
        0x1bt
        0x55t
        0x58t
        0x16t
        0x5ct
        0x11t
        0x56t
        0x1ct
        0x52t
        0xdt
        0x59t
        0x4bt
        0x53t
        0x5dt
        0x5et
        0x5t
        0x58t
        0x1t
        0x1bt
        0x55t
        0x42t
        0xdt
        0x5at
        0x4bt
        0x56t
        0x5et
        0x5et
        0x0t
        0x1bt
        0x9t
        0x55t
        0x5bt
        0x5ft
        0x4dt
        0x60t
        0x16t
        0x5bt
        0x47t
        0x53t
        0xet
        0x51t
        0x17t
        0x5ct
        0x5dt
        0x5et
        0x16t
        0x5dt
        0xat
        0x53t
        0x1ct
        0x5ct
        0x6t
        0x17t
    .end array-data
.end method
