.class public Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams$Table;
    }
.end annotation


# static fields
.field public static final BASELINE:I = 0x5

.field public static final BOTTOM:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field public static final CIRCLE:I = 0x8

.field public static final END:I = 0x7

.field public static final GONE_UNSET:I = -0x80000000

.field public static final HORIZONTAL:I = 0x0

.field public static final LEFT:I = 0x1

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_PERCENT:I = 0x2

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field public static final START:I = 0x6

.field public static final TOP:I = 0x3

.field public static final UNSET:I = -0x1

.field public static final VERTICAL:I = 0x1

.field public static final WRAP_BEHAVIOR_HORIZONTAL_ONLY:I = 0x1

.field public static final WRAP_BEHAVIOR_INCLUDED:I = 0x0

.field public static final WRAP_BEHAVIOR_SKIPPED:I = 0x3

.field public static final WRAP_BEHAVIOR_VERTICAL_ONLY:I = 0x2


# instance fields
.field public baselineMargin:I

.field public baselineToBaseline:I

.field public baselineToBottom:I

.field public baselineToTop:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public circleAngle:F

.field public circleConstraint:I

.field public circleRadius:I

.field public constrainedHeight:Z

.field public constrainedWidth:Z

.field public constraintTag:Ljava/lang/String;

.field public dimensionRatio:Ljava/lang/String;

.field dimensionRatioSide:I

.field dimensionRatioValue:F

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public endToEnd:I

.field public endToStart:I

.field public goneBaselineMargin:I

.field public goneBottomMargin:I

.field public goneEndMargin:I

.field public goneLeftMargin:I

.field public goneRightMargin:I

.field public goneStartMargin:I

.field public goneTopMargin:I

.field public guideBegin:I

.field public guideEnd:I

.field public guidePercent:F

.field heightSet:Z

.field public helped:Z

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field horizontalDimensionFixed:Z

.field public horizontalWeight:F

.field isGuideline:Z

.field isHelper:Z

.field isInPlaceholder:Z

.field isVirtualGroup:Z

.field public leftToLeft:I

.field public leftToRight:I

.field public matchConstraintDefaultHeight:I

.field public matchConstraintDefaultWidth:I

.field public matchConstraintMaxHeight:I

.field public matchConstraintMaxWidth:I

.field public matchConstraintMinHeight:I

.field public matchConstraintMinWidth:I

.field public matchConstraintPercentHeight:F

.field public matchConstraintPercentWidth:F

.field needsBaseline:Z

.field public orientation:I

.field resolveGoneLeftMargin:I

.field resolveGoneRightMargin:I

.field resolvedGuideBegin:I

.field resolvedGuideEnd:I

.field resolvedGuidePercent:F

.field resolvedHorizontalBias:F

.field resolvedLeftToLeft:I

.field resolvedLeftToRight:I

.field resolvedRightToLeft:I

.field resolvedRightToRight:I

.field public rightToLeft:I

.field public rightToRight:I

.field public startToEnd:I

.field public startToStart:I

.field public topToBottom:I

.field public topToTop:I

.field public verticalBias:F

.field public verticalChainStyle:I

.field verticalDimensionFixed:Z

.field public verticalWeight:F

.field widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field widthSet:Z

.field public wrapBehaviorInParent:I


# direct methods
.method public constructor <init>(II)V
    .locals 6

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widthSet:Z

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->heightSet:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isVirtualGroup:Z

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const/4 v11, -0x2

    const/high16 v2, -0x80000000

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v7, -0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    iput-boolean v10, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widthSet:Z

    iput-boolean v10, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->heightSet:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    iput v10, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    iput-boolean v10, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v10, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isVirtualGroup:Z

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget-object v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams$Table;->map:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    goto :goto_1

    :pswitch_2
    invoke-static {p0, v2, v4, v10}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    iput-boolean v10, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->heightSet:Z

    goto :goto_1

    :pswitch_3
    invoke-static {p0, v2, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionConstraints(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    iput-boolean v10, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widthSet:Z

    goto :goto_1

    :pswitch_4
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    goto :goto_1

    :pswitch_5
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    goto :goto_1

    :pswitch_6
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    goto :goto_1

    :pswitch_7
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    goto :goto_1

    :pswitch_8
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    goto :goto_1

    :pswitch_9
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    goto :goto_1

    :pswitch_a
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    goto :goto_1

    :pswitch_b
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    goto :goto_1

    :pswitch_c
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    goto :goto_1

    :pswitch_d
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    goto :goto_1

    :pswitch_e
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->parseDimensionRatioString(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_10
    const/4 v5, 0x0

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    const/4 v4, 0x2

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    goto/16 :goto_1

    :pswitch_11
    :try_start_0
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v5

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v11, :cond_0

    iput v11, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    goto/16 :goto_1

    :pswitch_12
    :try_start_1
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v5

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v11, :cond_0

    iput v11, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    goto/16 :goto_1

    :pswitch_13
    const/4 v5, 0x0

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    const/4 v4, 0x2

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    goto/16 :goto_1

    :pswitch_14
    :try_start_2
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v5

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v11, :cond_0

    iput v11, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    goto/16 :goto_1

    :pswitch_15
    :try_start_3
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v5

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v11, :cond_0

    iput v11, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-ne v4, v10, :cond_0

    const/16 v4, 0x10

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    const-string v5, "d1c0cb"

    invoke-static {v4, v5, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x83

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "74d8dc"

    const-wide/32 v8, -0x50011f69

    invoke-static {v5, v6, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-ne v4, v10, :cond_0

    const/16 v4, 0x10

    new-array v4, v4, [B

    fill-array-data v4, :array_2

    const-string v5, "e1f85b"

    const v6, -0x313d401c

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    new-array v5, v5, [B

    fill-array-data v5, :array_3

    const-string v6, "fccda6"

    invoke-static {v5, v6, v1, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_18
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    goto/16 :goto_1

    :pswitch_19
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    goto/16 :goto_1

    :pswitch_1a
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    goto/16 :goto_1

    :pswitch_1b
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    goto/16 :goto_1

    :pswitch_1c
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    goto/16 :goto_1

    :pswitch_1d
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    goto/16 :goto_1

    :pswitch_1e
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    goto/16 :goto_1

    :pswitch_1f
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    goto/16 :goto_1

    :pswitch_20
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    goto/16 :goto_1

    :pswitch_21
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    goto/16 :goto_1

    :pswitch_22
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    goto/16 :goto_1

    :pswitch_23
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    goto/16 :goto_1

    :pswitch_24
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    goto/16 :goto_1

    :pswitch_25
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    goto/16 :goto_1

    :pswitch_26
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    goto/16 :goto_1

    :pswitch_27
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    goto/16 :goto_1

    :pswitch_28
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    goto/16 :goto_1

    :pswitch_29
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    goto/16 :goto_1

    :pswitch_2a
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    goto/16 :goto_1

    :pswitch_2b
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    goto/16 :goto_1

    :pswitch_2c
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    goto/16 :goto_1

    :pswitch_2d
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    goto/16 :goto_1

    :pswitch_2e
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    goto/16 :goto_1

    :pswitch_2f
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    goto/16 :goto_1

    :pswitch_30
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    goto/16 :goto_1

    :pswitch_31
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    goto/16 :goto_1

    :pswitch_32
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float/2addr v4, v5

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    const/4 v5, 0x0

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    const/high16 v5, 0x43b40000    # 360.0f

    sub-float v4, v5, v4

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float/2addr v4, v5

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    goto/16 :goto_1

    :pswitch_33
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    goto/16 :goto_1

    :pswitch_34
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-ne v5, v7, :cond_0

    invoke-virtual {v2, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    goto/16 :goto_1

    :pswitch_35
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 1
        0x27t
        0x5et
        0xdt
        0x43t
        0x17t
        0x10t
        0x5t
        0x58t
        0xdt
        0x44t
        0x2ft
        0x3t
        0x1dt
        0x5et
        0x16t
        0x44t
    .end array-data

    :array_1
    .array-data 1
        0x5bt
        0x55t
        0x1dt
        0x57t
        0x11t
        0x17t
        0x68t
        0x57t
        0xbt
        0x56t
        0x17t
        0x17t
        0x45t
        0x55t
        0xdt
        0x56t
        0x10t
        0x2bt
        0x52t
        0x5dt
        0x3t
        0x50t
        0x10t
        0x3ct
        0x53t
        0x51t
        0x2t
        0x59t
        0x11t
        0xft
        0x43t
        0x9t
        0x46t
        0x4ft
        0x16t
        0x2t
        0x47t
        0x16t
        0x44t
        0x51t
        0x17t
        0x43t
        0x53t
        0x51t
        0x14t
        0x4at
        0x1t
        0x0t
        0x56t
        0x40t
        0x1t
        0x5ct
        0x4at
        0x69t
        0x62t
        0x47t
        0x1t
        0x18t
        0x8t
        0x2t
        0x4et
        0x5bt
        0x11t
        0x4ct
        0x3bt
        0xbt
        0x52t
        0x5dt
        0x3t
        0x50t
        0x10t
        0x5et
        0x15t
        0x63t
        0x36t
        0x79t
        0x34t
        0x3ct
        0x74t
        0x7bt
        0x2at
        0x6ct
        0x21t
        0x2dt
        0x63t
        0x16t
        0x44t
        0x59t
        0xat
        0x7t
        0x17t
        0x58t
        0x5t
        0x41t
        0xbt
        0x16t
        0x43t
        0x6bt
        0x7t
        0x57t
        0xat
        0x10t
        0x43t
        0x46t
        0x5t
        0x51t
        0xat
        0x6t
        0x53t
        0x7ct
        0x1t
        0x51t
        0x3t
        0xbt
        0x43t
        0x9t
        0x46t
        0x4ct
        0x16t
        0x16t
        0x52t
        0x16t
        0x44t
        0x51t
        0xat
        0x10t
        0x43t
        0x51t
        0x5t
        0x5ct
        0x4at
    .end array-data

    :array_2
    .array-data 1
        0x26t
        0x5et
        0x8t
        0x4bt
        0x41t
        0x10t
        0x4t
        0x58t
        0x8t
        0x4ct
        0x79t
        0x3t
        0x1ct
        0x5et
        0x13t
        0x4ct
    .end array-data

    :array_3
    .array-data 1
        0xat
        0x2t
        0x1at
        0xbt
        0x14t
        0x42t
        0x39t
        0x0t
        0xct
        0xat
        0x12t
        0x42t
        0x14t
        0x2t
        0xat
        0xat
        0x15t
        0x61t
        0xft
        0x7t
        0x17t
        0xct
        0x3et
        0x52t
        0x3t
        0x5t
        0x2t
        0x11t
        0xdt
        0x42t
        0x5bt
        0x41t
        0x14t
        0x16t
        0x0t
        0x46t
        0x44t
        0x43t
        0xat
        0x17t
        0x41t
        0x52t
        0x3t
        0x13t
        0x11t
        0x1t
        0x2t
        0x57t
        0x12t
        0x6t
        0x7t
        0x4at
        0x6bt
        0x63t
        0x15t
        0x6t
        0x43t
        0x8t
        0x0t
        0x4ft
        0x9t
        0x16t
        0x17t
        0x3bt
        0x16t
        0x5ft
        0x2t
        0x17t
        0xbt
        0x59t
        0x43t
        0x61t
        0x34t
        0x22t
        0x33t
        0x3bt
        0x22t
        0x79t
        0x28t
        0x37t
        0x26t
        0x2at
        0x35t
        0x14t
        0x46t
        0x2t
        0xdt
        0x0t
        0x41t
        0x5at
        0x7t
        0x1at
        0xct
        0x11t
        0x15t
        0x69t
        0x5t
        0xct
        0xdt
        0x17t
        0x15t
        0x44t
        0x7t
        0xat
        0xdt
        0x1t
        0x5t
        0x61t
        0xft
        0x7t
        0x17t
        0xct
        0x5ct
        0x14t
        0x12t
        0x11t
        0x16t
        0x1t
        0x43t
        0x16t
        0xft
        0xdt
        0x10t
        0x10t
        0x4t
        0x57t
        0x2t
        0x4dt
    .end array-data
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widthSet:Z

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->heightSet:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isVirtualGroup:Z

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 6

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/high16 v3, -0x80000000

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widthSet:Z

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->heightSet:Z

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isVirtualGroup:Z

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    new-instance v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToTop:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBottom:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBaselineMargin:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineMargin:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioValue:F

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatioSide:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->wrapBehaviorInParent:I

    iget-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widthSet:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widthSet:Z

    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->heightSet:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->heightSet:Z

    return-void
.end method


# virtual methods
.method public getConstraintTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    return-object v0
.end method

.method public getConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->reset()V

    :cond_0
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 12

    const/4 v2, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v10, -0x80000000

    const/4 v1, 0x1

    const/4 v9, -0x1

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v0, v5, :cond_15

    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getLayoutDirection()I

    move-result v0

    if-ne v1, v0, :cond_9

    move v0, v1

    :goto_0
    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    if-eqz v0, :cond_d

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v0, v9, :cond_a

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    move v2, v1

    :cond_0
    :goto_1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v0, v9, :cond_1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    move v2, v1

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v0, v9, :cond_2

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    move v2, v1

    :cond_2
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    if-eq v0, v10, :cond_3

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    :cond_3
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    if-eq v0, v10, :cond_4

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    :cond_4
    if-eqz v2, :cond_5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v5

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    :cond_5
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    if-ne v0, v1, :cond_6

    cmpl-float v0, v8, v11

    if-eqz v0, :cond_b

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v8

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    :cond_6
    :goto_2
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    if-ne v0, v9, :cond_8

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    if-ne v0, v9, :cond_8

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    if-ne v0, v9, :cond_8

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    if-ne v0, v9, :cond_8

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    if-eq v0, v9, :cond_13

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    if-gtz v0, :cond_7

    if-lez v4, :cond_7

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    :cond_7
    :goto_3
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    if-eq v0, v9, :cond_14

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    if-gtz v0, :cond_8

    if-lez v3, :cond_8

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    :cond_8
    :goto_4
    return-void

    :cond_9
    move v0, v2

    goto/16 :goto_0

    :cond_a
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v0, v9, :cond_0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    move v2, v1

    goto :goto_1

    :cond_b
    if-eq v6, v9, :cond_c

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    iput v11, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    goto :goto_2

    :cond_c
    if-eq v7, v9, :cond_6

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    iput v11, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    goto :goto_2

    :cond_d
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v0, v9, :cond_e

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    :cond_e
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v0, v9, :cond_f

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    :cond_f
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v0, v9, :cond_10

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    :cond_10
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v0, v9, :cond_11

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    :cond_11
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    if-eq v0, v10, :cond_12

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    :cond_12
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    if-eq v0, v10, :cond_6

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    goto :goto_2

    :cond_13
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    if-eq v0, v9, :cond_7

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    if-gtz v0, :cond_7

    if-lez v4, :cond_7

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    goto :goto_3

    :cond_14
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    if-eq v0, v9, :cond_8

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    if-gtz v0, :cond_8

    if-lez v3, :cond_8

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    goto :goto_4

    :cond_15
    move v0, v2

    goto/16 :goto_0
.end method

.method public setWidgetDebugName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V

    return-void
.end method

.method public validate()V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-ne v0, v3, :cond_0

    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-nez v0, :cond_0

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    :cond_0
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-nez v0, :cond_1

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    :cond_1
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-ne v0, v4, :cond_3

    :cond_2
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    if-ne v0, v2, :cond_3

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    :cond_3
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-ne v0, v4, :cond_5

    :cond_4
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-nez v0, :cond_5

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    if-ne v0, v2, :cond_5

    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    :cond_5
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    if-ne v0, v4, :cond_6

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    if-eq v0, v4, :cond_8

    :cond_6
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    if-nez v0, :cond_7

    new-instance v0, Landroidx/constraintlayout/core/widgets/Guideline;

    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/Guideline;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setOrientation(I)V

    :cond_8
    return-void
.end method
