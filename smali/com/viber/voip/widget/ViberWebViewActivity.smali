.class public Lcom/viber/voip/widget/ViberWebViewActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Landroid/app/ProgressDialog;

.field private c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    const-class v0, Lcom/viber/voip/widget/ViberWebViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/widget/ViberWebViewActivity;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/widget/ViberWebViewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->b:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/widget/ViberWebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/widget/ViberWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/viber/voip/widget/ViberWebViewActivity;->b()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-static {p0}, Lcom/viber/voip/widget/ViberWebViewActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/widget/ViberWebViewActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->b:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 65
    const v0, 0x7f070257

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/ViberWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 67
    const v1, 0x7f070258

    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/ViberWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/widget/ak;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/widget/ak;-><init>(Lcom/viber/voip/widget/ViberWebViewActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    return-void
.end method

.method private c()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 78
    const v0, 0x7f0702a1

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/ViberWebViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->a:Landroid/webkit/WebView;

    .line 79
    iget-object v0, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 80
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 83
    iget-object v0, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/viber/voip/widget/al;

    invoke-direct {v1, p0}, Lcom/viber/voip/widget/al;-><init>(Lcom/viber/voip/widget/ViberWebViewActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 127
    invoke-virtual {p0}, Lcom/viber/voip/widget/ViberWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/viber/voip/util/hy;->a(Landroid/content/Intent;Landroid/webkit/WebView;)V

    .line 128
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/widget/ViberWebViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/viber/voip/widget/ViberWebViewActivity;->c()V

    return-void
.end method

.method static synthetic d(Lcom/viber/voip/widget/ViberWebViewActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/widget/ViberWebViewActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->a:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/viber/voip/market/a/a;

    invoke-direct {v0}, Lcom/viber/voip/market/a/a;-><init>()V

    new-instance v1, Lcom/viber/voip/widget/aj;

    invoke-direct {v1, p0}, Lcom/viber/voip/widget/aj;-><init>(Lcom/viber/voip/widget/ViberWebViewActivity;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/market/a/a;->a(Lcom/viber/voip/market/a/b;)V

    .line 62
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->a:Landroid/webkit/WebView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 174
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->finish()V

    .line 175
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 167
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->a:Landroid/webkit/WebView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 162
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onBackPressed()V

    goto :goto_0

    .line 165
    :cond_1
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 32
    const-string/jumbo v0, "onCreate()"

    invoke-static {v0}, Lcom/viber/voip/widget/ViberWebViewActivity;->b(Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/viber/voip/widget/ViberWebViewActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/ActionBarSherlock;->requestFeature(I)Z

    .line 36
    const v0, 0x7f0300c3

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/ViberWebViewActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/viber/voip/widget/ViberWebViewActivity;->a()V

    .line 39
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/viber/voip/widget/ViberWebViewActivity;->a:Landroid/webkit/WebView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 151
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDestroy()V

    .line 152
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->finish()V

    .line 153
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 132
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 137
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 134
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/widget/ViberWebViewActivity;->finish()V

    .line 135
    const/4 v0, 0x1

    goto :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
