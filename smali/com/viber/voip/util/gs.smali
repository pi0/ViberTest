.class final Lcom/viber/voip/util/gs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/content/Intent;

.field final synthetic d:Lcom/viber/voip/a/k;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Landroid/content/Context;Landroid/content/Intent;Lcom/viber/voip/a/k;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 685
    iput-object p1, p0, Lcom/viber/voip/util/gs;->a:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/viber/voip/util/gs;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/viber/voip/util/gs;->c:Landroid/content/Intent;

    iput-object p4, p0, Lcom/viber/voip/util/gs;->d:Lcom/viber/voip/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 689
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 706
    :goto_0
    return-void

    .line 691
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/util/gs;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0

    .line 694
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/util/gs;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/util/gs;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 695
    iget-object v0, p0, Lcom/viber/voip/util/gs;->d:Lcom/viber/voip/a/k;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/gs;->d:Lcom/viber/voip/a/k;

    invoke-virtual {v1}, Lcom/viber/voip/a/k;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/gs;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0

    .line 699
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/util/gs;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/viber/voip/util/gs;->c:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 700
    iget-object v0, p0, Lcom/viber/voip/util/gs;->d:Lcom/viber/voip/a/k;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/gs;->d:Lcom/viber/voip/a/k;

    invoke-virtual {v1}, Lcom/viber/voip/a/k;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 701
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "NeverShowAgainGSM"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 703
    iget-object v0, p0, Lcom/viber/voip/util/gs;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_0

    .line 689
    nop

    :pswitch_data_0
    .packed-switch 0x7f07023c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
