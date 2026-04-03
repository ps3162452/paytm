.class Landroidx/versionedparcelable/VersionedParcelStream;
.super Landroidx/versionedparcelable/VersionedParcel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;
    }
.end annotation


# static fields
.field private static final TYPE_BOOLEAN:I = 0x5

.field private static final TYPE_BOOLEAN_ARRAY:I = 0x6

.field private static final TYPE_DOUBLE:I = 0x7

.field private static final TYPE_DOUBLE_ARRAY:I = 0x8

.field private static final TYPE_FLOAT:I = 0xd

.field private static final TYPE_FLOAT_ARRAY:I = 0xe

.field private static final TYPE_INT:I = 0x9

.field private static final TYPE_INT_ARRAY:I = 0xa

.field private static final TYPE_LONG:I = 0xb

.field private static final TYPE_LONG_ARRAY:I = 0xc

.field private static final TYPE_NULL:I = 0x0

.field private static final TYPE_STRING:I = 0x3

.field private static final TYPE_STRING_ARRAY:I = 0x4

.field private static final TYPE_SUB_BUNDLE:I = 0x1

.field private static final TYPE_SUB_PERSISTABLE_BUNDLE:I = 0x2

.field private static final UTF_16:Ljava/nio/charset/Charset;


# instance fields
.field mCount:I

.field private mCurrentInput:Ljava/io/DataInputStream;

.field private mCurrentOutput:Ljava/io/DataOutputStream;

.field private mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

.field private mFieldId:I

.field mFieldSize:I

.field private mIgnoreParcelables:Z

.field private final mMasterInput:Ljava/io/DataInputStream;

.field private final mMasterOutput:Ljava/io/DataOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    const-string v1, "77705c"

    const-wide/32 v2, 0x48b85a92

    invoke-static {v0, v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroidx/versionedparcelable/VersionedParcelStream;->UTF_16:Ljava/nio/charset/Charset;

    return-void

    :array_0
    .array-data 1
        0x62t
        0x63t
        0x71t
        0x1dt
        0x4t
        0x55t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6

    new-instance v3, Landroidx/collection/ArrayMap;

    invoke-direct {v3}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v4, Landroidx/collection/ArrayMap;

    invoke-direct {v4}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v5, Landroidx/collection/ArrayMap;

    invoke-direct {v5}, Landroidx/collection/ArrayMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/io/OutputStream;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/collection/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p3, p4, p5}, Landroidx/versionedparcelable/VersionedParcel;-><init>(Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    iput v2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldId:I

    iput v2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    if-eqz p1, :cond_1

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Landroidx/versionedparcelable/VersionedParcelStream$1;

    invoke-direct {v2, p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream$1;-><init>(Landroidx/versionedparcelable/VersionedParcelStream;Ljava/io/InputStream;)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_0
    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    if-eqz p2, :cond_0

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :cond_0
    iput-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterOutput:Ljava/io/DataOutputStream;

    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    iput-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private readObject(ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xd

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "09ab9e"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readFloatArray()[F

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readFloat()F

    move-result v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readLongArray()[J

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readLong()J

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readIntArray()[I

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readInt()I

    move-result v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readDoubleArray()[D

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readDouble()D

    move-result-wide v0

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readBooleanArray()[Z

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readBoolean()Z

    move-result v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_a
    new-array v0, v4, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->readArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_e
    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x65t
        0x57t
        0xat
        0xct
        0x56t
        0x12t
        0x5et
        0x19t
        0x15t
        0x1bt
        0x49t
        0x0t
        0x10t
    .end array-data
.end method

.method private writeObject(Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, v3}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeArray([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeBoolean(Z)V

    goto :goto_0

    :cond_4
    instance-of v0, p1, [Z

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    check-cast p1, [Z

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeBooleanArray([Z)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeDouble(D)V

    goto :goto_0

    :cond_6
    instance-of v0, p1, [D

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    check-cast p1, [D

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeDoubleArray([D)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    goto :goto_0

    :cond_8
    instance-of v0, p1, [I

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    check-cast p1, [I

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeIntArray([I)V

    goto/16 :goto_0

    :cond_9
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeLong(J)V

    goto/16 :goto_0

    :cond_a
    instance-of v0, p1, [J

    if-eqz v0, :cond_b

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    check-cast p1, [J

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeLongArray([J)V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeFloat(F)V

    goto/16 :goto_0

    :cond_c
    instance-of v0, p1, [F

    if-eqz v0, :cond_d

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeInt(I)V

    check-cast p1, [F

    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/VersionedParcelStream;->writeFloatArray([F)V

    goto/16 :goto_0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x11

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3e81a1"

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x66t
        0xbt
        0x4bt
        0x44t
        0x11t
        0x41t
        0x5ct
        0x17t
        0x4ct
        0x54t
        0x5t
        0x11t
        0x47t
        0x1ct
        0x48t
        0x54t
        0x41t
    .end array-data
.end method


# virtual methods
.method public closeField()V
    .locals 2

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, v0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mOutput:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    invoke-virtual {v0}, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->flushField()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createSubParcel()Landroidx/versionedparcelable/VersionedParcel;
    .locals 6

    new-instance v0, Landroidx/versionedparcelable/VersionedParcelStream;

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    iget-object v2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mReadCache:Landroidx/collection/ArrayMap;

    iget-object v4, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mWriteCache:Landroidx/collection/ArrayMap;

    iget-object v5, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mParcelizerCache:Landroidx/collection/ArrayMap;

    invoke-direct/range {v0 .. v5}, Landroidx/versionedparcelable/VersionedParcelStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;Landroidx/collection/ArrayMap;)V

    return-object v0
.end method

.method public isStream()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public readBoolean()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readBundle()Landroid/os/Bundle;
    .locals 5

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readInt()I

    move-result v2

    if-gez v2, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->readInt()I

    move-result v4

    invoke-direct {p0, v4, v3, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->readObject(ILjava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public readByteArray()[B
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v0, v0, [B

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected readCharSequence()Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public readDouble()D
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readField(I)Z
    .locals 7

    const v6, 0xffff

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldId:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_1
    return v0

    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_0

    iget v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    iget v2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    if-ge v1, v2, :cond_2

    iget-object v3, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    sub-int v1, v2, v1

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/io/DataInputStream;->skip(J)J

    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    const/4 v1, 0x0

    iput v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCount:I

    and-int v1, v2, v6

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterInput:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    :cond_3
    shr-int/lit8 v2, v2, 0x10

    and-int/2addr v2, v6

    iput v2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldId:I

    iput v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public readFloat()F
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readInt()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readLong()J
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readParcelable()Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public readString()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [B

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentInput:Ljava/io/DataInputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v0, Ljava/lang/String;

    sget-object v2, Landroidx/versionedparcelable/VersionedParcelStream;->UTF_16:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public readStrongBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setOutputField(I)V
    .locals 2

    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcelStream;->closeField()V

    new-instance v0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mMasterOutput:Ljava/io/DataOutputStream;

    invoke-direct {v0, p1, v1}, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;-><init>(ILjava/io/DataOutputStream;)V

    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mFieldBuffer:Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;

    iget-object v0, v0, Landroidx/versionedparcelable/VersionedParcelStream$FieldBuffer;->mDataStream:Ljava/io/DataOutputStream;

    iput-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    return-void
.end method

.method public setSerializationFlags(ZZ)V
    .locals 4

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x2b

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "180ce4"

    const/16 v3, 0x5ca1

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x62t
        0x5dt
        0x42t
        0xat
        0x4t
        0x58t
        0x58t
        0x42t
        0x51t
        0x17t
        0xct
        0x5bt
        0x5ft
        0x18t
        0x5ft
        0x5t
        0x45t
        0x40t
        0x59t
        0x51t
        0x43t
        0x43t
        0xat
        0x56t
        0x5bt
        0x5dt
        0x53t
        0x17t
        0x45t
        0x5dt
        0x42t
        0x18t
        0x5et
        0xct
        0x11t
        0x14t
        0x50t
        0x54t
        0x5ct
        0xct
        0x12t
        0x51t
        0x55t
    .end array-data
.end method

.method public writeBoolean(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeBundle(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeString(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/versionedparcelable/VersionedParcelStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    return-void
.end method

.method public writeByteArray([B)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeByteArray([BII)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/DataOutputStream;->write([BII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected writeCharSequence(Ljava/lang/CharSequence;)V
    .locals 6

    iget-boolean v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x31

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "3be382"

    const-wide/32 v4, 0x5c13dc5d

    invoke-static {v1, v2, v4, v5}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x70t
        0xat
        0x4t
        0x41t
        0x6bt
        0x57t
        0x42t
        0x17t
        0x0t
        0x5dt
        0x5bt
        0x57t
        0x13t
        0x1t
        0x4t
        0x5dt
        0x56t
        0x5dt
        0x47t
        0x42t
        0x7t
        0x56t
        0x18t
        0x45t
        0x41t
        0xbt
        0x11t
        0x47t
        0x5dt
        0x5ct
        0x13t
        0x16t
        0xat
        0x13t
        0x59t
        0x5ct
        0x13t
        0x2dt
        0x10t
        0x47t
        0x48t
        0x47t
        0x47t
        0x31t
        0x11t
        0x41t
        0x5dt
        0x53t
        0x5et
    .end array-data
.end method

.method public writeDouble(D)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeDouble(D)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeFloat(F)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeInt(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeLong(J)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeParcelable(Landroid/os/Parcelable;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x30

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "d7efd8"

    const v3, 0x4e54167d    # 8.895609E8f

    invoke-static {v1, v2, v3}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x34t
        0x56t
        0x17t
        0x5t
        0x1t
        0x54t
        0x5t
        0x55t
        0x9t
        0x3t
        0x17t
        0x18t
        0x7t
        0x56t
        0xbt
        0x8t
        0xbt
        0x4ct
        0x44t
        0x55t
        0x0t
        0x46t
        0x13t
        0x4at
        0xdt
        0x43t
        0x11t
        0x3t
        0xat
        0x18t
        0x10t
        0x58t
        0x45t
        0x7t
        0xat
        0x18t
        0x2bt
        0x42t
        0x11t
        0x16t
        0x11t
        0x4ct
        0x37t
        0x43t
        0x17t
        0x3t
        0x5t
        0x55t
    .end array-data
.end method

.method public writeString(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v0, Landroidx/versionedparcelable/VersionedParcelStream;->UTF_16:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mCurrentOutput:Ljava/io/DataOutputStream;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroidx/versionedparcelable/VersionedParcel$ParcelException;

    invoke-direct {v1, v0}, Landroidx/versionedparcelable/VersionedParcel$ParcelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeStrongBinder(Landroid/os/IBinder;)V
    .locals 5

    iget-boolean v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x2c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "7f0645"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x75t
        0xft
        0x5et
        0x52t
        0x51t
        0x47t
        0x44t
        0x46t
        0x53t
        0x57t
        0x5at
        0x5bt
        0x58t
        0x12t
        0x10t
        0x54t
        0x51t
        0x15t
        0x40t
        0x14t
        0x59t
        0x42t
        0x40t
        0x50t
        0x59t
        0x46t
        0x44t
        0x59t
        0x14t
        0x54t
        0x59t
        0x46t
        0x7ft
        0x43t
        0x40t
        0x45t
        0x42t
        0x12t
        0x63t
        0x42t
        0x46t
        0x50t
        0x56t
        0xbt
    .end array-data
.end method

.method public writeStrongInterface(Landroid/os/IInterface;)V
    .locals 5

    iget-boolean v0, p0, Landroidx/versionedparcelable/VersionedParcelStream;->mIgnoreParcelables:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const/16 v1, 0x2c

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "b02c7a"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :array_0
    .array-data 1
        0x20t
        0x59t
        0x5ct
        0x7t
        0x52t
        0x13t
        0x11t
        0x10t
        0x51t
        0x2t
        0x59t
        0xft
        0xdt
        0x44t
        0x12t
        0x1t
        0x52t
        0x41t
        0x15t
        0x42t
        0x5bt
        0x17t
        0x43t
        0x4t
        0xct
        0x10t
        0x46t
        0xct
        0x17t
        0x0t
        0xct
        0x10t
        0x7dt
        0x16t
        0x43t
        0x11t
        0x17t
        0x44t
        0x61t
        0x17t
        0x45t
        0x4t
        0x3t
        0x5dt
    .end array-data
.end method
