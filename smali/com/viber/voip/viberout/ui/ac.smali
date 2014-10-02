.class Lcom/viber/voip/viberout/ui/ac;
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
    .line 677
    iput-object p1, p0, Lcom/viber/voip/viberout/ui/ac;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    iput-object p2, p0, Lcom/viber/voip/viberout/ui/ac;->a:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/viber/voip/viberout/ui/ac;->b:Lcom/viber/voip/billing/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 680
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 693
    :goto_0
    return-void

    .line 683
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ac;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 684
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ac;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->finish()V

    goto :goto_0

    .line 688
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ac;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 689
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ac;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    invoke-virtual {v0}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->finish()V

    .line 690
    iget-object v0, p0, Lcom/viber/voip/viberout/ui/ac;->c:Lcom/viber/voip/viberout/ui/ViberOutDialogs;

    iget-object v1, p0, Lcom/viber/voip/viberout/ui/ac;->b:Lcom/viber/voip/billing/ae;

    invoke-static {v0, v1}, Lcom/viber/voip/viberout/ui/ViberOutDialogs;->a(Lcom/viber/voip/viberout/ui/ViberOutDialogs;Lcom/viber/voip/billing/ae;)V

    goto :goto_0

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x7f07023c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
