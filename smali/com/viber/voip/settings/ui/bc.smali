.class Lcom/viber/voip/settings/ui/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/bb;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/bb;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/viber/voip/settings/ui/bc;->a:Lcom/viber/voip/settings/ui/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 62
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bc;->a:Lcom/viber/voip/settings/ui/bb;

    invoke-virtual {v0}, Lcom/viber/voip/settings/ui/bb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/settings/ui/bc;->a:Lcom/viber/voip/settings/ui/bb;

    const v3, 0x7f0c058a

    invoke-virtual {v2, v3}, Lcom/viber/voip/settings/ui/bb;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 64
    iget-object v1, p0, Lcom/viber/voip/settings/ui/bc;->a:Lcom/viber/voip/settings/ui/bb;

    invoke-static {v1}, Lcom/viber/voip/settings/ui/bb;->a(Lcom/viber/voip/settings/ui/bb;)Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/viber/voip/settings/ui/bd;

    invoke-direct {v4, p0, v0}, Lcom/viber/voip/settings/ui/bd;-><init>(Lcom/viber/voip/settings/ui/bc;Landroid/app/ProgressDialog;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/x;->a(JLcom/viber/voip/messages/controller/y;)V

    .line 70
    return-void
.end method
