.class public Lcom/viber/voip/ViberApplication$KillReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1557
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1560
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    #getter for: Lcom/viber/voip/ViberApplication;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->access$300(Lcom/viber/voip/ViberApplication;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/dt;

    invoke-direct {v1, p0}, Lcom/viber/voip/dt;-><init>(Lcom/viber/voip/ViberApplication$KillReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1567
    return-void
.end method
