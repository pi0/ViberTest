.class public Lcom/viber/voip/messages/controller/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Downloader;
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Player;
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Uploader;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/messages/controller/c/as;

.field private c:Lcom/viber/voip/messages/controller/c/e;

.field private d:Lcom/viber/voip/messages/controller/cz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/viber/voip/messages/controller/a/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/controller/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->b:Lcom/viber/voip/messages/controller/c/as;

    .line 41
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->c:Lcom/viber/voip/messages/controller/c/e;

    .line 43
    new-instance v0, Lcom/viber/voip/messages/controller/a/i;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/controller/a/i;-><init>(Lcom/viber/voip/messages/controller/a/h;)V

    iput-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->d:Lcom/viber/voip/messages/controller/cz;

    .line 52
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->c:Lcom/viber/voip/messages/controller/c/e;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/a/h;->d:Lcom/viber/voip/messages/controller/cz;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/cz;)V

    .line 53
    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getPttController()Lcom/viber/jni/ptt/PttController;

    move-result-object v1

    .line 306
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 307
    invoke-interface {v1, v0}, Lcom/viber/jni/ptt/PttController;->handleDeletePtt(Ljava/lang/String;)I

    goto :goto_0

    .line 309
    :cond_0
    return-void
.end method

.method public onDownloadPtt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const/high16 v7, 0x1000

    .line 119
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->b:Lcom/viber/voip/messages/controller/c/as;

    const-string/jumbo v1, "sound"

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/messages/controller/c/as;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v6

    .line 122
    if-nez v6, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 127
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getPttController()Lcom/viber/jni/ptt/PttController;

    move-result-object v0

    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMediaUri()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/jni/ptt/PttController;->handleDeletePtt(Ljava/lang/String;)I

    .line 129
    :cond_2
    invoke-virtual {v6, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMediaUri(Ljava/lang/String;)V

    .line 130
    sget v0, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_OK:I

    if-eq v0, p3, :cond_3

    .line 131
    sget v0, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_FILE_NOT_AVAILABLE:I

    if-ne v0, p3, :cond_7

    const/4 v0, 0x7

    :goto_1
    invoke-virtual {v6, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v6}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 135
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 137
    sget v0, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_OK:I

    if-ne v0, p3, :cond_4

    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isIncoming()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/h/b;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v0

    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/h/b;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 139
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getPttPlaylist()Lcom/viber/voip/h/a;

    move-result-object v0

    invoke-virtual {v0, p2, v5}, Lcom/viber/voip/h/a;->a(Ljava/lang/String;Z)V

    .line 142
    :cond_4
    sget v0, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_NO_CONNECTION:I

    if-ne v0, p3, :cond_5

    .line 143
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.NO_INTERNET_CONNECTION_DOWNLOAD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 147
    :cond_5
    sget v0, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_NO_SPACE:I

    if-ne v0, p3, :cond_6

    .line 148
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.PTT_LOW_STORAGE_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 152
    :cond_6
    sget v0, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_FAILED:I

    if-ne v0, p3, :cond_0

    .line 153
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.PTT_DOWNLOAD_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 131
    :cond_7
    const/4 v0, 0x4

    goto/16 :goto_1
.end method

.method public onPttBufferingStarted(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    return-void
.end method

.method public onPttBufferingStopped(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 330
    return-void
.end method

.method public onPttDownloaded(Ljava/lang/String;II)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x1000

    .line 162
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->b:Lcom/viber/voip/messages/controller/c/as;

    const-string/jumbo v1, "sound"

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 165
    if-nez v3, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    sget v0, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_OK:I

    if-ne p3, v0, :cond_4

    .line 173
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 178
    :goto_1
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/h/b;->a(J)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDuration(J)V

    .line 179
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 180
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 182
    sget v0, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_NO_CONNECTION:I

    if-ne v0, p3, :cond_2

    .line 183
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.NO_INTERNET_CONNECTION_DOWNLOAD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 187
    :cond_2
    sget v0, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_NO_SPACE:I

    if-ne v0, p3, :cond_3

    .line 188
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.PTT_LOW_STORAGE_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 192
    :cond_3
    sget v0, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_FAILED:I

    if-ne v0, p3, :cond_0

    .line 193
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.PTT_DOWNLOAD_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 175
    :cond_4
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    goto :goto_1
.end method

.method public onPttFirstChunkUploaded(Ljava/lang/String;JII)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 59
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->b:Lcom/viber/voip/messages/controller/c/as;

    const-string/jumbo v1, "sound"

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 62
    sget v0, Lcom/viber/jni/ptt/PttController$EPttUploadStatus;->UPLOAD_OK:I

    if-ne v0, p5, :cond_2

    .line 63
    if-nez v3, :cond_1

    .line 65
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getPttController()Lcom/viber/jni/ptt/PttController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/jni/ptt/PttController;->handleDeletePtt(Ljava/lang/String;)I

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-virtual {v3, p2, p3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setObjectId(J)V

    .line 70
    invoke-virtual {v3, v5}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 72
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 73
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 74
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v0, p1, v5}, Lcom/viber/voip/messages/controller/c/e;->a(Ljava/lang/String;Z)V

    .line 80
    :goto_1
    sget v0, Lcom/viber/jni/ptt/PttController$EPttUploadStatus;->UPLOAD_FAILED:I

    if-ne v0, p5, :cond_0

    .line 81
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.PTT_UPLOAD_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 76
    :cond_2
    if-eqz v3, :cond_3

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/x;->a(JLcom/viber/voip/messages/controller/aa;)V

    .line 77
    :cond_3
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getPttController()Lcom/viber/jni/ptt/PttController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/jni/ptt/PttController;->handleDeletePtt(Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPttPlayStopped(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 320
    return-void
.end method

.method public onPttRecordStopped(Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 265
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->b:Lcom/viber/voip/messages/controller/c/as;

    const-string/jumbo v1, "sound"

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 268
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 269
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 270
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 271
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    if-eqz v3, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/x;->a(JLcom/viber/voip/messages/controller/aa;)V

    .line 274
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getPttController()Lcom/viber/jni/ptt/PttController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/jni/ptt/PttController;->handleDeletePtt(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPttUploaded(Ljava/lang/String;II)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->b:Lcom/viber/voip/messages/controller/c/as;

    const-string/jumbo v1, "sound"

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 93
    if-eqz v3, :cond_0

    sget v0, Lcom/viber/jni/ptt/PttController$EPttUploadStatus;->UPLOAD_OK:I

    if-eq v0, p3, :cond_3

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getStatus()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    .line 94
    :cond_0
    if-eqz p1, :cond_2

    .line 95
    if-eqz v3, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getId()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/x;->a(JLcom/viber/voip/messages/controller/aa;)V

    .line 96
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getPttController()Lcom/viber/jni/ptt/PttController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/jni/ptt/PttController;->handleDeletePtt(Ljava/lang/String;)I

    .line 113
    :cond_2
    :goto_0
    return-void

    .line 104
    :cond_3
    sget v0, Lcom/viber/jni/ptt/PttController$EPttUploadStatus;->UPLOAD_FAILED:I

    if-ne v0, p3, :cond_4

    .line 105
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.PTT_UPLOAD_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 109
    :cond_4
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 110
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/h/b;->a(J)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDuration(J)V

    .line 111
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 112
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    goto :goto_0
.end method

.method public onStartPlayPttReply(Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 292
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->b:Lcom/viber/voip/messages/controller/c/as;

    const-string/jumbo v1, "sound"

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 295
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/viber/jni/ptt/PttController$EPttPlayStatus;->PLAY_OK:I

    if-ne v0, p2, :cond_0

    .line 296
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setOpened(I)V

    .line 297
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 298
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 300
    :cond_0
    return-void
.end method

.method public onStartPttIndicator()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public onStartRecordPttReply(ILjava/lang/String;I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 202
    sget v0, Lcom/viber/jni/ptt/PttController$EPttRecordStatus;->RECORD_OK:I

    if-ne v0, p3, :cond_1

    .line 203
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v0

    .line 205
    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/h/b;->onStartRecordPttReply(ILjava/lang/String;I)V

    .line 206
    invoke-virtual {v0, p1}, Lcom/viber/voip/h/b;->b(I)Lcom/viber/voip/h/d;

    move-result-object v1

    .line 209
    invoke-virtual {v1}, Lcom/viber/voip/h/d;->a()J

    move-result-wide v3

    cmp-long v0, v3, v6

    if-lez v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v1}, Lcom/viber/voip/h/d;->a()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v1

    .line 211
    new-instance v0, Lcom/viber/voip/messages/controller/b/b;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/controller/b/b;-><init>(Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)V

    .line 215
    :goto_0
    const-string/jumbo v3, "sound"

    invoke-virtual {v0, v3, p2, v2}, Lcom/viber/voip/messages/controller/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 218
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setStatus(I)V

    .line 219
    const/4 v0, 0x6

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 220
    invoke-virtual {v3, p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageSeq(I)V

    .line 221
    invoke-virtual {v3, p2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMediaUri(Ljava/lang/String;)V

    .line 223
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isShareLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getLocationManager()Lcom/viber/voip/messages/extras/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/extras/a/a;->c()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setLocation(Landroid/location/Location;)V

    .line 227
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 228
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 231
    :cond_1
    sget v0, Lcom/viber/jni/ptt/PttController$EPttRecordStatus;->RECORD_NO_SPACE:I

    if-ne v0, p3, :cond_2

    .line 232
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.PTT_LOW_STORAGE_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 235
    :cond_2
    return-void

    .line 213
    :cond_3
    new-instance v0, Lcom/viber/voip/messages/controller/b/b;

    invoke-virtual {v1}, Lcom/viber/voip/h/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v6, v7, v1, v5}, Lcom/viber/voip/messages/controller/b/b;-><init>(JLjava/lang/String;I)V

    move-object v1, v2

    goto :goto_0
.end method

.method public onStopPlayPttReply(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 315
    return-void
.end method

.method public onStopPttIndicator()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public onStopRecordPttReply(Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->b:Lcom/viber/voip/messages/controller/c/as;

    const-string/jumbo v1, "sound"

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v3

    .line 244
    sget v0, Lcom/viber/jni/ptt/PttController$EPttRecordStopStatus;->RECORD_STOP_OK:I

    if-ne v0, p2, :cond_0

    .line 245
    if-eqz v3, :cond_0

    .line 246
    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 248
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v0

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageSeq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/h/b;->a(I)J

    move-result-wide v0

    .line 250
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/viber/voip/h/b;->a(J)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setDuration(J)V

    .line 251
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->b:Lcom/viber/voip/messages/controller/c/as;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/controller/c/as;->b(Lcom/viber/voip/messages/orm/entity/BaseEntity;)Z

    .line 252
    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/h;->c:Lcom/viber/voip/messages/controller/c/e;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v1

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMessageToken()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/controller/c/e;->a(JJZ)V

    .line 259
    :cond_0
    return-void
.end method
