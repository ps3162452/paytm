.class abstract Landroidx/lifecycle/ViewModelProvider$KeyedFactory;
.super Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;

# interfaces
.implements Landroidx/lifecycle/ViewModelProvider$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/ViewModelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "KeyedFactory"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/ViewModelProvider$OnRequeryFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/16 v1, 0x49

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "c9397b"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x0t
        0x4bt
        0x56t
        0x58t
        0x43t
        0x7t
        0x4bt
        0x6at
        0x47t
        0x4bt
        0x5et
        0xct
        0x4t
        0x15t
        0x13t
        0x7at
        0x5bt
        0x3t
        0x10t
        0x4at
        0xft
        0x6t
        0x9t
        0x4bt
        0x43t
        0x54t
        0x46t
        0x4at
        0x43t
        0x42t
        0x1t
        0x5ct
        0x13t
        0x5at
        0x56t
        0xet
        0xft
        0x5ct
        0x57t
        0x19t
        0x58t
        0xct
        0x43t
        0x50t
        0x5et
        0x49t
        0x5bt
        0x7t
        0xet
        0x5ct
        0x5dt
        0x4dt
        0x56t
        0xbt
        0xct
        0x57t
        0x40t
        0x19t
        0x58t
        0x4t
        0x43t
        0x72t
        0x56t
        0x40t
        0x52t
        0x6t
        0x25t
        0x58t
        0x50t
        0x4dt
        0x58t
        0x10t
        0x1at
    .end array-data
.end method

.method public abstract create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/ViewModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method
