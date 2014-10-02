.class Lcom/viber/voip/registration/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/t;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/t;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/viber/voip/registration/u;->a:Lcom/viber/voip/registration/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 150
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 151
    iget-object v0, p0, Lcom/viber/voip/registration/u;->a:Lcom/viber/voip/registration/t;

    invoke-static {v0}, Lcom/viber/voip/registration/t;->a(Lcom/viber/voip/registration/t;)Landroid/widget/EditText;

    move-result-object v2

    const/4 v4, 0x2

    if-lez v3, :cond_1

    const/high16 v0, 0x4210

    :goto_0
    invoke-virtual {v2, v4, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 152
    iget-object v0, p0, Lcom/viber/voip/registration/u;->a:Lcom/viber/voip/registration/t;

    invoke-static {v0}, Lcom/viber/voip/registration/t;->a(Lcom/viber/voip/registration/t;)Landroid/widget/EditText;

    move-result-object v2

    if-lez v3, :cond_2

    const/16 v0, 0x51

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setGravity(I)V

    .line 153
    iget-object v0, p0, Lcom/viber/voip/registration/u;->a:Lcom/viber/voip/registration/t;

    invoke-static {v0}, Lcom/viber/voip/registration/t;->a(Lcom/viber/voip/registration/t;)Landroid/widget/EditText;

    move-result-object v4

    if-lez v3, :cond_3

    move v2, v1

    :goto_2
    if-lez v3, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v4, v2, v1, v1, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 154
    const/4 v0, 0x4

    if-ne v3, v0, :cond_5

    .line 155
    iget-object v0, p0, Lcom/viber/voip/registration/u;->a:Lcom/viber/voip/registration/t;

    invoke-static {v0}, Lcom/viber/voip/registration/t;->c(Lcom/viber/voip/registration/t;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 159
    :cond_0
    :goto_4
    return-void

    .line 151
    :cond_1
    const/high16 v0, 0x4180

    goto :goto_0

    .line 152
    :cond_2
    const/16 v0, 0x53

    goto :goto_1

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/registration/u;->a:Lcom/viber/voip/registration/t;

    invoke-static {v0}, Lcom/viber/voip/registration/t;->b(Lcom/viber/voip/registration/t;)I

    move-result v0

    move v2, v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/viber/voip/registration/u;->a:Lcom/viber/voip/registration/t;

    invoke-static {v0}, Lcom/viber/voip/registration/t;->b(Lcom/viber/voip/registration/t;)I

    move-result v0

    goto :goto_3

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/registration/u;->a:Lcom/viber/voip/registration/t;

    invoke-static {v0}, Lcom/viber/voip/registration/t;->c(Lcom/viber/voip/registration/t;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/viber/voip/registration/u;->a:Lcom/viber/voip/registration/t;

    invoke-static {v0}, Lcom/viber/voip/registration/t;->c(Lcom/viber/voip/registration/t;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    return-void
.end method
