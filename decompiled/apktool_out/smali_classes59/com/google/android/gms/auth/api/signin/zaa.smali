.class public final synthetic Lcom/google/android/gms/auth/api/signin/zaa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final zaa:Lcom/google/android/gms/auth/api/signin/zaa;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/signin/zaa;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/signin/zaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/zaa;->zaa:Lcom/google/android/gms/auth/api/signin/zaa;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/android/gms/common/api/Scope;

    check-cast p2, Lcom/google/android/gms/common/api/Scope;

    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Scope;->getScopeUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Scope;->getScopeUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
