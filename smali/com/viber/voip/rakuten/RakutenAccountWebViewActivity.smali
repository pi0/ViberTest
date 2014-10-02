.class public Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/viber/voip/rakuten/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 375
    const-class v0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    .line 347
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 237
    const-string/jumbo v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string/jumbo v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string/jumbo v1, "android.intent.extra.CC"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string/jumbo v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)Lcom/viber/voip/rakuten/i;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->b:Lcom/viber/voip/rakuten/i;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;Lcom/viber/voip/rakuten/i;)Lcom/viber/voip/rakuten/i;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->b:Lcom/viber/voip/rakuten/i;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v1, Lcom/viber/voip/rakuten/a;

    invoke-direct {v1, p0}, Lcom/viber/voip/rakuten/a;-><init>(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)V

    iput-object v1, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->b:Lcom/viber/voip/rakuten/i;

    .line 110
    iget-object v1, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->b:Lcom/viber/voip/rakuten/i;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/viber/voip/rakuten/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-static {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 114
    const-string/jumbo v0, "enableCookies()"

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->c(Ljava/lang/String;)V

    .line 115
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 116
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 230
    invoke-static {p1}, Landroid/net/MailTo;->parse(Ljava/lang/String;)Landroid/net/MailTo;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/net/MailTo;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/MailTo;->getSubject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/net/MailTo;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/MailTo;->getCc()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 233
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 119
    const-string/jumbo v0, "syncCookies()"

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->c(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 121
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->b()V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 380
    return-void
.end method

.method private d()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 141
    const v0, 0x7f0702a1

    invoke-virtual {p0, v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a:Landroid/webkit/WebView;

    .line 142
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 144
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/viber/voip/rakuten/b;

    invoke-direct {v1, p0}, Lcom/viber/voip/rakuten/b;-><init>(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 157
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/viber/voip/rakuten/c;

    invoke-direct {v1, p0}, Lcom/viber/voip/rakuten/c;-><init>(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 222
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/viber/voip/util/hy;->a(Landroid/content/Intent;Landroid/webkit/WebView;)V

    .line 223
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->c()V

    return-void
.end method

.method static synthetic e(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 246
    const v0, 0x7f070257

    invoke-virtual {p0, v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    const v1, 0x7f070258

    invoke-virtual {p0, v1}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/rakuten/e;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/rakuten/e;-><init>(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-void
.end method

.method static synthetic f(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->e()V

    return-void
.end method

.method private f()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->g()V

    .line 297
    const/4 v0, 0x1

    .line 299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    return-object v0
.end method

.method private g()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v3

    .line 305
    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v4

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "goBackChecked: curIndex:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->c(Ljava/lang/String;)V

    move v0, v1

    .line 307
    :goto_0
    invoke-virtual {v3}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 308
    invoke-virtual {v3, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 310
    invoke-virtual {v2}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    .line 311
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "goBackChecked: item #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v2, ""

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->c(Ljava/lang/String;)V

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 311
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ", orig:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 313
    :cond_1
    add-int/lit8 v0, v4, -0x1

    invoke-virtual {v3, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v2, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->b:Lcom/viber/voip/rakuten/i;

    if-nez v2, :cond_2

    .line 315
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 316
    new-instance v2, Lcom/viber/voip/rakuten/f;

    invoke-direct {v2, p0}, Lcom/viber/voip/rakuten/f;-><init>(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)V

    iput-object v2, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->b:Lcom/viber/voip/rakuten/i;

    .line 341
    iget-object v2, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->b:Lcom/viber/voip/rakuten/i;

    new-array v3, v8, [Ljava/lang/String;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, Lcom/viber/voip/rakuten/i;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 345
    :goto_2
    return-void

    .line 343
    :cond_2
    const-string/jumbo v0, "goBackChecked: blocked because there is a working RequestTask"

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->c(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic h(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a()V

    return-void
.end method

.method static synthetic i(Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;)Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a:Landroid/webkit/WebView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 372
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->finish()V

    .line 373
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const-string/jumbo v0, "webview - going back"

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->c(Ljava/lang/String;)V

    .line 290
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.YOU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 286
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->finish()V

    goto :goto_0

    .line 288
    :cond_1
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    const-string/jumbo v0, "onCreate()"

    invoke-static {v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->c(Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->requestFeature(I)Z

    .line 52
    const v0, 0x7f0300b7

    invoke-virtual {p0, v0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->setContentView(I)V

    .line 53
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 54
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 55
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c078d

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 56
    invoke-direct {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->d()V

    .line 57
    invoke-direct {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a()V

    .line 58
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->b:Lcom/viber/voip/rakuten/i;

    .line 271
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a:Landroid/webkit/WebView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 274
    invoke-direct {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->c()V

    .line 276
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDestroy()V

    .line 277
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 259
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 265
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 261
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/rakuten/RakutenAccountWebViewActivity;->onBackPressed()V

    .line 262
    const/4 v0, 0x1

    goto :goto_0

    .line 259
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
