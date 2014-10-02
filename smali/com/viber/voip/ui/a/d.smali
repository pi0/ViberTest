.class public abstract Lcom/viber/voip/ui/a/d;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field a:Landroid/content/DialogInterface$OnCancelListener;

.field b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/ui/a/d;->b:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-object p1, p0, Lcom/viber/voip/ui/a/d;->a:Landroid/content/DialogInterface$OnCancelListener;

    .line 68
    return-void
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/viber/voip/ui/a/d;->b:Z

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/viber/voip/ui/a/d;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/ui/a/d;->a:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/ui/a/d;->a:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 73
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v4/app/DialogFragment;->setCancelable(Z)V

    .line 22
    if-eqz p1, :cond_0

    .line 23
    const-string/jumbo v0, "dialog_cancelable"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/ui/a/d;->b:Z

    .line 25
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/viber/voip/ui/a/e;

    invoke-direct {v1, p0}, Lcom/viber/voip/ui/a/e;-><init>(Lcom/viber/voip/ui/a/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 53
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 30
    const-string/jumbo v0, "dialog_cancelable"

    iget-boolean v1, p0, Lcom/viber/voip/ui/a/d;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/viber/voip/ui/a/d;->b:Z

    .line 59
    return-void
.end method
