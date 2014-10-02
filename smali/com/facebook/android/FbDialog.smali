.class public Lcom/facebook/android/FbDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# static fields
.field static final DIMENSIONS_DIFF_LANDSCAPE:[F = null

.field static final DIMENSIONS_DIFF_PORTRAIT:[F = null

.field static final DISPLAY_STRING:Ljava/lang/String; = "touch"

.field static final FB_BLUE:I = -0x927b4c

.field static final FB_ICON:Ljava/lang/String; = "icon.png"

.field static final FILL:Landroid/widget/FrameLayout$LayoutParams; = null

.field static final MARGIN:I = 0x4

.field static final PADDING:I = 0x2


# instance fields
.field private mContent:Landroid/widget/LinearLayout;

.field private mListener:Lcom/facebook/android/Facebook$DialogListener;

.field private mSpinner:Landroid/app/ProgressDialog;

.field private mTitle:Landroid/widget/TextView;

.field private mUrl:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    .line 50
    new-array v0, v2, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/android/FbDialog;->DIMENSIONS_DIFF_LANDSCAPE:[F

    .line 51
    new-array v0, v2, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/android/FbDialog;->DIMENSIONS_DIFF_PORTRAIT:[F

    .line 52
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/facebook/android/FbDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    return-void

    .line 50
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x41t
        0x0t 0x0t 0x70t 0x42t
    .end array-data

    .line 51
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x20t 0x42t
        0x0t 0x0t 0x70t 0x42t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 69
    iput-object p2, p0, Lcom/facebook/android/FbDialog;->mUrl:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/android/FbDialog;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/android/FbDialog;)Lcom/facebook/android/Facebook$DialogListener;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/android/FbDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/android/FbDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private setUpTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 117
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/android/FbDialog;->requestWindowFeature(I)Z

    .line 118
    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 120
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    .line 121
    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    const-string/jumbo v2, "Facebook"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 124
    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    const v2, -0x927b4c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 125
    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 126
    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 127
    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    return-void
.end method

.method private setUpWebView()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 134
    new-instance v0, Lcom/viber/voip/widget/NullCatcherWebView;

    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/widget/NullCatcherWebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    .line 135
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/facebook/android/FbDialog$FbWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/android/FbDialog$FbWebViewClient;-><init>(Lcom/facebook/android/FbDialog;Lcom/facebook/android/FbDialog$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 138
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    sget-object v1, Lcom/facebook/android/FbDialog;->FILL:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/high16 v8, 0x3f00

    const/4 v7, 0x1

    .line 75
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 76
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    .line 77
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v7}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    .line 78
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c032c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mSpinner:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/facebook/android/FbDialog$1;

    invoke-direct {v1, p0}, Lcom/facebook/android/FbDialog$1;-><init>(Lcom/facebook/android/FbDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 88
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    .line 89
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 90
    invoke-direct {p0}, Lcom/facebook/android/FbDialog;->setUpTitle()V

    .line 91
    invoke-direct {p0}, Lcom/facebook/android/FbDialog;->setUpWebView()V

    .line 92
    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 93
    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 95
    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 97
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/facebook/android/FbDialog;->DIMENSIONS_DIFF_LANDSCAPE:[F

    .line 100
    :goto_0
    iget-object v3, p0, Lcom/facebook/android/FbDialog;->mContent:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    aget v6, v0, v6

    mul-float/2addr v6, v2

    add-float/2addr v6, v8

    float-to-int v6, v6

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    aget v0, v0, v7

    mul-float/2addr v0, v2

    add-float/2addr v0, v8

    float-to-int v0, v0

    sub-int v0, v1, v0

    invoke-direct {v4, v5, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/facebook/android/FbDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    return-void

    .line 97
    :cond_0
    sget-object v0, Lcom/facebook/android/FbDialog;->DIMENSIONS_DIFF_PORTRAIT:[F

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 107
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 109
    invoke-virtual {p0}, Lcom/facebook/android/FbDialog;->dismiss()V

    .line 110
    iget-object v0, p0, Lcom/facebook/android/FbDialog;->mListener:Lcom/facebook/android/Facebook$DialogListener;

    invoke-interface {v0}, Lcom/facebook/android/Facebook$DialogListener;->onCancel()V

    .line 111
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
