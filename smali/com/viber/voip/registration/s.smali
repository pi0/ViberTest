.class Lcom/viber/voip/registration/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:Ljava/lang/String;

.field final synthetic e:Lcom/viber/voip/registration/ActivationController;


# direct methods
.method private constructor <init>(Lcom/viber/voip/registration/ActivationController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Lcom/viber/voip/registration/s;->e:Lcom/viber/voip/registration/ActivationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 516
    iput-object p2, p0, Lcom/viber/voip/registration/s;->a:Ljava/lang/String;

    .line 517
    iput-object p3, p0, Lcom/viber/voip/registration/s;->b:Ljava/lang/String;

    .line 518
    iput-object p4, p0, Lcom/viber/voip/registration/s;->c:Ljava/lang/String;

    .line 519
    iput-object p5, p0, Lcom/viber/voip/registration/s;->d:Ljava/lang/String;

    .line 520
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/registration/ActivationController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/registration/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 508
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/registration/s;-><init>(Lcom/viber/voip/registration/ActivationController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 524
    const-string/jumbo v1, "$RegisterTask started"

    #calls: Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/viber/voip/registration/ActivationController;->access$100(Ljava/lang/String;)V

    .line 525
    const/16 v17, 0x0

    .line 527
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    .line 528
    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 529
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    .line 531
    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v1

    .line 532
    invoke-virtual {v1}, Lcom/viber/voip/registration/ActivationController;->checkNetworkConnection()V

    .line 534
    invoke-virtual {v1}, Lcom/viber/voip/registration/ActivationController;->getRegistrationManager()Lcom/viber/voip/registration/cj;

    move-result-object v1

    .line 537
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v4

    .line 538
    new-instance v15, Lcom/viber/voip/registration/cn;

    invoke-direct {v15}, Lcom/viber/voip/registration/cn;-><init>()V

    .line 539
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "android_id"

    invoke-static {v2, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/viber/voip/registration/cn;->a:Ljava/lang/String;

    .line 540
    const-string/jumbo v2, "wifi"

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/viber/voip/registration/cn;->c:Ljava/lang/String;

    .line 541
    const-string/jumbo v2, "phone"

    invoke-virtual {v4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v15, Lcom/viber/voip/registration/cn;->d:Ljava/lang/String;

    .line 542
    const/4 v2, 0x0

    iput-object v2, v15, Lcom/viber/voip/registration/cn;->e:Ljava/lang/String;

    .line 544
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-le v2, v4, :cond_0

    .line 545
    sget-object v2, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    iput-object v2, v15, Lcom/viber/voip/registration/cn;->b:Ljava/lang/String;

    .line 548
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "$RegisterTask.doInBackground: PUT: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/registration/s;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/viber/voip/registration/s;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/viber/voip/registration/ActivationController;->access$100(Ljava/lang/String;)V

    .line 549
    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v10

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/registration/s;->b:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/registration/s;->a:Ljava/lang/String;

    invoke-interface {v10}, Lcom/viber/voip/registration/HardwareParameters;->getPushToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10}, Lcom/viber/voip/registration/HardwareParameters;->getUdid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10}, Lcom/viber/voip/registration/HardwareParameters;->getDeviceType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10}, Lcom/viber/voip/registration/HardwareParameters;->getSystemVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10}, Lcom/viber/voip/registration/HardwareParameters;->getMCC()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10}, Lcom/viber/voip/registration/HardwareParameters;->getMNC()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10}, Lcom/viber/voip/registration/HardwareParameters;->getCC()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/viber/voip/registration/s;->c:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/viber/voip/registration/s;->d:Ljava/lang/String;

    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v14

    new-instance v16, Lcom/viber/voip/util/t;

    invoke-direct/range {v16 .. v16}, Lcom/viber/voip/util/t;-><init>()V

    invoke-virtual/range {v1 .. v16}, Lcom/viber/voip/registration/cj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/viber/voip/registration/cn;Lcom/viber/voip/util/t;)Lcom/viber/voip/registration/df;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 562
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "$RegisterTask notifyCallbacks with responseResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/viber/voip/registration/ActivationController;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/viber/voip/registration/ActivationController;->access$100(Ljava/lang/String;)V

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/viber/voip/registration/s;->e:Lcom/viber/voip/registration/ActivationController;

    #calls: Lcom/viber/voip/registration/ActivationController;->notifyCallbacks(Lcom/viber/voip/registration/df;)V
    invoke-static {v2, v1}, Lcom/viber/voip/registration/ActivationController;->access$800(Lcom/viber/voip/registration/ActivationController;Lcom/viber/voip/registration/df;)V

    .line 564
    return-void

    .line 559
    :catch_0
    move-exception v1

    .line 560
    const/4 v2, 0x6

    const-string/jumbo v3, "RegisterTask"

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v1, v17

    goto :goto_0
.end method
