.class Lcom/airbnb/lottie/model/layer/BaseLayer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/lottie/model/layer/BaseLayer;->setupInOutAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/airbnb/lottie/model/layer/BaseLayer;


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/model/layer/BaseLayer;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer$1;->this$0:Lcom/airbnb/lottie/model/layer/BaseLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged()V
    .locals 3

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/BaseLayer$1;->this$0:Lcom/airbnb/lottie/model/layer/BaseLayer;

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/BaseLayer$1;->this$0:Lcom/airbnb/lottie/model/layer/BaseLayer;

    invoke-static {v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->access$000(Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation;->getFloatValue()F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/airbnb/lottie/model/layer/BaseLayer;->access$100(Lcom/airbnb/lottie/model/layer/BaseLayer;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
