.class public abstract Lcom/viber/voip/sound/ToneGeneratorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static _monitor:Ljava/lang/Object;

.field private static dtmfGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

.field private static soundService:Lcom/viber/voip/sound/AbstractSoundService;

.field private static toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

.field private static tonegenSharedPlayHandler:Landroid/os/Handler;

.field private static tonegenSharedPlayHandlerThread:Landroid/os/HandlerThread;

.field private static tonesMap:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/viber/voip/sound/ToneGeneratorFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->$assertionsDisabled:Z

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->_monitor:Ljava/lang/Object;

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    return-void

    .line 17
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convert(I)Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;
    .locals 1
    .parameter

    .prologue
    .line 109
    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;->BUSY_TONE:Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    .line 114
    :goto_0
    return-object v0

    .line 110
    :cond_0
    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;->RINGBACK_TONE:Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x3

    if-ne v0, p0, :cond_2

    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;->HANGUP_TONE:Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    goto :goto_0

    .line 112
    :cond_2
    const/4 v0, 0x4

    if-ne v0, p0, :cond_3

    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;->HOLD_TONE:Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    goto :goto_0

    .line 113
    :cond_3
    const/4 v0, 0x5

    if-ne v0, p0, :cond_4

    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;->DATA_INTERRUPTION_TONE:Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    goto :goto_0

    .line 114
    :cond_4
    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;->NO_TONE:Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    goto :goto_0
.end method

.method public static ensureStopCommonTone(Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;)V
    .locals 2
    .parameter

    .prologue
    .line 138
    sget-object v1, Lcom/viber/voip/sound/ToneGeneratorFactory;->_monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 139
    :try_start_0
    invoke-static {p0}, Lcom/viber/voip/sound/ToneGeneratorFactory;->getTonePlayer(Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;)Lcom/viber/voip/sound/tonegen/TonePlayer;

    move-result-object v0

    .line 140
    if-nez v0, :cond_0

    monitor-exit v1

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->stop()V

    .line 142
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized getDTMFToneId(I)I
    .locals 2
    .parameter

    .prologue
    .line 158
    const-class v1, Lcom/viber/voip/sound/ToneGeneratorFactory;

    monitor-enter v1

    packed-switch p0, :pswitch_data_0

    .line 171
    const/4 v0, 0x0

    .line 174
    :goto_0
    monitor-exit v1

    return v0

    .line 159
    :pswitch_0
    const v0, 0x7f060004

    goto :goto_0

    .line 160
    :pswitch_1
    const v0, 0x7f060005

    goto :goto_0

    .line 161
    :pswitch_2
    const v0, 0x7f060006

    goto :goto_0

    .line 162
    :pswitch_3
    const v0, 0x7f060007

    goto :goto_0

    .line 163
    :pswitch_4
    const v0, 0x7f060008

    goto :goto_0

    .line 164
    :pswitch_5
    const v0, 0x7f060009

    goto :goto_0

    .line 165
    :pswitch_6
    const v0, 0x7f06000a

    goto :goto_0

    .line 166
    :pswitch_7
    const v0, 0x7f06000b

    goto :goto_0

    .line 167
    :pswitch_8
    const v0, 0x7f06000c

    goto :goto_0

    .line 168
    :pswitch_9
    const v0, 0x7f06000d

    goto :goto_0

    .line 169
    :pswitch_a
    const v0, 0x7f060001

    goto :goto_0

    .line 170
    :pswitch_b
    const v0, 0x7f060014

    goto :goto_0

    .line 158
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static getTonePlayer(Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;)Lcom/viber/voip/sound/tonegen/TonePlayer;
    .locals 6
    .parameter

    .prologue
    .line 126
    sget-object v2, Lcom/viber/voip/sound/ToneGeneratorFactory;->_monitor:Ljava/lang/Object;

    monitor-enter v2

    .line 127
    :try_start_0
    sget-object v3, Lcom/viber/voip/sound/ToneGeneratorFactory;->tonesMap:[Ljava/lang/Object;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 129
    check-cast v0, Landroid/util/Pair;

    .line 130
    if-nez v0, :cond_1

    .line 127
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 131
    :cond_1
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-ne p0, v5, :cond_0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/viber/voip/sound/tonegen/TonePlayer;

    monitor-exit v2

    .line 134
    :goto_1
    return-object v0

    .line 133
    :cond_2
    monitor-exit v2

    .line 134
    const/4 v0, 0x0

    goto :goto_1

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static init(Lcom/viber/voip/sound/AbstractSoundService;)V
    .locals 14
    .parameter

    .prologue
    .line 178
    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    if-eqz v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 182
    :cond_0
    sput-object p0, Lcom/viber/voip/sound/ToneGeneratorFactory;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    .line 184
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "tonePlayer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->tonegenSharedPlayHandlerThread:Landroid/os/HandlerThread;

    .line 185
    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->tonegenSharedPlayHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 186
    new-instance v0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;

    sget-object v1, Lcom/viber/voip/sound/ToneGeneratorFactory;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    sget-object v2, Lcom/viber/voip/sound/ToneGeneratorFactory;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v2}, Lcom/viber/voip/sound/AbstractSoundService;->mode_Dtmf()I

    move-result v2

    sget-object v3, Lcom/viber/voip/sound/ToneGeneratorFactory;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    invoke-virtual {v3}, Lcom/viber/voip/sound/AbstractSoundService;->stream_Dtmf()I

    move-result v3

    const v4, 0x3dcccccd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;-><init>(Lcom/viber/voip/sound/ISoundService;IIF)V

    sput-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->dtmfGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    .line 191
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/viber/voip/sound/ToneGeneratorFactory;->tonegenSharedPlayHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->tonegenSharedPlayHandler:Landroid/os/Handler;

    .line 193
    sget-object v6, Lcom/viber/voip/sound/ToneGeneratorFactory;->_monitor:Ljava/lang/Object;

    monitor-enter v6

    .line 194
    const/4 v0, 0x6

    :try_start_0
    new-array v7, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;->NO_TONE:Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v7, v0

    const/4 v0, 0x1

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;->BUSY_TONE:Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    new-instance v3, Lcom/viber/voip/sound/tonegen/TonePlayer;

    sget-object v4, Lcom/viber/voip/sound/ToneGeneratorFactory;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    sget-object v5, Lcom/viber/voip/sound/ToneGeneratorFactory;->tonegenSharedPlayHandler:Landroid/os/Handler;

    new-instance v8, Lcom/viber/voip/sound/tonegen/ToneRule;

    const-string/jumbo v9, "BUSY"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x7f060002

    aput v12, v10, v11

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/16 v13, 0x320

    aput v13, v11, v12

    const/4 v12, -0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/viber/voip/sound/tonegen/ToneRule;-><init>(Ljava/lang/String;[I[II)V

    new-instance v9, Lcom/viber/voip/sound/ToneGeneratorFactory$1;

    invoke-direct {v9}, Lcom/viber/voip/sound/ToneGeneratorFactory$1;-><init>()V

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/viber/voip/sound/tonegen/TonePlayer;-><init>(Lcom/viber/voip/sound/AbstractSoundService;Landroid/os/Handler;Lcom/viber/voip/sound/tonegen/ToneRule;Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;)V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v7, v0

    const/4 v0, 0x2

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;->RINGBACK_TONE:Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    new-instance v3, Lcom/viber/voip/sound/tonegen/TonePlayer;

    sget-object v4, Lcom/viber/voip/sound/ToneGeneratorFactory;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    sget-object v5, Lcom/viber/voip/sound/ToneGeneratorFactory;->tonegenSharedPlayHandler:Landroid/os/Handler;

    new-instance v8, Lcom/viber/voip/sound/tonegen/ToneRule;

    const-string/jumbo v9, "RINGBACK"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x7f060018

    aput v12, v10, v11

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/16 v13, 0xbb8

    aput v13, v11, v12

    const/4 v12, -0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/viber/voip/sound/tonegen/ToneRule;-><init>(Ljava/lang/String;[I[II)V

    new-instance v9, Lcom/viber/voip/sound/ToneGeneratorFactory$2;

    invoke-direct {v9}, Lcom/viber/voip/sound/ToneGeneratorFactory$2;-><init>()V

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/viber/voip/sound/tonegen/TonePlayer;-><init>(Lcom/viber/voip/sound/AbstractSoundService;Landroid/os/Handler;Lcom/viber/voip/sound/tonegen/ToneRule;Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;)V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v7, v0

    const/4 v8, 0x3

    new-instance v9, Landroid/util/Pair;

    sget-object v10, Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;->HANGUP_TONE:Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    new-instance v11, Lcom/viber/voip/sound/tonegen/TonePlayer;

    sget-object v12, Lcom/viber/voip/sound/ToneGeneratorFactory;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    sget-object v13, Lcom/viber/voip/sound/ToneGeneratorFactory;->tonegenSharedPlayHandler:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/sound/tonegen/ToneRule;

    const-string/jumbo v1, "HANGUP"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x7f060003

    aput v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0x5dc

    aput v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/sound/tonegen/ToneRule;-><init>(Ljava/lang/String;[I[IIZ)V

    new-instance v1, Lcom/viber/voip/sound/ToneGeneratorFactory$3;

    invoke-direct {v1}, Lcom/viber/voip/sound/ToneGeneratorFactory$3;-><init>()V

    invoke-direct {v11, v12, v13, v0, v1}, Lcom/viber/voip/sound/tonegen/TonePlayer;-><init>(Lcom/viber/voip/sound/AbstractSoundService;Landroid/os/Handler;Lcom/viber/voip/sound/tonegen/ToneRule;Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;)V

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v7, v8

    const/4 v0, 0x4

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;->HOLD_TONE:Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    new-instance v3, Lcom/viber/voip/sound/tonegen/TonePlayer;

    sget-object v4, Lcom/viber/voip/sound/ToneGeneratorFactory;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    sget-object v5, Lcom/viber/voip/sound/ToneGeneratorFactory;->tonegenSharedPlayHandler:Landroid/os/Handler;

    new-instance v8, Lcom/viber/voip/sound/tonegen/ToneRule;

    const-string/jumbo v9, "HOLD"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x7f060010

    aput v12, v10, v11

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/16 v13, 0xfa0

    aput v13, v11, v12

    const/4 v12, -0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/viber/voip/sound/tonegen/ToneRule;-><init>(Ljava/lang/String;[I[II)V

    new-instance v9, Lcom/viber/voip/sound/ToneGeneratorFactory$4;

    invoke-direct {v9}, Lcom/viber/voip/sound/ToneGeneratorFactory$4;-><init>()V

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/viber/voip/sound/tonegen/TonePlayer;-><init>(Lcom/viber/voip/sound/AbstractSoundService;Landroid/os/Handler;Lcom/viber/voip/sound/tonegen/ToneRule;Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;)V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v7, v0

    const/4 v0, 0x5

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;->DATA_INTERRUPTION_TONE:Lcom/viber/voip/sound/ToneGeneratorFactory$ToneType;

    new-instance v3, Lcom/viber/voip/sound/tonegen/TonePlayer;

    sget-object v4, Lcom/viber/voip/sound/ToneGeneratorFactory;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    sget-object v5, Lcom/viber/voip/sound/ToneGeneratorFactory;->tonegenSharedPlayHandler:Landroid/os/Handler;

    new-instance v8, Lcom/viber/voip/sound/tonegen/ToneRule;

    const-string/jumbo v9, "DATA_INTERRUPTION"

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x7f060010

    aput v12, v10, v11

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    const/16 v13, 0xfa0

    aput v13, v11, v12

    const/4 v12, -0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/viber/voip/sound/tonegen/ToneRule;-><init>(Ljava/lang/String;[I[II)V

    new-instance v9, Lcom/viber/voip/sound/ToneGeneratorFactory$5;

    invoke-direct {v9}, Lcom/viber/voip/sound/ToneGeneratorFactory$5;-><init>()V

    invoke-direct {v3, v4, v5, v8, v9}, Lcom/viber/voip/sound/tonegen/TonePlayer;-><init>(Lcom/viber/voip/sound/AbstractSoundService;Landroid/os/Handler;Lcom/viber/voip/sound/tonegen/ToneRule;Lcom/viber/voip/sound/tonegen/TonePlayer$StateChangeListener;)V

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v7, v0

    sput-object v7, Lcom/viber/voip/sound/ToneGeneratorFactory;->tonesMap:[Ljava/lang/Object;

    .line 367
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static newDTMFToneGenerator(Lcom/viber/voip/sound/CommonAbstractSoundService;)Lcom/viber/voip/sound/tonegen/IToneGenerator;
    .locals 5
    .parameter

    .prologue
    .line 62
    sget-object v1, Lcom/viber/voip/sound/ToneGeneratorFactory;->_monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 63
    if-eqz p0, :cond_0

    .line 64
    :try_start_0
    sput-object p0, Lcom/viber/voip/sound/ToneGeneratorFactory;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    .line 65
    :cond_0
    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->dtmfGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    if-eqz v0, :cond_1

    .line 66
    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->dtmfGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    invoke-interface {v0}, Lcom/viber/voip/sound/tonegen/IToneGenerator;->stopTone()V

    .line 81
    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->dtmfGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    monitor-exit v1

    :goto_0
    return-object v0

    .line 69
    :cond_1
    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->dtmfGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    if-nez v0, :cond_2

    .line 70
    new-instance v0, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->mode_Dtmf()I

    move-result v2

    invoke-virtual {p0}, Lcom/viber/voip/sound/CommonAbstractSoundService;->stream_Dtmf()I

    move-result v3

    const v4, 0x3dcccccd

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/viber/voip/sound/tonegen/DtmfToneGenerator;-><init>(Lcom/viber/voip/sound/ISoundService;IIF)V

    sput-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->dtmfGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    .line 74
    :cond_2
    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->dtmfGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    monitor-exit v1

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static newToneGenerator(Lcom/viber/voip/sound/AbstractSoundService;)Lcom/viber/voip/sound/tonegen/IToneGenerator;
    .locals 5
    .parameter

    .prologue
    .line 40
    sget-boolean v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_0
    sget-object v1, Lcom/viber/voip/sound/ToneGeneratorFactory;->_monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    if-eqz p0, :cond_1

    .line 43
    :try_start_0
    sput-object p0, Lcom/viber/voip/sound/ToneGeneratorFactory;->soundService:Lcom/viber/voip/sound/AbstractSoundService;

    .line 51
    :cond_1
    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    if-nez v0, :cond_2

    .line 52
    new-instance v0, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;

    invoke-virtual {p0}, Lcom/viber/voip/sound/AbstractSoundService;->mode_Tone()I

    move-result v2

    invoke-virtual {p0}, Lcom/viber/voip/sound/AbstractSoundService;->stream_Tone()I

    move-result v3

    const/high16 v4, 0x3f00

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/viber/voip/sound/tonegen/MediaToneGenerator;-><init>(Lcom/viber/voip/sound/ISoundService;IIF)V

    sput-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    .line 54
    :cond_2
    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->toneGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    monitor-exit v1

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static releaseDtmfGenerator()V
    .locals 2

    .prologue
    .line 94
    sget-object v1, Lcom/viber/voip/sound/ToneGeneratorFactory;->_monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->dtmfGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    if-nez v0, :cond_0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :goto_0
    return-void

    .line 97
    :cond_0
    :try_start_1
    sget-object v0, Lcom/viber/voip/sound/ToneGeneratorFactory;->dtmfGenerator:Lcom/viber/voip/sound/tonegen/IToneGenerator;

    invoke-interface {v0}, Lcom/viber/voip/sound/tonegen/IToneGenerator;->stopTone()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 101
    :catchall_1
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static releaseToneGenerator(Lcom/viber/voip/sound/tonegen/ToneGenerator;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    sget-object v1, Lcom/viber/voip/sound/ToneGeneratorFactory;->_monitor:Ljava/lang/Object;

    monitor-enter v1

    .line 87
    if-nez p0, :cond_0

    :try_start_0
    monitor-exit v1

    .line 91
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/sound/tonegen/ToneGenerator;->stopTone()V

    .line 90
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static stopCommonTones()V
    .locals 6

    .prologue
    .line 146
    sget-object v2, Lcom/viber/voip/sound/ToneGeneratorFactory;->_monitor:Ljava/lang/Object;

    monitor-enter v2

    .line 147
    :try_start_0
    sget-object v3, Lcom/viber/voip/sound/ToneGeneratorFactory;->tonesMap:[Ljava/lang/Object;

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v0, v3, v1

    .line 149
    check-cast v0, Landroid/util/Pair;

    .line 150
    if-eqz v0, :cond_0

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v5, :cond_1

    .line 147
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 151
    :cond_1
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/viber/voip/sound/tonegen/TonePlayer;

    invoke-virtual {v0}, Lcom/viber/voip/sound/tonegen/TonePlayer;->stop()V

    goto :goto_1

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    return-void
.end method
