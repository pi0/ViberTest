.class public Lcom/viber/voip/h/b;
.super Ljava/util/Observable;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Player;
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;
.implements Lcom/viber/jni/ptt/PttControllerDelegate$Uploader;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final l:Lcom/viber/voip/h/b;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/viber/voip/h/d;

.field private g:Ljava/lang/String;

.field private h:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/viber/voip/h/d;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/viber/voip/h/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Lcom/viber/voip/h/b;

    invoke-direct {v0}, Lcom/viber/voip/h/b;-><init>()V

    sput-object v0, Lcom/viber/voip/h/b;->l:Lcom/viber/voip/h/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 29
    iput-boolean v0, p0, Lcom/viber/voip/h/b;->a:Z

    .line 30
    iput-boolean v0, p0, Lcom/viber/voip/h/b;->b:Z

    .line 31
    iput-boolean v0, p0, Lcom/viber/voip/h/b;->c:Z

    .line 32
    iput-boolean v0, p0, Lcom/viber/voip/h/b;->d:Z

    .line 33
    iput-boolean v0, p0, Lcom/viber/voip/h/b;->e:Z

    .line 34
    new-instance v0, Lcom/viber/voip/h/d;

    invoke-direct {v0}, Lcom/viber/voip/h/d;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/h/b;->f:Lcom/viber/voip/h/d;

    .line 37
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/h/b;->h:Landroid/support/v4/util/SparseArrayCompat;

    .line 38
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/h/b;->i:Landroid/support/v4/util/SparseArrayCompat;

    .line 39
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/h/b;->j:Landroid/support/v4/util/SparseArrayCompat;

    .line 40
    new-instance v0, Lcom/viber/voip/h/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/h/e;-><init>(Lcom/viber/voip/h/b;Lcom/viber/voip/h/c;)V

    iput-object v0, p0, Lcom/viber/voip/h/b;->k:Lcom/viber/voip/h/e;

    .line 264
    return-void
.end method

.method private a(Ljava/lang/String;ZZ)Lcom/viber/voip/h/b;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/viber/voip/h/b;->a:Z

    if-ne p2, v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-object p0

    .line 47
    :cond_1
    iput-object p1, p0, Lcom/viber/voip/h/b;->g:Ljava/lang/String;

    .line 48
    iput-boolean p2, p0, Lcom/viber/voip/h/b;->a:Z

    .line 49
    invoke-virtual {p0}, Lcom/viber/voip/h/b;->setChanged()V

    .line 50
    if-eqz p3, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/viber/voip/h/b;->notifyObservers()V

    goto :goto_0
.end method

.method private a(ZZ)Lcom/viber/voip/h/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/viber/voip/h/b;->c:Z

    if-ne p1, v0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-object p0

    .line 65
    :cond_1
    iput-boolean p1, p0, Lcom/viber/voip/h/b;->c:Z

    .line 66
    invoke-virtual {p0}, Lcom/viber/voip/h/b;->setChanged()V

    .line 67
    if-eqz p2, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/viber/voip/h/b;->notifyObservers()V

    goto :goto_0
.end method

.method private b(ZZ)Lcom/viber/voip/h/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/viber/voip/h/b;->d:Z

    if-ne p1, v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-object p0

    .line 141
    :cond_1
    iput-boolean p1, p0, Lcom/viber/voip/h/b;->d:Z

    .line 142
    invoke-virtual {p0}, Lcom/viber/voip/h/b;->setChanged()V

    .line 143
    if-eqz p2, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/viber/voip/h/b;->notifyObservers()V

    goto :goto_0
.end method

.method public static d()Lcom/viber/voip/h/b;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/viber/voip/h/b;->l:Lcom/viber/voip/h/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 2
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/viber/voip/h/b;->k:Lcom/viber/voip/h/e;

    iget-object v1, p0, Lcom/viber/voip/h/b;->k:Lcom/viber/voip/h/e;

    invoke-virtual {v1, p1}, Lcom/viber/voip/h/e;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/h/e;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public a(I)J
    .locals 7
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/h/b;->j:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 115
    iget-object v0, p0, Lcom/viber/voip/h/b;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroid/support/v4/util/SparseArrayCompat;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    return-wide v0
.end method

.method public a(J)J
    .locals 2
    .parameter

    .prologue
    .line 119
    const-wide/16 v0, 0x7148

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide/16 p1, 0x7530

    :cond_0
    return-wide p1
.end method

.method public a(ZLcom/viber/voip/h/d;Z)Lcom/viber/voip/h/b;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x4

    const-string/jumbo v1, "PttState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRecordingReady ready="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " recordingState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-boolean v0, p0, Lcom/viber/voip/h/b;->e:Z

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Lcom/viber/voip/h/d;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/viber/voip/h/b;->f:Lcom/viber/voip/h/d;

    invoke-virtual {v2}, Lcom/viber/voip/h/d;->a()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/viber/voip/h/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/viber/voip/h/d;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/h/b;->f:Lcom/viber/voip/h/d;

    invoke-virtual {v1}, Lcom/viber/voip/h/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-object p0

    .line 96
    :cond_1
    iput-boolean p1, p0, Lcom/viber/voip/h/b;->e:Z

    .line 97
    iput-object p2, p0, Lcom/viber/voip/h/b;->f:Lcom/viber/voip/h/d;

    .line 98
    invoke-virtual {p0}, Lcom/viber/voip/h/b;->setChanged()V

    .line 99
    if-eqz p3, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/viber/voip/h/b;->notifyObservers()V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/viber/voip/h/b;->b:Z

    .line 83
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/viber/voip/h/b;->c:Z

    return v0
.end method

.method public b(I)Lcom/viber/voip/h/d;
    .locals 1
    .parameter

    .prologue
    .line 133
    iget-object v0, p0, Lcom/viber/voip/h/b;->h:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/h/d;

    return-object v0
.end method

.method public b()Z
    .locals 4

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/viber/voip/h/b;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/h/b;->f:Lcom/viber/voip/h/d;

    invoke-virtual {v0}, Lcom/viber/voip/h/d;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/h/b;->f:Lcom/viber/voip/h/d;

    invoke-virtual {v0}, Lcom/viber/voip/h/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/viber/voip/h/b;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/viber/voip/h/b;->f:Lcom/viber/voip/h/d;

    invoke-virtual {v0}, Lcom/viber/voip/h/d;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public notifyObservers()V
    .locals 1

    .prologue
    .line 156
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onPttBufferingStarted(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 183
    invoke-direct {p0, v0, v0}, Lcom/viber/voip/h/b;->b(ZZ)Lcom/viber/voip/h/b;

    .line 184
    return-void
.end method

.method public onPttBufferingStopped(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 188
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/h/b;->b(ZZ)Lcom/viber/voip/h/b;

    .line 189
    return-void
.end method

.method public onPttFirstChunkUploaded(Ljava/lang/String;JII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    return-void
.end method

.method public onPttPlayStopped(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 178
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/h/b;->a(Ljava/lang/String;ZZ)Lcom/viber/voip/h/b;

    .line 179
    return-void
.end method

.method public onPttRecordStopped(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 218
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/h/b;->a(ZZ)Lcom/viber/voip/h/b;

    .line 219
    return-void
.end method

.method public onPttUploaded(Ljava/lang/String;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/viber/voip/h/b;->a(Ljava/lang/String;)I

    move-result v0

    .line 239
    iget-object v1, p0, Lcom/viber/voip/h/b;->h:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 240
    iget-object v1, p0, Lcom/viber/voip/h/b;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 241
    iget-object v1, p0, Lcom/viber/voip/h/b;->k:Lcom/viber/voip/h/e;

    invoke-virtual {v1, v0}, Lcom/viber/voip/h/e;->remove(I)V

    .line 242
    iget-object v1, p0, Lcom/viber/voip/h/b;->j:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/SparseArrayCompat;->remove(I)V

    .line 243
    return-void
.end method

.method public onStartPlayPttReply(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 164
    sget v0, Lcom/viber/jni/ptt/PttController$EPttPlayStatus;->PLAY_OK:I

    if-ne v0, p2, :cond_0

    .line 165
    invoke-direct {p0, p1, v1, v1}, Lcom/viber/voip/h/b;->a(Ljava/lang/String;ZZ)Lcom/viber/voip/h/b;

    .line 167
    :cond_0
    return-void
.end method

.method public onStartPttIndicator()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method public onStartRecordPttReply(ILjava/lang/String;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 196
    sget v0, Lcom/viber/jni/ptt/PttController$EPttRecordStatus;->RECORD_OK:I

    if-ne v0, p3, :cond_0

    .line 197
    invoke-direct {p0, v1, v1}, Lcom/viber/voip/h/b;->a(ZZ)Lcom/viber/voip/h/b;

    .line 202
    iget-object v0, p0, Lcom/viber/voip/h/b;->h:Landroid/support/v4/util/SparseArrayCompat;

    iget-object v1, p0, Lcom/viber/voip/h/b;->f:Lcom/viber/voip/h/d;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/viber/voip/h/b;->i:Landroid/support/v4/util/SparseArrayCompat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/viber/voip/h/b;->k:Lcom/viber/voip/h/e;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/h/e;->put(ILjava/lang/Object;)V

    .line 206
    :cond_0
    return-void
.end method

.method public onStopPlayPttReply(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 171
    sget v0, Lcom/viber/jni/ptt/PttController$EPttStopStatus;->STOP_FAILED:I

    if-eq v0, p2, :cond_0

    .line 172
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/h/b;->a(Ljava/lang/String;ZZ)Lcom/viber/voip/h/b;

    .line 174
    :cond_0
    return-void
.end method

.method public onStopPttIndicator()V
    .locals 0

    .prologue
    .line 229
    return-void
.end method

.method public onStopRecordPttReply(Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 210
    sget v0, Lcom/viber/jni/ptt/PttController$EPttRecordStopStatus;->RECORD_STOP_FAILED:I

    if-eq v0, p2, :cond_0

    .line 211
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/h/b;->a(ZZ)Lcom/viber/voip/h/b;

    .line 212
    iget-object v0, p0, Lcom/viber/voip/h/b;->j:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {p0, p1}, Lcom/viber/voip/h/b;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 214
    :cond_0
    return-void
.end method
