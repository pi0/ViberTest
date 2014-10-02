.class Lcom/viber/voip/messages/conversation/ui/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/cf;->b:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/cf;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 471
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cf;->b:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/cf;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->c(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cf;->b:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/cf;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Landroid/os/IBinder;)V

    .line 473
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 474
    return-void
.end method
