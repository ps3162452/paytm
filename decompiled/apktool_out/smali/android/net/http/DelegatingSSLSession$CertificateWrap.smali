.class public Landroid/net/http/DelegatingSSLSession$CertificateWrap;
.super Landroid/net/http/DelegatingSSLSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/http/DelegatingSSLSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CertificateWrap"
.end annotation


# direct methods
.method public constructor <init>(Ljava/security/cert/Certificate;)V
    .locals 6

    invoke-direct {p0}, Landroid/net/http/DelegatingSSLSession;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "cbaaa5"

    const-wide/32 v4, 0xcf96576

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x30t
        0x16t
        0x14t
        0x3t
        0x40t
    .end array-data
.end method


# virtual methods
.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/RuntimeException;

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "01eddb"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x63t
        0x45t
        0x10t
        0x6t
        0x45t
    .end array-data
.end method
