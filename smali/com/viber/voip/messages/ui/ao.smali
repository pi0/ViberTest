.class Lcom/viber/voip/messages/ui/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Lcom/viber/voip/messages/ui/aj;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/aj;Landroid/view/View;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/viber/voip/messages/ui/ao;->c:Lcom/viber/voip/messages/ui/aj;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/ao;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/viber/voip/messages/ui/ao;->b:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 292
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ao;->c:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->a(Lcom/viber/voip/messages/ui/aj;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ao;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 293
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ao;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ao;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 295
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ao;->c:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/aj;->b(Lcom/viber/voip/messages/ui/aj;)Lcom/viber/voip/stickers/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->e(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ao;->c:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/aj;->b(Lcom/viber/voip/messages/ui/aj;)Lcom/viber/voip/stickers/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->d(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ao;->c:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/aj;->b(Lcom/viber/voip/messages/ui/aj;)Lcom/viber/voip/stickers/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ao;->c:Lcom/viber/voip/messages/ui/aj;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/aj;->a(Lcom/viber/voip/messages/ui/aj;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "You already have this package ot it is being downloaded now"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 328
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    sget-object v1, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v1}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/messages/ui/ap;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/messages/ui/ap;-><init>(Lcom/viber/voip/messages/ui/ao;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
