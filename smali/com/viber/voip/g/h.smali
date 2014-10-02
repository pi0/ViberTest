.class public Lcom/viber/voip/g/h;
.super Lcom/viber/voip/g/a;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/PowerManager;

.field private c:Landroid/os/PowerManager$WakeLock;

.field private d:Lcom/viber/jni/PhoneControllerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/viber/voip/g/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/g/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0, p1}, Lcom/viber/voip/g/a;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object v0, p0, Lcom/viber/voip/g/h;->b:Landroid/os/PowerManager;

    .line 19
    iput-object v0, p0, Lcom/viber/voip/g/h;->c:Landroid/os/PowerManager$WakeLock;

    .line 27
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/viber/voip/g/h;->b:Landroid/os/PowerManager;

    .line 28
    invoke-direct {p0}, Lcom/viber/voip/g/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/viber/voip/g/h;->b:Landroid/os/PowerManager;

    const/16 v1, 0x20

    sget-object v2, Lcom/viber/voip/g/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/g/h;->c:Landroid/os/PowerManager$WakeLock;

    .line 30
    iget-object v0, p0, Lcom/viber/voip/g/h;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 32
    invoke-virtual {p0}, Lcom/viber/voip/g/h;->b()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/g/h;->d:Lcom/viber/jni/PhoneControllerWrapper;

    .line 33
    new-instance v0, Lcom/viber/voip/g/i;

    invoke-direct {v0, p0}, Lcom/viber/voip/g/i;-><init>(Lcom/viber/voip/g/h;)V

    .line 40
    iget-object v1, p0, Lcom/viber/voip/g/h;->d:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerListener;->getDialerPhoneStateListener()Lcom/viber/jni/dialer/DialerPhoneStateListener;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/viber/jni/dialer/DialerPhoneStateListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 43
    :cond_0
    const-string/jumbo v0, "WakeLock proximity helper created"

    invoke-virtual {p0, v0}, Lcom/viber/voip/g/h;->a(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private g()Z
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 48
    :try_start_0
    const-class v3, Landroid/os/PowerManager;

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-ge v0, v4, :cond_0

    .line 50
    const-string/jumbo v0, "getSupportedWakeLockFlags"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 51
    iget-object v4, p0, Lcom/viber/voip/g/h;->b:Landroid/os/PowerManager;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "PowerManager supported flags: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/g/h;->a(Ljava/lang/String;)V

    .line 53
    const-string/jumbo v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 54
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 55
    and-int v3, v4, v0

    if-eqz v3, :cond_1

    if-ne v6, v0, :cond_1

    .line 56
    const-string/jumbo v0, "Proximity wake lock is available"

    invoke-virtual {p0, v0}, Lcom/viber/voip/g/h;->a(Ljava/lang/String;)V

    move v0, v1

    .line 68
    :goto_0
    return v0

    .line 60
    :cond_0
    const-string/jumbo v0, "validateWakeLockParameters"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 61
    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x20

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/viber/voip/g/h;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string/jumbo v0, "Proximity wake lock is available"

    invoke-virtual {p0, v0}, Lcom/viber/voip/g/h;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 63
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move v0, v2

    .line 68
    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateProximityOnCallState: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/g/h;->a(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/viber/voip/g/h;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/viber/voip/g/h;->c:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 88
    packed-switch p1, :pswitch_data_0

    .line 123
    :goto_0
    :pswitch_0
    :try_start_0
    monitor-exit v1

    .line 125
    :cond_0
    return-void

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/g/h;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 95
    const-string/jumbo v0, "updateProximityOnCallState: acquiring..."

    invoke-virtual {p0, v0}, Lcom/viber/voip/g/h;->a(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/viber/voip/g/h;->e()V

    .line 99
    invoke-virtual {p0}, Lcom/viber/voip/g/h;->c()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->b()V

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 101
    :cond_1
    :try_start_1
    const-string/jumbo v0, "updateProximityOnCallState: lock already held."

    invoke-virtual {p0, v0}, Lcom/viber/voip/g/h;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/g/h;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    const-string/jumbo v0, "updateProximityOnCallState: releasing..."

    invoke-virtual {p0, v0}, Lcom/viber/voip/g/h;->a(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/viber/voip/g/h;->f()V

    .line 117
    invoke-virtual {p0}, Lcom/viber/voip/g/h;->c()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->c()V

    goto :goto_0

    .line 119
    :cond_2
    const-string/jumbo v0, "updateProximityOnCallState: lock already released."

    invoke-virtual {p0, v0}, Lcom/viber/voip/g/h;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 128
    iget-object v0, p0, Lcom/viber/voip/g/h;->c:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/viber/voip/g/h;->c:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/g/h;->d:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDialerController()Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->getPhoneState()I

    move-result v0

    .line 131
    const/4 v2, 0x4

    if-eq v2, v0, :cond_1

    const/4 v2, 0x3

    if-eq v2, v0, :cond_1

    .line 133
    const-string/jumbo v0, "setEnabled: not in call"

    invoke-virtual {p0, v0}, Lcom/viber/voip/g/h;->a(Ljava/lang/String;)V

    .line 134
    monitor-exit v1

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/g/h;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    .line 137
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 138
    const-string/jumbo v0, "setEnabled: acquiring..."

    invoke-virtual {p0, v0}, Lcom/viber/voip/g/h;->a(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lcom/viber/voip/g/h;->e()V

    .line 140
    invoke-virtual {p0}, Lcom/viber/voip/g/h;->c()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->b()V

    .line 148
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 141
    :cond_2
    if-nez p1, :cond_3

    if-eqz v0, :cond_3

    .line 142
    :try_start_1
    const-string/jumbo v0, "setEnabled: releasing..."

    invoke-virtual {p0, v0}, Lcom/viber/voip/g/h;->a(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/viber/voip/g/h;->f()V

    .line 144
    invoke-virtual {p0}, Lcom/viber/voip/g/h;->c()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->c()V

    goto :goto_1

    .line 146
    :cond_3
    const-string/jumbo v0, "setEnabled: nothing changed"

    invoke-virtual {p0, v0}, Lcom/viber/voip/g/h;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public e()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/viber/voip/g/h;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 154
    return-void
.end method

.method public f()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 157
    .line 159
    :try_start_0
    const-class v2, Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v3, "release"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 160
    iget-object v3, p0, Lcom/viber/voip/g/h;->c:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/viber/voip/g/h;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 168
    :cond_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_0
.end method
