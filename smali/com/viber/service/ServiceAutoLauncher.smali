.class public Lcom/viber/service/ServiceAutoLauncher;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x4

    const-string/jumbo v1, "-autolaunch-"

    const-string/jumbo v2, "ServiceAutoLauncher.onReceive"

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.VIBER_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 24
    return-void
.end method
