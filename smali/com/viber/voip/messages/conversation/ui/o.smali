.class Lcom/viber/voip/messages/conversation/ui/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hj;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/messages/conversation/ui/m;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 419
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/o;->b:Lcom/viber/voip/messages/conversation/ui/m;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/o;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/high16 v11, 0x1000

    const-wide/16 v0, 0x0

    .line 423
    packed-switch p2, :pswitch_data_0

    .line 434
    :pswitch_0
    const-string/jumbo v2, "com.viber.voip.action.INVITE_NUMBER_NOT_VIBER_DIALOG"

    .line 438
    :goto_0
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/o;->b:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v3}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    .line 439
    if-eqz v3, :cond_1

    .line 440
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/p;

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/messages/conversation/ui/p;-><init>(Lcom/viber/voip/messages/conversation/ui/o;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 469
    :cond_0
    :goto_1
    return-void

    :pswitch_1
    move-object v2, v10

    .line 426
    goto :goto_0

    .line 428
    :pswitch_2
    const-string/jumbo v2, "com.viber.voip.action.CONNECTION_PROBLEM"

    goto :goto_0

    .line 431
    :pswitch_3
    const-string/jumbo v2, "com.viber.voip.action.NO_SERVICE_DIALOG"

    goto :goto_0

    .line 455
    :cond_1
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/o;->b:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v3}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 456
    if-eqz v2, :cond_2

    .line 457
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/o;->b:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.viber.voip.action.CLOSE_POPUP"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 458
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 459
    const-string/jumbo v1, "dialog_context"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/o;->b:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 462
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/o;->b:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.viber.voip.action.CLOSE_POPUP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 463
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/o;->a:Ljava/lang/String;

    const/4 v5, 0x0

    move-wide v2, v0

    move-wide v6, v0

    move-wide v8, v0

    invoke-static/range {v0 .. v10}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;IJJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 464
    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 465
    const-string/jumbo v1, "send_1to1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 466
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/o;->b:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
