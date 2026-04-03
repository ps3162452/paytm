.class public final enum Landroidx/loader/content/ModernAsyncTask$Status;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/content/ModernAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/loader/content/ModernAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/loader/content/ModernAsyncTask$Status;

.field public static final enum FINISHED:Landroidx/loader/content/ModernAsyncTask$Status;

.field public static final enum PENDING:Landroidx/loader/content/ModernAsyncTask$Status;

.field public static final enum RUNNING:Landroidx/loader/content/ModernAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v3, 0x7

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroidx/loader/content/ModernAsyncTask$Status;

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    const-string v2, "ae2b59"

    const-wide v4, -0x3e4455991c000000L    # -4.64152292E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroidx/loader/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/loader/content/ModernAsyncTask$Status;->PENDING:Landroidx/loader/content/ModernAsyncTask$Status;

    new-instance v1, Landroidx/loader/content/ModernAsyncTask$Status;

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    const-string v3, "6f1362"

    invoke-static {v2, v3, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v7}, Landroidx/loader/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/loader/content/ModernAsyncTask$Status;->RUNNING:Landroidx/loader/content/ModernAsyncTask$Status;

    new-instance v2, Landroidx/loader/content/ModernAsyncTask$Status;

    const/16 v3, 0x8

    new-array v3, v3, [B

    fill-array-data v3, :array_2

    const-string v4, "baef85"

    invoke-static {v3, v4, v7, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v8}, Landroidx/loader/content/ModernAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/loader/content/ModernAsyncTask$Status;->FINISHED:Landroidx/loader/content/ModernAsyncTask$Status;

    const/4 v3, 0x3

    new-array v3, v3, [Landroidx/loader/content/ModernAsyncTask$Status;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    aput-object v2, v3, v8

    sput-object v3, Landroidx/loader/content/ModernAsyncTask$Status;->$VALUES:[Landroidx/loader/content/ModernAsyncTask$Status;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0x20t
        0x7ct
        0x26t
        0x7ct
        0x77t
        0x26t
    .end array-data

    :array_1
    .array-data 1
        0x64t
        0x33t
        0x7ft
        0x7dt
        0x7ft
        0x7ct
        0x71t
    .end array-data

    :array_2
    .array-data 1
        0x24t
        0x28t
        0x2bt
        0x2ft
        0x6bt
        0x7dt
        0x27t
        0x25t
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

.method public static valueOf(Ljava/lang/String;)Landroidx/loader/content/ModernAsyncTask$Status;
    .locals 1

    const-class v0, Landroidx/loader/content/ModernAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/loader/content/ModernAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Landroidx/loader/content/ModernAsyncTask$Status;
    .locals 1

    sget-object v0, Landroidx/loader/content/ModernAsyncTask$Status;->$VALUES:[Landroidx/loader/content/ModernAsyncTask$Status;

    invoke-virtual {v0}, [Landroidx/loader/content/ModernAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/loader/content/ModernAsyncTask$Status;

    return-object v0
.end method
