.class public Lcom/viber/voip/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Downloader;
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Player;


# instance fields
.field private final a:Lcom/viber/jni/ptt/PttController;

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:J

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/viber/jni/ptt/PttController;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/h/a;->b:Ljava/util/Queue;

    .line 30
    iput-wide v2, p0, Lcom/viber/voip/h/a;->e:J

    .line 31
    iput-wide v2, p0, Lcom/viber/voip/h/a;->f:J

    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/h/a;->g:Z

    .line 33
    iput-boolean v1, p0, Lcom/viber/voip/h/a;->h:Z

    .line 34
    iput-boolean v1, p0, Lcom/viber/voip/h/a;->i:Z

    .line 37
    iput-object p1, p0, Lcom/viber/voip/h/a;->a:Lcom/viber/jni/ptt/PttController;

    .line 38
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/h/a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/h/a;->c:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/viber/voip/h/a;->a:Lcom/viber/jni/ptt/PttController;

    iget-object v1, p0, Lcom/viber/voip/h/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/viber/jni/ptt/PttController;->handleStartPlayPtt(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 64
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/viber/voip/h/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/viber/voip/h/a;->d:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/viber/voip/h/a;->a:Lcom/viber/jni/ptt/PttController;

    invoke-interface {v0, p1}, Lcom/viber/jni/ptt/PttController;->handleDownloadPtt(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    if-eqz p2, :cond_0

    .line 52
    iget-object v0, p0, Lcom/viber/voip/h/a;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/h/a;->b(Ljava/lang/String;Z)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/h/a;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 55
    iget-boolean v0, p0, Lcom/viber/voip/h/a;->h:Z

    if-nez v0, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/viber/voip/h/a;->d()V

    .line 58
    :cond_1
    return-void
.end method

.method public b()J
    .locals 6

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/viber/voip/h/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/h/a;->e:J

    .line 100
    :cond_0
    iget-wide v0, p0, Lcom/viber/voip/h/a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/viber/voip/h/a;->e:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 70
    if-eqz p2, :cond_0

    .line 71
    iget-object v0, p0, Lcom/viber/voip/h/a;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 74
    :cond_0
    iput-object v2, p0, Lcom/viber/voip/h/a;->d:Ljava/lang/String;

    .line 76
    if-nez p1, :cond_1

    .line 77
    iget-object p1, p0, Lcom/viber/voip/h/a;->c:Ljava/lang/String;

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/h/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/h/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 92
    :cond_2
    :goto_0
    return-void

    .line 84
    :cond_3
    iget-boolean v0, p0, Lcom/viber/voip/h/a;->h:Z

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/viber/voip/h/a;->a:Lcom/viber/jni/ptt/PttController;

    iget-object v1, p0, Lcom/viber/voip/h/a;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/viber/jni/ptt/PttController;->handleStopPlayPtt(Ljava/lang/String;)V

    .line 88
    :cond_4
    iput-object v2, p0, Lcom/viber/voip/h/a;->c:Ljava/lang/String;

    .line 89
    iput-wide v3, p0, Lcom/viber/voip/h/a;->f:J

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/h/a;->h:Z

    .line 91
    iput-wide v3, p0, Lcom/viber/voip/h/a;->e:J

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/viber/voip/h/a;->i:Z

    return v0
.end method

.method public onDownloadPtt(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 148
    iget-object v0, p0, Lcom/viber/voip/h/a;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_OK:I

    if-ne v0, p3, :cond_0

    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/viber/voip/h/a;->a(Ljava/lang/String;Z)V

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/h/a;->d:Ljava/lang/String;

    .line 152
    :cond_0
    return-void
.end method

.method public onPttBufferingStarted(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/viber/voip/h/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/h/a;->f:J

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/h/a;->i:Z

    .line 112
    return-void
.end method

.method public onPttBufferingStopped(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/h/a;->e:J

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/h/a;->i:Z

    .line 118
    return-void
.end method

.method public onPttDownloaded(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 157
    return-void
.end method

.method public onPttPlayStopped(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/viber/voip/h/a;->h:Z

    .line 140
    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/h/a;->b(Ljava/lang/String;Z)V

    .line 141
    sget v0, Lcom/viber/jni/ptt/PttController$EPttStopReason;->STOP_REASON_TRACK_ENDED:I

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/h/a;->g:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/viber/voip/h/a;->d()V

    .line 144
    :cond_0
    return-void
.end method

.method public onStartPlayPttReply(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 122
    sget v0, Lcom/viber/jni/ptt/PttController$EPttPlayStatus;->PLAY_OK:I

    if-ne v0, p2, :cond_0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/h/a;->e:J

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/h/a;->h:Z

    .line 125
    iput-object p1, p0, Lcom/viber/voip/h/a;->c:Ljava/lang/String;

    .line 126
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/h/a;->f:J

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/h/a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/h/a;->b(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onStopPlayPttReply(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/h/a;->b(Ljava/lang/String;Z)V

    .line 135
    return-void
.end method
