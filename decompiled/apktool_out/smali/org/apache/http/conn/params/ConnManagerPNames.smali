.class public interface abstract Lorg/apache/http/conn/params/ConnManagerPNames;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final MAX_CONNECTIONS_PER_ROUTE:Ljava/lang/String;

.field public static final MAX_TOTAL_CONNECTIONS:Ljava/lang/String;

.field public static final TIMEOUT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "769675"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/params/ConnManagerPNames;->MAX_CONNECTIONS_PER_ROUTE:Ljava/lang/String;

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "06a026"

    const-wide v2, -0x3e3494507f000000L    # -9.20084226E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/params/ConnManagerPNames;->MAX_TOTAL_CONNECTIONS:Ljava/lang/String;

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v1, "e22b17"

    const/16 v2, -0x555a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/params/ConnManagerPNames;->TIMEOUT:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x5ft
        0x42t
        0x4dt
        0x46t
        0x19t
        0x56t
        0x58t
        0x58t
        0x57t
        0x1bt
        0x5at
        0x54t
        0x59t
        0x57t
        0x5et
        0x53t
        0x45t
        0x1bt
        0x5at
        0x57t
        0x41t
        0x1bt
        0x47t
        0x50t
        0x45t
        0x1bt
        0x4bt
        0x59t
        0x42t
        0x41t
        0x52t
    .end array-data

    :array_1
    .array-data 1
        0x58t
        0x42t
        0x15t
        0x40t
        0x1ct
        0x55t
        0x5ft
        0x58t
        0xft
        0x1dt
        0x5ft
        0x57t
        0x5et
        0x57t
        0x6t
        0x55t
        0x40t
        0x18t
        0x5dt
        0x57t
        0x19t
        0x1dt
        0x46t
        0x59t
        0x44t
        0x57t
        0xdt
    .end array-data

    :array_2
    .array-data 1
        0xdt
        0x46t
        0x46t
        0x12t
        0x1ft
        0x54t
        0xat
        0x5ct
        0x5ct
        0x4ft
        0x5ct
        0x56t
        0xbt
        0x53t
        0x55t
        0x7t
        0x43t
        0x19t
        0x11t
        0x5bt
        0x5ft
        0x7t
        0x5et
        0x42t
        0x11t
    .end array-data
.end method
