.class public Lcom/viber/voip/messages/extras/fb/s;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;

.field private static k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/viber/voip/messages/extras/fb/ac;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/viber/voip/ViberApplication;

.field private final c:Lcom/viber/jni/PhoneControllerWrapper;

.field private final d:Landroid/os/Handler;

.field private e:Lcom/viber/voip/messages/extras/fb/ad;

.field private f:Lcom/viber/voip/a/aw;

.field private g:Z

.field private j:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/messages/extras/fb/af;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/facebook/Session$StatusCallback;

.field private m:Lcom/facebook/Request$GraphUserCallback;

.field private n:Lcom/viber/voip/messages/extras/fb/ag;

.field private o:Lcom/facebook/Request$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 74
    const-class v0, Lcom/viber/voip/messages/extras/fb/s;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/extras/fb/s;->a:Ljava/lang/String;

    .line 98
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "user_videos"

    aput-object v1, v0, v3

    const-string/jumbo v1, "read_stream"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "user_photos"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "user_birthday"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "friends_birthday"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/messages/extras/fb/s;->h:[Ljava/lang/String;

    .line 99
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "publish_stream"

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/messages/extras/fb/s;->i:[Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/extras/fb/s;->k:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 94
    new-instance v0, Lcom/viber/voip/a/aw;

    invoke-direct {v0}, Lcom/viber/voip/a/aw;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->f:Lcom/viber/voip/a/aw;

    .line 96
    iput-boolean v2, p0, Lcom/viber/voip/messages/extras/fb/s;->g:Z

    .line 101
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->j:Ljava/util/Collection;

    .line 119
    new-instance v0, Lcom/viber/voip/messages/extras/fb/t;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/fb/t;-><init>(Lcom/viber/voip/messages/extras/fb/s;)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->l:Lcom/facebook/Session$StatusCallback;

    .line 291
    new-instance v0, Lcom/viber/voip/messages/extras/fb/u;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/fb/u;-><init>(Lcom/viber/voip/messages/extras/fb/s;)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->m:Lcom/facebook/Request$GraphUserCallback;

    .line 452
    new-instance v0, Lcom/viber/voip/messages/extras/fb/w;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/fb/w;-><init>(Lcom/viber/voip/messages/extras/fb/s;)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->o:Lcom/facebook/Request$Callback;

    .line 112
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    .line 113
    sget-object v0, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->d:Landroid/os/Handler;

    .line 114
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->c:Lcom/viber/jni/PhoneControllerWrapper;

    .line 115
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->c:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 116
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->c:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0, p0}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 117
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/fb/s;Ljava/io/File;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/fb/s;->a(Ljava/io/File;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/io/File;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter

    .prologue
    .line 595
    const/high16 v0, 0x1000

    :try_start_0
    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 601
    :goto_0
    return-object v0

    .line 597
    :catch_0
    move-exception v0

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 601
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/fb/s;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/fb/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FacebookManager.notifySharingStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 834
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/s;->j:Ljava/util/Collection;

    monitor-enter v1

    .line 835
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/s;->j:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 836
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/fb/af;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 838
    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/messages/extras/fb/af;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 836
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 840
    :cond_0
    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FacebookManager.notifyError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 857
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/s;->j:Ljava/util/Collection;

    monitor-enter v1

    .line 858
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/s;->j:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 859
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 860
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/fb/af;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v7, p7

    .line 861
    invoke-interface/range {v0 .. v7}, Lcom/viber/voip/messages/extras/fb/af;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_0

    .line 859
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 863
    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/facebook/Session;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 188
    if-nez p2, :cond_0

    .line 190
    const-string/jumbo v0, "facebook-session"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 191
    const-string/jumbo v1, "access_token"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oldAccessToken ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 194
    if-eqz v1, :cond_0

    .line 196
    new-instance v2, Lcom/facebook/Session;

    invoke-direct {v2, p1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 198
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    const-string/jumbo v3, "access_token"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    sget-object v0, Lcom/viber/voip/messages/extras/fb/s;->i:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v4, v4, v4, v0}, Lcom/facebook/AccessToken;->createFromExistingAccessToken(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/AccessTokenSource;Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/s;->l:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V

    .line 206
    invoke-static {v2}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 209
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FacebookManager.getComment: to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 728
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 729
    const-string/jumbo v1, "fb_comment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    if-eqz p8, :cond_0

    .line 731
    invoke-virtual {v0, p8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 733
    :cond_0
    const-string/jumbo v1, "msg_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 734
    const-string/jumbo v1, "msg_body"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    const-string/jumbo v1, "msg_mime_type"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    const-string/jumbo v1, "msg_uri"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 738
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 739
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/viber/voip/messages/extras/fb/ai;Landroid/net/Uri;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 648
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    const/4 v5, 0x0

    move-object v2, p3

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 650
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v0

    .line 651
    invoke-static {p1, p5}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 653
    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 654
    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/fb/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/s;->f:Lcom/viber/voip/a/aw;

    iget-object v2, v2, Lcom/viber/voip/a/aw;->a:Lcom/viber/voip/a/ao;

    sget-object v3, Lcom/viber/voip/a/aq;->a:Lcom/viber/voip/a/aq;

    invoke-virtual {v2, v3, v0}, Lcom/viber/voip/a/ao;->a(Lcom/viber/voip/a/aq;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 658
    if-eqz p4, :cond_0

    invoke-virtual {p4, v0}, Lcom/viber/voip/messages/extras/fb/ai;->b(Ljava/lang/String;)V

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    .line 661
    if-eqz v0, :cond_0

    .line 663
    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 666
    :try_start_0
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 667
    if-eqz p4, :cond_0

    invoke-virtual {p4, v0}, Lcom/viber/voip/messages/extras/fb/ai;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 668
    :catch_0
    move-exception v0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Post Facebook media, responce - JSON error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    const-string/jumbo v0, "Session opened"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    iget-object v1, v1, Lcom/viber/voip/a/an;->a:Lcom/viber/voip/a/ao;

    sget-object v2, Lcom/viber/voip/a/aq;->a:Lcom/viber/voip/a/aq;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/ao;->b(Lcom/viber/voip/a/aq;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 130
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->e:Lcom/viber/voip/messages/extras/fb/ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->e:Lcom/viber/voip/messages/extras/fb/ad;

    sget-object v1, Lcom/viber/voip/messages/extras/fb/s;->i:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/extras/fb/s;->a([Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/fb/ad;->onAuthorizationSuccess(Z)V

    .line 131
    :cond_0
    sget-object v0, Lcom/viber/voip/messages/extras/fb/s;->i:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/fb/s;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/viber/voip/messages/extras/fb/s;->g:Z

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/content/Context;)V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/extras/fb/s;->g:Z

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->j()V

    .line 138
    :cond_2
    invoke-virtual {p1}, Lcom/facebook/Session;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 139
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    iget-object v1, v1, Lcom/viber/voip/a/an;->a:Lcom/viber/voip/a/ao;

    sget-object v2, Lcom/viber/voip/a/aq;->a:Lcom/viber/voip/a/aq;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/ao;->b(Lcom/viber/voip/a/aq;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 140
    const-string/jumbo v0, "Session closed"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->e:Lcom/viber/voip/messages/extras/fb/ad;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->e:Lcom/viber/voip/messages/extras/fb/ad;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/ad;->onAuthorizationCanceled()V

    .line 143
    :cond_3
    if-eqz p3, :cond_4

    .line 144
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    iget-object v1, v1, Lcom/viber/voip/a/an;->a:Lcom/viber/voip/a/ao;

    sget-object v2, Lcom/viber/voip/a/aq;->a:Lcom/viber/voip/a/aq;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/ao;->b(Lcom/viber/voip/a/aq;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 147
    :cond_4
    return-void
.end method

.method private a(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 299
    const-string/jumbo v0, "Facebook profile loaded"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 300
    if-eqz p1, :cond_2

    .line 301
    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-interface {p1}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Save Facebook UserData userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " userName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " stored userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 305
    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/messages/extras/fb/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->h()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/extras/fb/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->e:Lcom/viber/voip/messages/extras/fb/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->e:Lcom/viber/voip/messages/extras/fb/ad;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/ad;->onFacebookProfileStored()V

    .line 318
    :cond_1
    return-void

    .line 309
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_3

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Facebook User Profile is null, reason - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_3
    const-string/jumbo v0, "Facebook User Profile is null"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/fb/s;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct/range {p0 .. p6}, Lcom/viber/voip/messages/extras/fb/s;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/fb/s;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct/range {p0 .. p7}, Lcom/viber/voip/messages/extras/fb/s;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/fb/s;Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct/range {p0 .. p7}, Lcom/viber/voip/messages/extras/fb/s;->d(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/fb/s;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/viber/voip/messages/extras/fb/ai;Landroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Lcom/viber/voip/messages/extras/fb/ai;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/fb/s;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/fb/s;Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/facebook/model/GraphUser;Lcom/facebook/Response;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/fb/s;)Z
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->m()Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 279
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 280
    invoke-interface {p2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 284
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private a([Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 270
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 272
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/viber/voip/messages/extras/fb/s;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/jni/PhoneControllerWrapper;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->c:Lcom/viber/jni/PhoneControllerWrapper;

    return-object v0
.end method

.method private b(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FacebookManager.notifyShared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 845
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/s;->j:Ljava/util/Collection;

    monitor-enter v1

    .line 846
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/s;->j:Ljava/util/Collection;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 847
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/fb/af;

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 849
    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/messages/extras/fb/af;->b(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 847
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 851
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/extras/fb/s;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 72
    invoke-direct/range {p0 .. p6}, Lcom/viber/voip/messages/extras/fb/s;->b(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 72
    invoke-static {p0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->d:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/extras/fb/v;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/messages/extras/fb/v;-><init>(Lcom/viber/voip/messages/extras/fb/s;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 359
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/voip/ViberApplication;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 524
    const-string/jumbo v0, "Error"

    .line 525
    if-eqz v0, :cond_0

    .line 526
    const-string/jumbo v0, "com.facebook.FacebookException:"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 527
    const-string/jumbo v1, "Error validating access token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "Error validating access token"

    .line 530
    :cond_0
    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/extras/fb/s;)Lcom/viber/voip/messages/extras/fb/ag;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->n:Lcom/viber/voip/messages/extras/fb/ag;

    return-object v0
.end method

.method private d(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 573
    const-string/jumbo v0, "image"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual/range {p0 .. p7}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :goto_0
    return-void

    .line 575
    :cond_0
    const-string/jumbo v0, "video"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    invoke-virtual/range {p0 .. p7}, Lcom/viber/voip/messages/extras/fb/s;->b(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 578
    :cond_1
    const-string/jumbo v0, "text"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    .line 579
    invoke-virtual/range {p0 .. p6}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_2
    const-string/jumbo v0, "animated_message"

    invoke-virtual {v0, p5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_3

    .line 581
    invoke-virtual/range {p0 .. p6}, Lcom/viber/voip/messages/extras/fb/s;->b(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 583
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/messages/extras/fb/FacebookDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 585
    const-string/jumbo v1, "dialog_alert"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string/jumbo v1, "message"

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    const v3, 0x7f0c043c

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 589
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1019
    return-void
.end method

.method private e(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 605
    iget-object v9, p0, Lcom/viber/voip/messages/extras/fb/s;->d:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/extras/fb/y;

    move-object v1, p0

    move-object/from16 v2, p7

    move-object v3, p1

    move-object/from16 v4, p6

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/messages/extras/fb/y;-><init>(Lcom/viber/voip/messages/extras/fb/s;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 626
    return-void
.end method

.method private f(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 629
    iget-object v9, p0, Lcom/viber/voip/messages/extras/fb/s;->d:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/extras/fb/z;

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/messages/extras/fb/z;-><init>(Lcom/viber/voip/messages/extras/fb/s;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 645
    return-void
.end method

.method static synthetic g()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/viber/voip/messages/extras/fb/s;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method private h()Lcom/facebook/Session;
    .locals 2

    .prologue
    .line 257
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 259
    if-nez v0, :cond_1

    .line 260
    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcom/facebook/Session;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    invoke-direct {v0, v1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 263
    :cond_0
    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 266
    :cond_1
    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 326
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    .line 327
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->m()Z

    move-result v1

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryToreportFacebookStatisticsIfNeeded: isOnline="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " isFbStatisticsReported="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->c:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->h()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->l()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->h()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/extras/fb/s;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 362
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/s;->m:Lcom/facebook/Request$GraphUserCallback;

    invoke-static {v0, v1}, Lcom/facebook/Request;->executeMeRequestAsync(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/RequestAsyncTask;

    .line 363
    return-void
.end method

.method private k()Landroid/os/Bundle;
    .locals 6

    .prologue
    const v5, 0x7f0c07ac

    .line 469
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 470
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 472
    :try_start_0
    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    const v4, 0x7f0c07a6

    invoke-virtual {v3, v4}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 473
    const-string/jumbo v2, "link"

    iget-object v3, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    const v4, 0x7f0c07ac

    invoke-virtual {v3, v4}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 474
    const-string/jumbo v2, "actions"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    const-string/jumbo v0, "picture"

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    const v3, 0x7f0c07aa

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string/jumbo v0, "name"

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    const v3, 0x7f0c044c

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    const-string/jumbo v0, "link"

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v2, v5}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string/jumbo v0, "caption"

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    const v3, 0x7f0c07ab

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-string/jumbo v0, "description"

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    const v3, 0x7f0c044d

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-object v1

    .line 475
    :catch_0
    move-exception v0

    .line 476
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 796
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "fb_id"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized m()Z
    .locals 3

    .prologue
    .line 800
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "fb_is_statistics_reported"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x6

    .line 390
    if-nez p1, :cond_0

    .line 391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "userId must be not null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_0
    const-string/jumbo v0, ""

    .line 398
    :try_start_0
    const-string/jumbo v0, "select url from profile_pic where id=\'%s\' and height=\'%d\' and width=\'%d\'"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x2d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x2d0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 399
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 400
    const-string/jumbo v1, "q"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    const-string/jumbo v2, "/fql"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 403
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 405
    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 407
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadUserPhoto photoUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 422
    :goto_0
    :try_start_1
    new-instance v1, Ljava/net/URL;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://graph.facebook.com/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/picture?width="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2d0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "&height="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2d0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/viber/voip/messages/extras/fb/c; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    .line 425
    :try_start_2
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 426
    if-nez v0, :cond_4

    .line 427
    new-instance v0, Lcom/viber/voip/messages/extras/fb/c;

    const-string/jumbo v2, "Failed to decode facebook user photo, bitmap is null"

    invoke-direct {v0, v2}, Lcom/viber/voip/messages/extras/fb/c;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/viber/voip/messages/extras/fb/c; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 430
    :catch_0
    move-exception v0

    .line 431
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 435
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_2
    if-eqz v6, :cond_2

    .line 437
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 442
    :cond_2
    :goto_3
    throw v0

    .line 410
    :cond_3
    :try_start_5
    const-string/jumbo v0, ""

    .line 411
    const-string/jumbo v1, "loadUserPhoto - there are no photos in the user album"

    invoke-static {v1}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 414
    :catch_1
    move-exception v0

    .line 415
    new-instance v1, Lcom/viber/voip/messages/extras/fb/c;

    invoke-direct {v1, v0}, Lcom/viber/voip/messages/extras/fb/c;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 416
    :catch_2
    move-exception v0

    .line 417
    new-instance v1, Lcom/viber/voip/messages/extras/fb/c;

    invoke-direct {v1, v0}, Lcom/viber/voip/messages/extras/fb/c;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 435
    :cond_4
    if-eqz v1, :cond_5

    .line 437
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 442
    :cond_5
    :goto_4
    return-object v0

    .line 438
    :catch_3
    move-exception v1

    .line 439
    sget-object v2, Lcom/viber/voip/messages/extras/fb/s;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to close input stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 432
    :catch_4
    move-exception v0

    .line 433
    :goto_5
    :try_start_7
    new-instance v1, Lcom/viber/voip/messages/extras/fb/c;

    invoke-direct {v1, v0}, Lcom/viber/voip/messages/extras/fb/c;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 435
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 438
    :catch_5
    move-exception v1

    .line 439
    sget-object v2, Lcom/viber/voip/messages/extras/fb/s;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to close input stream: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v2, v3, v1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 432
    :catch_6
    move-exception v0

    move-object v6, v1

    goto :goto_5

    .line 430
    :catch_7
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 231
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 234
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 236
    :cond_0
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/extras/fb/s;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public a(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 289
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 546
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    return-void
.end method

.method public a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 551
    const-string/jumbo v0, "FacebookManager.postMedia"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 552
    new-instance v0, Lcom/viber/voip/messages/extras/fb/x;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/messages/extras/fb/x;-><init>(Lcom/viber/voip/messages/extras/fb/s;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-static {p1}, Lcom/viber/voip/util/ft;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/fb/s;->b()Lcom/viber/voip/messages/extras/fb/ah;

    move-result-object v1

    .line 561
    sget-object v2, Lcom/viber/voip/messages/extras/fb/ah;->c:Lcom/viber/voip/messages/extras/fb/ah;

    if-ne v1, v2, :cond_1

    .line 562
    invoke-direct/range {p0 .. p7}, Lcom/viber/voip/messages/extras/fb/s;->d(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    sget-object v2, Lcom/viber/voip/messages/extras/fb/ah;->b:Lcom/viber/voip/messages/extras/fb/ah;

    if-ne v1, v2, :cond_2

    .line 564
    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ad;)V

    goto :goto_0

    .line 566
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ad;Z)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ad;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 213
    iput-object p2, p0, Lcom/viber/voip/messages/extras/fb/s;->e:Lcom/viber/voip/messages/extras/fb/ad;

    .line 215
    new-instance v0, Lcom/facebook/Session$NewPermissionsRequest;

    sget-object v1, Lcom/viber/voip/messages/extras/fb/s;->i:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 216
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/s;->l:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$NewPermissionsRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$NewPermissionsRequest;

    .line 217
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    .line 218
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ad;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    iput-object p2, p0, Lcom/viber/voip/messages/extras/fb/s;->e:Lcom/viber/voip/messages/extras/fb/ad;

    .line 157
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->h()Lcom/facebook/Session;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    sget-object v2, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v1, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    :cond_1
    if-eqz p3, :cond_2

    .line 161
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v1, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/s;->l:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/messages/extras/fb/s;->i:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    .line 168
    :goto_0
    return-void

    .line 163
    :cond_2
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v1, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/s;->l:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/messages/extras/fb/s;->h:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_0

    .line 166
    :cond_3
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/s;->l:Lcom/facebook/Session$StatusCallback;

    invoke-static {p1, v0, v1}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/fb/s;->b()Lcom/viber/voip/messages/extras/fb/ah;

    move-result-object v0

    .line 911
    sget-object v1, Lcom/viber/voip/messages/extras/fb/ah;->a:Lcom/viber/voip/messages/extras/fb/ah;

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/viber/voip/messages/extras/fb/s;->i:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/extras/fb/s;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 912
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/extras/fb/s;->g:Z

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 914
    :cond_1
    sget-object v1, Lcom/viber/voip/messages/extras/fb/ah;->c:Lcom/viber/voip/messages/extras/fb/ah;

    if-ne v0, v1, :cond_0

    .line 918
    new-instance v0, Lcom/viber/voip/messages/extras/fb/ab;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/extras/fb/ab;-><init>(Lcom/viber/voip/messages/extras/fb/s;Landroid/content/Context;)V

    .line 933
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/s;->d:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 698
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/messages/extras/fb/s;->c(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    return-void
.end method

.method a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 675
    const-string/jumbo v0, "FacebookManager.postImage"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 676
    if-nez p7, :cond_1

    .line 677
    const/4 v8, 0x0

    .line 678
    if-eqz p6, :cond_0

    .line 679
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 680
    const-string/jumbo v0, "background"

    invoke-virtual {v8, v0, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 682
    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 686
    :goto_0
    return-void

    .line 684
    :cond_1
    invoke-direct/range {p0 .. p7}, Lcom/viber/voip/messages/extras/fb/s;->e(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/extras/fb/ag;)V
    .locals 6
    .parameter

    .prologue
    .line 492
    const-string/jumbo v0, "posting invite to Wall"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 493
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/s;->n:Lcom/viber/voip/messages/extras/fb/ag;

    .line 494
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    .line 495
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/fb/s;->b()Lcom/viber/voip/messages/extras/fb/ah;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/messages/extras/fb/ah;->c:Lcom/viber/voip/messages/extras/fb/ah;

    if-ne v0, v2, :cond_0

    .line 496
    new-instance v0, Lcom/facebook/Request;

    const-string/jumbo v2, "me/feed"

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->k()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    iget-object v5, p0, Lcom/viber/voip/messages/extras/fb/s;->o:Lcom/facebook/Request$Callback;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 497
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v0

    .line 498
    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/fb/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/s;->f:Lcom/viber/voip/a/aw;

    iget-object v2, v2, Lcom/viber/voip/a/aw;->a:Lcom/viber/voip/a/ao;

    sget-object v3, Lcom/viber/voip/a/aq;->a:Lcom/viber/voip/a/aq;

    invoke-virtual {v2, v3, v0}, Lcom/viber/voip/a/ao;->a(Lcom/viber/voip/a/aq;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 503
    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 506
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 782
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "fb_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 783
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "fb_id"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 784
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/fb/s;->a(Z)V

    .line 785
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 788
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "fb_is_statistics_reported"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    monitor-exit p0

    return-void

    .line 788
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/viber/voip/messages/extras/fb/af;)Z
    .locals 2
    .parameter

    .prologue
    .line 817
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/s;->j:Ljava/util/Collection;

    monitor-enter v1

    .line 818
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->j:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 819
    monitor-exit v1

    .line 820
    return v0

    .line 819
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()Lcom/viber/voip/messages/extras/fb/ah;
    .locals 3

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->h()Lcom/facebook/Session;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    sget-object v2, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v1, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    sget-object v0, Lcom/viber/voip/messages/extras/fb/ah;->a:Lcom/viber/voip/messages/extras/fb/ah;

    .line 253
    :goto_0
    return-object v0

    .line 245
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    sget-object v0, Lcom/viber/voip/messages/extras/fb/s;->i:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/fb/s;->a([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    sget-object v0, Lcom/viber/voip/messages/extras/fb/ah;->c:Lcom/viber/voip/messages/extras/fb/ah;

    goto :goto_0

    .line 249
    :cond_1
    sget-object v0, Lcom/viber/voip/messages/extras/fb/ah;->b:Lcom/viber/voip/messages/extras/fb/ah;

    goto :goto_0

    .line 253
    :cond_2
    sget-object v0, Lcom/viber/voip/messages/extras/fb/ah;->d:Lcom/viber/voip/messages/extras/fb/ah;

    goto :goto_0
.end method

.method public b(Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ad;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 172
    iput-object p2, p0, Lcom/viber/voip/messages/extras/fb/s;->e:Lcom/viber/voip/messages/extras/fb/ad;

    .line 174
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->h()Lcom/facebook/Session;

    move-result-object v0

    .line 175
    invoke-direct {p0, p1, v0}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;Lcom/facebook/Session;)V

    .line 177
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    sget-object v2, Lcom/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/facebook/SessionState;

    invoke-virtual {v1, v2}, Lcom/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    if-eqz p3, :cond_1

    sget-object v1, Lcom/viber/voip/messages/extras/fb/s;->i:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/extras/fb/s;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 179
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v1, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/s;->l:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/messages/extras/fb/s;->i:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v1, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/s;->l:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 721
    const-string/jumbo v0, "FacebookManager.postZoobeMessage"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 722
    const v0, 0x7f0c0618

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/messages/extras/fb/s;->c(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method b(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FacebookManager.postVideo: comment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 690
    if-nez p7, :cond_0

    .line 691
    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    invoke-direct/range {p0 .. p7}, Lcom/viber/voip/messages/extras/fb/s;->f(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/viber/voip/messages/extras/fb/af;)Z
    .locals 2
    .parameter

    .prologue
    .line 825
    iget-object v1, p0, Lcom/viber/voip/messages/extras/fb/s;->j:Ljava/util/Collection;

    monitor-enter v1

    .line 826
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->j:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 827
    monitor-exit v1

    .line 828
    return v0

    .line 827
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 321
    const-string/jumbo v0, "clearReportedFlag"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/fb/s;->a(Z)V

    .line 323
    return-void
.end method

.method c(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 702
    const-string/jumbo v0, "FacebookManager.postMessage"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 703
    iget-object v9, p0, Lcom/viber/voip/messages/extras/fb/s;->d:Landroid/os/Handler;

    new-instance v0, Lcom/viber/voip/messages/extras/fb/aa;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p5

    move-wide v4, p2

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/messages/extras/fb/aa;-><init>(Lcom/viber/voip/messages/extras/fb/s;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 718
    return-void
.end method

.method public d()Lcom/viber/voip/messages/extras/fb/aj;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 366
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 372
    :try_start_0
    invoke-virtual {v0}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 373
    const-string/jumbo v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 374
    const-string/jumbo v3, "name"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 375
    new-instance v0, Lcom/viber/voip/messages/extras/fb/aj;

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/viber/voip/messages/extras/fb/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/extras/fb/t;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    return-object v0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    const-string/jumbo v0, "JSONException when getting facebook profile!"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    move-object v0, v1

    .line 378
    goto :goto_0

    .line 380
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 381
    invoke-virtual {v0}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/fb/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    new-instance v1, Lcom/facebook/FacebookException;

    invoke-direct {v1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 384
    :cond_1
    const-string/jumbo v0, "Error getting facebook profile!"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    move-object v0, v1

    .line 385
    goto :goto_0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/ag;)V

    .line 489
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 792
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/s;->b:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "fb_name"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialized(Lcom/viber/jni/controller/PhoneController;)V
    .locals 1
    .parameter

    .prologue
    .line 811
    const-string/jumbo v0, "initialized"

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 812
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->i()V

    .line 813
    return-void
.end method

.method public onServiceStateChanged(I)V
    .locals 2
    .parameter

    .prologue
    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/s;->d(Ljava/lang/String;)V

    .line 806
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/s;->i()V

    .line 807
    return-void
.end method
