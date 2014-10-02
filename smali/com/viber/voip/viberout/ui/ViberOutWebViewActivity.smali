.class public Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# instance fields
.field private d:Landroid/webkit/WebView;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "extra_url"

    sput-object v0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "extra_title"

    sput-object v0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->b:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "EXTRA_BILLING_SERVER_REQUEST_SUBJECT"

    sput-object v0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->c:Ljava/lang/String;

    .line 240
    const-class v0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->e:Ljava/lang/String;

    .line 77
    iget-object v1, p0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loading billing server request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->c(Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->c()V

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loading url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->c(Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    sget-object v1, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 40
    sget-object v1, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-static {v0}, Lcom/viber/voip/util/hy;->a(Landroid/content/Intent;)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method private a(Lcom/viber/voip/billing/s;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->d()V

    .line 188
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;Lcom/viber/voip/billing/s;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a(Lcom/viber/voip/billing/s;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-static {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1
    .parameter

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 88
    const v0, 0x7f0702a1

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->d:Landroid/webkit/WebView;

    .line 89
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 93
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/viber/voip/viberout/ui/ba;

    invoke-direct {v1, p0}, Lcom/viber/voip/viberout/ui/ba;-><init>(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 102
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/viber/voip/viberout/ui/bb;

    invoke-direct {v1, p0}, Lcom/viber/voip/viberout/ui/bb;-><init>(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 128
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->d:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/viber/voip/util/hy;->a(Landroid/content/Intent;Landroid/webkit/WebView;)V

    .line 129
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    sget-object v1, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    sget-object v1, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-static {v0}, Lcom/viber/voip/util/hy;->a(Landroid/content/Intent;)Landroid/content/Intent;

    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 158
    new-instance v0, Lcom/viber/voip/viberout/ui/bd;

    invoke-direct {v0, p0}, Lcom/viber/voip/viberout/ui/bd;-><init>(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)V

    invoke-static {p1, v0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Lcom/viber/voip/billing/aa;)V

    .line 171
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->d:Landroid/webkit/WebView;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "loadBillingServerRequest, subject:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->c(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 135
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->e:Ljava/lang/String;

    new-instance v1, Lcom/viber/voip/viberout/ui/bc;

    invoke-direct {v1, p0}, Lcom/viber/voip/viberout/ui/bc;-><init>(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)V

    invoke-static {v0, v1}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Lcom/viber/voip/billing/y;)V

    .line 153
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    .line 191
    const v0, 0x7f070257

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 192
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    const v1, 0x7f070258

    invoke-virtual {p0, v1}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/viberout/ui/be;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/viberout/ui/be;-><init>(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->d:Landroid/webkit/WebView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 237
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->finish()V

    .line 238
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 232
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->d:Landroid/webkit/WebView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 230
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 55
    const-string/jumbo v0, "onCreate()"

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->c(Ljava/lang/String;)V

    .line 56
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->requestFeature(I)Z

    .line 59
    const v0, 0x7f0300b7

    invoke-virtual {p0, v0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 63
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->b()V

    .line 65
    invoke-direct {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->a()V

    .line 66
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->d:Landroid/webkit/WebView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 221
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDestroy()V

    .line 222
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 204
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 209
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 206
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/viberout/ui/ViberOutWebViewActivity;->finish()V

    .line 207
    const/4 v0, 0x1

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
