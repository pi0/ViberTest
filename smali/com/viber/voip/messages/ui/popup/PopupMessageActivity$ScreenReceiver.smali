.class public Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

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

    .line 171
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    const-string/jumbo v1, "BroadcastReceiver:  ACTION_SCREEN_OFF"

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;Z)Z

    .line 174
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 175
    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    const-string/jumbo v1, "BroadcastReceiver:  ACTION_SCREEN_ON"

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;Z)Z

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    const-string/jumbo v1, "BroadcastReceiver:  ACTION_USER_PRESENT"

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->e(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/conversation/as;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->e(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/conversation/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/as;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    iget v0, v0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->c:I

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->e(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/conversation/as;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/as;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->f(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.viber.voip.action.CLOSE_POPUP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    const-string/jumbo v1, "BroadcastReceiver:  ACTION_CLOSE_POPUP"

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v0, "hidenotify"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    .line 189
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;->a:Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->finish()V

    goto/16 :goto_0
.end method
