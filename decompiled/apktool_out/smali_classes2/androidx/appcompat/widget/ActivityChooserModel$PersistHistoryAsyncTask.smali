.class final Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final this$0:Landroidx/appcompat/widget/ActivityChooserModel;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ActivityChooserModel;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 14

    const/16 v5, 0x26

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x1

    aget-object v0, p1, v2

    check-cast v0, Ljava/util/List;

    aget-object v1, p1, v12

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v3, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iget-object v3, v3, Landroidx/appcompat/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v3

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v4, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v1, 0x5

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v5, "e62a48"

    const-wide/32 v6, -0x62ff73da

    invoke-static {v1, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v1, 0x0

    const/16 v5, 0x12

    new-array v5, v5, [B

    fill-array-data v5, :array_1

    const-string v6, "18861c"

    const/16 v7, 0x3fa4

    invoke-static {v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v2, v5, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;

    const/4 v6, 0x0

    const/16 v7, 0x11

    new-array v7, v7, [B

    fill-array-data v7, :array_2

    const-string v8, "609382"

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const/16 v7, 0x8

    new-array v7, v7, [B

    fill-array-data v7, :array_3

    const-string v8, "b4daf9"

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x0

    const/4 v7, 0x4

    :try_start_2
    new-array v7, v7, [B

    fill-array-data v7, :array_4

    const-string v8, "6119e5"

    const-wide v10, 0x41c21b0f8c800000L    # 6.07526681E8

    invoke-static {v7, v8, v10, v11}, Ln/NPStringFog;->decode([BLjava/lang/String;D)Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v1, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v6, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v6, 0x0

    const/4 v7, 0x6

    new-array v7, v7, [B

    fill-array-data v7, :array_5

    const-string v8, "39c48b"

    const/16 v9, -0x190b

    invoke-static {v7, v8, v9}, Ln/NPStringFog;->decode([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    iget v1, v1, Landroidx/appcompat/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    const/16 v6, 0x11

    new-array v6, v6, [B

    fill-array-data v6, :array_6

    const-string v7, "b64a58"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v1, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/16 v1, 0x12

    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-string v2, "9bcac8"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v1, v2, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iput-boolean v12, v0, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v3, :cond_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    return-object v13

    :catch_0
    move-exception v0

    :goto_2
    :try_start_4
    sget-object v1, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x26

    new-array v4, v4, [B

    fill-array-data v4, :array_8

    const-string v5, "c8b1e5"

    const v6, -0x31806a35

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iput-boolean v12, v0, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    :goto_3
    :try_start_6
    sget-object v1, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x26

    new-array v4, v4, [B

    fill-array-data v4, :array_9

    const-string v5, "219230"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Ln/NPStringFog;->decode([BLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iput-boolean v12, v0, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v3, :cond_1

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    :catch_3
    move-exception v0

    :goto_4
    :try_start_8
    sget-object v1, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x26

    new-array v4, v4, [B

    fill-array-data v4, :array_a

    const-string v5, "fcd8d1"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iget-object v4, v4, Landroidx/appcompat/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    iget-object v0, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iput-boolean v12, v0, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v3, :cond_1

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :goto_5
    iget-object v1, p0, Landroidx/appcompat/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroidx/appcompat/widget/ActivityChooserModel;

    iput-boolean v12, v1, Landroidx/appcompat/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v3, :cond_2

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    :cond_2
    :goto_6
    throw v0

    :catch_4
    move-exception v0

    sget-object v3, Landroidx/appcompat/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v5, [B

    fill-array-data v5, :array_b

    const-string v6, "e276ad"

    invoke-static {v5, v6, v2, v2}, Ln/NPStringFog;->decode([BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :catch_5
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v0

    goto :goto_4

    :catch_7
    move-exception v0

    goto/16 :goto_3

    :catch_8
    move-exception v0

    goto/16 :goto_2

    nop

    :array_0
    .array-data 1
        0x30t
        0x62t
        0x74t
        0x4ct
        0xct
    .end array-data

    nop

    :array_1
    .array-data 1
        0x59t
        0x51t
        0x4bt
        0x42t
        0x5et
        0x11t
        0x58t
        0x5bt
        0x59t
        0x5at
        0x1ct
        0x11t
        0x54t
        0x5bt
        0x57t
        0x44t
        0x55t
        0x10t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x5et
        0x59t
        0x4at
        0x47t
        0x57t
        0x40t
        0x5ft
        0x53t
        0x58t
        0x5ft
        0x15t
        0x40t
        0x53t
        0x53t
        0x56t
        0x41t
        0x5ct
    .end array-data

    nop

    :array_3
    .array-data 1
        0x3t
        0x57t
        0x10t
        0x8t
        0x10t
        0x50t
        0x16t
        0x4dt
    .end array-data

    :array_4
    .array-data 1
        0x42t
        0x58t
        0x5ct
        0x5ct
    .end array-data

    :array_5
    .array-data 1
        0x44t
        0x5ct
        0xat
        0x53t
        0x50t
        0x16t
    .end array-data

    nop

    :array_6
    .array-data 1
        0xat
        0x5ft
        0x47t
        0x15t
        0x5at
        0x4at
        0xbt
        0x55t
        0x55t
        0xdt
        0x18t
        0x4at
        0x7t
        0x55t
        0x5bt
        0x13t
        0x51t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x51t
        0xbt
        0x10t
        0x15t
        0xct
        0x4at
        0x50t
        0x1t
        0x2t
        0xdt
        0x4et
        0x4at
        0x5ct
        0x1t
        0xct
        0x13t
        0x7t
        0x4bt
    .end array-data

    nop

    :array_8
    .array-data 1
        0x26t
        0x4at
        0x10t
        0x5et
        0x17t
        0x15t
        0x14t
        0x4at
        0xbt
        0x45t
        0xct
        0x5bt
        0x4t
        0x18t
        0xat
        0x58t
        0x16t
        0x41t
        0xct
        0x4at
        0xbt
        0x52t
        0x4t
        0x59t
        0x43t
        0x4at
        0x7t
        0x52t
        0xat
        0x47t
        0x7t
        0x18t
        0x4t
        0x58t
        0x9t
        0x50t
        0x59t
        0x18t
    .end array-data

    nop

    :array_9
    .array-data 1
        0x77t
        0x43t
        0x4bt
        0x5dt
        0x41t
        0x10t
        0x45t
        0x43t
        0x50t
        0x46t
        0x5at
        0x5et
        0x55t
        0x11t
        0x51t
        0x5bt
        0x40t
        0x44t
        0x5dt
        0x43t
        0x50t
        0x51t
        0x52t
        0x5ct
        0x12t
        0x43t
        0x5ct
        0x51t
        0x5ct
        0x42t
        0x56t
        0x11t
        0x5ft
        0x5bt
        0x5ft
        0x55t
        0x8t
        0x11t
    .end array-data

    nop

    :array_a
    .array-data 1
        0x23t
        0x11t
        0x16t
        0x57t
        0x16t
        0x11t
        0x11t
        0x11t
        0xdt
        0x4ct
        0xdt
        0x5ft
        0x1t
        0x43t
        0xct
        0x51t
        0x17t
        0x45t
        0x9t
        0x11t
        0xdt
        0x5bt
        0x5t
        0x5dt
        0x46t
        0x11t
        0x1t
        0x5bt
        0xbt
        0x43t
        0x2t
        0x43t
        0x2t
        0x51t
        0x8t
        0x54t
        0x5ct
        0x43t
    .end array-data

    nop

    :array_b
    .array-data 1
        0x20t
        0x40t
        0x45t
        0x59t
        0x13t
        0x44t
        0x12t
        0x40t
        0x5et
        0x42t
        0x8t
        0xat
        0x2t
        0x12t
        0x5ft
        0x5ft
        0x12t
        0x10t
        0xat
        0x40t
        0x5et
        0x55t
        0x0t
        0x8t
        0x45t
        0x40t
        0x52t
        0x55t
        0xet
        0x16t
        0x1t
        0x12t
        0x51t
        0x5ft
        0xdt
        0x1t
        0x5ft
        0x12t
    .end array-data
.end method
