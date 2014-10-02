.class public Lcom/viber/voip/registration/HardwareParametersImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/registration/HardwareParameters;


# static fields
.field public static final TAG:Ljava/lang/String; = "HardwareParametersImpl"


# instance fields
.field private final UNKNOWN_IMEI:Ljava/lang/String;

.field private final appVersion:Lcom/viber/jni/Version;

.field private final ctx:Landroid/content/Context;

.field private final deviceType:Ljava/lang/String;

.field private final fullAppVersion:Ljava/lang/String;

.field private final phoneIMEI:Ljava/lang/String;

.field private final phoneType:I

.field private final simCC:Ljava/lang/String;

.field private final simMCC:Ljava/lang/String;

.field private final simMNC:Ljava/lang/String;

.field private final sysVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->UNKNOWN_IMEI:Ljava/lang/String;

    .line 38
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->deviceType:Ljava/lang/String;

    .line 39
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->sysVersion:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 43
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 46
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->simMCC:Ljava/lang/String;

    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->simMNC:Ljava/lang/String;

    .line 53
    :goto_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->simCC:Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->phoneType:I

    .line 56
    invoke-static {}, Lcom/viber/voip/w;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->fullAppVersion:Ljava/lang/String;

    .line 58
    iget-object v1, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->fullAppVersion:Ljava/lang/String;

    invoke-static {v1}, Lcom/viber/jni/Version;->parseVersionString(Ljava/lang/String;)Lcom/viber/jni/Version;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->appVersion:Lcom/viber/jni/Version;

    .line 60
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    :goto_1
    iput-object v0, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->phoneIMEI:Ljava/lang/String;

    .line 63
    iput-object p1, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->ctx:Landroid/content/Context;

    .line 64
    return-void

    .line 49
    :cond_0
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->simMNC:Ljava/lang/String;

    .line 50
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->simMCC:Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_1
    const-string/jumbo v0, "unknown"

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    return-void
.end method


# virtual methods
.method public getAppVersion()Lcom/viber/jni/Version;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->appVersion:Lcom/viber/jni/Version;

    return-object v0
.end method

.method public getCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->simCC:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getFullAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->fullAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->phoneIMEI:Ljava/lang/String;

    return-object v0
.end method

.method public getMCC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->simMCC:Ljava/lang/String;

    return-object v0
.end method

.method public getMNC()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->simMNC:Ljava/lang/String;

    return-object v0
.end method

.method public getPushToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gcm/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    invoke-static {v0}, Lcom/viber/voip/b/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-static {v0}, Lcom/viber/voip/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GCM:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->sysVersion:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getUdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "GetDeviceUDID"

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/HardwareParametersImpl;->log(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/viber/voip/registration/dj;->a()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isGsmSupported()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 130
    iget v1, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->phoneType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->phoneType:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HardwareParametersImpl{androidId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/registration/HardwareParametersImpl;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", deviceType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", sysVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/HardwareParametersImpl;->sysVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pushToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/registration/HardwareParametersImpl;->getPushToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", GsmSupported=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/registration/HardwareParametersImpl;->isGsmSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
