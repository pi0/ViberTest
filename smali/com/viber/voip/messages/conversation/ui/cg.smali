.class Lcom/viber/voip/messages/conversation/ui/cg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Landroid/app/AlertDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 481
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/cg;->c:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/cg;->a:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/viber/voip/messages/conversation/ui/cg;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 484
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 488
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cg;->a:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 489
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/cg;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 490
    return-void

    .line 489
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
