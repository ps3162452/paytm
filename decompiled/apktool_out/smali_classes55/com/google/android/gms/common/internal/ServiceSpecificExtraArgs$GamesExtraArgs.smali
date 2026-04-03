.class public interface abstract Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs$GamesExtraArgs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "GamesExtraArgs"
.end annotation


# static fields
.field public static final DESIRED_LOCALE:Ljava/lang/String;

.field public static final GAME_PACKAGE_NAME:Ljava/lang/String;

.field public static final SIGNIN_OPTIONS:Ljava/lang/String;

.field public static final WINDOW_TOKEN:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x2e

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v1, "d812f9"

    const/16 v2, -0x7f8a

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs$GamesExtraArgs;->DESIRED_LOCALE:Ljava/lang/String;

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v1, "ec36c4"

    const v2, 0x4ef13a54

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs$GamesExtraArgs;->GAME_PACKAGE_NAME:Ljava/lang/String;

    new-array v0, v3, [B

    fill-array-data v0, :array_2

    const-string v1, "a6d2cc"

    const v2, 0x4e6d2339    # 9.9462714E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs$GamesExtraArgs;->SIGNIN_OPTIONS:Ljava/lang/String;

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "c3e544"

    const/16 v2, 0x33bb

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/ServiceSpecificExtraArgs$GamesExtraArgs;->WINDOW_TOKEN:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x7t
        0x57t
        0x5ct
        0x1ct
        0x1t
        0x56t
        0xbt
        0x5ft
        0x5dt
        0x57t
        0x48t
        0x58t
        0xat
        0x5ct
        0x43t
        0x5dt
        0xft
        0x5dt
        0x4at
        0x5ft
        0x5ct
        0x41t
        0x48t
        0x5et
        0x5t
        0x55t
        0x54t
        0x41t
        0x48t
        0x52t
        0x1t
        0x41t
        0x1ft
        0x56t
        0x3t
        0x4at
        0xdt
        0x4at
        0x54t
        0x56t
        0x2at
        0x56t
        0x7t
        0x59t
        0x5dt
        0x57t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x6t
        0xct
        0x5et
        0x18t
        0x4t
        0x5bt
        0xat
        0x4t
        0x5ft
        0x53t
        0x4dt
        0x55t
        0xbt
        0x7t
        0x41t
        0x59t
        0xat
        0x50t
        0x4bt
        0x4t
        0x5et
        0x45t
        0x4dt
        0x53t
        0x4t
        0xet
        0x56t
        0x45t
        0x4dt
        0x5ft
        0x0t
        0x1at
        0x1dt
        0x51t
        0x2t
        0x59t
        0x0t
        0x33t
        0x52t
        0x55t
        0x8t
        0x55t
        0x2t
        0x6t
        0x7dt
        0x57t
        0xet
        0x51t
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x59t
        0x9t
        0x1ct
        0x4t
        0xct
        0xet
        0x51t
        0x8t
        0x57t
        0x4dt
        0x2t
        0xft
        0x52t
        0x16t
        0x5dt
        0xat
        0x7t
        0x4ft
        0x51t
        0x9t
        0x41t
        0x4dt
        0x4t
        0x0t
        0x5bt
        0x1t
        0x41t
        0x4dt
        0x8t
        0x4t
        0x4ft
        0x4at
        0x41t
        0xat
        0x4t
        0xft
        0x7ft
        0xat
        0x7dt
        0x13t
        0x17t
        0x8t
        0x59t
        0xat
        0x41t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x0t
        0x5ct
        0x8t
        0x1bt
        0x53t
        0x5bt
        0xct
        0x54t
        0x9t
        0x50t
        0x1at
        0x55t
        0xdt
        0x57t
        0x17t
        0x5at
        0x5dt
        0x50t
        0x4dt
        0x54t
        0x8t
        0x46t
        0x1at
        0x53t
        0x2t
        0x5et
        0x0t
        0x46t
        0x1at
        0x5ft
        0x6t
        0x4at
        0x4bt
        0x45t
        0x5bt
        0x44t
        0x16t
        0x43t
        0x32t
        0x5ct
        0x5at
        0x50t
        0xct
        0x44t
        0x31t
        0x5at
        0x5ft
        0x51t
        0xdt
    .end array-data
.end method
