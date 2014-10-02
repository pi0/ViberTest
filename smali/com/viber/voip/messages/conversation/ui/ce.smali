.class Lcom/viber/voip/messages/conversation/ui/ce;
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
    .line 461
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ce;->b:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/ce;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 464
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ce;->b:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ce;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Landroid/os/IBinder;)V

    .line 465
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 466
    return-void
.end method
