.class Lcom/viber/voip/messages/conversation/ui/cn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

.field private b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/cn;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Lcom/viber/voip/messages/conversation/ui/bx;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/cn;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 152
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/cn;->b:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 157
    const-string/jumbo v0, "loading_dialog"

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/cn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cn;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c04d4

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cn;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/cn;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cn;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    const-string/jumbo v1, "SERVER TIMEOUT WHILE LEAVING GROUP"

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->b(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Ljava/lang/String;)V

    .line 164
    return-void

    .line 159
    :cond_1
    const-string/jumbo v0, "rename_dialog"

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/cn;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cn;->a:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(I)V

    goto :goto_0
.end method
