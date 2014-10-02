.class public Lcom/viber/voip/registration/dj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/viber/voip/registration/dj;->a:Ljava/util/Set;

    .line 41
    invoke-static {}, Lcom/viber/voip/registration/dj;->f()V

    .line 42
    return-void
.end method

.method public static declared-synchronized a()Ljava/lang/String;
    .locals 7

    .prologue
    .line 71
    const-class v3, Lcom/viber/voip/registration/dj;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v0, "GetDeviceUDID"

    invoke-static {v0}, Lcom/viber/voip/registration/dj;->b(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v0, ""

    .line 73
    const-string/jumbo v1, ""

    .line 75
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v4

    .line 76
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v5

    .line 77
    const-string/jumbo v2, "viber_udid"

    invoke-interface {v4, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez v5, :cond_3

    .line 78
    const-string/jumbo v0, "viber_udid"

    const-string/jumbo v2, ""

    invoke-interface {v4, v0, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UDID primary in preferences:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/registration/dj;->b(Ljava/lang/String;)V

    .line 84
    :cond_0
    :goto_0
    const-string/jumbo v2, "device_hardware_key"

    invoke-interface {v4, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    const-string/jumbo v1, "device_hardware_key"

    const-string/jumbo v2, ""

    invoke-interface {v4, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hardwareKey in preferences:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/registration/dj;->b(Ljava/lang/String;)V

    .line 94
    :cond_1
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 95
    sget-object v1, Lcom/viber/voip/registration/dl;->c:Lcom/viber/voip/registration/dl;

    invoke-static {v1}, Lcom/viber/voip/registration/dj;->a(Lcom/viber/voip/registration/dl;)Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 97
    const-string/jumbo v2, "device_hardware_key"

    invoke-interface {v4, v2, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-object v2, v1

    .line 107
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hardwareKey :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " not equals model+device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/registration/dj;->b(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/viber/voip/registration/dj;->g()Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UDID is:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ", hardwareKey:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/registration/dj;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit v3

    return-object v0

    .line 80
    :cond_3
    :try_start_1
    const-string/jumbo v2, "secondary_udid"

    invoke-interface {v4, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    .line 81
    const-string/jumbo v0, "secondary_udid"

    const-string/jumbo v2, ""

    invoke-interface {v4, v0, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UDID secondary in preferences:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/registration/dj;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 99
    :cond_4
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string/jumbo v2, "device_hardware_key"

    invoke-interface {v4, v2, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 103
    sget-object v2, Lcom/viber/voip/registration/dl;->c:Lcom/viber/voip/registration/dl;

    invoke-static {v2, v1}, Lcom/viber/voip/registration/dj;->a(Lcom/viber/voip/registration/dl;Ljava/lang/String;)V

    :cond_5
    move-object v2, v1

    goto/16 :goto_1

    .line 111
    :cond_6
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    if-eqz v5, :cond_7

    sget-object v0, Lcom/viber/voip/registration/dl;->e:Lcom/viber/voip/registration/dl;

    :goto_3
    invoke-static {v0}, Lcom/viber/voip/registration/dj;->a(Lcom/viber/voip/registration/dl;)Ljava/lang/String;

    move-result-object v0

    .line 114
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 115
    if-eqz v5, :cond_8

    const-string/jumbo v1, "secondary_udid"

    :goto_4
    invoke-interface {v4, v1, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    goto/16 :goto_2

    .line 112
    :cond_7
    sget-object v0, Lcom/viber/voip/registration/dl;->b:Lcom/viber/voip/registration/dl;

    goto :goto_3

    .line 115
    :cond_8
    const-string/jumbo v1, "viber_udid"

    goto :goto_4

    .line 117
    :cond_9
    const-string/jumbo v0, "UDID not found in preferences, generate"

    invoke-static {v0}, Lcom/viber/voip/registration/dj;->b(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/viber/voip/registration/dj;->g()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto/16 :goto_2
.end method

.method public static a(Lcom/viber/voip/registration/dl;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-static {p0}, Lcom/viber/voip/registration/bk;->a(Lcom/viber/voip/registration/dl;)Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 280
    :goto_0
    return-object v0

    .line 262
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 263
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lcom/viber/voip/registration/dj;->b(Lcom/viber/voip/registration/dl;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 266
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 267
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 268
    invoke-virtual {v3, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 269
    new-array v5, v4, [B

    .line 270
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v6, v5, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    sget-object v2, Lcom/viber/voip/registration/dl;->a:Lcom/viber/voip/registration/dl;

    invoke-virtual {p0, v2}, Lcom/viber/voip/registration/dl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/viber/voip/registration/dl;->d:Lcom/viber/voip/registration/dl;

    invoke-virtual {p0, v2}, Lcom/viber/voip/registration/dl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 272
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Viber"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_4

    const-string/jumbo v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1, v2}, Lcom/viber/voip/util/aj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getKeyChain type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",getExternalStorageState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/viber/voip/registration/dj;->b(Lcom/viber/voip/registration/dl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/registration/dj;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 272
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/viber/voip/registration/dl;->name()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 274
    :catch_0
    move-exception v1

    .line 275
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static a(Lcom/viber/voip/registration/dl;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 249
    invoke-static {p0, p1}, Lcom/viber/voip/registration/bk;->a(Lcom/viber/voip/registration/dl;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDeviceKey:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/registration/dj;->b(Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    .line 188
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "secondary_device_key"

    :goto_0
    invoke-interface {v1, v0, p0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 189
    return-void

    .line 188
    :cond_0
    const-string/jumbo v0, "device_key"

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 351
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "use_as_secondary"

    if-eqz p0, :cond_0

    const-string/jumbo v0, "secondary"

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 353
    const/4 v0, 0x0

    sput-object v0, Lcom/viber/voip/registration/dj;->b:Ljava/lang/Boolean;

    .line 358
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/registration/dj;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->disableSyncAccountComponents(Z)V

    .line 359
    return-void

    .line 351
    :cond_0
    const-string/jumbo v0, "primary"

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 192
    const-string/jumbo v1, "getDeviceKey"

    invoke-static {v1}, Lcom/viber/voip/registration/dj;->b(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    .line 196
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v2

    .line 197
    const-string/jumbo v3, "device_key"

    invoke-interface {v1, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 198
    const-string/jumbo v2, "device_key"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device key primary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/registration/dj;->b(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 202
    goto :goto_0

    .line 203
    :cond_2
    const-string/jumbo v3, "secondary_device_key"

    invoke-interface {v1, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 204
    const-string/jumbo v2, "secondary_device_key"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Device key secondary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/registration/dj;->b(Ljava/lang/String;)V

    .line 206
    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 208
    goto :goto_0

    .line 216
    :cond_3
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private static b(Lcom/viber/voip/registration/dl;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 284
    sget-object v0, Lcom/viber/voip/registration/dk;->a:[I

    invoke-virtual {p0}, Lcom/viber/voip/registration/dl;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 297
    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    .line 286
    :pswitch_0
    sget-object v0, Lcom/viber/voip/w;->i:Ljava/lang/String;

    goto :goto_0

    .line 288
    :pswitch_1
    sget-object v0, Lcom/viber/voip/w;->j:Ljava/lang/String;

    goto :goto_0

    .line 290
    :pswitch_2
    sget-object v0, Lcom/viber/voip/w;->k:Ljava/lang/String;

    goto :goto_0

    .line 292
    :pswitch_3
    sget-object v0, Lcom/viber/voip/w;->l:Ljava/lang/String;

    goto :goto_0

    .line 294
    :pswitch_4
    sget-object v0, Lcom/viber/voip/w;->m:Ljava/lang/String;

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    return-void
.end method

.method public static c()Z
    .locals 2

    .prologue
    .line 314
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->b()I

    move-result v0

    .line 315
    const/16 v1, 0x51

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized d()Z
    .locals 5

    .prologue
    .line 321
    const-class v1, Lcom/viber/voip/registration/dj;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/viber/voip/registration/dj;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 322
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v2

    .line 324
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v3

    .line 329
    const-string/jumbo v0, "use_as_secondary"

    invoke-interface {v3, v0}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 331
    const-string/jumbo v0, "use_as_secondary"

    const-string/jumbo v4, "primary"

    invoke-interface {v3, v0, v4}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 338
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 339
    const-string/jumbo v0, "use_as_secondary"

    const-string/jumbo v2, "secondary"

    invoke-interface {v3, v0, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    const-string/jumbo v2, "secondary"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/registration/dj;->b:Ljava/lang/Boolean;

    .line 347
    :cond_1
    :goto_1
    sget-object v0, Lcom/viber/voip/registration/dj;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 333
    :cond_2
    :try_start_1
    const-string/jumbo v4, "use_as_secondary"

    if-eqz v2, :cond_3

    const-string/jumbo v0, "secondary"

    :goto_2
    invoke-interface {v3, v4, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 333
    :cond_3
    :try_start_2
    const-string/jumbo v0, "primary"

    goto :goto_2

    .line 344
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/registration/dj;->b:Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static e()Z
    .locals 1

    .prologue
    .line 366
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static f()V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/viber/voip/registration/dj;->a:Ljava/util/Set;

    const-string/jumbo v1, "351602000525820"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/viber/voip/registration/dj;->a:Ljava/util/Set;

    const-string/jumbo v1, "012345678901234"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lcom/viber/voip/registration/dj;->a:Ljava/util/Set;

    const-string/jumbo v1, "000000011234564"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/viber/voip/registration/dj;->a:Ljava/util/Set;

    const-string/jumbo v1, "351751045421180"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/viber/voip/registration/dj;->a:Ljava/util/Set;

    const-string/jumbo v1, "000000000000000"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/viber/voip/registration/dj;->a:Ljava/util/Set;

    const-string/jumbo v1, "357242042804044"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/viber/voip/registration/dj;->a:Ljava/util/Set;

    const-string/jumbo v1, "356531044590531"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/viber/voip/registration/dj;->a:Ljava/util/Set;

    const-string/jumbo v1, "004999010640000"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/viber/voip/registration/dj;->a:Ljava/util/Set;

    const-string/jumbo v1, "350305260000001"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/viber/voip/registration/dj;->a:Ljava/util/Set;

    const-string/jumbo v1, "357242041834521"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/viber/voip/registration/dj;->a:Ljava/util/Set;

    const-string/jumbo v1, "358537040040544"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/viber/voip/registration/dj;->a:Ljava/util/Set;

    const-string/jumbo v1, "351751044067398"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    return-void
.end method

.method private static g()Ljava/lang/String;
    .locals 7

    .prologue
    .line 127
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    const-string/jumbo v0, "No udid in activated state (!)"

    invoke-static {v0}, Lcom/viber/voip/registration/dj;->b(Ljava/lang/String;)V

    .line 133
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    .line 137
    const-string/jumbo v1, ""

    .line 140
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Lcom/viber/voip/registration/ActivationController;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    .line 142
    invoke-virtual {v3}, Lcom/viber/voip/registration/ActivationController;->getRegNumber()Ljava/lang/String;

    move-result-object v3

    .line 143
    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 144
    const-string/jumbo v0, "viber"

    .line 180
    :goto_0
    return-object v0

    .line 146
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    const-string/jumbo v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 150
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v3

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/viber/voip/registration/dj;->a:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 153
    :cond_2
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    :cond_3
    if-eqz v3, :cond_4

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "SECONDARY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    :goto_1
    :try_start_0
    invoke-static {v0}, Lcom/viber/voip/util/aj;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 169
    sget-object v0, Lcom/viber/voip/util/fq;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_5

    .line 170
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "error generating UDID - pattern doesn\'t match!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "error generating UDID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_5
    if-eqz v3, :cond_6

    const-string/jumbo v0, "secondary_udid"

    :goto_2
    invoke-interface {v2, v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 174
    if-eqz v3, :cond_7

    sget-object v0, Lcom/viber/voip/registration/dl;->e:Lcom/viber/voip/registration/dl;

    :goto_3
    invoke-static {v0, v1}, Lcom/viber/voip/registration/dj;->a(Lcom/viber/voip/registration/dl;Ljava/lang/String;)V

    .line 177
    const-string/jumbo v0, "device_hardware_key"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 178
    sget-object v0, Lcom/viber/voip/registration/dl;->c:Lcom/viber/voip/registration/dl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/viber/voip/registration/dj;->a(Lcom/viber/voip/registration/dl;Ljava/lang/String;)V

    move-object v0, v1

    .line 180
    goto/16 :goto_0

    .line 173
    :cond_6
    const-string/jumbo v0, "viber_udid"

    goto :goto_2

    .line 174
    :cond_7
    sget-object v0, Lcom/viber/voip/registration/dl;->b:Lcom/viber/voip/registration/dl;

    goto :goto_3
.end method
