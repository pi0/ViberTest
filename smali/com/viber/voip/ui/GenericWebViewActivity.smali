.class public Lcom/viber/voip/ui/GenericWebViewActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static final d:Ljava/lang/String;


# instance fields
.field private c:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string/jumbo v0, "extra_url"

    sput-object v0, Lcom/viber/voip/ui/GenericWebViewActivity;->a:Ljava/lang/String;

    .line 24
    const-string/jumbo v0, "extra_title"

    sput-object v0, Lcom/viber/voip/ui/GenericWebViewActivity;->b:Ljava/lang/String;

    .line 139
    const-class v0, Lcom/viber/voip/ui/GenericWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/ui/GenericWebViewActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/ui/GenericWebViewActivity;)Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/viber/voip/ui/GenericWebViewActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 61
    const v0, 0x7f0702a1

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/GenericWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/viber/voip/ui/GenericWebViewActivity;->c:Landroid/webkit/WebView;

    .line 62
    iget-object v0, p0, Lcom/viber/voip/ui/GenericWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 66
    iget-object v0, p0, Lcom/viber/voip/ui/GenericWebViewActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/viber/voip/ui/f;

    invoke-direct {v1, p0}, Lcom/viber/voip/ui/f;-><init>(Lcom/viber/voip/ui/GenericWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 76
    iget-object v0, p0, Lcom/viber/voip/ui/GenericWebViewActivity;->c:Landroid/webkit/WebView;

    new-instance v1, Lcom/viber/voip/ui/g;

    invoke-direct {v1, p0}, Lcom/viber/voip/ui/g;-><init>(Lcom/viber/voip/ui/GenericWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 88
    invoke-virtual {p0}, Lcom/viber/voip/ui/GenericWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/ui/GenericWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/viber/voip/util/hy;->a(Landroid/content/Intent;Landroid/webkit/WebView;)V

    .line 89
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/viber/voip/ui/GenericWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    sget-object v1, Lcom/viber/voip/ui/GenericWebViewActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    sget-object v1, Lcom/viber/voip/ui/GenericWebViewActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-static {v0}, Lcom/viber/voip/util/hy;->a(Landroid/content/Intent;)Landroid/content/Intent;

    .line 33
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 34
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-static {p0}, Lcom/viber/voip/ui/GenericWebViewActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/viber/voip/ui/GenericWebViewActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->setProgressBarIndeterminateVisibility(Z)V

    .line 93
    iget-object v0, p0, Lcom/viber/voip/ui/GenericWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/viber/voip/ui/GenericWebViewActivity;->c:Landroid/webkit/WebView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 136
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->finish()V

    .line 137
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/viber/voip/ui/GenericWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/viber/voip/ui/GenericWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/ui/GenericWebViewActivity;->c:Landroid/webkit/WebView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 129
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 38
    const-string/jumbo v0, "onCreate()"

    invoke-static {v0}, Lcom/viber/voip/ui/GenericWebViewActivity;->c(Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/viber/voip/ui/GenericWebViewActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->requestFeature(I)Z

    .line 42
    const v0, 0x7f0300b7

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/GenericWebViewActivity;->setContentView(I)V

    .line 43
    const v0, 0x7f070257

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/GenericWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    invoke-virtual {p0}, Lcom/viber/voip/ui/GenericWebViewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 45
    invoke-virtual {p0}, Lcom/viber/voip/ui/GenericWebViewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 47
    invoke-virtual {p0}, Lcom/viber/voip/ui/GenericWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/ui/GenericWebViewActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/viber/voip/ui/GenericWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/ui/GenericWebViewActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/viber/voip/ui/GenericWebViewActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/ui/GenericWebViewActivity;->a()V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loading url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/ui/GenericWebViewActivity;->c(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, v0}, Lcom/viber/voip/ui/GenericWebViewActivity;->b(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/viber/voip/ui/GenericWebViewActivity;->c:Landroid/webkit/WebView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 119
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDestroy()V

    .line 120
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->finish()V

    .line 121
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 107
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/ui/GenericWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/viber/voip/ui/GenericWebViewActivity;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 105
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/ui/GenericWebViewActivity;->finish()V

    goto :goto_1

    .line 98
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
