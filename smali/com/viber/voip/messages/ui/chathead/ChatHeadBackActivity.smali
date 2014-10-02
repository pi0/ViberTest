.class public Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/a;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/a;-><init>(Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;->a:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;->requestWindowFeature(I)Z

    .line 17
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 19
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 33
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 24
    const-string/jumbo v1, "com.viber.voip.action.CLOSE_POPUP_BACKGROUND_ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 26
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 27
    return-void
.end method
