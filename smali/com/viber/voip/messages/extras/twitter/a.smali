.class Lcom/viber/voip/messages/extras/twitter/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/extras/twitter/e;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viber/voip/messages/extras/twitter/a;->a:Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_handle_oauth_verifier"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 42
    const-string/jumbo v1, "oauth_verifier_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/a;->a:Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 44
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "action_handle_oauth_verifier_error"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v1, "oauth_verifier_extra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    iget-object v1, p0, Lcom/viber/voip/messages/extras/twitter/a;->a:Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/extras/twitter/TwitterAuthDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 50
    return-void
.end method
