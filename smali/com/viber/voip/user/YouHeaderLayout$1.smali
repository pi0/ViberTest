.class Lcom/viber/voip/user/YouHeaderLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/YouHeaderLayout;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/YouHeaderLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/viber/voip/user/YouHeaderLayout$1;->this$0:Lcom/viber/voip/user/YouHeaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 84
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout$1;->this$0:Lcom/viber/voip/user/YouHeaderLayout;

    #getter for: Lcom/viber/voip/user/YouHeaderLayout;->viewCache:Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;
    invoke-static {v0}, Lcom/viber/voip/user/YouHeaderLayout;->access$000(Lcom/viber/voip/user/YouHeaderLayout;)Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;

    move-result-object v0

    iget-object v1, v0, Lcom/viber/voip/user/YouHeaderLayout$HeaderViewCache;->usernameView:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 89
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/user/YouHeaderLayout$1;->this$0:Lcom/viber/voip/user/YouHeaderLayout;

    invoke-virtual {v0}, Lcom/viber/voip/user/YouHeaderLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c05bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
