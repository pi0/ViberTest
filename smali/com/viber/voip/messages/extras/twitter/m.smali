.class Lcom/viber/voip/messages/extras/twitter/m;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/twitter/l;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/twitter/l;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/m;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/m;->a:Lcom/viber/voip/messages/extras/twitter/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTwitterDialogReceiver: onReceive action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;)V

    .line 128
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "action_handle_dialog_destroy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/twitter/m;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;Landroid/content/Context;)V

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 130
    :cond_2
    const-string/jumbo v1, "action_handle_oauth_verifier"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 131
    const-string/jumbo v0, "oauth_verifier_extra"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/m;->a:Lcom/viber/voip/messages/extras/twitter/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onVerifierReceived() verifier="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;)V

    .line 133
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    new-instance v1, Lcom/viber/voip/messages/extras/twitter/u;

    iget-object v2, p0, Lcom/viber/voip/messages/extras/twitter/m;->a:Lcom/viber/voip/messages/extras/twitter/l;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/messages/extras/twitter/u;-><init>(Lcom/viber/voip/messages/extras/twitter/l;Lcom/viber/voip/messages/extras/twitter/m;)V

    new-array v2, v4, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/extras/twitter/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 136
    :cond_3
    const-string/jumbo v1, "action_handle_oauth_verifier_error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    const-string/jumbo v0, "oauth_verifier_extra"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/m;->a:Lcom/viber/voip/messages/extras/twitter/l;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onErrorReceived() message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/m;->a:Lcom/viber/voip/messages/extras/twitter/l;

    invoke-static {v1, v0, v4}, Lcom/viber/voip/messages/extras/twitter/l;->a(Lcom/viber/voip/messages/extras/twitter/l;Ljava/lang/String;Z)V

    goto :goto_0
.end method
