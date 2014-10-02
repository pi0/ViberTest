.class Lcom/viber/voip/messages/controller/a/k;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/a/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/j;)V
    .locals 0
    .parameter

    .prologue
    .line 545
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/k;->a:Lcom/viber/voip/messages/controller/a/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 548
    const-string/jumbo v0, "com.viber.voip.action.APP_ON_BACKGROUND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 549
    sget-object v0, Lcom/viber/voip/dk;->d:Lcom/viber/voip/dk;

    invoke-virtual {v0}, Lcom/viber/voip/dk;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/controller/a/l;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/controller/a/l;-><init>(Lcom/viber/voip/messages/controller/a/k;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 576
    :cond_0
    return-void
.end method
