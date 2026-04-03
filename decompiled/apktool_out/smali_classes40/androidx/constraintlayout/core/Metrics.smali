.class public Landroidx/constraintlayout/core/Metrics;
.super Ljava/lang/Object;


# instance fields
.field public additionalMeasures:J

.field public barrierConnectionResolved:J

.field public bfs:J

.field public centerConnectionResolved:J

.field public chainConnectionResolved:J

.field public constraints:J

.field public determineGroups:J

.field public errors:J

.field public extravariables:J

.field public fullySolved:J

.field public graphOptimizer:J

.field public graphSolved:J

.field public grouping:J

.field public infeasibleDetermineGroups:J

.field public iterations:J

.field public lastTableSize:J

.field public layouts:J

.field public linearSolved:J

.field public matchConnectionResolved:J

.field public maxRows:J

.field public maxTableSize:J

.field public maxVariables:J

.field public measuredMatchWidgets:J

.field public measuredWidgets:J

.field public measures:J

.field public measuresLayoutDuration:J

.field public measuresWidgetsDuration:J

.field public measuresWrap:J

.field public measuresWrapInfeasible:J

.field public minimize:J

.field public minimizeGoal:J

.field public nonresolvedWidgets:J

.field public oldresolvedWidgets:J

.field public optimize:J

.field public pivots:J

.field public problematicLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public resolutions:J

.field public resolvedWidgets:J

.field public simpleconstraints:J

.field public slackvariables:J

.field public tableSizeIncrease:J

.field public variables:J

.field public widgets:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/Metrics;->problematicLayouts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->measures:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->widgets:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->additionalMeasures:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->resolutions:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->tableSizeIncrease:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->lastTableSize:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->maxVariables:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->maxRows:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->minimize:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->minimizeGoal:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->constraints:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->simpleconstraints:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->optimize:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->iterations:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->pivots:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->bfs:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->variables:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->errors:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->slackvariables:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->extravariables:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->fullySolved:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->resolvedWidgets:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->oldresolvedWidgets:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->nonresolvedWidgets:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->centerConnectionResolved:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->matchConnectionResolved:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->chainConnectionResolved:J

    iput-wide v0, p0, Landroidx/constraintlayout/core/Metrics;->barrierConnectionResolved:J

    iget-object v0, p0, Landroidx/constraintlayout/core/Metrics;->problematicLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/16 v6, 0xf

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x1b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "bb99c5"

    const/16 v3, -0xff3

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/constraintlayout/core/Metrics;->measures:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_1

    const-string v2, "925ef9"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/constraintlayout/core/Metrics;->measuresWrap:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x19

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "64aa9c"

    invoke-static {v1, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/constraintlayout/core/Metrics;->measuresWrapInfeasible:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_3

    const-string v2, "f14e75"

    const/16 v3, -0x37c9

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/constraintlayout/core/Metrics;->determineGroups:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x1c

    new-array v1, v1, [B

    fill-array-data v1, :array_4

    const-string v2, "7d1879"

    invoke-static {v1, v2, v5, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/constraintlayout/core/Metrics;->infeasibleDetermineGroups:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_5

    const-string v2, "6a0557"

    const/16 v3, -0x6756

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    new-array v1, v1, [B

    fill-array-data v1, :array_6

    const-string v2, "b297b4"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/constraintlayout/core/Metrics;->widgets:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v2, "3271eb"

    const-wide v4, -0x3e2b377793c00000L    # -1.394745777E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/constraintlayout/core/Metrics;->graphSolved:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-array v1, v6, [B

    fill-array-data v1, :array_8

    const-string v2, "3abf80"

    const-wide v4, 0x41de35dc51800000L    # 2.027385158E9

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroidx/constraintlayout/core/Metrics;->linearSolved:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x68t
        0x48t
        0x13t
        0x13t
        0x43t
        0x78t
        0x7t
        0x16t
        0x4bt
        0x50t
        0x0t
        0x46t
        0x42t
        0x48t
        0x13t
        0x13t
        0x69t
        0x58t
        0x7t
        0x3t
        0x4at
        0x4ct
        0x11t
        0x50t
        0x11t
        0x58t
        0x19t
    .end array-data

    :array_1
    .array-data 1
        0x33t
        0x5ft
        0x50t
        0x4t
        0x15t
        0x4ct
        0x4bt
        0x57t
        0x46t
        0x32t
        0x14t
        0x58t
        0x49t
        0x8t
        0x15t
    .end array-data

    :array_2
    .array-data 1
        0x3ct
        0x59t
        0x4t
        0x0t
        0x4at
        0x16t
        0x44t
        0x51t
        0x12t
        0x36t
        0x4bt
        0x2t
        0x46t
        0x7dt
        0xft
        0x7t
        0x5ct
        0x2t
        0x45t
        0x5dt
        0x3t
        0xdt
        0x5ct
        0x59t
        0x16t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x6ct
        0x55t
        0x51t
        0x11t
        0x52t
        0x47t
        0xbt
        0x58t
        0x5at
        0x0t
        0x70t
        0x47t
        0x9t
        0x44t
        0x44t
        0x16t
        0xdt
        0x15t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x3dt
        0xdt
        0x5ft
        0x5et
        0x52t
        0x58t
        0x44t
        0xdt
        0x53t
        0x54t
        0x52t
        0x7dt
        0x52t
        0x10t
        0x54t
        0x4at
        0x5at
        0x50t
        0x59t
        0x1t
        0x76t
        0x4at
        0x58t
        0x4ct
        0x47t
        0x17t
        0xbt
        0x18t
    .end array-data

    :array_5
    .array-data 1
        0x3ct
        0x6t
        0x42t
        0x54t
        0x45t
        0x5ft
        0x79t
        0x11t
        0x44t
        0x5ct
        0x58t
        0x5et
        0x4ct
        0x4t
        0x42t
        0xft
        0x15t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x68t
        0x45t
        0x50t
        0x53t
        0x5t
        0x51t
        0x16t
        0x41t
        0x3t
        0x17t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x39t
        0x55t
        0x45t
        0x50t
        0x15t
        0xat
        0x60t
        0x5dt
        0x5bt
        0x47t
        0x0t
        0x6t
        0x9t
        0x12t
    .end array-data

    nop

    :array_8
    .array-data 1
        0x39t
        0xdt
        0xbt
        0x8t
        0x5dt
        0x51t
        0x41t
        0x32t
        0xdt
        0xat
        0x4et
        0x55t
        0x57t
        0x5bt
        0x42t
    .end array-data
.end method
