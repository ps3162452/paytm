.class public Lcom/google/firebase/database/connection/RangeMerge;
.super Ljava/lang/Object;


# instance fields
.field private final optExclusiveStart:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final optInclusiveEnd:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final snap:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/database/connection/RangeMerge;->optExclusiveStart:Ljava/util/List;

    iput-object p2, p0, Lcom/google/firebase/database/connection/RangeMerge;->optInclusiveEnd:Ljava/util/List;

    iput-object p3, p0, Lcom/google/firebase/database/connection/RangeMerge;->snap:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getOptExclusiveStart()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/RangeMerge;->optExclusiveStart:Ljava/util/List;

    return-object v0
.end method

.method public getOptInclusiveEnd()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/database/connection/RangeMerge;->optInclusiveEnd:Ljava/util/List;

    return-object v0
.end method

.method public getSnap()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/database/connection/RangeMerge;->snap:Ljava/lang/Object;

    return-object v0
.end method
