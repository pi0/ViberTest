.class public Lcom/viber/voip/k/a;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerEndScreen;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerIncomingScreen;
.implements Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Z

.field private static c:Lcom/viber/voip/k/a;

.field private static final j:Ljava/util/regex/Pattern;


# instance fields
.field private d:Z

.field private e:Z

.field private f:J

.field private g:Lcom/zoobe/sdk/helper/ZoobeHelper;

.field private h:Z

.field private i:Z

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/k/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcom/viber/voip/k/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/k/a;->a:Ljava/lang/String;

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/k/a;->b:Z

    .line 63
    const-string/jumbo v0, "((?:(http|https|Http|Https):\\/\\/[a-zA-Z0-9]+.[a-zA-Z0-9]+.[a-zA-Z0-9]+\\/[a-zA-Z0-9]+\\/[a-zA-Z0-9]+.mp4))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/k/a;->j:Ljava/util/regex/Pattern;

    .line 67
    new-instance v0, Lcom/viber/voip/k/a;

    invoke-direct {v0}, Lcom/viber/voip/k/a;-><init>()V

    sput-object v0, Lcom/viber/voip/k/a;->c:Lcom/viber/voip/k/a;

    .line 69
    new-instance v0, Lcom/viber/voip/k/b;

    invoke-direct {v0}, Lcom/viber/voip/k/b;-><init>()V

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->getViberApp(Lcom/viber/voip/dw;)V

    .line 82
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/k/a;->d:Z

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/k/a;->i:Z

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/k/a;->k:Ljava/util/ArrayList;

    .line 85
    return-void
.end method

.method private a(Lcom/zoobe/sdk/helper/ZoobeHelper;)Landroid/content/Intent;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 183
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/k/a;->e:Z

    .line 185
    new-instance v3, Lcom/zoobe/sdk/helper/ZoobeParams;

    invoke-direct {v3}, Lcom/zoobe/sdk/helper/ZoobeParams;-><init>()V

    .line 186
    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->getUdid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/zoobe/sdk/helper/ZoobeParams;->uuid:Ljava/lang/String;

    .line 187
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, v3, Lcom/zoobe/sdk/helper/ZoobeParams;->locale:Ljava/util/Locale;

    .line 190
    :try_start_0
    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/registration/HardwareParameters;->getCC()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 194
    :goto_0
    if-nez v0, :cond_0

    .line 196
    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->getCountryCodeInt()I

    move-result v0

    .line 198
    :cond_0
    iput v0, v3, Lcom/zoobe/sdk/helper/ZoobeParams;->mcc:I

    .line 199
    const/16 v0, 0x190

    iput v0, v3, Lcom/zoobe/sdk/helper/ZoobeParams;->thumbWidth:I

    .line 200
    iput-boolean v1, v3, Lcom/zoobe/sdk/helper/ZoobeParams;->testingMode:Z

    .line 202
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/a/bc;->b()Z

    move-result v0

    iput-boolean v0, v3, Lcom/zoobe/sdk/helper/ZoobeParams;->isGATenabled:Z

    .line 203
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/a/bc;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/zoobe/sdk/helper/ZoobeParams;->gaTrackingKey:Ljava/lang/String;

    .line 204
    const v0, 0x7f0c07d6

    invoke-virtual {v2, v0}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/zoobe/sdk/helper/ZoobeParams;->iabKey:Ljava/lang/String;

    .line 206
    invoke-interface {p1, v3}, Lcom/zoobe/sdk/helper/ZoobeHelper;->getZoobeLaunchIntent(Lcom/zoobe/sdk/helper/ZoobeParams;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 191
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public static declared-synchronized a()Lcom/viber/voip/k/a;
    .locals 2

    .prologue
    .line 88
    const-class v0, Lcom/viber/voip/k/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/viber/voip/k/a;->c:Lcom/viber/voip/k/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(Lcom/viber/voip/k/a;Lcom/zoobe/sdk/helper/ZoobeHelper;)Lcom/zoobe/sdk/helper/ZoobeHelper;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/viber/voip/k/a;->g:Lcom/zoobe/sdk/helper/ZoobeHelper;

    return-object p1
.end method

.method private a(IILandroid/content/Intent;Lcom/zoobe/sdk/helper/ZoobeHelper;)Lcom/zoobe/sdk/helper/ZoobeResult;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleZoobeResponce requestCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/k/a;->h(Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/k/a;->e:Z

    .line 227
    const/16 v0, 0x2710

    if-ne p1, v0, :cond_2

    .line 228
    invoke-interface {p4, p1, p2, p3}, Lcom/zoobe/sdk/helper/ZoobeHelper;->handleZoobeResponse(IILandroid/content/Intent;)Lcom/zoobe/sdk/helper/ZoobeResult;

    move-result-object v0

    .line 229
    iget-boolean v1, v0, Lcom/zoobe/sdk/helper/ZoobeResult;->success:Z

    if-eqz v1, :cond_0

    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Zoobe returned : video url = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/zoobe/sdk/helper/ZoobeResult;->videoUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " Share url = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/zoobe/sdk/helper/ZoobeResult;->shareUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " link params = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/zoobe/sdk/helper/ZoobeResult;->linkParams:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/k/a;->h(Ljava/lang/String;)V

    .line 243
    :cond_0
    if-eqz p3, :cond_3

    .line 244
    const-string/jumbo v1, "PID"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 246
    :goto_0
    if-eq v1, v2, :cond_1

    .line 247
    const-string/jumbo v2, "onZoobeResponce kill zoobe process"

    invoke-static {v2}, Lcom/viber/voip/k/a;->h(Ljava/lang/String;)V

    .line 248
    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 252
    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/k/a;IILandroid/content/Intent;Lcom/zoobe/sdk/helper/ZoobeHelper;)Lcom/zoobe/sdk/helper/ZoobeResult;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/k/a;->a(IILandroid/content/Intent;Lcom/zoobe/sdk/helper/ZoobeHelper;)Lcom/zoobe/sdk/helper/ZoobeResult;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/zoobe/sdk/helper/ZoobeResult;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 311
    iget-object v0, p0, Lcom/zoobe/sdk/helper/ZoobeResult;->linkParams:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 281
    if-eqz p0, :cond_1

    .line 282
    const-string/jumbo v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 283
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 285
    const-string/jumbo v4, "VideoId"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    const-string/jumbo v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getMsgDownloadIdFromZoobeResult: downloadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/k/a;->h(Ljava/lang/String;)V

    .line 292
    :goto_1
    return-object v0

    .line 283
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_1
    const-string/jumbo v0, "zoobe_default_download_id"

    goto :goto_1
.end method

.method static synthetic a(Lcom/viber/voip/k/a;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/viber/voip/k/a;->l()V

    return-void
.end method

.method private declared-synchronized a(Lcom/viber/voip/k/i;)V
    .locals 1
    .parameter

    .prologue
    .line 411
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/viber/voip/k/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/viber/voip/k/i;->a(Lcom/zoobe/sdk/helper/ZoobeHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    :goto_0
    monitor-exit p0

    return-void

    .line 414
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/k/a;->g:Lcom/zoobe/sdk/helper/ZoobeHelper;

    if-nez v0, :cond_1

    .line 415
    invoke-direct {p0}, Lcom/viber/voip/k/a;->i()V

    .line 416
    iget-object v0, p0, Lcom/viber/voip/k/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 418
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/viber/voip/k/a;->g:Lcom/zoobe/sdk/helper/ZoobeHelper;

    invoke-interface {p1, v0}, Lcom/viber/voip/k/i;->a(Lcom/zoobe/sdk/helper/ZoobeHelper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-static {p0, p1}, Lcom/viber/voip/k/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/k/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/viber/voip/k/a;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/k/a;Lcom/zoobe/sdk/helper/ZoobeHelper;)Landroid/content/Intent;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/viber/voip/k/a;->a(Lcom/zoobe/sdk/helper/ZoobeHelper;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "zoobe_thumbnail_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 439
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/k/a;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 440
    return-void
.end method

.method public static c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter

    .prologue
    .line 301
    :try_start_0
    sget-object v0, Lcom/viber/voip/messages/extras/image/l;->a:Lcom/viber/voip/messages/extras/image/l;

    invoke-static {p0}, Lcom/viber/voip/k/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->b(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getThumbnailUriPathForSending: path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/k/a;->h(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-object v0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    const-string/jumbo v0, "getThumbnailUriPathForSending: SDCard not mounted!"

    invoke-static {v0}, Lcom/viber/voip/k/a;->h(Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/bd;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://b.zoobe.com/movies/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g()Lcom/viber/voip/k/a;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/viber/voip/k/a;->c:Lcom/viber/voip/k/a;

    return-object v0
.end method

.method static synthetic g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-static {p0}, Lcom/viber/voip/k/a;->h(Ljava/lang/String;)V

    return-void
.end method

.method private static h(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 436
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/k/a;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/viber/voip/k/a;->i:Z

    return v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/viber/voip/k/a;->h:Z

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lcom/viber/voip/c/g;->b()Lcom/viber/voip/c/b;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/k/c;

    invoke-direct {v1, p0}, Lcom/viber/voip/k/c;-><init>(Lcom/viber/voip/k/a;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/c/b;->a(Lcom/viber/voip/c/f;)V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/k/a;->h:Z

    .line 154
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendReleaseZoobeAudioBroadcastIfNeeded mZoobeRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/k/a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/k/a;->h(Ljava/lang/String;)V

    .line 367
    iget-boolean v0, p0, Lcom/viber/voip/k/a;->e:Z

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Lcom/viber/voip/k/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/k/f;-><init>(Lcom/viber/voip/k/a;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/k/a;->a(Lcom/viber/voip/k/i;)V

    .line 377
    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCloseBroadcastIfNeeded mZoobeRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/k/a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/k/a;->h(Ljava/lang/String;)V

    .line 381
    iget-boolean v0, p0, Lcom/viber/voip/k/a;->e:Z

    if-eqz v0, :cond_0

    .line 382
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/k/a;->e:Z

    .line 383
    new-instance v0, Lcom/viber/voip/k/g;

    invoke-direct {v0, p0}, Lcom/viber/voip/k/g;-><init>(Lcom/viber/voip/k/a;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/k/a;->a(Lcom/viber/voip/k/i;)V

    .line 392
    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "running ready callbacks ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/k/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/k/a;->h(Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/viber/voip/k/a;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/k/i;

    .line 430
    iget-object v2, p0, Lcom/viber/voip/k/a;->g:Lcom/zoobe/sdk/helper/ZoobeHelper;

    invoke-interface {v0, v2}, Lcom/viber/voip/k/i;->a(Lcom/zoobe/sdk/helper/ZoobeHelper;)V

    goto :goto_0

    .line 432
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/k/a;->k:Ljava/util/ArrayList;

    .line 433
    return-void
.end method


# virtual methods
.method public a(IILandroid/content/Intent;Lcom/viber/voip/k/h;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 214
    new-instance v0, Lcom/viber/voip/k/e;

    move-object v1, p0

    move-object v2, p4

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/k/e;-><init>(Lcom/viber/voip/k/a;Lcom/viber/voip/k/h;IILandroid/content/Intent;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/k/a;->a(Lcom/viber/voip/k/i;)V

    .line 222
    return-void
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-wide p1, p0, Lcom/viber/voip/k/a;->f:J

    .line 336
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter

    .prologue
    .line 170
    new-instance v0, Lcom/viber/voip/k/d;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/k/d;-><init>(Lcom/viber/voip/k/a;Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/k/a;->a(Lcom/viber/voip/k/i;)V

    .line 180
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "enable zoobe enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 272
    iget-boolean v0, p0, Lcom/viber/voip/k/a;->d:Z

    if-eq v0, p1, :cond_0

    .line 273
    iput-boolean p1, p0, Lcom/viber/voip/k/a;->d:Z

    .line 274
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "ANIMATED_MESSAGES_ENABLED"

    iget-boolean v2, p0, Lcom/viber/voip/k/a;->d:Z

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_0
    monitor-exit p0

    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 328
    if-eqz p1, :cond_0

    .line 329
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/viber/voip/k/a;->f:J

    .line 331
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "ANIMATED_MESSAGES_TOOLTIP_SHOWN"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 332
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/viber/voip/k/a;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/k/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/k/a;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 324
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "ANIMATED_MESSAGES_TOOLTIP_SHOWN"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 339
    iget-wide v0, p0, Lcom/viber/voip/k/a;->f:J

    return-wide v0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 343
    const-string/jumbo v0, "setShowZoobeSplash"

    invoke-static {v0}, Lcom/viber/voip/k/a;->h(Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "ANIMATED_MESSAGES_SHOW_TOOLTIP"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 345
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hanldeViberOnForeground className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " mZoobeRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/k/a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/k/a;->h(Ljava/lang/String;)V

    .line 360
    iget-boolean v0, p0, Lcom/viber/voip/k/a;->e:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/viber/voip/phone/PhoneFragmentActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/viber/voip/k/a;->k()V

    .line 363
    :cond_0
    return-void
.end method

.method public f()Z
    .locals 3

    .prologue
    .line 348
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "ANIMATED_MESSAGES_SHOW_TOOLTIP"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public hideEndCall()V
    .locals 0

    .prologue
    .line 465
    return-void
.end method

.method public hideReception()V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method public onAnimatedMessagesSupported()V
    .locals 1

    .prologue
    .line 258
    const-string/jumbo v0, "onAnimatedMessagesSupported"

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/k/a;->a(Z)V

    .line 260
    return-void
.end method

.method public onCallEnded(JZLjava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 449
    return-void
.end method

.method public onCallStarted(Z)V
    .locals 2
    .parameter

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCallStarted mZoobeRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/k/a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/k/a;->h(Ljava/lang/String;)V

    .line 405
    iget-boolean v0, p0, Lcom/viber/voip/k/a;->e:Z

    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/viber/voip/k/a;->k()V

    .line 408
    :cond_0
    return-void
.end method

.method public onHangup()V
    .locals 0

    .prologue
    .line 453
    return-void
.end method

.method public showEndCall()V
    .locals 0

    .prologue
    .line 461
    return-void
.end method

.method public showReception(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showReception mZoobeRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/k/a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/k/a;->h(Ljava/lang/String;)V

    .line 397
    iget-boolean v0, p0, Lcom/viber/voip/k/a;->e:Z

    if-eqz v0, :cond_0

    .line 398
    invoke-direct {p0}, Lcom/viber/voip/k/a;->j()V

    .line 400
    :cond_0
    return-void
.end method
