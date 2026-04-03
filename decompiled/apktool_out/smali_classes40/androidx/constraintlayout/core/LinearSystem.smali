.class public Landroidx/constraintlayout/core/LinearSystem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/LinearSystem$Row;,
        Landroidx/constraintlayout/core/LinearSystem$ValuesRow;
    }
.end annotation


# static fields
.field public static ARRAY_ROW_CREATION:J

.field public static final DEBUG:Z

.field private static final DEBUG_CONSTRAINTS:Z

.field public static final FULL_DEBUG:Z

.field public static final MEASURE:Z

.field public static OPTIMIZED_ARRAY_ROW_CREATION:J

.field public static OPTIMIZED_ENGINE:Z

.field private static POOL_SIZE:I

.field public static SIMPLIFY_SYNONYMS:Z

.field public static SKIP_COLUMNS:Z

.field public static USE_BASIC_SYNONYMS:Z

.field public static USE_DEPENDENCY_ORDERING:Z

.field public static USE_SYNONYMS:Z

.field public static sMetrics:Landroidx/constraintlayout/core/Metrics;


# instance fields
.field private TABLE_SIZE:I

.field public graphOptimizer:Z

.field public hasSimpleDefinition:Z

.field private mAlreadyTestedCandidates:[Z

.field final mCache:Landroidx/constraintlayout/core/Cache;

.field private mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

.field private mMaxColumns:I

.field private mMaxRows:I

.field mNumColumns:I

.field mNumRows:I

.field private mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

.field private mPoolVariablesCount:I

.field mRows:[Landroidx/constraintlayout/core/ArrayRow;

.field private mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/core/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field mVariablesID:I

.field public newgraphOptimizer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    sput-boolean v1, Landroidx/constraintlayout/core/LinearSystem;->USE_DEPENDENCY_ORDERING:Z

    sput-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->USE_BASIC_SYNONYMS:Z

    sput-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    sput-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->USE_SYNONYMS:Z

    sput-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->SKIP_COLUMNS:Z

    sput-boolean v1, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    const/16 v0, 0x3e8

    sput v0, Landroidx/constraintlayout/core/LinearSystem;->POOL_SIZE:I

    sput-wide v2, Landroidx/constraintlayout/core/LinearSystem;->ARRAY_ROW_CREATION:J

    sput-wide v2, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ARRAY_ROW_CREATION:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/16 v2, 0x20

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    iput-boolean v1, p0, Landroidx/constraintlayout/core/LinearSystem;->graphOptimizer:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    new-array v0, v2, [Z

    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    const/4 v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    sget v0, Landroidx/constraintlayout/core/LinearSystem;->POOL_SIZE:I

    new-array v0, v0, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    new-array v0, v2, [Landroidx/constraintlayout/core/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->releaseRows()V

    new-instance v0, Landroidx/constraintlayout/core/Cache;

    invoke-direct {v0}, Landroidx/constraintlayout/core/Cache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    new-instance v1, Landroidx/constraintlayout/core/PriorityGoalRow;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/PriorityGoalRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    sget-boolean v1, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;

    invoke-direct {v1, p0, v0}, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/Cache;)V

    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroidx/constraintlayout/core/ArrayRow;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    goto :goto_0
.end method

.method private acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 4

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Landroidx/constraintlayout/core/Pools$Pool;

    invoke-interface {v0}, Landroidx/constraintlayout/core/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/SolverVariable;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/constraintlayout/core/SolverVariable;

    invoke-direct {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;-><init>(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->setType(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    move-object v1, v0

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    sget v2, Landroidx/constraintlayout/core/LinearSystem;->POOL_SIZE:I

    if-lt v0, v2, :cond_0

    mul-int/lit8 v0, v2, 0x2

    sput v0, Landroidx/constraintlayout/core/LinearSystem;->POOL_SIZE:I

    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    aput-object v1, v0, v2

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/SolverVariable;->setType(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0
.end method

.method private addError(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;

    return-void
.end method

.method private final addRow(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v3, 0x0

    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget v1, p1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    invoke-virtual {v0, p0, v1}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    :goto_0
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->SIMPLIFY_SYNONYMS:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    if-eqz v0, :cond_7

    move v2, v3

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v1, 0x3

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v4, "239e88"

    const/16 v5, 0x3893

    invoke-static {v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v1, v0, v2

    if-eqz v1, :cond_8

    aget-object v0, v0, v2

    iget-boolean v0, v0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v0, v0, v2

    iget-object v1, v0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget v4, v0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    invoke-virtual {v1, p0, v4}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    sget-boolean v1, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aput-object v6, v0, v2

    add-int/lit8 v0, v2, 0x1

    add-int/lit8 v1, v2, 0x1

    :goto_3
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v1, v4, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    add-int/lit8 v4, v1, -0x1

    aget-object v5, v0, v1

    aput-object v5, v0, v4

    add-int/lit8 v4, v1, -0x1

    aget-object v0, v0, v4

    iget-object v0, v0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget v0, v0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    add-int/lit8 v4, v1, -0x1

    aget-object v0, v0, v4

    iget-object v0, v0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    add-int/lit8 v4, v1, -0x1

    iput v4, v0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_3

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    aput-object p1, v0, v1

    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v0, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    if-ge v0, v4, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aput-object v6, v1, v0

    :cond_5
    add-int/lit8 v0, v4, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    add-int/lit8 v0, v2, -0x1

    :goto_4
    add-int/lit8 v2, v0, 0x1

    goto/16 :goto_1

    :cond_6
    iput-boolean v3, p0, Landroidx/constraintlayout/core/LinearSystem;->hasSimpleDefinition:Z

    :cond_7
    return-void

    :cond_8
    move v0, v2

    goto :goto_4

    nop

    :array_0
    .array-data 1
        0x65t
        0x67t
        0x7ft
    .end array-data
.end method

.method private addSingleError(Landroidx/constraintlayout/core/ArrayRow;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/constraintlayout/core/LinearSystem;->addSingleError(Landroidx/constraintlayout/core/ArrayRow;II)V

    return-void
.end method

.method private computeValues()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v1, v1, v0

    iget-object v2, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget v1, v1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    iput v1, v2, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static createRowDimensionPercent(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;
    .locals 1

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowDimensionPercent(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    return-object v0
.end method

.method private createVariable(Ljava/lang/String;Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 6

    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->variables:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->variables:J

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/SolverVariable;->setName(Ljava/lang/String;)V

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method private displayRows()V
    .locals 3

    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->displaySolverVariables()V

    const-string v1, ""

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private displaySolverVariables()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xe

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "efd3b8"

    const/16 v3, -0x2b66

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x41

    aput-byte v3, v1, v2

    const-string v2, "961770"

    const-wide v4, 0x41c726901c800000L    # 7.76806457E8

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_1

    const-string v2, "cbfe7e"

    const v3, 0x4ea9ea92

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x21t
        0xft
        0x17t
        0x43t
        0xet
        0x59t
        0x1ct
        0x46t
        0x36t
        0x5ct
        0x15t
        0x4bt
        0x45t
        0x4et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x4at
        0x68t
    .end array-data
.end method

.method private enforceBFS(Landroidx/constraintlayout/core/LinearSystem$Row;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v2, v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v5, v5, v2

    iget-object v5, v5, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v5, v5, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v6, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v5, v6, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v5, v5, v2

    iget v5, v5, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_12

    const/4 v10, 0x0

    const/4 v2, 0x0

    :goto_2
    if-nez v10, :cond_13

    sget-object v3, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v3, :cond_2

    iget-wide v4, v3, Landroidx/constraintlayout/core/Metrics;->bfs:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroidx/constraintlayout/core/Metrics;->bfs:J

    :cond_2
    add-int/lit8 v11, v2, 0x1

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v3, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v12, v2, v3

    iget-object v2, v12, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v8, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v2, v8, :cond_4

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    iget-boolean v2, v12, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    if-nez v2, :cond_3

    iget v2, v12, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    const/4 v8, 0x0

    cmpg-float v2, v2, v8

    if-gez v2, :cond_3

    sget-boolean v2, Landroidx/constraintlayout/core/LinearSystem;->SKIP_COLUMNS:Z

    if-eqz v2, :cond_a

    iget-object v2, v12, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v2}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v13

    const/4 v2, 0x0

    move v9, v2

    move v8, v5

    move v2, v6

    move v6, v4

    move v4, v7

    :goto_5
    if-ge v9, v13, :cond_9

    iget-object v5, v12, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v5, v9}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getVariable(I)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v14

    iget-object v5, v12, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v5, v14}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v15

    const/4 v5, 0x0

    cmpg-float v5, v15, v5

    if-gtz v5, :cond_6

    :cond_5
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_5

    :cond_6
    const/4 v5, 0x0

    :goto_6
    const/16 v7, 0x9

    if-ge v5, v7, :cond_5

    iget-object v7, v14, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    aget v7, v7, v5

    div-float/2addr v7, v15

    cmpg-float v16, v7, v8

    if-gez v16, :cond_7

    if-eq v5, v4, :cond_8

    :cond_7
    if-le v5, v4, :cond_16

    :cond_8
    iget v2, v14, Landroidx/constraintlayout/core/SolverVariable;->id:I

    move v4, v5

    move v6, v2

    move v2, v3

    :goto_7
    add-int/lit8 v5, v5, 0x1

    move v8, v7

    goto :goto_6

    :cond_9
    move v7, v4

    move v5, v8

    move v4, v6

    move v6, v2

    goto :goto_4

    :cond_a
    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    iget v8, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    if-ge v2, v8, :cond_3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v8, v8, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v13, v8, v2

    iget-object v8, v12, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v8, v13}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v14

    const/4 v8, 0x0

    cmpg-float v8, v14, v8

    if-gtz v8, :cond_b

    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    const/4 v8, 0x0

    move v9, v6

    move v6, v4

    move v4, v7

    move/from16 v17, v5

    move v5, v8

    move/from16 v8, v17

    :goto_a
    const/16 v7, 0x9

    if-ge v5, v7, :cond_15

    iget-object v7, v13, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    aget v7, v7, v5

    div-float/2addr v7, v14

    cmpg-float v15, v7, v8

    if-gez v15, :cond_c

    if-eq v5, v4, :cond_d

    :cond_c
    if-le v5, v4, :cond_14

    :cond_d
    move v4, v5

    move v6, v2

    move v8, v3

    :goto_b
    add-int/lit8 v5, v5, 0x1

    move v9, v8

    move v8, v7

    goto :goto_a

    :cond_e
    const/4 v2, -0x1

    if-eq v6, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v2, v2, v6

    iget-object v3, v2, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v5, -0x1

    iput v5, v3, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    sget-object v3, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v3, :cond_f

    iget-wide v8, v3, Landroidx/constraintlayout/core/Metrics;->pivots:J

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    iput-wide v8, v3, Landroidx/constraintlayout/core/Metrics;->pivots:J

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    iget-object v3, v2, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iput v6, v3, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    iget-object v3, v2, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0, v2}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    move v2, v10

    :goto_c
    move-object/from16 v0, p0

    iget v3, v0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    div-int/lit8 v3, v3, 0x2

    if-le v11, v3, :cond_10

    const/4 v2, 0x1

    :cond_10
    move v10, v2

    move v2, v11

    goto/16 :goto_2

    :cond_11
    const/4 v2, 0x1

    goto :goto_c

    :cond_12
    move v2, v3

    :cond_13
    return v2

    :cond_14
    move v7, v8

    move v8, v9

    goto :goto_b

    :cond_15
    move v7, v4

    move v5, v8

    move v4, v6

    move v6, v9

    goto :goto_9

    :cond_16
    move v7, v8

    goto/16 :goto_7

    :cond_17
    move v2, v4

    goto/16 :goto_1
.end method

.method private getDisplaySize(I)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x3

    mul-int/lit8 v0, p1, 0x4

    div-int/lit16 v0, v0, 0x400

    div-int/lit16 v0, v0, 0x400

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v2, "7dfc76"

    const v3, -0x310652ff

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    mul-int/lit8 v0, p1, 0x4

    div-int/lit16 v0, v0, 0x400

    if-lez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v0, v3, [B

    fill-array-data v0, :array_1

    const-string v2, "fa78f7"

    const/16 v3, 0x67cb

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const-string v2, "6e23c1"

    const v3, 0x4dc8ef56    # 4.2139104E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x17t
        0x29t
        0x4t
    .end array-data

    :array_1
    .array-data 1
        0x46t
        0x2at
        0x55t
    .end array-data

    :array_2
    .array-data 1
        0x16t
        0x7t
        0x4bt
        0x47t
        0x6t
        0x42t
    .end array-data
.end method

.method private getDisplayStrength(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    const-string v1, "2ca141"

    const-wide/32 v2, 0x611137e4

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    new-array v0, v5, [B

    fill-array-data v0, :array_1

    const-string v1, "44855a"

    const-wide v2, -0x3e2d86603e800000L    # -1.239842566E9

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne p1, v3, :cond_2

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    const-string v1, "ed0737"

    const-wide/32 v2, 0x2b1a8f3a

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    const-string v1, "2b911f"

    const/16 v2, -0x7494

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-ne p1, v4, :cond_4

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    const-string v1, "a61fea"

    invoke-static {v0, v1, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    new-array v0, v4, [B

    fill-array-data v0, :array_5

    const-string v1, "a47650"

    const v2, 0x4ceb81ae    # 1.2347326E8f

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-ne p1, v5, :cond_6

    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v1, "435a29"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-array v0, v1, [B

    fill-array-data v0, :array_7

    const-string v1, "3630cb"

    const v2, -0x31ba88f3

    invoke-static {v0, v1, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x7et
        0x2ct
        0x36t
    .end array-data

    :array_1
    .array-data 1
        0x79t
        0x71t
        0x7ct
        0x7ct
        0x60t
        0x2ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
        0x77t
        0x7ft
    .end array-data

    :array_3
    .array-data 1
        0x7at
        0x2bt
        0x7et
        0x79t
        0x74t
        0x35t
        0x66t
    .end array-data

    :array_4
    .array-data 1
        0x24t
        0x67t
        0x64t
        0x27t
        0x29t
        0x28t
        0x35t
        0x6ft
    .end array-data

    :array_5
    .array-data 1
        0x27t
        0x7dt
        0x6ft
        0x73t
        0x71t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x76t
        0x72t
        0x67t
        0x33t
        0x7bt
        0x7ct
        0x66t
    .end array-data

    :array_7
    .array-data 1
        0x7dt
        0x79t
        0x7dt
        0x75t
    .end array-data
.end method

.method public static getMetrics()Landroidx/constraintlayout/core/Metrics;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    return-object v0
.end method

.method private increaseTableSize()V
    .locals 6

    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v0, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/SolverVariable;

    iput-object v0, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->tableSizeIncrease:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->tableSizeIncrease:J

    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->maxTableSize:J

    iput-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->lastTableSize:J

    :cond_0
    return-void
.end method

.method private final optimize(Landroidx/constraintlayout/core/LinearSystem$Row;Z)I
    .locals 12

    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->optimize:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->optimize:J

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    if-ge v0, v1, :cond_d

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-le v1, v0, :cond_3

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v0, v0, v1

    iget-object v2, v0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    const/4 v3, -0x1

    iput v3, v2, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    sget-object v2, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v2, :cond_2

    iget-wide v8, v2, Landroidx/constraintlayout/core/Metrics;->pivots:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, v2, Landroidx/constraintlayout/core/Metrics;->pivots:J

    :cond_2
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    iget-object v2, v0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iput v1, v2, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    iget-object v1, v0, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, p0, v0}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    :cond_3
    move v0, v4

    :goto_1
    move v4, v0

    move v0, v5

    :goto_2
    if-nez v4, :cond_5

    sget-object v1, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v1, :cond_4

    iget-wide v2, v1, Landroidx/constraintlayout/core/Metrics;->iterations:J

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iput-wide v2, v1, Landroidx/constraintlayout/core/Metrics;->iterations:J

    :cond_4
    add-int/lit8 v5, v0, 0x1

    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    mul-int/lit8 v0, v0, 0x2

    if-lt v5, v0, :cond_6

    move v0, v5

    :cond_5
    :goto_3
    return v0

    :cond_6
    invoke-interface {p1}, Landroidx/constraintlayout/core/LinearSystem$Row;->getKey()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    invoke-interface {p1}, Landroidx/constraintlayout/core/LinearSystem$Row;->getKey()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    iget v1, v1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    invoke-interface {p1, p0, v0}, Landroidx/constraintlayout/core/LinearSystem$Row;->getPivotCandidate(Landroidx/constraintlayout/core/LinearSystem;[Z)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    iget v1, v6, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_8

    move v0, v5

    goto :goto_3

    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mAlreadyTestedCandidates:[Z

    iget v1, v6, Landroidx/constraintlayout/core/SolverVariable;->id:I

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    :cond_9
    if-eqz v6, :cond_c

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_4
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v3, v3, v2

    iget-object v7, v3, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v7, v7, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v8, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v7, v8, :cond_b

    :cond_a
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    iget-boolean v7, v3, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    if-nez v7, :cond_a

    invoke-virtual {v3, v6}, Landroidx/constraintlayout/core/ArrayRow;->hasVariable(Landroidx/constraintlayout/core/SolverVariable;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v3, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v7, v6}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v7

    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_a

    iget v3, v3, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    neg-float v3, v3

    div-float/2addr v3, v7

    cmpg-float v7, v3, v0

    if-gez v7, :cond_a

    move v0, v3

    move v1, v2

    goto :goto_5

    :cond_c
    const/4 v0, 0x1

    goto :goto_1

    :cond_d
    move v0, v5

    goto :goto_2
.end method

.method private releaseRows()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    sget-boolean v1, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v1, :cond_1

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public addCenterPoint(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintWidget;FI)V
    .locals 16

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v3

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v9

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v10

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v5

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v11

    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v2

    move/from16 v0, p3

    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    move/from16 v0, p4

    int-to-double v14, v0

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v12, v14

    double-to-float v7, v12

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v2

    move/from16 v0, p3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    move/from16 v0, p4

    int-to-double v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double/2addr v4, v6

    double-to-float v7, v4

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/core/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    return-void
.end method

.method public addCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 9

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroidx/constraintlayout/core/ArrayRow;->createRowCentering(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IFLandroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    const/16 v2, 0x8

    move/from16 v0, p8

    if-eq v0, v2, :cond_0

    move/from16 v0, p8

    invoke-virtual {v1, p0, v0}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    return-void
.end method

.method public addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v6, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v2, :cond_2

    iget-wide v4, v2, Landroidx/constraintlayout/core/Metrics;->constraints:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroidx/constraintlayout/core/Metrics;->constraints:J

    iget-boolean v2, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide v4, v2, Landroidx/constraintlayout/core/Metrics;->simpleconstraints:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroidx/constraintlayout/core/Metrics;->simpleconstraints:J

    :cond_2
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    if-ge v2, v3, :cond_3

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    if-lt v2, v3, :cond_4

    :cond_3
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    :cond_4
    iget-boolean v2, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    if-nez v2, :cond_b

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/ArrayRow;->updateFromSystem(Landroidx/constraintlayout/core/LinearSystem;)V

    invoke-virtual {p1}, Landroidx/constraintlayout/core/ArrayRow;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroidx/constraintlayout/core/ArrayRow;->ensurePositiveConstant()V

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/ArrayRow;->chooseSubject(Landroidx/constraintlayout/core/LinearSystem;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createExtraVariable()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v2

    iput-object v2, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/LinearSystem;->addRow(Landroidx/constraintlayout/core/ArrayRow;)V

    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    add-int/lit8 v3, v3, 0x1

    if-ne v4, v3, :cond_a

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    invoke-interface {v1, p1}, Landroidx/constraintlayout/core/LinearSystem$Row;->initFromRow(Landroidx/constraintlayout/core/LinearSystem$Row;)V

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    invoke-direct {p0, v1, v0}, Landroidx/constraintlayout/core/LinearSystem;->optimize(Landroidx/constraintlayout/core/LinearSystem$Row;Z)I

    iget v1, v2, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_8

    iget-object v1, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-ne v1, v2, :cond_6

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/ArrayRow;->pickPivot(Landroidx/constraintlayout/core/SolverVariable;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-object v2, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v2, :cond_5

    iget-wide v4, v2, Landroidx/constraintlayout/core/Metrics;->pivots:J

    add-long/2addr v4, v6

    iput-wide v4, v2, Landroidx/constraintlayout/core/Metrics;->pivots:J

    :cond_5
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/ArrayRow;->pivot(Landroidx/constraintlayout/core/SolverVariable;)V

    :cond_6
    iget-boolean v1, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    if-nez v1, :cond_7

    iget-object v1, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V

    :cond_7
    sget-boolean v1, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    invoke-interface {v1, p1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    :goto_1
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    :cond_8
    :goto_2
    invoke-virtual {p1}, Landroidx/constraintlayout/core/ArrayRow;->hasKeyVariable()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_3
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/LinearSystem;->addRow(Landroidx/constraintlayout/core/ArrayRow;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    invoke-interface {v1, p1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_2

    :cond_b
    move v0, v1

    goto :goto_3
.end method

.method public addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;
    .locals 3

    const/16 v2, 0x8

    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->USE_BASIC_SYNONYMS:Z

    if-eqz v0, :cond_0

    if-ne p4, v2, :cond_0

    iget-boolean v0, p2, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    int-to-float v1, p3

    add-float/2addr v0, v1

    invoke-virtual {p1, p0, v0}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowEquals(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    if-eq p4, v2, :cond_1

    invoke-virtual {v0, p0, p4}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;

    :cond_1
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    goto :goto_0
.end method

.method public addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V
    .locals 4

    const/4 v2, -0x1

    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->USE_BASIC_SYNONYMS:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    if-ne v0, v2, :cond_1

    int-to-float v0, p2

    invoke-virtual {p1, p0, v0}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    if-eqz v2, :cond_0

    iget v2, v1, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    iget v3, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-ne v2, v3, :cond_0

    int-to-float v2, p2

    iget v3, v1, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    add-float/2addr v2, v3

    invoke-virtual {v1, p0, v2}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v0, v1, v0

    iget-boolean v1, v0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    if-eqz v1, :cond_3

    int-to-float v1, p2

    iput v1, v0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    int-to-float v1, p2

    iput v1, v0, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/ArrayRow;->createRowEquals(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/core/ArrayRow;->createRowDefinition(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    goto :goto_1
.end method

.method public addGreaterBarrier(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V
    .locals 3

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    return-void
.end method

.method public addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 4

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    const/16 v2, 0x8

    if-eq p4, v2, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    iget-object v3, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1, p4}, Landroidx/constraintlayout/core/LinearSystem;->addSingleError(Landroidx/constraintlayout/core/ArrayRow;II)V

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    return-void
.end method

.method public addLowerBarrier(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;IZ)V
    .locals 3

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    return-void
.end method

.method public addLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V
    .locals 4

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/core/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    const/16 v2, 0x8

    if-eq p4, v2, :cond_0

    const/high16 v2, -0x40800000    # -1.0f

    iget-object v3, v0, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v3, v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->get(Landroidx/constraintlayout/core/SolverVariable;)F

    move-result v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1, p4}, Landroidx/constraintlayout/core/LinearSystem;->addSingleError(Landroidx/constraintlayout/core/ArrayRow;II)V

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    return-void
.end method

.method public addRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;FI)V
    .locals 6

    invoke-virtual {p0}, Landroidx/constraintlayout/core/LinearSystem;->createRow()Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/core/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    const/16 v1, 0x8

    if-eq p6, v1, :cond_0

    invoke-virtual {v0, p0, p6}, Landroidx/constraintlayout/core/ArrayRow;->addError(Landroidx/constraintlayout/core/LinearSystem;I)Landroidx/constraintlayout/core/ArrayRow;

    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    return-void
.end method

.method addSingleError(Landroidx/constraintlayout/core/ArrayRow;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Landroidx/constraintlayout/core/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroidx/constraintlayout/core/ArrayRow;->addSingleError(Landroidx/constraintlayout/core/SolverVariable;I)Landroidx/constraintlayout/core/ArrayRow;

    return-void
.end method

.method public addSynonym(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;I)V
    .locals 2

    iget v0, p1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    if-nez p3, :cond_2

    iget-boolean v0, p2, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    if-eqz v0, :cond_0

    int-to-float v0, p3

    iget v1, p2, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    add-float/2addr v0, v1

    float-to-int p3, v0

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v1, p2, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    aget-object p2, v0, v1

    :cond_0
    iget-boolean v0, p1, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    if-eqz v0, :cond_1

    int-to-float v0, p3

    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    aget-object v0, v0, v1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroidx/constraintlayout/core/SolverVariable;->setSynonym(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;F)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto :goto_0
.end method

.method final cleanupRows()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v2, v1, v0

    iget-object v1, v2, Landroidx/constraintlayout/core/ArrayRow;->variables:Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;

    invoke-interface {v1}, Landroidx/constraintlayout/core/ArrayRow$ArrayRowVariables;->getCurrentSize()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v2, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    :cond_0
    iget-boolean v1, v2, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    if-eqz v1, :cond_2

    iget-object v1, v2, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget v3, v2, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    iput v3, v1, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    iget-object v1, v2, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/SolverVariable;->removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V

    move v1, v0

    :goto_1
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    add-int/lit8 v4, v1, 0x1

    aget-object v4, v3, v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    add-int/lit8 v4, v3, -0x1

    const/4 v5, 0x0

    aput-object v5, v1, v4

    add-int/lit8 v1, v3, -0x1

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    sget-boolean v1, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    invoke-interface {v1, v2}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    invoke-interface {v1, v2}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method public createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 6

    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->errors:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->errors:J

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-direct {p0, v0, p2}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iput p1, v0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    invoke-interface {v1, v0}, Landroidx/constraintlayout/core/LinearSystem$Row;->addError(Landroidx/constraintlayout/core/SolverVariable;)V

    return-object v0
.end method

.method public createExtraVariable()Landroidx/constraintlayout/core/SolverVariable;
    .locals 6

    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->extravariables:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->extravariables:J

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 4

    const/4 v0, 0x0

    const/4 v3, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    :cond_2
    instance-of v1, p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/core/Cache;)V

    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    :cond_3
    iget v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-eq v1, v3, :cond_4

    iget v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    if-gt v1, v2, :cond_4

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v2, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    aget-object v1, v1, v2

    if-nez v1, :cond_0

    :cond_4
    iget v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    if-eq v1, v3, :cond_5

    invoke-virtual {v0}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    :cond_5
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    sget-object v1, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    iput-object v1, v0, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method public createRow()Landroidx/constraintlayout/core/ArrayRow;
    .locals 6

    const-wide/16 v4, 0x1

    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    invoke-interface {v0}, Landroidx/constraintlayout/core/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/ArrayRow;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    invoke-direct {v0, p0, v1}, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/Cache;)V

    sget-wide v2, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ARRAY_ROW_CREATION:J

    add-long/2addr v2, v4

    sput-wide v2, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ARRAY_ROW_CREATION:J

    :goto_0
    invoke-static {}, Landroidx/constraintlayout/core/SolverVariable;->increaseErrorId()V

    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/core/ArrayRow;->reset()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    invoke-interface {v0}, Landroidx/constraintlayout/core/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/ArrayRow;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/constraintlayout/core/ArrayRow;

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    sget-wide v2, Landroidx/constraintlayout/core/LinearSystem;->ARRAY_ROW_CREATION:J

    add-long/2addr v2, v4

    sput-wide v2, Landroidx/constraintlayout/core/LinearSystem;->ARRAY_ROW_CREATION:J

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/ArrayRow;->reset()V

    goto :goto_0
.end method

.method public createSlackVariable()Landroidx/constraintlayout/core/SolverVariable;
    .locals 6

    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->slackvariables:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->slackvariables:J

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_1

    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->increaseTableSize()V

    :cond_1
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/core/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/core/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    iput v1, v0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    return-object v0
.end method

.method public displayReadableRows()V
    .locals 11

    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->displaySolverVariables()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xa

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    const-string v3, "77bcf0"

    const v4, 0x4ef52da6

    invoke-static {v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    iget-boolean v4, v3, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, v8, [B

    fill-array-data v2, :array_1

    const-string v5, "b8a836"

    const-wide/32 v6, 0x6960082d

    invoke-static {v2, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v2, v9, [B

    fill-array-data v2, :array_2

    const-string v5, "faef59"

    const/16 v6, -0x4a02

    invoke-static {v2, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v2, v8, [B

    fill-array-data v2, :array_3

    const-string v5, "38968b"

    const v6, -0x3153e2b5

    invoke-static {v2, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v1

    :goto_1
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v3, v3, v2

    if-eqz v3, :cond_2

    iget-boolean v4, v3, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v4, v4, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v5, v3, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    aget-object v4, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v8, [B

    fill-array-data v0, :array_4

    const-string v6, "3abf34"

    const/4 v7, 0x1

    invoke-static {v0, v6, v1, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v0, v9, [B

    fill-array-data v0, :array_5

    const-string v6, "a082ec"

    const/16 v7, -0x5010

    invoke-static {v0, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v0, v8, [B

    fill-array-data v0, :array_6

    const-string v6, "e6701e"

    const v7, 0x4ef53904

    invoke-static {v0, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v0, v8, [B

    fill-array-data v0, :array_7

    const-string v4, "b4bee1"

    const-wide/32 v6, 0x1ed1eff5

    invoke-static {v0, v4, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v3, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v10, [B

    fill-array-data v0, :array_8

    const-string v3, "d6620c"

    invoke-static {v0, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v1, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/constraintlayout/core/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v9, [B

    fill-array-data v0, :array_9

    const-string v3, "442a63"

    const/16 v4, -0x356

    invoke-static {v0, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v10, [B

    fill-array-data v0, :array_a

    const-string v2, "cb7a49"

    const-wide v4, 0x41db110174c00000L    # 1.816397267E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x17t
        0x59t
        0x17t
        0xet
        0x46t
        0x46t
        0x56t
        0x45t
        0x11t
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x42t
        0x1ct
        0x3at
    .end array-data

    :array_2
    .array-data 1
        0x3bt
        0x41t
        0x58t
        0x58t
        0x15t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x13t
        0x5t
        0x19t
    .end array-data

    :array_4
    .array-data 1
        0x13t
        0x1ft
        0x39t
    .end array-data

    :array_5
    .array-data 1
        0x3ct
        0x10t
        0x5t
        0xct
        0x45t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x45t
        0xbt
        0x17t
    .end array-data

    :array_7
    .array-data 1
        0x42t
        0x1ft
        0x42t
    .end array-data

    :array_8
    .array-data 1
        0x6et
        0x3ct
        0x16t
        0x11t
        0x10t
        0x43t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x3et
        0x14t
        0x11t
        0x41t
        0x16t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x24t
        0xdt
        0x56t
        0xdt
        0xet
        0x19t
    .end array-data
.end method

.method displaySystemInformation()V
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v4, v3, v0

    if-eqz v4, :cond_0

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroidx/constraintlayout/core/ArrayRow;->sizeInBytes()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    move v3, v1

    :goto_1
    iget v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v5, v4, v3

    if-eqz v5, :cond_2

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/constraintlayout/core/ArrayRow;->sizeInBytes()I

    move-result v4

    add-int/2addr v0, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x1d

    new-array v5, v5, [B

    fill-array-data v5, :array_0

    const-string v6, "fae743"

    const v7, -0x326eeeca

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, 0x2

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "54aa2b"

    const v7, -0x31ca9f10

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/constraintlayout/core/LinearSystem;->TABLE_SIZE:I

    mul-int/2addr v5, v5

    invoke-direct {p0, v5}, Landroidx/constraintlayout/core/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x10

    new-array v5, v5, [B

    fill-array-data v5, :array_2

    const-string v6, "3cbe8f"

    const v7, 0x4eeaa4a2    # 1.968329E9f

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Landroidx/constraintlayout/core/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xf

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const-string v5, "febea9"

    const-wide/32 v6, -0x594af522

    invoke-static {v2, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v9, [B

    fill-array-data v0, :array_4

    const-string v2, "7b0bf2"

    const v5, 0x4ef24652

    invoke-static {v0, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v0, v8, [B

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const-string v2, "eb3c2b"

    invoke-static {v0, v2, v8, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxRows:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v0, v9, [B

    fill-array-data v0, :array_5

    const-string v2, "002f8d"

    const v5, 0x4ec5c84d

    invoke-static {v0, v2, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v0, v8, [B

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const-string v2, "191fb7"

    const-wide/32 v6, -0x55c455f0

    invoke-static {v0, v2, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mMaxColumns:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    const-string v2, "7c6dc3"

    invoke-static {v0, v2, v1, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Landroidx/constraintlayout/core/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 1
        0x2at
        0x8t
        0xbt
        0x52t
        0x55t
        0x41t
        0x46t
        0x32t
        0x1ct
        0x44t
        0x40t
        0x56t
        0xbt
        0x41t
        0x48t
        0x9t
        0x14t
        0x67t
        0x7t
        0x3t
        0x9t
        0x52t
        0x14t
        0x40t
        0xft
        0x1bt
        0x0t
        0xdt
        0x14t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x15t
        0x1ct
    .end array-data

    nop

    :array_2
    .array-data 1
        0x1at
        0x43t
        0x4ft
        0x48t
        0x18t
        0x14t
        0x5ct
        0x14t
        0x42t
        0x16t
        0x51t
        0x1ct
        0x56t
        0x10t
        0x58t
        0x45t
    .end array-data

    :array_3
    .array-data 1
        0x4at
        0x45t
        0x3t
        0x6t
        0x15t
        0x4ct
        0x7t
        0x9t
        0x42t
        0x16t
        0x8t
        0x43t
        0x3t
        0x5ft
        0x42t
    .end array-data

    :array_4
    .array-data 1
        0x17t
        0x10t
        0x5ft
        0x15t
        0x15t
        0x8t
        0x17t
    .end array-data

    :array_5
    .array-data 1
        0x10t
        0x53t
        0x5dt
        0xat
        0x4bt
        0x5et
        0x10t
    .end array-data

    :array_6
    .array-data 1
        0x17t
        0xct
        0x55t
        0x7t
        0x16t
        0x43t
        0x5et
        0x6t
        0x52t
        0x44t
        0x0t
        0x56t
        0x5bt
        0xft
        0x45t
        0x48t
        0x43t
    .end array-data
.end method

.method public displayVariablesReadableRows()V
    .locals 5

    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->displaySolverVariables()V

    const-string v1, ""

    const/4 v0, 0x0

    move v4, v0

    move-object v0, v1

    move v1, v4

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    sget-object v3, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/constraintlayout/core/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public fillMetrics(Landroidx/constraintlayout/core/Metrics;)V
    .locals 0

    sput-object p1, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    return-void
.end method

.method public getCache()Landroidx/constraintlayout/core/Cache;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    return-object v0
.end method

.method getGoal()Landroidx/constraintlayout/core/LinearSystem$Row;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    return-object v0
.end method

.method public getMemoryUsed()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v3, v2, v0

    if-eqz v3, :cond_0

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/ArrayRow;->sizeInBytes()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getNumEquations()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    return v0
.end method

.method public getNumVariables()I
    .locals 1

    iget v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    return v0
.end method

.method public getObjectVariableValue(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getRow(I)Landroidx/constraintlayout/core/ArrayRow;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getValueFor(Ljava/lang/String;)F
    .locals 1

    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/core/SolverVariable$Type;

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->getVariable(Ljava/lang/String;Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    goto :goto_0
.end method

.method getVariable(Ljava/lang/String;Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/SolverVariable;

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/core/LinearSystem;->createVariable(Ljava/lang/String;Landroidx/constraintlayout/core/SolverVariable$Type;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public minimize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    const-wide/16 v4, 0x1

    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->minimize:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->minimize:J

    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    invoke-interface {v0}, Landroidx/constraintlayout/core/LinearSystem$Row;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->computeValues()V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->graphOptimizer:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/constraintlayout/core/LinearSystem;->newgraphOptimizer:Z

    if-eqz v0, :cond_4

    :cond_2
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v0, :cond_3

    iget-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->graphOptimizer:J

    :cond_3
    const/4 v2, 0x1

    move v0, v1

    :goto_1
    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v0, v3, :cond_8

    iget-object v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    if-nez v3, :cond_5

    :goto_2
    if-nez v1, :cond_6

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/core/LinearSystem$Row;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/core/LinearSystem$Row;)V

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v0, :cond_7

    iget-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->fullySolved:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->fullySolved:J

    :cond_7
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->computeValues()V

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_2
.end method

.method minimizeGoal(Landroidx/constraintlayout/core/LinearSystem$Row;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    if-eqz v0, :cond_0

    iget-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->minimizeGoal:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->minimizeGoal:J

    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->maxVariables:J

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->maxVariables:J

    sget-object v0, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    iget-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->maxRows:J

    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/constraintlayout/core/Metrics;->maxRows:J

    :cond_0
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/LinearSystem;->enforceBFS(Landroidx/constraintlayout/core/LinearSystem$Row;)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->optimize(Landroidx/constraintlayout/core/LinearSystem$Row;Z)I

    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->computeValues()V

    return-void
.end method

.method public removeRow(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 4

    iget-boolean v0, p1, Landroidx/constraintlayout/core/ArrayRow;->isSimpleDefinition:Z

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget v0, v0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget v0, v0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget v2, v1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    add-int/lit8 v3, v0, 0x1

    if-ne v2, v3, :cond_0

    iput v0, v1, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, v1, v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    :cond_2
    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    if-nez v0, :cond_3

    iget-object v0, p1, Landroidx/constraintlayout/core/ArrayRow;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget v1, p1, Landroidx/constraintlayout/core/ArrayRow;->constantValue:F

    invoke-virtual {v0, p0, v1}, Landroidx/constraintlayout/core/SolverVariable;->setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V

    :cond_3
    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->optimizedArrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->arrayRowPool:Landroidx/constraintlayout/core/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/constraintlayout/core/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public reset()V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/constraintlayout/core/SolverVariable;->reset()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->solverVariablePool:Landroidx/constraintlayout/core/Pools$Pool;

    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/core/SolverVariable;

    iget v3, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    invoke-interface {v0, v2, v3}, Landroidx/constraintlayout/core/Pools$Pool;->releaseAll([Ljava/lang/Object;I)V

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mPoolVariablesCount:I

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/core/Cache;->mIndexedVariables:[Landroidx/constraintlayout/core/SolverVariable;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_2
    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mVariablesID:I

    iget-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    invoke-interface {v0}, Landroidx/constraintlayout/core/LinearSystem$Row;->clear()V

    const/4 v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumColumns:I

    move v0, v1

    :goto_1
    iget v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Landroidx/constraintlayout/core/LinearSystem;->mRows:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v3, v2, v0

    if-eqz v3, :cond_3

    aget-object v2, v2, v0

    iput-boolean v1, v2, Landroidx/constraintlayout/core/ArrayRow;->used:Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Landroidx/constraintlayout/core/LinearSystem;->releaseRows()V

    iput v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mNumRows:I

    sget-boolean v0, Landroidx/constraintlayout/core/LinearSystem;->OPTIMIZED_ENGINE:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    invoke-direct {v0, p0, v1}, Landroidx/constraintlayout/core/LinearSystem$ValuesRow;-><init>(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/Cache;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    :goto_2
    return-void

    :cond_5
    new-instance v0, Landroidx/constraintlayout/core/ArrayRow;

    iget-object v1, p0, Landroidx/constraintlayout/core/LinearSystem;->mCache:Landroidx/constraintlayout/core/Cache;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/ArrayRow;-><init>(Landroidx/constraintlayout/core/Cache;)V

    iput-object v0, p0, Landroidx/constraintlayout/core/LinearSystem;->mTempGoal:Landroidx/constraintlayout/core/LinearSystem$Row;

    goto :goto_2
.end method
