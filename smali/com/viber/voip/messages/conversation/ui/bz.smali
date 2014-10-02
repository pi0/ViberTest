.class Lcom/viber/voip/messages/conversation/ui/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 636
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/bz;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 639
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bz;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/bz;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    const v2, 0x7f0c0558

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 640
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bz;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    const-string/jumbo v1, "rename_dialog"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bz;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->c(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)Lcom/viber/voip/messages/ui/view/c;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/bz;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/view/c;->a(Ljava/lang/String;)V

    .line 642
    return-void
.end method
