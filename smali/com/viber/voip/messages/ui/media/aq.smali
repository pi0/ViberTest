.class Lcom/viber/voip/messages/ui/media/aq;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/aq;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/aq;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/adapters/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/aq;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/adapters/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/h;->notifyDataSetChanged()V

    .line 178
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/aq;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/aq;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;I)V

    .line 181
    :cond_0
    return-void
.end method
