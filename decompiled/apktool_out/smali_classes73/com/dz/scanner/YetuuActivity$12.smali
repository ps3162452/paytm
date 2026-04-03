.class Lcom/dz/scanner/YetuuActivity$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/database/ChildEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dz/scanner/YetuuActivity;->initialize(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/dz/scanner/YetuuActivity;


# direct methods
.method constructor <init>(Lcom/dz/scanner/YetuuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dz/scanner/YetuuActivity$12;->this$0:Lcom/dz/scanner/YetuuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lcom/google/firebase/database/DatabaseError;)V
    .locals 0

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getCode()I

    invoke-virtual {p1}, Lcom/google/firebase/database/DatabaseError;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public onChildAdded(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/dz/scanner/YetuuActivity$12$1;

    invoke-direct {v0, p0}, Lcom/dz/scanner/YetuuActivity$12$1;-><init>(Lcom/dz/scanner/YetuuActivity$12;)V

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "getText"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dz/scanner/YetuuActivity$12;->this$0:Lcom/dz/scanner/YetuuActivity;

    invoke-static {v1}, Lcom/dz/scanner/YetuuActivity;->-$$Nest$fgettextview14(Lcom/dz/scanner/YetuuActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "getText"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onChildChanged(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/dz/scanner/YetuuActivity$12$2;

    invoke-direct {v0, p0}, Lcom/dz/scanner/YetuuActivity$12$2;-><init>(Lcom/dz/scanner/YetuuActivity$12;)V

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "getText"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dz/scanner/YetuuActivity$12;->this$0:Lcom/dz/scanner/YetuuActivity;

    invoke-static {v1}, Lcom/dz/scanner/YetuuActivity;->-$$Nest$fgettextview14(Lcom/dz/scanner/YetuuActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "getText"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onChildMoved(Lcom/google/firebase/database/DataSnapshot;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onChildRemoved(Lcom/google/firebase/database/DataSnapshot;)V
    .locals 1

    new-instance v0, Lcom/dz/scanner/YetuuActivity$12$3;

    invoke-direct {v0, p0}, Lcom/dz/scanner/YetuuActivity$12$3;-><init>(Lcom/dz/scanner/YetuuActivity$12;)V

    invoke-virtual {p1}, Lcom/google/firebase/database/DataSnapshot;->getKey()Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/firebase/database/DataSnapshot;->getValue(Lcom/google/firebase/database/GenericTypeIndicator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-void
.end method
