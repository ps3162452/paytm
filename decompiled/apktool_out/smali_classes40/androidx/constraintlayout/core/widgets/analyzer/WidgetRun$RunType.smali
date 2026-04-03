.class final enum Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RunType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

.field public static final enum CENTER:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

.field public static final enum END:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

.field public static final enum NONE:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

.field public static final enum START:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    new-array v1, v12, [B

    fill-array-data v1, :array_0

    const-string v2, "0cec14"

    const-wide/32 v4, 0x17f2520

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->NONE:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    new-instance v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    const-string v3, "27a9db"

    const v4, 0x4d9756e1    # 3.1738166E8f

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v10}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->START:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    new-instance v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    new-array v3, v8, [B

    fill-array-data v3, :array_2

    const-string v4, "8d599d"

    const-wide/32 v6, 0x3c46e022

    invoke-static {v3, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v11}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->END:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    new-instance v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    const/4 v4, 0x6

    new-array v4, v4, [B

    fill-array-data v4, :array_3

    const-string v5, "0d7a6d"

    const-wide/32 v6, 0x707a4d87

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v8}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->CENTER:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    new-array v4, v12, [Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    aput-object v0, v4, v9

    aput-object v1, v4, v10

    aput-object v2, v4, v11

    aput-object v3, v4, v8

    sput-object v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->$VALUES:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    return-void

    :array_0
    .array-data 1
        0x7et
        0x2ct
        0x2bt
        0x26t
    .end array-data

    :array_1
    .array-data 1
        0x61t
        0x63t
        0x20t
        0x6bt
        0x30t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x7dt
        0x2at
        0x71t
    .end array-data

    :array_3
    .array-data 1
        0x73t
        0x21t
        0x79t
        0x35t
        0x73t
        0x36t
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

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;
    .locals 1

    const-class v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    return-object v0
.end method

.method public static values()[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->$VALUES:[Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    invoke-virtual {v0}, [Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun$RunType;

    return-object v0
.end method
