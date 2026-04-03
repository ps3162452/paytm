.class public final Lcom/google/android/gms/signin/SignInOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# static fields
.field public static final zaa:Lcom/google/android/gms/signin/SignInOptions;


# instance fields
.field private final zab:Z

.field private final zac:Z

.field private final zad:Ljava/lang/String;

.field private final zae:Z

.field private final zaf:Ljava/lang/String;

.field private final zag:Ljava/lang/String;

.field private final zah:Z

.field private final zai:Ljava/lang/Long;

.field private final zaj:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v1, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/gms/signin/SignInOptions;

    move v2, v1

    move v4, v1

    move-object v5, v3

    move-object v6, v3

    move v7, v1

    move-object v8, v3

    move-object v9, v3

    move-object v10, v3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/signin/SignInOptions;-><init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/signin/zaf;)V

    sput-object v0, Lcom/google/android/gms/signin/SignInOptions;->zaa:Lcom/google/android/gms/signin/SignInOptions;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/signin/zaf;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zab:Z

    iput-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zac:Z

    iput-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zad:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zae:Z

    iput-boolean v1, p0, Lcom/google/android/gms/signin/SignInOptions;->zah:Z

    iput-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zaf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zag:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zai:Ljava/lang/Long;

    iput-object v0, p0, Lcom/google/android/gms/signin/SignInOptions;->zaj:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/signin/SignInOptions;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/signin/SignInOptions;

    iget-boolean v2, p1, Lcom/google/android/gms/signin/SignInOptions;->zab:Z

    iget-boolean v2, p1, Lcom/google/android/gms/signin/SignInOptions;->zac:Z

    iget-object v2, p1, Lcom/google/android/gms/signin/SignInOptions;->zad:Ljava/lang/String;

    invoke-static {v3, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p1, Lcom/google/android/gms/signin/SignInOptions;->zae:Z

    iget-boolean v2, p1, Lcom/google/android/gms/signin/SignInOptions;->zah:Z

    iget-object v2, p1, Lcom/google/android/gms/signin/SignInOptions;->zaf:Ljava/lang/String;

    invoke-static {v3, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/signin/SignInOptions;->zag:Ljava/lang/String;

    invoke-static {v3, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/signin/SignInOptions;->zai:Ljava/lang/Long;

    invoke-static {v3, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/google/android/gms/signin/SignInOptions;->zaj:Ljava/lang/Long;

    invoke-static {v3, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const/4 v0, 0x5

    aput-object v3, v1, v0

    const/4 v0, 0x6

    aput-object v3, v1, v0

    const/4 v0, 0x7

    aput-object v3, v1, v0

    const/16 v0, 0x8

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
