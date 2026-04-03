.class public interface abstract Lorg/apache/http/cookie/params/CookieSpecPNames;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DATE_PATTERNS:Ljava/lang/String;

.field public static final SINGLE_COOKIE_HEADER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v2, 0x1

    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "6977aa"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/cookie/params/CookieSpecPNames;->DATE_PATTERNS:Ljava/lang/String;

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "8b22c7"

    const-wide v2, 0x41c80ac234000000L    # 8.0671652E8

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/http/cookie/params/CookieSpecPNames;->SINGLE_COOKIE_HEADER:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x5et
        0x4dt
        0x43t
        0x47t
        0x4ft
        0x11t
        0x44t
        0x56t
        0x43t
        0x58t
        0x2t
        0xet
        0x5at
        0x17t
        0x54t
        0x58t
        0xet
        0xat
        0x5ft
        0x5ct
        0x1at
        0x53t
        0x0t
        0x15t
        0x53t
        0x49t
        0x56t
        0x43t
        0x15t
        0x4t
        0x44t
        0x57t
        0x44t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x50t
        0x16t
        0x46t
        0x42t
        0x4dt
        0x47t
        0x4at
        0xdt
        0x46t
        0x5dt
        0x0t
        0x58t
        0x54t
        0x4ct
        0x41t
        0x5bt
        0xdt
        0x50t
        0x54t
        0x7t
        0x1ft
        0x51t
        0xct
        0x58t
        0x53t
        0xbt
        0x57t
        0x1ft
        0xbt
        0x52t
        0x59t
        0x6t
        0x57t
        0x40t
    .end array-data
.end method
