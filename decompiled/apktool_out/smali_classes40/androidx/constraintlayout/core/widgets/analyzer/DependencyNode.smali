.class public Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/constraintlayout/core/widgets/analyzer/Dependency;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;
    }
.end annotation


# instance fields
.field public delegateToWidgetRun:Z

.field dependencies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/constraintlayout/core/widgets/analyzer/Dependency;",
            ">;"
        }
    .end annotation
.end field

.field margin:I

.field marginDependency:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

.field marginFactor:I

.field public readyToSolve:Z

.field public resolved:Z

.field run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

.field targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;",
            ">;"
        }
    .end annotation
.end field

.field type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

.field public updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

.field public value:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    sget-object v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->UNKNOWN:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    const/4 v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->marginFactor:I

    iput-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->marginDependency:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    return-void
.end method


# virtual methods
.method public addDependency(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, p1}, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;->update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    iput v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->LEFT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    sget-object v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "a8c699"

    const-wide v4, -0x3e37d38b87000000L    # -8.1113317E8

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v2, 0x3

    aput-byte v2, v0, v3

    const-string v2, "90895d"

    const/16 v3, 0x4356

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    const-string v2, "87be4f"

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x3et
        0x70t
        0x2ct
        0x64t
        0x70t
        0x63t
        0x2et
        0x76t
        0x37t
        0x77t
        0x75t
    .end array-data

    :array_1
    .array-data 1
        0x67t
        0x61t
        0x27t
        0x37t
        0x60t
        0x2ft
        0x7bt
        0x76t
        0x2et
    .end array-data
.end method

.method public resolve(I)V
    .locals 2

    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    invoke-interface {v0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;->update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v6, [B

    aput-byte v7, v0, v3

    const-string v2, "9e38de"

    const-wide v4, -0x3e2605d336c00000L    # -1.743303461E9

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-array v0, v6, [B

    const/16 v2, 0x1d

    aput-byte v2, v0, v3

    const-string v2, "582e85"

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v2, "612827"

    const-wide v4, -0x3e5f7e394e000000L    # -1.38470233E8

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v0, v7, [B

    fill-array-data v0, :array_1

    const-string v2, "6a6cac"

    const-wide/32 v4, 0x7e654998

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-array v0, v6, [B

    const/16 v2, 0xd

    aput-byte v2, v0, v3

    const-string v2, "37764e"

    const/16 v3, -0x843

    invoke-static {v0, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    const-string v2, "d02adc"

    const-wide/32 v4, 0x5f0302d4

    invoke-static {v0, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :array_0
    .array-data 1
        0x1ft
        0x11t
        0xet
        0x4ct
        0xft
    .end array-data

    nop

    :array_1
    .array-data 1
        0xct
        0x5t
        0xbt
    .end array-data

    :array_2
    .array-data 1
        0x11t
        0x5et
        0x40t
        0x4t
        0x17t
        0xct
        0x8t
        0x46t
        0x57t
        0x5t
    .end array-data
.end method

.method public update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-nez v0, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;->update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    :cond_3
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->run:Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;->update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v2, v1

    move v1, v0

    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    instance-of v4, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    if-nez v4, :cond_5

    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_8

    if-ne v1, v5, :cond_8

    iget-boolean v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->marginDependency:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    if-eqz v0, :cond_7

    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->marginFactor:I

    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->marginDependency:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->value:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    :cond_7
    iget v0, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->updateDelegate:Landroidx/constraintlayout/core/widgets/analyzer/Dependency;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroidx/constraintlayout/core/widgets/analyzer/Dependency;->update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V

    goto :goto_0
.end method
