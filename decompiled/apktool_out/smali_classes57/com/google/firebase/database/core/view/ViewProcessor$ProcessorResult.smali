.class public Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/database/core/view/ViewProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessorResult"
.end annotation


# instance fields
.field public final changes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;"
        }
    .end annotation
.end field

.field public final viewCache:Lcom/google/firebase/database/core/view/ViewCache;


# direct methods
.method public constructor <init>(Lcom/google/firebase/database/core/view/ViewCache;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/database/core/view/ViewCache;",
            "Ljava/util/List",
            "<",
            "Lcom/google/firebase/database/core/view/Change;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;->viewCache:Lcom/google/firebase/database/core/view/ViewCache;

    iput-object p2, p0, Lcom/google/firebase/database/core/view/ViewProcessor$ProcessorResult;->changes:Ljava/util/List;

    return-void
.end method
