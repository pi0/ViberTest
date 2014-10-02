.class Lcom/viber/voip/a;
.super Lcom/viber/voip/messages/extras/fb/ad;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/AboutActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/AboutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/viber/voip/a;->a:Lcom/viber/voip/AboutActivity;

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthorizationSuccess(Z)V
    .locals 2
    .parameter

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/viber/voip/a;->a:Lcom/viber/voip/AboutActivity;

    new-instance v1, Lcom/viber/voip/b;

    invoke-direct {v1, p0}, Lcom/viber/voip/b;-><init>(Lcom/viber/voip/a;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/AboutActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    return-void
.end method
