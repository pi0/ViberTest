.class Lcom/viber/voip/user/YouFragment$FragmentDialogs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/YouFragment$FragmentDialogs;

.field final synthetic val$dialogEditTextName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/YouFragment$FragmentDialogs;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/viber/voip/user/YouFragment$FragmentDialogs$1;->this$0:Lcom/viber/voip/user/YouFragment$FragmentDialogs;

    iput-object p2, p0, Lcom/viber/voip/user/YouFragment$FragmentDialogs$1;->val$dialogEditTextName:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 661
    iget-object v0, p0, Lcom/viber/voip/user/YouFragment$FragmentDialogs$1;->val$dialogEditTextName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 662
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->e()Lcom/viber/voip/messages/controller/dn;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/controller/dn;->a(Ljava/lang/String;)V

    .line 663
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 664
    return-void
.end method
