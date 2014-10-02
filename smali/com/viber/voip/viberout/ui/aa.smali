.class Lcom/viber/voip/viberout/ui/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/viber/voip/billing/ae;

.field final synthetic c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;


# direct methods
.method constructor <init>(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Landroid/app/AlertDialog;Lcom/viber/voip/billing/ae;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/aa;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/aa;->a:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/viber/voip/viberout/ui/aa;->b:Lcom/viber/voip/billing/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 616
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 636
    :goto_0
    return-void

    .line 619
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/aa;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 620
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/aa;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->finish()V

    goto :goto_0

    .line 624
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/aa;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 625
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/aa;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->finish()V

    .line 626
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/aa;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    iget-object v1, p0, Lcom/viber/voip/viberout/ui/aa;->b:Lcom/viber/voip/billing/ae;

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/ae;)V

    goto :goto_0

    .line 630
    :pswitch_2
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "DIALOG_GSM_CALL_TO_NON_VIBER_NEVER_SHOW"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 631
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/aa;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 632
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/aa;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->finish()V

    .line 633
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/aa;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    iget-object v1, p0, Lcom/viber/voip/viberout/ui/aa;->b:Lcom/viber/voip/billing/ae;

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/ae;)V

    goto :goto_0

    .line 616
    :pswitch_data_0
    .packed-switch 0x7f07023c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
