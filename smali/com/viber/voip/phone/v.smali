.class public Lcom/viber/voip/phone/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/viber/voip/phone/x;

.field private c:Landroid/os/PowerManager$WakeLock;

.field private d:Landroid/net/wifi/WifiManager$WifiLock;

.field private e:Lcom/viber/voip/g/a;

.field private f:Landroid/app/KeyguardManager;

.field private g:Landroid/app/KeyguardManager$KeyguardLock;

.field private h:Ljava/lang/Object;

.field private i:Landroid/os/PowerManager;

.field private j:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/viber/voip/phone/x;->a:Lcom/viber/voip/phone/x;

    iput-object v0, p0, Lcom/viber/voip/phone/v;->b:Lcom/viber/voip/phone/x;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/phone/v;->h:Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Lcom/viber/voip/phone/v;->a:Landroid/content/Context;

    .line 61
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/viber/voip/phone/v;->i:Landroid/os/PowerManager;

    .line 62
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/viber/voip/phone/v;->j:Landroid/net/wifi/WifiManager;

    .line 63
    iget-object v0, p0, Lcom/viber/voip/phone/v;->i:Landroid/os/PowerManager;

    const v1, 0x3000001a

    const-string/jumbo v2, "PhoneApp"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/v;->c:Landroid/os/PowerManager$WakeLock;

    .line 68
    iget-object v0, p0, Lcom/viber/voip/phone/v;->j:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    const-string/jumbo v2, "VoipServiceWifiLock"

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/v;->d:Landroid/net/wifi/WifiManager$WifiLock;

    .line 70
    invoke-virtual {p0}, Lcom/viber/voip/phone/v;->g()V

    .line 72
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/viber/voip/phone/v;->f:Landroid/app/KeyguardManager;

    .line 73
    iget-object v0, p0, Lcom/viber/voip/phone/v;->f:Landroid/app/KeyguardManager;

    const-string/jumbo v1, "Viber"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/v;->g:Landroid/app/KeyguardManager$KeyguardLock;

    .line 74
    return-void
.end method


# virtual methods
.method public a(ZZ)Landroid/net/Uri;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 81
    if-nez p1, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->N()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->O()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 86
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->av()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    if-nez v1, :cond_1

    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 89
    :goto_1
    if-eqz v0, :cond_2

    move-object v0, v1

    .line 96
    :goto_2
    return-object v0

    .line 81
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :cond_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 89
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android.resource://com.viber.voip/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_3

    const v0, 0x7f06001b

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    :cond_3
    const v0, 0x7f06001c

    goto :goto_3
.end method

.method public a()Lcom/viber/voip/e/u;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/viber/voip/e/u;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/viber/voip/phone/x;)V
    .locals 3
    .parameter

    .prologue
    .line 112
    iget-object v1, p0, Lcom/viber/voip/phone/v;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/phone/v;->b:Lcom/viber/voip/phone/x;

    if-eq v0, p1, :cond_1

    .line 114
    sget-object v0, Lcom/viber/voip/phone/w;->a:[I

    invoke-virtual {p1}, Lcom/viber/voip/phone/x;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 130
    iget-object v0, p0, Lcom/viber/voip/phone/v;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/viber/voip/phone/v;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 135
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/viber/voip/phone/v;->b:Lcom/viber/voip/phone/x;

    .line 137
    :cond_1
    monitor-exit v1

    .line 142
    return-void

    .line 121
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/phone/v;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 255
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/viber/voip/phone/v;->d:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/viber/voip/phone/v;->d:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/phone/v;->d:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/viber/voip/phone/v;->d:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 154
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public d()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 190
    const-string/jumbo v2, "PhoneApp"

    const-string/jumbo v3, "updateWakeState start"

    invoke-static {v7, v2, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/viber/voip/phone/v;->e()Lcom/viber/voip/phone/call/k;

    move-result-object v2

    .line 194
    if-eqz v2, :cond_1

    .line 195
    invoke-virtual {v2}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v2

    .line 200
    :goto_0
    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    move v6, v1

    .line 201
    :goto_1
    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    move v5, v1

    .line 202
    :goto_2
    const/4 v3, 0x7

    if-ne v2, v3, :cond_4

    move v4, v1

    .line 203
    :goto_3
    if-ne v2, v7, :cond_5

    move v3, v1

    .line 205
    :goto_4
    const/4 v7, 0x6

    if-ne v2, v7, :cond_6

    move v2, v1

    .line 206
    :goto_5
    if-nez v6, :cond_0

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    if-eqz v2, :cond_7

    .line 216
    :cond_0
    :goto_6
    if-eqz v1, :cond_8

    sget-object v0, Lcom/viber/voip/phone/x;->b:Lcom/viber/voip/phone/x;

    :goto_7
    invoke-virtual {p0, v0}, Lcom/viber/voip/phone/v;->a(Lcom/viber/voip/phone/x;)V

    .line 223
    if-eqz v1, :cond_9

    .line 224
    invoke-virtual {p0}, Lcom/viber/voip/phone/v;->b()V

    .line 232
    :goto_8
    return-void

    :cond_1
    move v2, v0

    .line 197
    goto :goto_0

    :cond_2
    move v6, v0

    .line 200
    goto :goto_1

    :cond_3
    move v5, v0

    .line 201
    goto :goto_2

    :cond_4
    move v4, v0

    .line 202
    goto :goto_3

    :cond_5
    move v3, v0

    .line 203
    goto :goto_4

    :cond_6
    move v2, v0

    .line 205
    goto :goto_5

    :cond_7
    move v1, v0

    .line 206
    goto :goto_6

    .line 216
    :cond_8
    sget-object v0, Lcom/viber/voip/phone/x;->a:Lcom/viber/voip/phone/x;

    goto :goto_7

    .line 226
    :cond_9
    invoke-virtual {p0}, Lcom/viber/voip/phone/v;->c()V

    goto :goto_8
.end method

.method e()Lcom/viber/voip/phone/call/k;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/viber/voip/phone/v;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCurrentCall()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 239
    return-object v0
.end method

.method public f()Lcom/viber/voip/g/a;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/viber/voip/phone/v;->e:Lcom/viber/voip/g/a;

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/viber/voip/phone/v;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/g/g;->a(Landroid/content/Context;)Lcom/viber/voip/g/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/v;->e:Lcom/viber/voip/g/a;

    .line 268
    return-void
.end method
