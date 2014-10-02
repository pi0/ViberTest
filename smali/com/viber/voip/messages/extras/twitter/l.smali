.class public Lcom/viber/voip/messages/extras/twitter/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/viber/voip/messages/extras/twitter/l;


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lcom/viber/voip/messages/extras/twitter/t;

.field private d:Lcom/viber/voip/messages/extras/twitter/z;

.field private e:Lcom/viber/voip/messages/extras/twitter/aa;

.field private f:Lcom/viber/dexshared/TwitterHelper;

.field private g:Lcom/viber/voip/a/aw;

.field private h:Landroid/content/BroadcastReceiver;

.field private i:Landroid/content/IntentFilter;

.field private j:Lcom/viber/voip/messages/extras/twitter/e;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Lcom/viber/voip/a/aw;

    invoke-direct {v0}, Lcom/viber/voip/a/aw;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->g:Lcom/viber/voip/a/aw;

    .line 288
    new-instance v0, Lcom/viber/voip/messages/extras/twitter/s;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/twitter/s;-><init>(Lcom/viber/voip/messages/extras/twitter/l;)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->j:Lcom/viber/voip/messages/extras/twitter/e;

    .line 109
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 110
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/l;->a:Landroid/content/Context;

    .line 111
    invoke-static {}, Lcom/viber/voip/ViberEnv;->newTwitterHelper()Lcom/viber/dexshared/TwitterHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->f:Lcom/viber/dexshared/TwitterHelper;

    .line 112
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->f:Lcom/viber/dexshared/TwitterHelper;

    const-string/jumbo v1, "6AqyEYuQnznxau9uYns17w"

    const-string/jumbo v2, "eRZZMxdC2gAx5PnMbtcetAqRYPSv6FnA3J21rOAo74"

    invoke-interface {v0, v1, v2}, Lcom/viber/dexshared/TwitterHelper;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    new-instance v0, Lcom/viber/voip/messages/extras/twitter/aa;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/extras/twitter/aa;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->e:Lcom/viber/voip/messages/extras/twitter/aa;

    .line 114
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/twitter/l;->e()V

    .line 116
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/twitter/l;)Lcom/viber/dexshared/TwitterHelper;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->f:Lcom/viber/dexshared/TwitterHelper;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/viber/voip/messages/extras/twitter/l;
    .locals 1
    .parameter

    .prologue
    .line 102
    sget-object v0, Lcom/viber/voip/messages/extras/twitter/l;->b:Lcom/viber/voip/messages/extras/twitter/l;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/viber/voip/messages/extras/twitter/l;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/twitter/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/viber/voip/messages/extras/twitter/l;->b:Lcom/viber/voip/messages/extras/twitter/l;

    .line 105
    :cond_0
    sget-object v0, Lcom/viber/voip/messages/extras/twitter/l;->b:Lcom/viber/voip/messages/extras/twitter/l;

    return-object v0
.end method

.method private a(Landroid/app/Activity;JLandroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 267
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/viber/voip/messages/extras/twitter/r;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/extras/twitter/r;-><init>(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;JLandroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;JLandroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/messages/extras/twitter/l;->a(Landroid/app/Activity;JLandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct/range {p0 .. p6}, Lcom/viber/voip/messages/extras/twitter/l;->c(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/twitter/l;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/twitter/l;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/twitter/l;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/extras/twitter/l;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 154
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/twitter/l;->b(Landroid/content/Context;)V

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.TWITTER_AUTH_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 157
    const-string/jumbo v1, "extra_load_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/l;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 307
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.TWITTER_ERROR_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 308
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 309
    const-string/jumbo v1, "extra_error_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/l;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 312
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->c:Lcom/viber/voip/messages/extras/twitter/t;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->c:Lcom/viber/voip/messages/extras/twitter/t;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/extras/twitter/t;->onAuthError(Ljava/lang/String;)V

    .line 315
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/extras/twitter/l;)Lcom/viber/voip/messages/extras/twitter/aa;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->e:Lcom/viber/voip/messages/extras/twitter/aa;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/twitter/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 162
    const-string/jumbo v0, "error:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->h:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/l;->i:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/extras/twitter/l;)Lcom/viber/voip/messages/extras/twitter/t;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->c:Lcom/viber/voip/messages/extras/twitter/t;

    return-object v0
.end method

.method private c(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    sget-object v0, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/viber/voip/messages/extras/twitter/q;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-wide v4, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/extras/twitter/q;-><init>(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 150
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 151
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/twitter/l;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 566
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->d:Lcom/viber/voip/messages/extras/twitter/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->d:Lcom/viber/voip/messages/extras/twitter/z;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/extras/twitter/z;->a(Ljava/lang/String;)V

    .line 567
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/messages/extras/twitter/l;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/twitter/l;->f()V

    return-void
.end method

.method static synthetic d(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/twitter/l;->c(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 570
    const-string/jumbo v0, "TwitterManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/messages/extras/twitter/l;)Lcom/viber/voip/a/aw;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->g:Lcom/viber/voip/a/aw;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->i:Landroid/content/IntentFilter;

    .line 120
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->i:Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_handle_oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->i:Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_handle_oauth_verifier_error"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->i:Landroid/content/IntentFilter;

    const-string/jumbo v1, "action_handle_dialog_destroy"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    new-instance v0, Lcom/viber/voip/messages/extras/twitter/m;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/extras/twitter/m;-><init>(Lcom/viber/voip/messages/extras/twitter/l;)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->h:Landroid/content/BroadcastReceiver;

    .line 143
    return-void
.end method

.method private f()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->d:Lcom/viber/voip/messages/extras/twitter/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->d:Lcom/viber/voip/messages/extras/twitter/z;

    invoke-interface {v0}, Lcom/viber/voip/messages/extras/twitter/z;->a()V

    .line 559
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/viber/voip/messages/extras/twitter/l;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/viber/voip/messages/extras/twitter/l;->g()V

    return-void
.end method

.method static synthetic g(Lcom/viber/voip/messages/extras/twitter/l;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->a:Landroid/content/Context;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->d:Lcom/viber/voip/messages/extras/twitter/z;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->d:Lcom/viber/voip/messages/extras/twitter/z;

    invoke-interface {v0}, Lcom/viber/voip/messages/extras/twitter/z;->b()V

    .line 563
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->e:Lcom/viber/voip/messages/extras/twitter/aa;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/twitter/aa;->a()V

    .line 171
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->f:Lcom/viber/dexshared/TwitterHelper;

    invoke-interface {v0}, Lcom/viber/dexshared/TwitterHelper;->resetTwitterOAuthAccessToken()V

    .line 172
    return-void
.end method

.method public a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 233
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/twitter/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/viber/voip/util/ft;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.TWITTER_GET_TWEET_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    const-string/jumbo v1, "extra_msg_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 238
    const-string/jumbo v1, "extra_msg_myme_type"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string/jumbo v1, "extra_msg_media_uri"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string/jumbo v1, "extra_msg_text"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 242
    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/l;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 244
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/messages/extras/twitter/z;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    iput-object p7, p0, Lcom/viber/voip/messages/extras/twitter/l;->d:Lcom/viber/voip/messages/extras/twitter/z;

    .line 223
    new-instance v0, Lcom/viber/voip/messages/extras/twitter/o;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/extras/twitter/o;-><init>(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/messages/extras/twitter/l;->a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/twitter/t;)V

    .line 229
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/viber/voip/messages/extras/twitter/t;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p2, p0, Lcom/viber/voip/messages/extras/twitter/l;->c:Lcom/viber/voip/messages/extras/twitter/t;

    .line 184
    invoke-static {p1}, Lcom/viber/voip/util/ft;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->f:Lcom/viber/dexshared/TwitterHelper;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/l;->e:Lcom/viber/voip/messages/extras/twitter/aa;

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/twitter/aa;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/extras/twitter/l;->e:Lcom/viber/voip/messages/extras/twitter/aa;

    invoke-virtual {v2}, Lcom/viber/voip/messages/extras/twitter/aa;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/viber/dexshared/TwitterHelper;->setTwitterAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/twitter/l;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    iget-object v1, v1, Lcom/viber/voip/a/an;->a:Lcom/viber/voip/a/ao;

    sget-object v2, Lcom/viber/voip/a/aq;->b:Lcom/viber/voip/a/aq;

    sget-object v3, Lcom/viber/voip/a/ap;->a:Lcom/viber/voip/a/ap;

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/ao;->a(Lcom/viber/voip/a/aq;Lcom/viber/voip/a/ap;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 188
    new-instance v0, Lcom/viber/voip/messages/extras/twitter/v;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/extras/twitter/v;-><init>(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/twitter/v;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->c:Lcom/viber/voip/messages/extras/twitter/t;

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    iget-object v1, v1, Lcom/viber/voip/a/an;->a:Lcom/viber/voip/a/ao;

    sget-object v2, Lcom/viber/voip/a/aq;->b:Lcom/viber/voip/a/aq;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/ao;->b(Lcom/viber/voip/a/aq;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 191
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->c:Lcom/viber/voip/messages/extras/twitter/t;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/twitter/t;->onAuthComplete()V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->c:Lcom/viber/voip/messages/extras/twitter/t;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->a:Landroid/content/Context;

    const v1, 0x7f0c037c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->i:Lcom/viber/voip/a/an;

    iget-object v2, v2, Lcom/viber/voip/a/an;->a:Lcom/viber/voip/a/ao;

    sget-object v3, Lcom/viber/voip/a/aq;->b:Lcom/viber/voip/a/aq;

    invoke-virtual {v2, v3, v0}, Lcom/viber/voip/a/ao;->b(Lcom/viber/voip/a/aq;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 196
    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/l;->c:Lcom/viber/voip/messages/extras/twitter/t;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/extras/twitter/t;->onAuthError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/twitter/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/extras/twitter/n;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/messages/extras/twitter/n;-><init>(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/messages/extras/twitter/ab;)V
    .locals 1
    .parameter

    .prologue
    .line 166
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->e:Lcom/viber/voip/messages/extras/twitter/aa;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/extras/twitter/aa;->a(Lcom/viber/voip/messages/extras/twitter/ab;)V

    .line 167
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->e:Lcom/viber/voip/messages/extras/twitter/aa;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/twitter/aa;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 247
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Lcom/viber/voip/messages/extras/twitter/p;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/extras/twitter/p;-><init>(Lcom/viber/voip/messages/extras/twitter/l;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    return-void
.end method

.method public c()Z
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/l;->f:Lcom/viber/dexshared/TwitterHelper;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/l;->e:Lcom/viber/voip/messages/extras/twitter/aa;

    invoke-virtual {v1}, Lcom/viber/voip/messages/extras/twitter/aa;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/extras/twitter/l;->e:Lcom/viber/voip/messages/extras/twitter/aa;

    invoke-virtual {v2}, Lcom/viber/voip/messages/extras/twitter/aa;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/viber/dexshared/TwitterHelper;->isAccessTokenExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/twitter/l;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.TWITTER_CHANGE_ACCOUNT_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 279
    const-string/jumbo v1, "username_extra"

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/twitter/l;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/l;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 282
    :cond_0
    return-void
.end method
