.class public Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"

# interfaces
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnCreateOptionsMenuListener;
.implements Lcom/actionbarsherlock/ActionBarSherlock$OnOptionsItemSelectedListener;
.implements Lcom/viber/voip/messages/ui/media/ac;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Lcom/viber/voip/messages/ui/media/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    .line 38
    new-instance v0, Lcom/viber/voip/messages/ui/media/ab;

    invoke-direct {v0}, Lcom/viber/voip/messages/ui/media/ab;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->c:Lcom/viber/voip/messages/ui/media/ab;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;)Lcom/viber/voip/messages/ui/media/ab;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->c:Lcom/viber/voip/messages/ui/media/ab;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 54
    return-object p0
.end method

.method public a(IIJLjava/lang/String;FJLjava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->c:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/media/ab;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/viber/voip/messages/ui/media/bo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/viber/voip/messages/ui/media/bo;-><init>(Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;Lcom/viber/voip/messages/ui/media/bn;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 77
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 59
    const v0, 0x7f0300c8

    return v0
.end method

.method public c()Landroid/view/View;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 65
    const v0, 0x7f0702a1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->b:Landroid/webkit/WebView;

    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 68
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->b:Landroid/webkit/WebView;

    invoke-static {v0, v1}, Lcom/viber/voip/util/hy;->a(Landroid/content/Intent;Landroid/webkit/WebView;)V

    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->c:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Landroid/content/res/Configuration;)V

    .line 102
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 103
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->c:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 135
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->c:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/ui/media/ab;->a(Lcom/viber/voip/messages/ui/media/ac;)V

    .line 44
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/app/ViberActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 127
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->c:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/ui/media/ab;->a(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 128
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 145
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->c:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onDestroy()V

    .line 49
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->finish()V

    .line 50
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 120
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->c:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Landroid/content/Intent;)V

    .line 121
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->c:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/media/ab;->a(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->c:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ab;->c()V

    .line 108
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onStart()V

    .line 109
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/WebMapPreViewActivity;->c:Lcom/viber/voip/messages/ui/media/ab;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ab;->d()V

    .line 114
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onStop()V

    .line 115
    return-void
.end method
