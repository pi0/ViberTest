.class public Lcom/viber/voip/g/c;
.super Lcom/viber/voip/g/a;
.source "SourceFile"


# instance fields
.field private a:Landroid/hardware/SensorManager;

.field private b:Landroid/hardware/Sensor;

.field private c:Z

.field private d:Z

.field private volatile e:Z

.field private f:Z

.field private g:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/viber/voip/g/a;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object v0, p0, Lcom/viber/voip/g/c;->a:Landroid/hardware/SensorManager;

    .line 20
    iput-object v0, p0, Lcom/viber/voip/g/c;->b:Landroid/hardware/Sensor;

    .line 21
    iput-boolean v3, p0, Lcom/viber/voip/g/c;->c:Z

    .line 23
    iput-boolean v3, p0, Lcom/viber/voip/g/c;->d:Z

    .line 24
    iput-boolean v3, p0, Lcom/viber/voip/g/c;->e:Z

    .line 26
    iput-boolean v3, p0, Lcom/viber/voip/g/c;->f:Z

    .line 80
    new-instance v0, Lcom/viber/voip/g/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/g/e;-><init>(Lcom/viber/voip/g/c;)V

    iput-object v0, p0, Lcom/viber/voip/g/c;->g:Landroid/hardware/SensorEventListener;

    .line 32
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/viber/voip/g/c;->a:Landroid/hardware/SensorManager;

    .line 33
    iget-object v0, p0, Lcom/viber/voip/g/c;->a:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/g/c;->b:Landroid/hardware/Sensor;

    .line 34
    iget-object v0, p0, Lcom/viber/voip/g/c;->b:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/viber/voip/g/c;->b()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/viber/voip/g/d;

    invoke-direct {v1, p0}, Lcom/viber/voip/g/d;-><init>(Lcom/viber/voip/g/c;)V

    .line 43
    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerPhoneStateListener()Lcom/viber/jni/dialer/DialerPhoneStateListener;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Lcom/viber/jni/dialer/DialerPhoneStateListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 46
    :cond_0
    const-string/jumbo v0, "Generic proximity helper created"

    invoke-virtual {p0, v0}, Lcom/viber/voip/g/c;->a(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/g/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/viber/voip/g/c;->e:Z

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/g/c;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/viber/voip/g/c;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/g/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/viber/voip/g/c;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/g/c;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/viber/voip/g/c;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/viber/voip/g/c;)Z
    .locals 1
    .parameter

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/viber/voip/g/c;->f:Z

    return v0
.end method


# virtual methods
.method public a(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateProximityOnCallState: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/g/c;->a(Ljava/lang/String;)V

    .line 53
    packed-switch p1, :pswitch_data_0

    .line 73
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 57
    :pswitch_1
    iget-boolean v0, p0, Lcom/viber/voip/g/c;->c:Z

    if-nez v0, :cond_0

    .line 58
    iput-boolean v2, p0, Lcom/viber/voip/g/c;->e:Z

    .line 59
    iget-object v0, p0, Lcom/viber/voip/g/c;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/viber/voip/g/c;->g:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/viber/voip/g/c;->b:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    sget-object v4, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v4}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 61
    iput-boolean v5, p0, Lcom/viber/voip/g/c;->c:Z

    goto :goto_0

    .line 65
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/g/c;->a:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/viber/voip/g/c;->g:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 66
    iput-boolean v2, p0, Lcom/viber/voip/g/c;->c:Z

    .line 70
    invoke-virtual {p0}, Lcom/viber/voip/g/c;->b()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/viber/voip/ViberApplication;->enableTouchInput(Z)V

    goto :goto_0

    .line 53
    nop

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
    .locals 0
    .parameter

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/viber/voip/g/c;->f:Z

    .line 78
    return-void
.end method
