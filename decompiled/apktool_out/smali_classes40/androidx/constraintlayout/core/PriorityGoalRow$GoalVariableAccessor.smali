.class Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/PriorityGoalRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GoalVariableAccessor"
.end annotation


# instance fields
.field row:Landroidx/constraintlayout/core/PriorityGoalRow;

.field final this$0:Landroidx/constraintlayout/core/PriorityGoalRow;

.field variable:Landroidx/constraintlayout/core/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/PriorityGoalRow;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/core/PriorityGoalRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->row:Landroidx/constraintlayout/core/PriorityGoalRow;

    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v2, v1, v0

    iget-object v3, p1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addToGoal(Landroidx/constraintlayout/core/SolverVariable;F)Z
    .locals 9

    const/16 v8, 0x9

    const/4 v3, 0x1

    const v7, 0x38d1b717    # 1.0E-4f

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    if-eqz v0, :cond_3

    move v0, v3

    move v3, v1

    :goto_0
    if-ge v3, v8, :cond_1

    iget-object v4, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v5, v4, v3

    iget-object v6, p1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v6, v6, v3

    mul-float/2addr v6, p2

    add-float/2addr v5, v6

    aput v5, v4, v3

    iget-object v4, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v4, v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_0

    iget-object v4, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aput v2, v4, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/core/PriorityGoalRow;

    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-static {v0, v2}, Landroidx/constraintlayout/core/PriorityGoalRow;->access$000(Landroidx/constraintlayout/core/PriorityGoalRow;Landroidx/constraintlayout/core/SolverVariable;)V

    :cond_2
    :goto_2
    return v1

    :cond_3
    :goto_3
    if-ge v1, v8, :cond_6

    iget-object v0, p1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v0, v0, v1

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_5

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-gez v4, :cond_4

    move v0, v2

    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v4, v4, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aput v0, v4, v1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, v0, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aput v2, v0, v1

    goto :goto_4

    :cond_6
    move v1, v3

    goto :goto_2
.end method

.method public init(Landroidx/constraintlayout/core/SolverVariable;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    return-void
.end method

.method public final isNegative()Z
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/16 v1, 0x8

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v2, v2, v1

    cmpl-float v3, v2, v4

    if-lez v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    cmpg-float v2, v2, v4

    if-gez v2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public final isNull()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final isSmallerThan(Landroidx/constraintlayout/core/SolverVariable;)Z
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x8

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p1, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v2, v2, v1

    iget-object v3, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v3, v3, v1

    cmpl-float v4, v3, v2

    if-nez v4, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    cmpg-float v1, v3, v2

    if-gez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, v0, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x0

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    const-string v1, "e38e9a"

    const-wide v4, -0x3e2a855cfc000000L    # -1.44143464E9

    invoke-static {v0, v1, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    const/16 v3, 0x9

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    iget-object v0, v0, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    aget v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const-string v3, "9158b3"

    invoke-static {v0, v3, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 1
        0x3et
        0x13t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x64t
        0x11t
    .end array-data
.end method
