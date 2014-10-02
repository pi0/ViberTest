.class final Lcom/viber/voip/stickers/e/d;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    const-string/jumbo v0, "checkCountListener caught broadcast from Alarm Manager"

    invoke-static {v0}, Lcom/viber/voip/stickers/e/c;->a(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Lcom/viber/voip/stickers/e/c;->d()Z

    .line 79
    return-void
.end method
