.class Lcom/viber/voip/calls/ui/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/ui/PhoneFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/ui/PhoneFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/viber/voip/calls/ui/f;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 374
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/viber/voip/calls/ui/f;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->f(Lcom/viber/voip/calls/ui/PhoneFragment;)V

    .line 368
    iget-object v0, p0, Lcom/viber/voip/calls/ui/f;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/calls/ui/PhoneFragment;->c(Lcom/viber/voip/calls/ui/PhoneFragment;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/viber/voip/calls/ui/f;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->e(Lcom/viber/voip/calls/ui/PhoneFragment;)Landroid/widget/ImageButton;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/calls/ui/f;->a:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->b(Lcom/viber/voip/calls/ui/PhoneFragment;)Lcom/viber/voip/widget/PhoneTypeField;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/widget/PhoneTypeField;->getPhoneFieldLength()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 370
    return-void

    .line 369
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
