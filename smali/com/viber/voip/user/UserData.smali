.class public Lcom/viber/voip/user/UserData;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cachedDownloadId:Ljava/lang/String;

.field private static cachedOwnerName:Ljava/lang/String;

.field private static cachedOwnerPhotoUri:Landroid/net/Uri;

.field private static isNameUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isPhotoUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "display_name"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "image_uri"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "server_uploaded"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "name_server_uploaded"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "sync_user_data"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 90
    sput-object v2, Lcom/viber/voip/user/UserData;->cachedOwnerName:Ljava/lang/String;

    .line 91
    sput-object v2, Lcom/viber/voip/user/UserData;->cachedOwnerPhotoUri:Landroid/net/Uri;

    .line 92
    sput-object v2, Lcom/viber/voip/user/UserData;->isPhotoUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    sput-object v2, Lcom/viber/voip/user/UserData;->isNameUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    invoke-static {}, Lcom/viber/voip/user/UserDataFileKeeper;->clearUserInfoDataInFile()V

    .line 95
    invoke-static {}, Lcom/viber/voip/user/UserData;->notifyOwnerChange()V

    .line 96
    return-void
.end method

.method private static getDisplayName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "display_name"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getImage()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 43
    sget-object v0, Lcom/viber/voip/user/UserData;->cachedOwnerPhotoUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "image_uri"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/user/UserData;->cachedOwnerPhotoUri:Landroid/net/Uri;

    .line 49
    :cond_0
    sget-object v0, Lcom/viber/voip/user/UserData;->cachedOwnerPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method public static getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/viber/voip/user/UserData;->cachedOwnerName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 26
    invoke-static {}, Lcom/viber/voip/user/UserData;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/user/UserData;->cachedOwnerName:Ljava/lang/String;

    .line 28
    :cond_0
    sget-object v0, Lcom/viber/voip/user/UserData;->cachedOwnerName:Ljava/lang/String;

    return-object v0
.end method

.method public static getViberImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    invoke-static {}, Lcom/viber/voip/user/UserData;->getImage()Landroid/net/Uri;

    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static getViberName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/viber/voip/user/UserData;->getName()Ljava/lang/String;

    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static declared-synchronized isNeedSyncUserInfo()Z
    .locals 4

    .prologue
    .line 67
    const-class v1, Lcom/viber/voip/user/UserData;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "sync_user_data"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isUserNameUploadedToServer()Z
    .locals 5

    .prologue
    .line 60
    const-class v1, Lcom/viber/voip/user/UserData;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/viber/voip/user/UserData;->isNameUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    const-string/jumbo v3, "name_server_uploaded"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/viber/voip/user/UserData;->isNameUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    :cond_0
    sget-object v0, Lcom/viber/voip/user/UserData;->isNameUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized isUserPhotoUploadedToServer()Z
    .locals 5

    .prologue
    .line 53
    const-class v1, Lcom/viber/voip/user/UserData;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/viber/voip/user/UserData;->isPhotoUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    const-string/jumbo v3, "server_uploaded"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/viber/voip/user/UserData;->isPhotoUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    :cond_0
    sget-object v0, Lcom/viber/voip/user/UserData;->isPhotoUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static notifyOwnerChange()V
    .locals 2

    .prologue
    .line 75
    sget-object v0, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/user/UserData$1;

    invoke-direct {v1}, Lcom/viber/voip/user/UserData$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method

.method public static setImage(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 113
    sput-object p1, Lcom/viber/voip/user/UserData;->cachedOwnerPhotoUri:Landroid/net/Uri;

    .line 114
    sput-object p0, Lcom/viber/voip/user/UserData;->cachedDownloadId:Ljava/lang/String;

    .line 115
    if-nez p1, :cond_0

    .line 116
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "image_uri"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 120
    :goto_0
    const/4 v0, 0x3

    const-class v1, Lcom/viber/voip/user/UserData;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setImage imageUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/user/UserData;->cachedOwnerName:Ljava/lang/String;

    sget-object v2, Lcom/viber/voip/user/UserData;->cachedOwnerPhotoUri:Landroid/net/Uri;

    sget-object v3, Lcom/viber/voip/user/UserData;->cachedDownloadId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/user/UserDataFileKeeper;->saveUserInfoToFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/b/w;->b(Landroid/net/Uri;)V

    .line 124
    invoke-static {}, Lcom/viber/voip/user/UserData;->notifyOwnerChange()V

    .line 125
    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "image_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    goto :goto_0
.end method

.method public static setName(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 100
    sput-object p0, Lcom/viber/voip/user/UserData;->cachedOwnerName:Ljava/lang/String;

    .line 102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "display_name"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 107
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/user/UserData;->cachedOwnerName:Ljava/lang/String;

    sget-object v2, Lcom/viber/voip/user/UserData;->cachedOwnerPhotoUri:Landroid/net/Uri;

    sget-object v3, Lcom/viber/voip/user/UserData;->cachedDownloadId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/user/UserDataFileKeeper;->saveUserInfoToFile(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/viber/voip/user/UserData;->notifyOwnerChange()V

    .line 110
    return-void

    .line 105
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "display_name"

    invoke-interface {v0, v1, p0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    goto :goto_0
.end method

.method public static setNameUploadedToServer(Z)V
    .locals 2
    .parameter

    .prologue
    .line 144
    sget-object v0, Lcom/viber/voip/user/UserData;->isNameUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    .line 145
    sget-object v0, Lcom/viber/voip/user/UserData;->isNameUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 150
    :goto_0
    sget-object v0, Lcom/viber/voip/user/UserData;->isNameUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_1

    .line 151
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "name_server_uploaded"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 155
    :goto_1
    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/viber/voip/user/UserData;->isNameUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "name_server_uploaded"

    invoke-interface {v0, v1, p0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    goto :goto_1
.end method

.method public static setNeedSyncUserInfo(Z)V
    .locals 2
    .parameter

    .prologue
    .line 71
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "sync_user_data"

    invoke-interface {v0, v1, p0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 72
    return-void
.end method

.method public static setPhotoUploadedToServer(Z)V
    .locals 2
    .parameter

    .prologue
    .line 129
    sget-object v0, Lcom/viber/voip/user/UserData;->isPhotoUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    .line 130
    sget-object v0, Lcom/viber/voip/user/UserData;->isPhotoUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    :goto_0
    sget-object v0, Lcom/viber/voip/user/UserData;->isPhotoUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v0, :cond_1

    .line 136
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "server_uploaded"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 140
    :goto_1
    return-void

    .line 132
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/viber/voip/user/UserData;->isPhotoUploadedToServer:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "server_uploaded"

    invoke-interface {v0, v1, p0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    goto :goto_1
.end method

.method public static setUserData(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 159
    sput-object p1, Lcom/viber/voip/user/UserData;->cachedOwnerPhotoUri:Landroid/net/Uri;

    .line 160
    sput-object p0, Lcom/viber/voip/user/UserData;->cachedOwnerName:Ljava/lang/String;

    .line 162
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "display_name"

    invoke-interface {v0, v1, p0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 163
    if-nez p1, :cond_0

    .line 164
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "image_uri"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "image_uri"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    goto :goto_0
.end method
