.class public Landroidx/constraintlayout/core/SolverVariable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/SolverVariable$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroidx/constraintlayout/core/SolverVariable;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTERNAL_DEBUG:Z = false

.field static final MAX_STRENGTH:I = 0x9

.field public static final STRENGTH_BARRIER:I = 0x6

.field public static final STRENGTH_CENTERING:I = 0x7

.field public static final STRENGTH_EQUALITY:I = 0x5

.field public static final STRENGTH_FIXED:I = 0x8

.field public static final STRENGTH_HIGH:I = 0x3

.field public static final STRENGTH_HIGHEST:I = 0x4

.field public static final STRENGTH_LOW:I = 0x1

.field public static final STRENGTH_MEDIUM:I = 0x2

.field public static final STRENGTH_NONE:I

.field private static final VAR_USE_HASH:Z

.field private static uniqueConstantId:I

.field private static uniqueErrorId:I

.field private static uniqueId:I

.field private static uniqueSlackId:I

.field private static uniqueUnrestrictedId:I


# instance fields
.field public computedValue:F

.field definitionId:I

.field goalStrengthVector:[F

.field public id:I

.field public inGoal:Z

.field inRows:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroidx/constraintlayout/core/ArrayRow;",
            ">;"
        }
    .end annotation
.end field

.field public isFinalValue:Z

.field isSynonym:Z

.field mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

.field mClientEquationsCount:I

.field private mName:Ljava/lang/String;

.field mType:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public strength:I

.field strengthVector:[F

.field synonym:I

.field synonymDelta:F

.field public usageInRowCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Landroidx/constraintlayout/core/SolverVariable;->uniqueSlackId:I

    sput v0, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    sput v0, Landroidx/constraintlayout/core/SolverVariable;->uniqueUnrestrictedId:I

    sput v0, Landroidx/constraintlayout/core/SolverVariable;->uniqueConstantId:I

    sput v0, Landroidx/constraintlayout/core/SolverVariable;->uniqueId:I

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x9

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iput v2, p0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    iput-boolean v1, p0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    new-array v0, v3, [F

    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    new-array v0, v3, [F

    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    const/16 v0, 0x10

    new-array v0, v0, [Landroidx/constraintlayout/core/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    iput-boolean v1, p0, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    iput v2, p0, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->inRows:Ljava/util/HashSet;

    iput-object p1, p0, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/SolverVariable$Type;)V
    .locals 4

    const/16 v3, 0x9

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iput v2, p0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    iput-boolean v1, p0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    new-array v0, v3, [F

    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    new-array v0, v3, [F

    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    const/16 v0, 0x10

    new-array v0, v0, [Landroidx/constraintlayout/core/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    iput-boolean v1, p0, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    iput v2, p0, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->inRows:Ljava/util/HashSet;

    iput-object p1, p0, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    iput-object p2, p0, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    return-void
.end method

.method private static getUniqueName(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$1;->$SwitchMap$androidx$constraintlayout$core$SolverVariable$Type:[I

    invoke-virtual {p0}, Landroidx/constraintlayout/core/SolverVariable$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/SolverVariable$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v4, [B

    const/16 v2, 0x64

    aput-byte v2, v1, v3

    const-string v2, "2c551b"

    const/16 v3, -0x34a6

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroidx/constraintlayout/core/SolverVariable;->uniqueId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroidx/constraintlayout/core/SolverVariable;->uniqueId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v4, [B

    const/16 v2, 0x5d

    aput-byte v2, v1, v3

    const-string v2, "8fcb53"

    invoke-static {v1, v2, v3, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v4, [B

    const/16 v2, 0x32

    aput-byte v2, v1, v3

    const-string v2, "a49724"

    const v3, -0x3116f2b2

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroidx/constraintlayout/core/SolverVariable;->uniqueSlackId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroidx/constraintlayout/core/SolverVariable;->uniqueSlackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v4, [B

    const/16 v2, 0x72

    aput-byte v2, v1, v3

    const-string v2, "128e9f"

    const v3, 0x4e52ff83    # 8.8499014E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroidx/constraintlayout/core/SolverVariable;->uniqueConstantId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroidx/constraintlayout/core/SolverVariable;->uniqueConstantId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v4, [B

    const/16 v2, 0x66

    aput-byte v2, v1, v3

    const-string v2, "351633"

    invoke-static {v1, v2, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroidx/constraintlayout/core/SolverVariable;->uniqueUnrestrictedId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroidx/constraintlayout/core/SolverVariable;->uniqueUnrestrictedId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static increaseErrorId()V
    .locals 1

    sget v0, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/constraintlayout/core/SolverVariable;->uniqueErrorId:I

    return-void
.end method


# virtual methods
.method public final addToRow(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/core/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    iget v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    aput-object p1, v0, v1

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    goto :goto_1
.end method

.method clearStrengths()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compareTo(Landroidx/constraintlayout/core/SolverVariable;)I
    .locals 2

    iget v0, p0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iget v1, p1, Landroidx/constraintlayout/core/SolverVariable;->id:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroidx/constraintlayout/core/SolverVariable;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/SolverVariable;->compareTo(Landroidx/constraintlayout/core/SolverVariable;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final removeFromRow(Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 4

    iget v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_2

    :goto_1
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    add-int/lit8 v3, v0, 0x1

    aget-object v3, v2, v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public reset()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iput-object v5, p0, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/core/SolverVariable$Type;

    iput-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->strength:I

    iput v2, p0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iput v2, p0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    iput v4, p0, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    iput-boolean v1, p0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    iput v2, p0, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    iput v4, p0, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    iget v2, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->usageInRowCount:I

    iput-boolean v1, p0, Landroidx/constraintlayout/core/SolverVariable;->inGoal:Z

    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->goalStrengthVector:[F

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public setFinalValue(Landroidx/constraintlayout/core/LinearSystem;F)V
    .locals 4

    const/4 v3, -0x1

    const/4 v1, 0x0

    iput p2, p0, Landroidx/constraintlayout/core/SolverVariable;->computedValue:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/SolverVariable;->isFinalValue:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    iput v3, p0, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    iget v2, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    iput v3, p0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p0, v1}, Landroidx/constraintlayout/core/ArrayRow;->updateFromFinalVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    return-void
.end method

.method public setSynonym(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;F)V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/SolverVariable;->isSynonym:Z

    iget v0, p2, Landroidx/constraintlayout/core/SolverVariable;->id:I

    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->synonym:I

    iput p3, p0, Landroidx/constraintlayout/core/SolverVariable;->synonymDelta:F

    iget v2, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/core/SolverVariable;->definitionId:I

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p0, v1}, Landroidx/constraintlayout/core/ArrayRow;->updateFromSynonymVariable(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    invoke-virtual {p1}, Landroidx/constraintlayout/core/LinearSystem;->displayReadableRows()V

    return-void
.end method

.method public setType(Landroidx/constraintlayout/core/SolverVariable$Type;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroidx/constraintlayout/core/SolverVariable;->mType:Landroidx/constraintlayout/core/SolverVariable$Type;

    return-void
.end method

.method strengthsToString()Ljava/lang/String;
    .locals 13

    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v2, v3, [B

    const/16 v4, 0x6d

    aput-byte v4, v2, v1

    const-string v4, "6bc513"

    invoke-static {v2, v4, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v3

    move v4, v1

    move-object v5, v0

    move v0, v1

    :goto_0
    iget-object v6, p0, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    array-length v6, v6

    if-ge v0, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    aget v5, v5, v0

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroidx/constraintlayout/core/SolverVariable;->strengthVector:[F

    aget v7, v6, v0

    cmpl-float v7, v7, v10

    if-lez v7, :cond_2

    move v4, v1

    :cond_0
    :goto_1
    aget v7, v6, v0

    cmpl-float v7, v7, v10

    if-eqz v7, :cond_1

    move v2, v1

    :cond_1
    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v11, [B

    fill-array-data v5, :array_0

    const-string v7, "fccda0"

    const-wide/32 v8, -0x4cf1c10f

    invoke-static {v5, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget v7, v6, v0

    cmpg-float v7, v7, v10

    if-gez v7, :cond_0

    move v4, v3

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v5, v11, [B

    fill-array-data v5, :array_1

    const-string v7, "ffabe6"

    const-wide/32 v8, 0x2c4fa945

    invoke-static {v5, v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v12, [B

    fill-array-data v4, :array_2

    const-string v5, "a34d84"

    const v6, -0x3167699c    # -1.2799964E9f

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v12, [B

    fill-array-data v0, :array_3

    const-string v4, "a514f1"

    invoke-static {v0, v4, v3, v1}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0

    :cond_6
    move-object v0, v5

    goto :goto_3

    nop

    :array_0
    .array-data 1
        0x4at
        0x43t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3bt
        0x46t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x41t
        0x1bt
        0x19t
        0x4dt
    .end array-data

    :array_3
    .array-data 1
        0x41t
        0x1dt
        0x1bt
        0x1dt
    .end array-data
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/core/SolverVariable;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final updateReferencesWithNewDefinition(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;)V
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquations:[Landroidx/constraintlayout/core/ArrayRow;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1, p2, v1}, Landroidx/constraintlayout/core/ArrayRow;->updateFromRow(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/ArrayRow;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Landroidx/constraintlayout/core/SolverVariable;->mClientEquationsCount:I

    return-void
.end method
