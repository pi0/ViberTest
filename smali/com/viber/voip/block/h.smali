.class Lcom/viber/voip/block/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Landroid/widget/Button;

.field final synthetic b:Lcom/viber/voip/block/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/block/g;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/viber/voip/block/h;->b:Lcom/viber/voip/block/g;

    iput-object p2, p0, Lcom/viber/voip/block/h;->a:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/viber/voip/block/h;->b:Lcom/viber/voip/block/g;

    iget-object v0, v0, Lcom/viber/voip/block/g;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/viber/voip/block/h;->a:Landroid/widget/Button;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    return-void

    .line 124
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
