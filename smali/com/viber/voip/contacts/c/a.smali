.class public Lcom/viber/voip/contacts/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/handling/SyncUserInfoManager$UserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/handling/SyncUserInfoManager$GetUnknownUserInfoListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/viber/voip/contacts/c/s;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/viber/voip/contacts/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/a;->a:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/a;->b:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/a;->c:Ljava/util/Map;

    .line 162
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/c/a;->d:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 253
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/viber/voip/w;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 263
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-object v0

    .line 264
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/viber/voip/w;->A:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 266
    :cond_2
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a()Ljava/util/Queue;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/viber/voip/contacts/c/a;->d:Ljava/util/Queue;

    return-object v0
.end method

.method public static a(Lcom/viber/jni/CGetUserDetails;Lcom/viber/voip/contacts/c/v;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 475
    iget-object v0, p0, Lcom/viber/jni/CGetUserDetails;->Name:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/user/UserData;->setName(Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcom/viber/jni/CGetUserDetails;->Name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/jni/CGetUserDetails;->DownloadID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 477
    :cond_0
    const-string/jumbo v0, "checkIsUserNeedSetInfo. user has already set info."

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/viber/jni/CGetUserDetails;->DownloadID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    const-string/jumbo v0, "checkIsUserNeedSetInfo. save empty photo to the preferences"

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 480
    invoke-static {v1, v1}, Lcom/viber/voip/user/UserData;->setImage(Ljava/lang/String;Landroid/net/Uri;)V

    .line 496
    :goto_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/viber/voip/contacts/c/q;->b:Lcom/viber/voip/contacts/c/q;

    invoke-interface {p1, v0}, Lcom/viber/voip/contacts/c/v;->a(Lcom/viber/voip/contacts/c/q;)V

    .line 502
    :cond_1
    :goto_1
    return-void

    .line 482
    :cond_2
    iget-object v0, p0, Lcom/viber/jni/CGetUserDetails;->DownloadID:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 483
    const-string/jumbo v0, "checkIsUserNeedSetInfo. save info to the preferences"

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/viber/jni/CGetUserDetails;->DownloadID:Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/jni/CGetUserDetails;->DownloadID:Ljava/lang/String;

    invoke-static {v1}, Lcom/viber/voip/contacts/c/a;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/user/UserData;->setImage(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 487
    :cond_3
    const-string/jumbo v0, "checkIsUserNeedSetInfo. download photo and save info to the preferences"

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 488
    iget-object v0, p0, Lcom/viber/jni/CGetUserDetails;->DownloadID:Ljava/lang/String;

    const/4 v1, 0x1

    new-instance v2, Lcom/viber/voip/contacts/c/k;

    invoke-direct {v2, p0}, Lcom/viber/voip/contacts/c/k;-><init>(Lcom/viber/jni/CGetUserDetails;)V

    invoke-static {v0, v1, v2}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;ZLcom/viber/voip/contacts/c/r;)V

    goto :goto_0

    .line 498
    :cond_4
    const-string/jumbo v0, "checkIsUserNeedSetInfo. user photoId is empty! show ContactDetails Activity."

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 499
    invoke-static {v1, v1}, Lcom/viber/voip/user/UserData;->setImage(Ljava/lang/String;Landroid/net/Uri;)V

    .line 500
    if-eqz p1, :cond_1

    sget-object v0, Lcom/viber/voip/contacts/c/q;->a:Lcom/viber/voip/contacts/c/q;

    invoke-interface {p1, v0}, Lcom/viber/voip/contacts/c/v;->a(Lcom/viber/voip/contacts/c/q;)V

    goto :goto_1
.end method

.method public static declared-synchronized a(Lcom/viber/voip/contacts/c/v;)V
    .locals 4
    .parameter

    .prologue
    .line 410
    const-class v1, Lcom/viber/voip/contacts/c/a;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v0

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkIsUserNeedSetInfo ownNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 412
    new-instance v2, Lcom/viber/voip/contacts/c/h;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/contacts/c/h;-><init>(Lcom/viber/voip/contacts/c/v;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/viber/voip/user/UserDataFileKeeper;->obtainLocalUserInfo(Lcom/viber/voip/user/UserDataFileKeeper$RecoverReply;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit v1

    return-void

    .line 410
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Ljava/lang/String;Lcom/viber/voip/contacts/c/r;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;ZLcom/viber/voip/contacts/c/r;)V

    .line 167
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/viber/voip/contacts/c/v;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 458
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->e()Lcom/viber/voip/messages/controller/dn;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance v2, Lcom/viber/voip/contacts/c/j;

    invoke-direct {v2, p1}, Lcom/viber/voip/contacts/c/j;-><init>(Lcom/viber/voip/contacts/c/v;)V

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/controller/dn;->a([Ljava/lang/String;Lcom/viber/voip/messages/controller/do;)V

    .line 472
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/c/t;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/viber/voip/contacts/c/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/c/t;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;ZLcom/viber/voip/contacts/c/r;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/viber/voip/contacts/c/a;->d(Ljava/lang/String;ZLcom/viber/voip/contacts/c/r;)V

    return-void
.end method

.method public static a(Ljava/util/Map;Lcom/viber/voip/contacts/c/u;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/viber/voip/contacts/c/u;",
            ")V"
        }
    .end annotation

    .prologue
    .line 617
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/c/c;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/contacts/c/c;-><init>(Ljava/util/Map;Lcom/viber/voip/contacts/c/u;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 659
    return-void
.end method

.method public static a([Lcom/viber/jni/GroupUserInfo;)V
    .locals 6
    .parameter

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addPhotoToParticipants number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 511
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p0, :cond_2

    .line 512
    :cond_0
    const-string/jumbo v0, "Can\'t sync photos without SD card!"

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 524
    :cond_1
    return-void

    .line 515
    :cond_2
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    .line 516
    iget-object v3, v2, Lcom/viber/jni/GroupUserInfo;->downloadID:Ljava/lang/String;

    iget-object v4, v2, Lcom/viber/jni/GroupUserInfo;->phoneNumber:Ljava/lang/String;

    new-instance v5, Lcom/viber/voip/contacts/c/l;

    invoke-direct {v5, v2}, Lcom/viber/voip/contacts/c/l;-><init>(Lcom/viber/jni/GroupUserInfo;)V

    invoke-static {v3, v4, v5}, Lcom/viber/voip/contacts/c/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/c/t;)V

    .line 515
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "addPhotoToParticipants number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 534
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    const-string/jumbo v0, "Can\'t sync photos without SD card!"

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 607
    :goto_0
    return-void

    .line 539
    :cond_0
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/c/m;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/c/m;-><init>([Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Z)Z
    .locals 0
    .parameter

    .prologue
    .line 39
    sput-boolean p0, Lcom/viber/voip/contacts/c/a;->e:Z

    return p0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 273
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 274
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "try to recovery image with recoveryId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 275
    new-instance v0, Lcom/viber/voip/contacts/c/f;

    invoke-direct {v0}, Lcom/viber/voip/contacts/c/f;-><init>()V

    invoke-static {p0, v0}, Lcom/viber/voip/contacts/c/a;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/r;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/c/t;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 289
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p0}, Lcom/viber/voip/contacts/c/t;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-static {p0}, Lcom/viber/voip/contacts/c/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    invoke-static {p0}, Lcom/viber/voip/contacts/c/a;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p2, p1, v0, p0}, Lcom/viber/voip/contacts/c/t;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_1
    new-instance v0, Lcom/viber/voip/contacts/c/g;

    invoke-direct {v0, p2, p1, p0}, Lcom/viber/voip/contacts/c/g;-><init>(Lcom/viber/voip/contacts/c/t;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/viber/voip/contacts/c/a;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/r;)V

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;ZLcom/viber/voip/contacts/c/r;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;ZLcom/viber/voip/contacts/c/r;)V

    return-void
.end method

.method static synthetic b()Z
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/viber/voip/contacts/c/a;->e:Z

    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 662
    const/4 v0, 0x4

    sget-object v1, Lcom/viber/voip/contacts/c/a;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 663
    return-void
.end method

.method private static c(Ljava/lang/String;ZLcom/viber/voip/contacts/c/r;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 170
    if-nez p0, :cond_0

    .line 228
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SYNC Queue photoId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " is downloading = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/viber/voip/contacts/c/a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " downloadPhotoIdList.size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/contacts/c/a;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 172
    sget-object v1, Lcom/viber/voip/contacts/c/a;->d:Ljava/util/Queue;

    monitor-enter v1

    .line 173
    :try_start_0
    new-instance v0, Lcom/viber/voip/contacts/c/s;

    invoke-direct {v0, p0, p2}, Lcom/viber/voip/contacts/c/s;-><init>(Ljava/lang/String;Lcom/viber/voip/contacts/c/r;)V

    .line 174
    sget-object v2, Lcom/viber/voip/contacts/c/a;->d:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SYNC Queue addDownloadTask "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 176
    sget-object v2, Lcom/viber/voip/contacts/c/a;->d:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v0, Lcom/viber/voip/contacts/c/b;

    invoke-direct {v0, p1}, Lcom/viber/voip/contacts/c/b;-><init>(Z)V

    .line 220
    sget-boolean v2, Lcom/viber/voip/contacts/c/a;->e:Z

    if-nez v2, :cond_1

    .line 221
    const/4 v2, 0x1

    sput-boolean v2, Lcom/viber/voip/contacts/c/a;->e:Z

    .line 222
    invoke-static {p0, p1, v0}, Lcom/viber/voip/contacts/c/a;->d(Ljava/lang/String;ZLcom/viber/voip/contacts/c/r;)V

    .line 227
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 225
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SYNC Queue contains such "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static d(Ljava/lang/String;ZLcom/viber/voip/contacts/c/r;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "downloadPhoto with photoId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 233
    new-instance v0, Lcom/viber/voip/contacts/c/e;

    invoke-direct {v0, p2}, Lcom/viber/voip/contacts/c/e;-><init>(Lcom/viber/voip/contacts/c/r;)V

    invoke-static {p0, p1, v0}, Lcom/viber/voip/util/upload/s;->a(Ljava/lang/String;ZLcom/viber/voip/util/upload/b;)V

    .line 250
    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 128
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/viber/voip/w;->A:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 130
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "is file \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' already downloaded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/contacts/c/a;->c(Ljava/lang/String;)V

    .line 131
    return v0

    .line 129
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
