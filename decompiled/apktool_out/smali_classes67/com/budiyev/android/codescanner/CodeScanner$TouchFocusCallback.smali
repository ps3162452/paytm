.class final Lcom/budiyev/android/codescanner/CodeScanner$TouchFocusCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/budiyev/android/codescanner/CodeScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TouchFocusCallback"
.end annotation


# instance fields
.field final this$0:Lcom/budiyev/android/codescanner/CodeScanner;


# direct methods
.method private constructor <init>(Lcom/budiyev/android/codescanner/CodeScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/budiyev/android/codescanner/CodeScanner$TouchFocusCallback;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/budiyev/android/codescanner/CodeScanner;Lcom/budiyev/android/codescanner/CodeScanner$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/budiyev/android/codescanner/CodeScanner$TouchFocusCallback;-><init>(Lcom/budiyev/android/codescanner/CodeScanner;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 2
    .param p2    # Landroid/hardware/Camera;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/budiyev/android/codescanner/CodeScanner$TouchFocusCallback;->this$0:Lcom/budiyev/android/codescanner/CodeScanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/budiyev/android/codescanner/CodeScanner;->access$3802(Lcom/budiyev/android/codescanner/CodeScanner;Z)Z

    return-void
.end method
