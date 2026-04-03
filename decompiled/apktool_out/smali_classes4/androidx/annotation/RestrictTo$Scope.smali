.class public final enum Landroidx/annotation/RestrictTo$Scope;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/annotation/RestrictTo$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/annotation/RestrictTo$Scope;

.field public static final enum GROUP_ID:Landroidx/annotation/RestrictTo$Scope;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum LIBRARY:Landroidx/annotation/RestrictTo$Scope;

.field public static final enum LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;

.field public static final enum LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;

.field public static final enum SUBCLASSES:Landroidx/annotation/RestrictTo$Scope;

.field public static final enum TESTS:Landroidx/annotation/RestrictTo$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x5

    const/4 v10, 0x0

    new-instance v0, Landroidx/annotation/RestrictTo$Scope;

    const/4 v1, 0x7

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c2f72d"

    const v3, 0x4ded802e    # 4.9807507E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v10}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;

    new-instance v1, Landroidx/annotation/RestrictTo$Scope;

    const/16 v2, 0xd

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "a788cb"

    const v4, 0x4ea30348

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v12}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;

    new-instance v2, Landroidx/annotation/RestrictTo$Scope;

    const/16 v3, 0x14

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "25d00f"

    const-wide/32 v6, 0x5b133a60

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v13}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;

    new-instance v3, Landroidx/annotation/RestrictTo$Scope;

    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "98dbe0"

    invoke-static {v4, v5, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v14}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/annotation/RestrictTo$Scope;->GROUP_ID:Landroidx/annotation/RestrictTo$Scope;

    new-instance v4, Landroidx/annotation/RestrictTo$Scope;

    new-array v5, v11, [B

    fill-array-data v5, :array_4

    const-string v6, "087fd3"

    const-wide v8, -0x3e5c783234000000L    # -1.63833574E8

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/annotation/RestrictTo$Scope;->TESTS:Landroidx/annotation/RestrictTo$Scope;

    new-instance v5, Landroidx/annotation/RestrictTo$Scope;

    const/16 v6, 0xa

    new-array v6, v6, [B

    fill-array-data v6, :array_5

    const-string v7, "004c43"

    invoke-static {v6, v7, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v11}, Landroidx/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/annotation/RestrictTo$Scope;->SUBCLASSES:Landroidx/annotation/RestrictTo$Scope;

    const/4 v6, 0x6

    new-array v6, v6, [Landroidx/annotation/RestrictTo$Scope;

    aput-object v0, v6, v10

    aput-object v1, v6, v12

    aput-object v2, v6, v13

    aput-object v3, v6, v14

    const/4 v0, 0x4

    aput-object v4, v6, v0

    aput-object v5, v6, v11

    sput-object v6, Landroidx/annotation/RestrictTo$Scope;->$VALUES:[Landroidx/annotation/RestrictTo$Scope;

    return-void

    :array_0
    .array-data 1
        0x2ft
        0x7bt
        0x24t
        0x65t
        0x73t
        0x36t
        0x3at
    .end array-data

    :array_1
    .array-data 1
        0x2dt
        0x7et
        0x7at
        0x6at
        0x22t
        0x30t
        0x38t
        0x68t
        0x7ft
        0x6at
        0x2ct
        0x37t
        0x31t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7et
        0x7ct
        0x26t
        0x62t
        0x71t
        0x34t
        0x6bt
        0x6at
        0x23t
        0x62t
        0x7ft
        0x33t
        0x62t
        0x6at
        0x34t
        0x62t
        0x75t
        0x20t
        0x7bt
        0x6dt
    .end array-data

    :array_3
    .array-data 1
        0x7et
        0x6at
        0x2bt
        0x37t
        0x35t
        0x6ft
        0x70t
        0x7ct
    .end array-data

    :array_4
    .array-data 1
        0x64t
        0x7dt
        0x64t
        0x32t
        0x37t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x63t
        0x65t
        0x76t
        0x20t
        0x78t
        0x72t
        0x63t
        0x63t
        0x71t
        0x30t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/annotation/RestrictTo$Scope;
    .locals 1

    const-class v0, Landroidx/annotation/RestrictTo$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/annotation/RestrictTo$Scope;

    return-object v0
.end method

.method public static values()[Landroidx/annotation/RestrictTo$Scope;
    .locals 1

    sget-object v0, Landroidx/annotation/RestrictTo$Scope;->$VALUES:[Landroidx/annotation/RestrictTo$Scope;

    invoke-virtual {v0}, [Landroidx/annotation/RestrictTo$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/annotation/RestrictTo$Scope;

    return-object v0
.end method
