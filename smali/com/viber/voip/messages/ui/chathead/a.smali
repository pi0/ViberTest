.class Lcom/viber/voip/messages/ui/chathead/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/a;->a:Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.viber.voip.action.CLOSE_POPUP_BACKGROUND_ACTIVITY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a;->a:Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;->finish()V

    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/a;->a:Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;

    invoke-virtual {v0, v2, v2}, Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;->overridePendingTransition(II)V

    .line 43
    :cond_0
    return-void
.end method
