.class public Lcom/viber/service/KeepAliveReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field static final c:Landroid/content/Intent;

.field static final d:Landroid/content/Intent;

.field static volatile e:Landroid/app/PendingIntent;

.field static volatile f:Landroid/app/PendingIntent;

.field private static final g:Ljava/lang/String;


# instance fields
.field a:Z

.field b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-class v0, Lcom/viber/service/KeepAliveReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/service/KeepAliveReceiver;->g:Ljava/lang/String;

    .line 24
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.KEEP_ALIVE_RECEIVE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/viber/service/KeepAliveReceiver;->c:Landroid/content/Intent;

    .line 25
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VERSION_CHECK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/viber/service/KeepAliveReceiver;->d:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 21
    iput-boolean v0, p0, Lcom/viber/service/KeepAliveReceiver;->a:Z

    .line 22
    iput-boolean v0, p0, Lcom/viber/service/KeepAliveReceiver;->b:Z

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/service/KeepAliveReceiver;->a(Ljava/lang/String;)V

    .line 41
    iget-boolean v0, p0, Lcom/viber/service/KeepAliveReceiver;->b:Z

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    const-string/jumbo v0, "com.viber.voip.action.VIBER_SERVICE_STARTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    iput-boolean v2, p0, Lcom/viber/service/KeepAliveReceiver;->a:Z

    .line 44
    invoke-virtual {p0, p1}, Lcom/viber/service/KeepAliveReceiver;->a(Landroid/content/Context;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/viber/service/KeepAliveReceiver;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 50
    :cond_2
    const-string/jumbo v0, "com.viber.voip.action.VIBER_SERVICE_STOP"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 52
    iput-boolean v2, p0, Lcom/viber/service/KeepAliveReceiver;->a:Z

    goto :goto_0

    .line 53
    :cond_3
    const-string/jumbo v0, "com.viber.voip.action.KEEP_ALIVE_RECEIVE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 54
    invoke-direct {p0, p1}, Lcom/viber/service/KeepAliveReceiver;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 55
    :cond_4
    const-string/jumbo v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const-string/jumbo v0, "com.viber.voip.action.VERSION_CHECK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 63
    invoke-virtual {p0, p1}, Lcom/viber/service/KeepAliveReceiver;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 64
    :cond_5
    const-string/jumbo v0, "com.viber.voip.action.VIBER_SERVICE_EXIT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iput-boolean v2, p0, Lcom/viber/service/KeepAliveReceiver;->a:Z

    .line 66
    iput-boolean v2, p0, Lcom/viber/service/KeepAliveReceiver;->b:Z

    .line 67
    sget-object v0, Lcom/viber/service/KeepAliveReceiver;->e:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 68
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget-object v1, Lcom/viber/service/KeepAliveReceiver;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 69
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget-object v1, Lcom/viber/service/KeepAliveReceiver;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/service/KeepAliveReceiver;->g:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/viber/service/KeepAliveReceiver;->a:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/service/KeepAliveReceiver;->b:Z

    if-nez v0, :cond_0

    .line 76
    invoke-virtual {p0, p1}, Lcom/viber/service/KeepAliveReceiver;->a(Landroid/content/Context;)V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    const-wide/32 v2, 0x927c0

    add-long v1, v0, v2

    .line 84
    :try_start_0
    sget-object v0, Lcom/viber/service/KeepAliveReceiver;->e:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, 0x0

    sget-object v3, Lcom/viber/service/KeepAliveReceiver;->c:Landroid/content/Intent;

    const/high16 v4, 0x800

    invoke-static {p1, v0, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/viber/service/KeepAliveReceiver;->e:Landroid/app/PendingIntent;

    .line 90
    :cond_0
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 92
    const/4 v3, 0x0

    sget-object v4, Lcom/viber/service/KeepAliveReceiver;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "KeepAliveDaemon sleep ZZZzzzzZ --> :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/service/KeepAliveReceiver;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeepAliveDaemon sleep error (!) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/service/KeepAliveReceiver;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 102
    const-wide/32 v2, 0x2932e00

    add-long v1, v0, v2

    .line 104
    :try_start_0
    sget-object v0, Lcom/viber/service/KeepAliveReceiver;->f:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    sget-object v3, Lcom/viber/service/KeepAliveReceiver;->d:Landroid/content/Intent;

    const/high16 v4, 0x800

    invoke-static {p1, v0, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/viber/service/KeepAliveReceiver;->f:Landroid/app/PendingIntent;

    .line 108
    :cond_0
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 109
    const/4 v3, 0x0

    sget-object v4, Lcom/viber/service/KeepAliveReceiver;->f:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "KeepAlive VersionCheck Daemon sleep ZZZzzzzZ --> :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/service/KeepAliveReceiver;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "KeepAlive VersionCheck Daemon sleep error (!) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/service/KeepAliveReceiver;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/viber/service/KeepAliveReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 37
    return-void
.end method
