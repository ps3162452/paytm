.class public Lcom/google/android/gms/common/FirstPartyScopes;
.super Ljava/lang/Object;


# static fields
.field public static final GAMES_1P:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x30

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "57b3e1"

    const/16 v2, 0x4d09

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/FirstPartyScopes;->GAMES_1P:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x5dt
        0x43t
        0x16t
        0x43t
        0x16t
        0xbt
        0x1at
        0x18t
        0x15t
        0x44t
        0x12t
        0x1ft
        0x52t
        0x58t
        0xdt
        0x54t
        0x9t
        0x54t
        0x54t
        0x47t
        0xbt
        0x40t
        0x4bt
        0x52t
        0x5at
        0x5at
        0x4dt
        0x52t
        0x10t
        0x45t
        0x5dt
        0x18t
        0x5t
        0x52t
        0x8t
        0x54t
        0x46t
        0x19t
        0x4t
        0x5at
        0x17t
        0x42t
        0x41t
        0x47t
        0x3t
        0x41t
        0x11t
        0x48t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
