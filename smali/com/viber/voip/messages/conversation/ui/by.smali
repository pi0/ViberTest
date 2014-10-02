.class Lcom/viber/voip/messages/conversation/ui/by;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 619
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/by;->b:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    iput-wide p2, p0, Lcom/viber/voip/messages/conversation/ui/by;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 622
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/by;->b:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/by;->b:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    const v2, 0x7f0c02c6

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 623
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/by;->b:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    const-string/jumbo v1, "rename_dialog"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/by;->b:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/by;->b:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->c(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)Lcom/viber/voip/messages/ui/view/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/view/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    .line 627
    return-void
.end method
