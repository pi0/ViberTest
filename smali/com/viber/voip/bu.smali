.class Lcom/viber/voip/bu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[Landroid/widget/CheckBox;

.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;[Landroid/widget/CheckBox;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 482
    iput-object p1, p0, Lcom/viber/voip/bu;->c:Lcom/viber/voip/SystemDialogActivity;

    iput-object p2, p0, Lcom/viber/voip/bu;->a:[Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/viber/voip/bu;->b:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 485
    iget-object v0, p0, Lcom/viber/voip/bu;->a:[Landroid/widget/CheckBox;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/bu;->a:[Landroid/widget/CheckBox;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    invoke-static {}, Lcom/viber/voip/util/upload/ac;->a()V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/bu;->c:Lcom/viber/voip/SystemDialogActivity;

    iget-object v1, p0, Lcom/viber/voip/bu;->b:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/SystemDialogActivity;->a(Lcom/viber/voip/SystemDialogActivity;Landroid/os/Bundle;)V

    .line 490
    iget-object v0, p0, Lcom/viber/voip/bu;->c:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v0}, Lcom/viber/voip/SystemDialogActivity;->finish()V

    .line 491
    return-void
.end method
