.class Lcom/viber/voip/bv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 494
    iput-object p1, p0, Lcom/viber/voip/bv;->b:Lcom/viber/voip/SystemDialogActivity;

    iput-object p2, p0, Lcom/viber/voip/bv;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 496
    iget-object v0, p0, Lcom/viber/voip/bv;->b:Lcom/viber/voip/SystemDialogActivity;

    iget-object v1, p0, Lcom/viber/voip/bv;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/SystemDialogActivity;->b(Lcom/viber/voip/SystemDialogActivity;Landroid/os/Bundle;)V

    .line 497
    iget-object v0, p0, Lcom/viber/voip/bv;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    .line 498
    return-void
.end method
