.class public Lcom/viber/jni/ptt/MockPttController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/ptt/PttController;


# instance fields
.field private mCommonTimer:Ljava/util/Timer;

.field private mDuration:J

.field private mListener:Lcom/viber/jni/PhoneControllerListener;

.field private mPttDownloading:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPttDuration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPttPlaingId:Ljava/lang/String;

.field private mPttPlayerTimer:Ljava/util/TimerTask;

.field private mRandom:Ljava/util/Random;


# direct methods
.method public constructor <init>(Lcom/viber/jni/PhoneControllerListener;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/viber/jni/ptt/MockPttController;->mDuration:J

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mPttPlaingId:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mPttDuration:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mPttDownloading:Ljava/util/Set;

    .line 25
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mRandom:Ljava/util/Random;

    .line 27
    new-instance v0, Ljava/util/Timer;

    const-string/jumbo v1, "MockPttTimer"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mCommonTimer:Ljava/util/Timer;

    .line 30
    iput-object p1, p0, Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;

    .line 31
    return-void
.end method

.method static synthetic access$000(Lcom/viber/jni/ptt/MockPttController;)Lcom/viber/jni/PhoneControllerListener;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/viber/jni/ptt/MockPttController;)J
    .locals 2
    .parameter

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/viber/jni/ptt/MockPttController;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/viber/jni/ptt/MockPttController;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mCommonTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/viber/jni/ptt/MockPttController;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mPttDuration:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/viber/jni/ptt/MockPttController;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 14
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mPttDownloading:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/viber/jni/ptt/MockPttController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/viber/jni/ptt/MockPttController;->stopPlayer(I)V

    return-void
.end method

.method private stopPlayer(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 173
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mPttPlayerTimer:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mPttPlayerTimer:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 175
    iput-object v5, p0, Lcom/viber/jni/ptt/MockPttController;->mPttPlayerTimer:Ljava/util/TimerTask;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mPttPlaingId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mPttPlaingId:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/viber/jni/ptt/MockPttController;->mCommonTimer:Ljava/util/Timer;

    new-instance v2, Lcom/viber/jni/ptt/MockPttController$8;

    invoke-direct {v2, p0, v0, p1}, Lcom/viber/jni/ptt/MockPttController$8;-><init>(Lcom/viber/jni/ptt/MockPttController;Ljava/lang/String;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 192
    :cond_1
    iput-object v5, p0, Lcom/viber/jni/ptt/MockPttController;->mPttPlaingId:Ljava/lang/String;

    .line 193
    return-void
.end method


# virtual methods
.method public handleDeletePtt(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 203
    const/4 v0, -0x1

    return v0
.end method

.method public handleDownloadPtt(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mListener:Lcom/viber/jni/PhoneControllerListener;

    sget v1, Lcom/viber/jni/ptt/PttController$EPttDownloadStatus;->DOWNLOAD_OK:I

    invoke-virtual {v0, p1, p1, v1}, Lcom/viber/jni/PhoneControllerListener;->onDownloadPtt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    const-string/jumbo v0, "_incom"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/viber/jni/ptt/MockPttController;->mPttDuration:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/viber/jni/ptt/MockPttController;->mPttDownloading:Ljava/util/Set;

    monitor-enter v1

    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/viber/jni/ptt/MockPttController;->mPttDownloading:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    monitor-exit v1

    .line 145
    :goto_0
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/viber/jni/ptt/MockPttController;->mCommonTimer:Ljava/util/Timer;

    new-instance v2, Lcom/viber/jni/ptt/MockPttController$5;

    invoke-direct {v2, p0, v0, p1}, Lcom/viber/jni/ptt/MockPttController$5;-><init>(Lcom/viber/jni/ptt/MockPttController;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public handleRestorePttDuration(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mPttDuration:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public handleSendPtt(Ljava/lang/String;IJILcom/viber/jni/LocationInfo;ZILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    iget-object v7, p0, Lcom/viber/jni/ptt/MockPttController;->mCommonTimer:Ljava/util/Timer;

    new-instance v0, Lcom/viber/jni/ptt/MockPttController$3;

    move-object v1, p0

    move v2, p2

    move-object v3, p1

    move-object v4, p6

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/viber/jni/ptt/MockPttController$3;-><init>(Lcom/viber/jni/ptt/MockPttController;ILjava/lang/String;Lcom/viber/jni/LocationInfo;J)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {v7, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public handleSendPttToGroup(JIJILcom/viber/jni/LocationInfo;ZILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v8, p0, Lcom/viber/jni/ptt/MockPttController;->mCommonTimer:Ljava/util/Timer;

    new-instance v0, Lcom/viber/jni/ptt/MockPttController$4;

    move-object v1, p0

    move v2, p3

    move-wide v3, p1

    move-object/from16 v5, p7

    move-wide v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/viber/jni/ptt/MockPttController$4;-><init>(Lcom/viber/jni/ptt/MockPttController;IJLcom/viber/jni/LocationInfo;J)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {v8, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public handleStartPlayPtt(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 150
    sget v0, Lcom/viber/jni/ptt/PttController$EPttStopReason;->STOP_REASON_NEXT_TRACK:I

    invoke-direct {p0, v0}, Lcom/viber/jni/ptt/MockPttController;->stopPlayer(I)V

    .line 152
    iput-object p1, p0, Lcom/viber/jni/ptt/MockPttController;->mPttPlaingId:Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mCommonTimer:Ljava/util/Timer;

    new-instance v1, Lcom/viber/jni/ptt/MockPttController$6;

    invoke-direct {v1, p0, p1}, Lcom/viber/jni/ptt/MockPttController$6;-><init>(Lcom/viber/jni/ptt/MockPttController;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 161
    new-instance v0, Lcom/viber/jni/ptt/MockPttController$7;

    invoke-direct {v0, p0}, Lcom/viber/jni/ptt/MockPttController$7;-><init>(Lcom/viber/jni/ptt/MockPttController;)V

    iput-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mPttPlayerTimer:Ljava/util/TimerTask;

    .line 169
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mCommonTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/viber/jni/ptt/MockPttController;->mPttPlayerTimer:Ljava/util/TimerTask;

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 170
    return-void
.end method

.method public handleStartRecordPtt(I)V
    .locals 4
    .parameter

    .prologue
    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/jni/ptt/MockPttController;->mDuration:J

    .line 37
    sget v0, Lcom/viber/jni/ptt/PttController$EPttStopReason;->STOP_REASON_RECORDING:I

    invoke-direct {p0, v0}, Lcom/viber/jni/ptt/MockPttController;->stopPlayer(I)V

    .line 39
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mCommonTimer:Ljava/util/Timer;

    new-instance v1, Lcom/viber/jni/ptt/MockPttController$1;

    invoke-direct {v1, p0, p1}, Lcom/viber/jni/ptt/MockPttController$1;-><init>(Lcom/viber/jni/ptt/MockPttController;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 56
    return-void
.end method

.method public handleStopPlayPtt(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 197
    sget v0, Lcom/viber/jni/ptt/PttController$EPttStopReason;->STOP_REASON_TRACK_ENDED:I

    invoke-direct {p0, v0}, Lcom/viber/jni/ptt/MockPttController;->stopPlayer(I)V

    .line 198
    return-void
.end method

.method public handleStopRecordPtt(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/viber/jni/ptt/MockPttController;->mDuration:J

    sub-long/2addr v0, v2

    .line 61
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/viber/jni/ptt/MockPttController;->mDuration:J

    .line 63
    iget-object v2, p0, Lcom/viber/jni/ptt/MockPttController;->mPttDuration:Ljava/util/Map;

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Lcom/viber/jni/ptt/MockPttController;->mCommonTimer:Ljava/util/Timer;

    new-instance v1, Lcom/viber/jni/ptt/MockPttController$2;

    invoke-direct {v1, p0, p1}, Lcom/viber/jni/ptt/MockPttController$2;-><init>(Lcom/viber/jni/ptt/MockPttController;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 81
    return-void
.end method
