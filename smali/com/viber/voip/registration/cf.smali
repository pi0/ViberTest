.class Lcom/viber/voip/registration/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/cb;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/cb;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/viber/voip/registration/cf;->a:Lcom/viber/voip/registration/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter

    .prologue
    .line 241
    iget-object v0, p0, Lcom/viber/voip/registration/cf;->a:Lcom/viber/voip/registration/cb;

    invoke-static {v0}, Lcom/viber/voip/registration/cb;->b(Lcom/viber/voip/registration/cb;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    return-void

    .line 241
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    return-void
.end method
