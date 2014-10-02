.class Lcom/viber/voip/viberout/ui/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/t;


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/ui/ViberOutActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/k;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/u;Lcom/viber/voip/billing/j;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 206
    iget-object v1, p0, Lcom/viber/voip/viberout/ui/k;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-static {v1}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->b(Lcom/viber/voip/viberout/ui/ViberOutActivity;)Lcom/viber/voip/billing/u;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "balanceInfo.isSuccess(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/viber/voip/billing/j;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->a(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Lcom/viber/voip/billing/j;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "balanceInfo.isInvalidUser(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/viber/voip/billing/j;->a()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->a(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/viber/voip/viberout/ui/k;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-virtual {p2}, Lcom/viber/voip/billing/j;->a()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_0
    invoke-static {v1, v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->a(Lcom/viber/voip/viberout/ui/ViberOutActivity;Z)V

    .line 211
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/k;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->c(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V

    .line 212
    invoke-virtual {p2}, Lcom/viber/voip/billing/j;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/k;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->d(Lcom/viber/voip/viberout/ui/ViberOutActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/viber/voip/billing/j;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :cond_0
    :goto_1
    return-void

    .line 210
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/k;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->d(Lcom/viber/voip/viberout/ui/ViberOutActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0c0571

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 218
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/viberout/ui/k;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-static {v1}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->e(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V

    .line 219
    sget-object v1, Lcom/viber/voip/viberout/ui/b;->a:[I

    invoke-virtual {p2}, Lcom/viber/voip/billing/j;->c()Lcom/viber/voip/billing/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/billing/s;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 228
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "617"

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 229
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/viber/voip/viberout/ui/k;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0572

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0573

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0333

    new-instance v3, Lcom/viber/voip/viberout/ui/n;

    invoke-direct {v3, p0}, Lcom/viber/voip/viberout/ui/n;-><init>(Lcom/viber/voip/viberout/ui/k;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c051f

    new-instance v3, Lcom/viber/voip/viberout/ui/m;

    invoke-direct {v3, p0}, Lcom/viber/voip/viberout/ui/m;-><init>(Lcom/viber/voip/viberout/ui/k;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/viberout/ui/l;

    invoke-direct {v1, p0}, Lcom/viber/voip/viberout/ui/l;-><init>(Lcom/viber/voip/viberout/ui/k;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/k;->a:Lcom/viber/voip/viberout/ui/ViberOutActivity;

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->f(Lcom/viber/voip/viberout/ui/ViberOutActivity;)V

    .line 222
    invoke-static {}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->c()V

    goto :goto_1

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
