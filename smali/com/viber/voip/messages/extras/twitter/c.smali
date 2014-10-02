.class public Lcom/viber/voip/messages/extras/twitter/c;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field private static final f:[F

.field private static final g:[F


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/viber/voip/messages/extras/twitter/e;

.field private c:Landroid/app/ProgressDialog;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 44
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/viber/voip/messages/extras/twitter/c;->f:[F

    .line 45
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/viber/voip/messages/extras/twitter/c;->g:[F

    return-void

    .line 44
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xe6t 0x43t
        0x0t 0x0t 0x82t 0x43t
    .end array-data

    .line 45
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x91t 0x43t
        0x0t 0x0t 0xd2t 0x43t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/messages/extras/twitter/e;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/viber/voip/messages/extras/twitter/c;->a:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/viber/voip/messages/extras/twitter/c;->b:Lcom/viber/voip/messages/extras/twitter/e;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/twitter/c;)Lcom/viber/voip/messages/extras/twitter/e;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/c;->b:Lcom/viber/voip/messages/extras/twitter/e;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/extras/twitter/c;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/extras/twitter/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 146
    const-string/jumbo v0, "--->"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/extras/twitter/c;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/c;->c:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/extras/twitter/c;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/c;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/extras/twitter/c;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/c;->d:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x3f00

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 49
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0, v5}, Lcom/viber/voip/messages/extras/twitter/c;->requestWindowFeature(I)Z

    .line 51
    const v0, 0x7f030091

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/twitter/c;->setContentView(I)V

    .line 53
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/twitter/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/twitter/c;->c:Landroid/app/ProgressDialog;

    .line 54
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 55
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/c;->c:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/twitter/c;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c032c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/twitter/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/twitter/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    .line 59
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/viber/voip/messages/extras/twitter/c;->g:[F

    move-object v1, v0

    .line 61
    :goto_0
    const v0, 0x7f070242

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/twitter/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 62
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    aget v4, v1, v6

    mul-float/2addr v4, v2

    add-float/2addr v4, v7

    float-to-int v4, v4

    aget v1, v1, v5

    mul-float/2addr v1, v2

    add-float/2addr v1, v7

    float-to-int v1, v1

    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    const v0, 0x7f0700ad

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/twitter/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/extras/twitter/c;->d:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f070243

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/extras/twitter/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/NullCatcherWebView;

    iput-object v0, p0, Lcom/viber/voip/messages/extras/twitter/c;->e:Landroid/webkit/WebView;

    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/c;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/c;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/c;->e:Landroid/webkit/WebView;

    new-instance v1, Lcom/viber/voip/messages/extras/twitter/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/viber/voip/messages/extras/twitter/f;-><init>(Lcom/viber/voip/messages/extras/twitter/c;Lcom/viber/voip/messages/extras/twitter/d;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 71
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/c;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/c;->e:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCreate() url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/extras/twitter/c;->a(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void

    .line 59
    :cond_1
    sget-object v0, Lcom/viber/voip/messages/extras/twitter/c;->f:[F

    move-object v1, v0

    goto :goto_0
.end method
