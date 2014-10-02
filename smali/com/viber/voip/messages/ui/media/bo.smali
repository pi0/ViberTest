.class Lcom/viber/voip/messages/ui/media/bo;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/bo;->a:Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;Lcom/viber/voip/messages/ui/media/bn;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/bo;-><init>(Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 87
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/media/bp;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/media/bp;-><init>(Lcom/viber/voip/messages/ui/media/bo;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method
