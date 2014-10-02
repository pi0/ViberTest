.class Lcom/viber/voip/viberout/ui/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/n;


# instance fields
.field final synthetic a:Lcom/viber/voip/viberout/ui/ag;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 795
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/ah;->a:Lcom/viber/voip/viberout/ui/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 798
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ah;->a:Lcom/viber/voip/viberout/ui/ag;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ag;->a:[Landroid/app/ProgressDialog;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ah;->a:Lcom/viber/voip/viberout/ui/ag;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ag;->b:Lcom/viber/voip/viberout/ui/ae;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ae;->e:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ah;->a:Lcom/viber/voip/viberout/ui/ag;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ag;->a:[Landroid/app/ProgressDialog;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 800
    invoke-static {}, Lcom/viber/voip/billing/a;->a()Lcom/viber/voip/billing/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/viberout/ui/ah;->a:Lcom/viber/voip/viberout/ui/ag;

    iget-object v1, v1, Lcom/viber/voip/viberout/ui/ag;->b:Lcom/viber/voip/viberout/ui/ae;

    iget-object v1, v1, Lcom/viber/voip/viberout/ui/ae;->c:Lcom/viber/voip/billing/q;

    invoke-virtual {v1}, Lcom/viber/voip/billing/q;->b()Lcom/viber/voip/billing/bn;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/viberout/ui/ah;->a:Lcom/viber/voip/viberout/ui/ag;

    iget-object v2, v2, Lcom/viber/voip/viberout/ui/ag;->b:Lcom/viber/voip/viberout/ui/ae;

    iget-object v2, v2, Lcom/viber/voip/viberout/ui/ae;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/bn;Ljava/lang/String;)V

    .line 801
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ah;->a:Lcom/viber/voip/viberout/ui/ag;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ag;->b:Lcom/viber/voip/viberout/ui/ae;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ae;->e:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->finish()V

    .line 803
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error purchasing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/viberout/ui/ah;->a:Lcom/viber/voip/viberout/ui/ag;

    iget-object v1, v1, Lcom/viber/voip/viberout/ui/ag;->b:Lcom/viber/voip/viberout/ui/ae;

    iget-object v1, v1, Lcom/viber/voip/viberout/ui/ae;->c:Lcom/viber/voip/billing/q;

    invoke-virtual {v1}, Lcom/viber/voip/billing/q;->b()Lcom/viber/voip/billing/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", billing service health problem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ah;->a:Lcom/viber/voip/viberout/ui/ag;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ag;->a:[Landroid/app/ProgressDialog;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ah;->a:Lcom/viber/voip/viberout/ui/ag;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ag;->a:[Landroid/app/ProgressDialog;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 810
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ah;->a:Lcom/viber/voip/viberout/ui/ag;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ag;->b:Lcom/viber/voip/viberout/ui/ae;

    iget-object v0, v0, Lcom/viber/voip/viberout/ui/ae;->e:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    const v1, 0x7f0c0559

    const v2, 0x7f0c0561

    iget-object v3, p0, Lcom/viber/voip/viberout/ui/ah;->a:Lcom/viber/voip/viberout/ui/ag;

    iget-object v3, v3, Lcom/viber/voip/viberout/ui/ag;->b:Lcom/viber/voip/viberout/ui/ae;

    iget-object v3, v3, Lcom/viber/voip/viberout/ui/ae;->e:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-static {v3}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;IILandroid/content/DialogInterface$OnCancelListener;)V

    .line 812
    :cond_0
    return-void
.end method
