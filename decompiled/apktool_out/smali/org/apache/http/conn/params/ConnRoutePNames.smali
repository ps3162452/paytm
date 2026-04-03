.class public interface abstract Lorg/apache/http/conn/params/ConnRoutePNames;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_PROXY:Ljava/lang/String;

.field public static final FORCED_ROUTE:Ljava/lang/String;

.field public static final LOCAL_ADDRESS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x18

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    const-string v1, "d2cc40"

    const-wide/32 v2, 0x7ca184ce

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/params/ConnRoutePNames;->DEFAULT_PROXY:Ljava/lang/String;

    const/16 v0, 0x17

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "c5f8b6"

    const/16 v2, 0x1965

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/params/ConnRoutePNames;->FORCED_ROUTE:Ljava/lang/String;

    new-array v0, v4, [B

    fill-array-data v0, :array_2

    const-string v1, "d6a6f6"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/conn/params/ConnRoutePNames;->LOCAL_ADDRESS:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0xct
        0x46t
        0x17t
        0x13t
        0x1at
        0x42t
        0xbt
        0x47t
        0x17t
        0x6t
        0x1at
        0x54t
        0x1t
        0x54t
        0x2t
        0x16t
        0x58t
        0x44t
        0x49t
        0x42t
        0x11t
        0xct
        0x4ct
        0x49t
    .end array-data

    :array_1
    .array-data 1
        0xbt
        0x41t
        0x12t
        0x48t
        0x4ct
        0x44t
        0xct
        0x40t
        0x12t
        0x5dt
        0x4ct
        0x50t
        0xct
        0x47t
        0x5t
        0x5dt
        0x6t
        0x1bt
        0x11t
        0x5at
        0x13t
        0x4ct
        0x7t
    .end array-data

    :array_2
    .array-data 1
        0xct
        0x42t
        0x15t
        0x46t
        0x48t
        0x44t
        0xbt
        0x43t
        0x15t
        0x53t
        0x48t
        0x5at
        0xbt
        0x55t
        0x0t
        0x5at
        0x4bt
        0x57t
        0x0t
        0x52t
        0x13t
        0x53t
        0x15t
        0x45t
    .end array-data
.end method
