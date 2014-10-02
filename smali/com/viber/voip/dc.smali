.class public Lcom/viber/voip/dc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Lcom/viber/voip/di;

.field private static final b:[Landroid/os/Handler;

.field private static c:Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;

.field private static d:Lcom/viber/jni/ptt/PttRecorderListener;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 111
    const/16 v0, 0xb

    new-array v8, v0, [Lcom/viber/voip/di;

    const/4 v0, 0x0

    new-instance v1, Lcom/viber/voip/di;

    sget-object v2, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    const/16 v3, 0xa

    const-string/jumbo v4, "ThreadManager::UIHandler"

    invoke-direct {v1, v2, v3, v4}, Lcom/viber/voip/di;-><init>(Lcom/viber/voip/dk;ILjava/lang/String;)V

    aput-object v1, v8, v0

    const/4 v9, 0x1

    new-instance v0, Lcom/viber/voip/di;

    sget-object v1, Lcom/viber/voip/dk;->b:Lcom/viber/voip/dk;

    const/4 v2, 0x5

    const/4 v3, -0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "ThreadManager::serviceDispatcherHandler"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/di;-><init>(Lcom/viber/voip/dk;IIILjava/lang/String;ZZ)V

    aput-object v0, v8, v9

    const/4 v9, 0x2

    new-instance v0, Lcom/viber/voip/di;

    sget-object v1, Lcom/viber/voip/dk;->c:Lcom/viber/voip/dk;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/16 v4, 0xa

    const-string/jumbo v5, "ThreadManager::contactsHandler"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/di;-><init>(Lcom/viber/voip/dk;IIILjava/lang/String;ZZ)V

    aput-object v0, v8, v9

    const/4 v9, 0x3

    new-instance v0, Lcom/viber/voip/di;

    sget-object v1, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/16 v4, 0xa

    const-string/jumbo v5, "ThreadManager::messagesHandler"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/di;-><init>(Lcom/viber/voip/dk;IIILjava/lang/String;ZZ)V

    aput-object v0, v8, v9

    const/4 v9, 0x4

    new-instance v0, Lcom/viber/voip/di;

    sget-object v1, Lcom/viber/voip/dk;->e:Lcom/viber/voip/dk;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/16 v4, 0xa

    const-string/jumbo v5, "ThreadManager::sendHandler"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/di;-><init>(Lcom/viber/voip/dk;IIILjava/lang/String;ZZ)V

    aput-object v0, v8, v9

    const/4 v9, 0x5

    new-instance v0, Lcom/viber/voip/di;

    sget-object v1, Lcom/viber/voip/dk;->f:Lcom/viber/voip/dk;

    const/4 v2, 0x5

    const/16 v3, 0x13

    const/16 v4, 0xa

    const-string/jumbo v5, "ThreadManager::inCallTasksHandler"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/di;-><init>(Lcom/viber/voip/dk;IIILjava/lang/String;ZZ)V

    aput-object v0, v8, v9

    const/4 v9, 0x6

    new-instance v0, Lcom/viber/voip/di;

    sget-object v1, Lcom/viber/voip/dk;->g:Lcom/viber/voip/dk;

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/16 v4, 0x13

    const-string/jumbo v5, "ThreadManager::idleTasksHandler"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/di;-><init>(Lcom/viber/voip/dk;IIILjava/lang/String;ZZ)V

    aput-object v0, v8, v9

    const/4 v9, 0x7

    new-instance v0, Lcom/viber/voip/di;

    sget-object v1, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    const/4 v2, 0x1

    const/16 v3, 0x13

    const/16 v4, 0x13

    const-string/jumbo v5, "ThreadManager::lowPriorityHandler"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/di;-><init>(Lcom/viber/voip/dk;IIILjava/lang/String;ZZ)V

    aput-object v0, v8, v9

    const/16 v9, 0x8

    new-instance v0, Lcom/viber/voip/di;

    sget-object v1, Lcom/viber/voip/dk;->i:Lcom/viber/voip/dk;

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/16 v4, 0xa

    const-string/jumbo v5, "ThreadManager::AsyncQueryWorker"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/di;-><init>(Lcom/viber/voip/dk;IIILjava/lang/String;ZZ)V

    aput-object v0, v8, v9

    const/16 v9, 0x9

    new-instance v0, Lcom/viber/voip/di;

    sget-object v1, Lcom/viber/voip/dk;->j:Lcom/viber/voip/dk;

    const/4 v2, 0x5

    const/16 v3, 0xa

    const/16 v4, 0x13

    const-string/jumbo v5, "ThreadManager::longTaskHandler"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/di;-><init>(Lcom/viber/voip/dk;IIILjava/lang/String;ZZ)V

    aput-object v0, v8, v9

    const/16 v9, 0xa

    new-instance v0, Lcom/viber/voip/di;

    sget-object v1, Lcom/viber/voip/dk;->k:Lcom/viber/voip/dk;

    const/4 v2, 0x5

    const/16 v3, 0xa

    const/16 v4, 0x13

    const-string/jumbo v5, "ThreadManager::backgroundsTaskHandler"

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/di;-><init>(Lcom/viber/voip/dk;IIILjava/lang/String;ZZ)V

    aput-object v0, v8, v9

    sput-object v8, Lcom/viber/voip/dc;->a:[Lcom/viber/voip/di;

    .line 126
    sget-object v0, Lcom/viber/voip/dc;->a:[Lcom/viber/voip/di;

    array-length v0, v0

    new-array v0, v0, [Landroid/os/Handler;

    sput-object v0, Lcom/viber/voip/dc;->b:[Landroid/os/Handler;

    .line 129
    sget-object v1, Lcom/viber/voip/dc;->a:[Lcom/viber/voip/di;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 130
    sget-object v4, Lcom/viber/voip/dc;->b:[Landroid/os/Handler;

    iget-object v5, v3, Lcom/viber/voip/di;->a:Lcom/viber/voip/dk;

    invoke-virtual {v5}, Lcom/viber/voip/dk;->ordinal()I

    move-result v5

    iget-object v3, v3, Lcom/viber/voip/di;->a:Lcom/viber/voip/dk;

    invoke-static {v3}, Lcom/viber/voip/dc;->b(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v3

    aput-object v3, v4, v5

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Lcom/viber/voip/dd;

    invoke-direct {v0}, Lcom/viber/voip/dd;-><init>()V

    sput-object v0, Lcom/viber/voip/dc;->c:Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;

    .line 151
    new-instance v0, Lcom/viber/voip/de;

    invoke-direct {v0}, Lcom/viber/voip/de;-><init>()V

    sput-object v0, Lcom/viber/voip/dc;->d:Lcom/viber/jni/ptt/PttRecorderListener;

    return-void
.end method

.method public static a(Lcom/viber/voip/dk;)Landroid/os/Handler;
    .locals 2
    .parameter

    .prologue
    .line 267
    :try_start_0
    sget-object v0, Lcom/viber/voip/dc;->b:[Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/viber/voip/dk;->ordinal()I

    move-result v1

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :goto_0
    return-object v0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string/jumbo v1, "invalid handler type"

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/viber/voip/dc;->b:[Landroid/os/Handler;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 328
    sget-object v1, Lcom/viber/voip/dc;->b:[Landroid/os/Handler;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/viber/voip/dc;->b:[Landroid/os/Handler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/dc;->b:[Landroid/os/Handler;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 331
    sget-object v1, Lcom/viber/voip/dc;->b:[Landroid/os/Handler;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 332
    sget-object v1, Lcom/viber/voip/dc;->b:[Landroid/os/Handler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 333
    sget-object v1, Lcom/viber/voip/dc;->b:[Landroid/os/Handler;

    aput-object v3, v1, v0

    .line 327
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_1
    return-void
.end method

.method public static a(Lcom/viber/voip/ViberApplication;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/viber/voip/dh;->b:Lcom/viber/voip/dh;

    invoke-static {v0}, Lcom/viber/voip/dc;->b(Lcom/viber/voip/dh;)V

    .line 173
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/util/b/w;->a(Z)V

    .line 175
    :cond_0
    invoke-virtual {p0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerPhoneStateListener()Lcom/viber/jni/dialer/DialerPhoneStateListener;

    move-result-object v0

    new-array v1, v4, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;

    sget-object v2, Lcom/viber/voip/dc;->c:Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/jni/dialer/DialerPhoneStateListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 176
    invoke-virtual {p0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getPttRecorderListener()Lcom/viber/jni/ptt/PttRecorderListener;

    move-result-object v0

    new-array v1, v4, [Lcom/viber/jni/ptt/PttControllerDelegate$Recorder;

    sget-object v2, Lcom/viber/voip/dc;->d:Lcom/viber/jni/ptt/PttRecorderListener;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/jni/ptt/PttRecorderListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 177
    invoke-virtual {p0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/df;

    invoke-direct {v1}, Lcom/viber/voip/df;-><init>()V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addReadyListener(Lcom/viber/jni/PhoneControllerReadyListener;)V

    .line 184
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/dh;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-static {p0}, Lcom/viber/voip/dc;->b(Lcom/viber/voip/dh;)V

    return-void
.end method

.method private static b(Lcom/viber/voip/dk;)Landroid/os/Handler;
    .locals 8
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 189
    const/4 v3, 0x0

    .line 190
    sget-object v5, Lcom/viber/voip/dc;->a:[Lcom/viber/voip/di;

    array-length v6, v5

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v2, v5, v4

    .line 191
    iget-object v7, v2, Lcom/viber/voip/di;->a:Lcom/viber/voip/dk;

    if-ne v7, p0, :cond_1

    .line 198
    :goto_1
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/viber/voip/di;->d:Z

    if-eqz v3, :cond_0

    move v0, v1

    .line 200
    :cond_0
    if-eqz v0, :cond_2

    .line 205
    new-instance v0, Lcom/viber/voip/dj;

    invoke-direct {v0, v2}, Lcom/viber/voip/dj;-><init>(Lcom/viber/voip/di;)V

    .line 206
    invoke-virtual {v0}, Lcom/viber/voip/dj;->start()V

    .line 207
    invoke-virtual {v0}, Lcom/viber/voip/dj;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 209
    sget-object v0, Lcom/viber/voip/dg;->a:[I

    invoke-virtual {p0}, Lcom/viber/voip/dk;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 225
    new-instance v0, Lcom/viber/voip/az;

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/az;-><init>(Lcom/viber/voip/dk;Landroid/os/Looper;)V

    .line 259
    :goto_2
    return-object v0

    .line 190
    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 215
    :pswitch_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_2

    .line 219
    :pswitch_1
    new-instance v0, Lcom/viber/voip/ao;

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/ao;-><init>(Lcom/viber/voip/dk;Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/ao;->a(Z)Lcom/viber/voip/ao;

    move-result-object v0

    goto :goto_2

    .line 222
    :pswitch_2
    new-instance v0, Lcom/viber/voip/az;

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/az;-><init>(Lcom/viber/voip/dk;Landroid/os/Looper;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/az;->a(Z)Lcom/viber/voip/ao;

    move-result-object v0

    goto :goto_2

    .line 257
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 258
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_2

    :cond_3
    move-object v2, v3

    goto :goto_1

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Lcom/viber/voip/dh;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 276
    const-string/jumbo v0, "PausedHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHandlersState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 277
    :goto_0
    sget-object v0, Lcom/viber/voip/dc;->b:[Landroid/os/Handler;

    array-length v0, v0

    if-ge v2, v0, :cond_7

    .line 278
    sget-object v0, Lcom/viber/voip/dc;->b:[Landroid/os/Handler;

    aget-object v1, v0, v2

    .line 279
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 280
    sget-object v0, Lcom/viber/voip/dh;->a:Lcom/viber/voip/dh;

    if-eq p0, v0, :cond_2

    move v4, v5

    .line 281
    :goto_1
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/dj;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/dj;

    invoke-virtual {v0}, Lcom/viber/voip/dj;->a()Lcom/viber/voip/di;

    move-result-object v6

    .line 283
    if-eqz v6, :cond_0

    iget-boolean v0, v6, Lcom/viber/voip/di;->d:Z

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/dj;

    invoke-virtual {v0}, Lcom/viber/voip/dj;->b()I

    move-result v7

    if-eqz v4, :cond_3

    iget v0, v6, Lcom/viber/voip/di;->g:I

    :goto_2
    invoke-static {v7, v0}, Landroid/os/Process;->setThreadPriority(II)V

    .line 288
    :cond_0
    instance-of v0, v1, Lcom/viber/voip/az;

    if-nez v0, :cond_4

    .line 277
    :cond_1
    :goto_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v4, v3

    .line 280
    goto :goto_1

    .line 284
    :cond_3
    iget v0, v6, Lcom/viber/voip/di;->f:I

    goto :goto_2

    .line 295
    :cond_4
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 299
    sget-object v0, Lcom/viber/voip/dg;->b:[I

    invoke-virtual {p0}, Lcom/viber/voip/dh;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    move v0, v3

    .line 309
    :goto_4
    if-eqz v0, :cond_6

    move-object v0, v1

    .line 310
    check-cast v0, Lcom/viber/voip/az;

    invoke-virtual {v0}, Lcom/viber/voip/az;->a()V

    goto :goto_3

    :pswitch_0
    move v0, v5

    .line 303
    goto :goto_4

    .line 305
    :pswitch_1
    sget-object v0, Lcom/viber/voip/dc;->a:[Lcom/viber/voip/di;

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/viber/voip/di;->a:Lcom/viber/voip/dk;

    sget-object v4, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    if-eq v0, v4, :cond_5

    move v0, v5

    goto :goto_4

    :cond_5
    move v0, v3

    goto :goto_4

    .line 312
    :cond_6
    check-cast v1, Lcom/viber/voip/az;

    invoke-virtual {v1}, Lcom/viber/voip/az;->b()V

    goto :goto_3

    .line 317
    :cond_7
    return-void

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
