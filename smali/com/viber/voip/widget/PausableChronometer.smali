.class public Lcom/viber/voip/widget/PausableChronometer;
.super Landroid/widget/Chronometer;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Formatter;

.field private g:Ljava/util/Locale;

.field private h:[Ljava/lang/Object;

.field private i:Ljava/lang/StringBuilder;

.field private j:Ljava/lang/Long;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/widget/PausableChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/widget/PausableChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Chronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/viber/voip/widget/PausableChronometer;->h:[Ljava/lang/Object;

    .line 197
    new-instance v0, Lcom/viber/voip/widget/m;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/m;-><init>(Lcom/viber/voip/widget/PausableChronometer;)V

    iput-object v0, p0, Lcom/viber/voip/widget/PausableChronometer;->k:Landroid/os/Handler;

    .line 60
    const v0, 0x7f0c035d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/PausableChronometer;->setFormat(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/viber/voip/widget/PausableChronometer;->a()V

    .line 62
    return-void
.end method

.method private declared-synchronized a(J)V
    .locals 4
    .parameter

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/widget/PausableChronometer;->getBase()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 162
    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 163
    invoke-static {v0, v1}, Lcom/viber/voip/util/ak;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/viber/voip/widget/PausableChronometer;->e:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 166
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 167
    iget-object v2, p0, Lcom/viber/voip/widget/PausableChronometer;->f:Ljava/util/Formatter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/widget/PausableChronometer;->g:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    :cond_0
    iput-object v1, p0, Lcom/viber/voip/widget/PausableChronometer;->g:Ljava/util/Locale;

    .line 169
    new-instance v2, Ljava/util/Formatter;

    iget-object v3, p0, Lcom/viber/voip/widget/PausableChronometer;->i:Ljava/lang/StringBuilder;

    invoke-direct {v2, v3, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Lcom/viber/voip/widget/PausableChronometer;->f:Ljava/util/Formatter;

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/widget/PausableChronometer;->i:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 172
    iget-object v1, p0, Lcom/viber/voip/widget/PausableChronometer;->h:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :try_start_1
    iget-object v1, p0, Lcom/viber/voip/widget/PausableChronometer;->f:Ljava/util/Formatter;

    iget-object v2, p0, Lcom/viber/voip/widget/PausableChronometer;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/widget/PausableChronometer;->h:[Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 175
    iget-object v1, p0, Lcom/viber/voip/widget/PausableChronometer;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 180
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/PausableChronometer;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 176
    :catch_0
    move-exception v1

    .line 177
    :try_start_3
    const-string/jumbo v1, "PausableChronometer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Illegal format string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/widget/PausableChronometer;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/viber/voip/widget/PausableChronometer;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/PausableChronometer;->a(J)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/widget/PausableChronometer;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/viber/voip/widget/PausableChronometer;->d:Z

    return v0
.end method

.method private e()V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 184
    iget-boolean v0, p0, Lcom/viber/voip/widget/PausableChronometer;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/viber/voip/widget/PausableChronometer;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 185
    :goto_0
    iget-boolean v1, p0, Lcom/viber/voip/widget/PausableChronometer;->d:Z

    if-eq v0, v1, :cond_0

    .line 186
    if-eqz v0, :cond_2

    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/viber/voip/widget/PausableChronometer;->a(J)V

    .line 188
    invoke-virtual {p0}, Lcom/viber/voip/widget/PausableChronometer;->d()V

    .line 189
    iget-object v1, p0, Lcom/viber/voip/widget/PausableChronometer;->k:Landroid/os/Handler;

    iget-object v2, p0, Lcom/viber/voip/widget/PausableChronometer;->k:Landroid/os/Handler;

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 193
    :goto_1
    iput-boolean v0, p0, Lcom/viber/voip/widget/PausableChronometer;->d:Z

    .line 195
    :cond_0
    return-void

    .line 184
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/widget/PausableChronometer;->k:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/widget/PausableChronometer;->a:J

    .line 66
    iget-wide v0, p0, Lcom/viber/voip/widget/PausableChronometer;->a:J

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/widget/PausableChronometer;->a(J)V

    .line 67
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/viber/voip/widget/PausableChronometer;->j:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/viber/voip/widget/PausableChronometer;->getBase()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/PausableChronometer;->j:Ljava/lang/Long;

    .line 72
    invoke-virtual {p0}, Lcom/viber/voip/widget/PausableChronometer;->stop()V

    .line 74
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/viber/voip/widget/PausableChronometer;->j:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/viber/voip/widget/PausableChronometer;->start()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/widget/PausableChronometer;->j:Ljava/lang/Long;

    .line 83
    :cond_0
    return-void
.end method

.method d()V
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/viber/voip/widget/PausableChronometer;->getOnChronometerTickListener()Landroid/widget/Chronometer$OnChronometerTickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/viber/voip/widget/PausableChronometer;->getOnChronometerTickListener()Landroid/widget/Chronometer$OnChronometerTickListener;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/widget/Chronometer$OnChronometerTickListener;->onChronometerTick(Landroid/widget/Chronometer;)V

    .line 217
    :cond_0
    return-void
.end method

.method public getBase()J
    .locals 2

    .prologue
    .line 211
    iget-wide v0, p0, Lcom/viber/voip/widget/PausableChronometer;->a:J

    return-wide v0
.end method

.method public getTime()J
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/viber/voip/widget/PausableChronometer;->getBase()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/widget/Chronometer;->onDetachedFromWindow()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/widget/PausableChronometer;->b:Z

    .line 145
    invoke-direct {p0}, Lcom/viber/voip/widget/PausableChronometer;->e()V

    .line 146
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/widget/Chronometer;->onWindowVisibilityChanged(I)V

    .line 151
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/widget/PausableChronometer;->b:Z

    .line 152
    invoke-direct {p0}, Lcom/viber/voip/widget/PausableChronometer;->e()V

    .line 153
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBase(J)V
    .locals 2
    .parameter

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/viber/voip/widget/PausableChronometer;->a:J

    .line 103
    invoke-virtual {p0}, Lcom/viber/voip/widget/PausableChronometer;->d()V

    .line 104
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/widget/PausableChronometer;->a(J)V

    .line 105
    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/viber/voip/widget/PausableChronometer;->e:Ljava/lang/String;

    .line 91
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/widget/PausableChronometer;->i:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/widget/PausableChronometer;->i:Ljava/lang/StringBuilder;

    .line 94
    :cond_0
    return-void
.end method

.method public setStarted(Z)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/viber/voip/widget/PausableChronometer;->c:Z

    .line 138
    invoke-direct {p0}, Lcom/viber/voip/widget/PausableChronometer;->e()V

    .line 139
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/widget/PausableChronometer;->c:Z

    .line 117
    invoke-direct {p0}, Lcom/viber/voip/widget/PausableChronometer;->e()V

    .line 118
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/widget/PausableChronometer;->c:Z

    .line 129
    invoke-direct {p0}, Lcom/viber/voip/widget/PausableChronometer;->e()V

    .line 130
    return-void
.end method
