.class Lcom/viber/voip/messages/conversation/ui/aw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 650
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/aw;->b:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/aw;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 655
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 684
    :goto_0
    return-void

    .line 658
    :pswitch_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "501b"

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "Cancel"

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 662
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/aw;->b:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/ui/cq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/aw;->b:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/ui/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/aw;->b:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/ui/cq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/cq;->i()V

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/aw;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 669
    :pswitch_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "501b"

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "Mute"

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 672
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/aw;->b:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    .line 673
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/aw;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 677
    :pswitch_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "501b"

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "Leave and Delete"

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 680
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/aw;->b:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    .line 681
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/aw;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto/16 :goto_0

    .line 655
    nop

    :pswitch_data_0
    .packed-switch 0x7f07023c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
