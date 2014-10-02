.class public Lcom/viber/service/VoipConnectorService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Landroid/os/Handler;

.field private d:Ljava/lang/Runnable;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/service/VoipConnectorService;->b:Z

    .line 165
    new-instance v0, Lcom/viber/service/l;

    invoke-direct {v0, p0}, Lcom/viber/service/l;-><init>(Lcom/viber/service/VoipConnectorService;)V

    iput-object v0, p0, Lcom/viber/service/VoipConnectorService;->d:Ljava/lang/Runnable;

    .line 174
    new-instance v0, Lcom/viber/service/m;

    invoke-direct {v0, p0}, Lcom/viber/service/m;-><init>(Lcom/viber/service/VoipConnectorService;)V

    iput-object v0, p0, Lcom/viber/service/VoipConnectorService;->e:Landroid/content/BroadcastReceiver;

    .line 187
    new-instance v0, Lcom/viber/service/n;

    invoke-direct {v0, p0}, Lcom/viber/service/n;-><init>(Lcom/viber/service/VoipConnectorService;)V

    iput-object v0, p0, Lcom/viber/service/VoipConnectorService;->f:Landroid/content/BroadcastReceiver;

    .line 58
    sget-object v0, Lcom/viber/voip/dk;->b:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/service/VoipConnectorService;->c:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/viber/service/VoipConnectorService;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/viber/service/VoipConnectorService;->c()V

    return-void
.end method

.method static synthetic a(Lcom/viber/service/VoipConnectorService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/viber/service/VoipConnectorService;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 156
    const/4 v0, 0x3

    const-string/jumbo v1, "VoipConnectorService"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method static synthetic b(Lcom/viber/service/VoipConnectorService;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/viber/service/VoipConnectorService;->e()V

    return-void
.end method

.method static synthetic c(Lcom/viber/service/VoipConnectorService;)Lcom/viber/voip/settings/l;
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/viber/service/VoipConnectorService;->d()Lcom/viber/voip/settings/l;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 123
    const-string/jumbo v0, "VoipConnectorService"

    const-string/jumbo v1, "ViberApplication initApplication NOT_READY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->initApplication()V

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIBER_SERVICE_STARTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/service/VoipConnectorService;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method static synthetic d(Lcom/viber/service/VoipConnectorService;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/service/VoipConnectorService;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private d()Lcom/viber/voip/settings/l;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/viber/service/VoipConnectorService;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/service/VoipConnectorService;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 286
    const-string/jumbo v0, "KeepAlive VersionCheck Daemon <-- endSleep"

    invoke-direct {p0, v0}, Lcom/viber/service/VoipConnectorService;->a(Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/viber/voip/w;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/jni/Version;->parseVersionString(Ljava/lang/String;)Lcom/viber/jni/Version;

    move-result-object v0

    .line 288
    invoke-direct {p0}, Lcom/viber/service/VoipConnectorService;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/jni/Version;->parseVersionString(Ljava/lang/String;)Lcom/viber/jni/Version;

    move-result-object v1

    .line 289
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-virtual {v1, v0}, Lcom/viber/jni/Version;->isNewerThen(Lcom/viber/jni/Version;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    invoke-static {}, Lcom/viber/voip/e/u;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/e/u;->b()V

    goto :goto_0
.end method

.method private f()Ljava/lang/String;
    .locals 7

    .prologue
    .line 300
    const-string/jumbo v1, ""

    .line 301
    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 304
    :try_start_0
    const-string/jumbo v2, "getServerViberVersion url:http://www.cdn.viber.com/android_version.txt"

    invoke-direct {p0, v2}, Lcom/viber/service/VoipConnectorService;->a(Ljava/lang/String;)V

    .line 306
    const-string/jumbo v2, "http://www.cdn.viber.com/android_version.txt"

    invoke-static {v2}, Lcom/viber/voip/ViberEnv;->newHttpRequest(Ljava/lang/String;)Lcom/viber/voip/util/http/HttpRequest;

    move-result-object v2

    .line 307
    new-instance v3, Ljava/io/DataInputStream;

    invoke-interface {v2}, Lcom/viber/voip/util/http/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 308
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 311
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 312
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 320
    :goto_1
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 325
    :goto_2
    return-object v0

    .line 314
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 316
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 318
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Readed the SERVER RESPONSE version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/service/VoipConnectorService;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    .line 319
    :catch_1
    move-exception v1

    goto :goto_1

    .line 321
    :catch_2
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 322
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 321
    :catch_3
    move-exception v1

    goto :goto_3
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 273
    const-string/jumbo v0, "ViberApplication"

    const-string/jumbo v1, "VoipConnectorService killSelf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iput-boolean v2, p0, Lcom/viber/service/VoipConnectorService;->b:Z

    .line 275
    invoke-virtual {p0, v2}, Lcom/viber/service/VoipConnectorService;->stopForeground(Z)V

    .line 276
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->requestShutdown()V

    .line 279
    invoke-virtual {p0}, Lcom/viber/service/VoipConnectorService;->stopSelf()V

    .line 280
    const-string/jumbo v0, "ViberApplication"

    const-string/jumbo v1, "VoipConnectorService killSelf finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 259
    const-string/jumbo v0, "message_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p2, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 260
    const-string/jumbo v2, "timeout_type"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 261
    const-string/jumbo v3, "message_number"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    const-string/jumbo v4, "message_text"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 263
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SentTimeout Daemon sleep <-- endSleep toNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",msgId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/viber/service/VoipConnectorService;->a(Ljava/lang/String;)V

    .line 265
    packed-switch v2, :pswitch_data_0

    .line 270
    :goto_0
    return-void

    .line 267
    :pswitch_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v2

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/viber/voip/messages/i;->a(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 265
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 3

    .prologue
    .line 350
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "settingChangeAction lastOnline:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/service/VoipConnectorService;->a(Ljava/lang/String;)V

    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.SETTINGS_CHANGE_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v0}, Lcom/viber/service/VoipConnectorService;->startActivity(Landroid/content/Intent;)V

    .line 356
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 161
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    const-string/jumbo v1, "com.viber.voip.action.VIBER_SERVICE_EXIT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v1, "com.viber.voip.action.KEEP_ALIVE_RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v1, "com.viber.voip.action.SEND_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "com.viber.voip.action.VERSION_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v1, "com.viber.voip.action.SETTINGS_CHANGE_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string/jumbo v1, "com.viber.voip.action.APP_ON_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/viber/service/VoipConnectorService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/viber/service/VoipConnectorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    iget-object v0, p0, Lcom/viber/service/VoipConnectorService;->e:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/viber/service/VoipConnectorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDestroy() killRequested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/service/VoipConnectorService;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/service/VoipConnectorService;->a(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/viber/service/VoipConnectorService;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/viber/service/VoipConnectorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    iget-object v0, p0, Lcom/viber/service/VoipConnectorService;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/viber/service/VoipConnectorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 141
    iget-boolean v0, p0, Lcom/viber/service/VoipConnectorService;->b:Z

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIBER_SERVICE_STOP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/viber/service/VoipConnectorService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 143
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIBER_SERVICE_EXIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/viber/service/VoipConnectorService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 146
    :cond_0
    iget-boolean v0, p0, Lcom/viber/service/VoipConnectorService;->b:Z

    if-eqz v0, :cond_1

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIBER_APP_EXIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/service/VoipConnectorService;->sendBroadcast(Landroid/content/Intent;)V

    .line 150
    :cond_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 151
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/service/VoipConnectorService;->b:Z

    if-nez v0, :cond_0

    .line 80
    iget-boolean v0, p0, Lcom/viber/service/VoipConnectorService;->a:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iput-boolean v3, p0, Lcom/viber/service/VoipConnectorService;->a:Z

    .line 82
    sget-object v0, Lcom/viber/voip/dk;->b:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/service/j;

    invoke-direct {v1, p0}, Lcom/viber/service/j;-><init>(Lcom/viber/service/VoipConnectorService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 89
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isReady()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.viber.voip.action.VIBER_SERVICE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 90
    :cond_2
    iput-boolean v3, p0, Lcom/viber/service/VoipConnectorService;->a:Z

    .line 91
    sget-object v0, Lcom/viber/voip/dk;->b:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/service/k;

    invoke-direct {v1, p0}, Lcom/viber/service/k;-><init>(Lcom/viber/service/VoipConnectorService;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 113
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.viber.voip.action.VIBER_SERVICE_FOREGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 114
    const-string/jumbo v0, "notification_id"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    invoke-virtual {p0, v1, v0}, Lcom/viber/service/VoipConnectorService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.viber.voip.action.VIBER_SERVICE_BACKGROUND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0, v3}, Lcom/viber/service/VoipConnectorService;->stopForeground(Z)V

    goto :goto_0
.end method
