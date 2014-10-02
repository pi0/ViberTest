.class Lcom/viber/voip/ci;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/AlertDialog;

.field final synthetic b:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/viber/voip/ci;->b:Lcom/viber/voip/SystemDialogActivity;

    iput-object p2, p0, Lcom/viber/voip/ci;->a:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 693
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 723
    :goto_0
    return-void

    .line 696
    :pswitch_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "405"

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "Take me to the Google Play"

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 700
    iget-object v0, p0, Lcom/viber/voip/ci;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-static {v0}, Lcom/viber/voip/SystemDialogActivity;->d(Lcom/viber/voip/SystemDialogActivity;)V

    .line 701
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/viber/voip/ci;->b:Lcom/viber/voip/SystemDialogActivity;

    const v3, 0x7f0c07a5

    invoke-virtual {v2, v3}, Lcom/viber/voip/SystemDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 703
    iget-object v1, p0, Lcom/viber/voip/ci;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v1, v0}, Lcom/viber/voip/SystemDialogActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 707
    :pswitch_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "405"

    iget-object v3, p0, Lcom/viber/voip/ci;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v3}, Lcom/viber/voip/SystemDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c051e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 711
    iget-object v0, p0, Lcom/viber/voip/ci;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-static {v0}, Lcom/viber/voip/SystemDialogActivity;->d(Lcom/viber/voip/SystemDialogActivity;)V

    .line 712
    iget-object v0, p0, Lcom/viber/voip/ci;->b:Lcom/viber/voip/SystemDialogActivity;

    iget-object v1, p0, Lcom/viber/voip/ci;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 716
    :pswitch_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "405"

    iget-object v3, p0, Lcom/viber/voip/ci;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v3}, Lcom/viber/voip/SystemDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c051f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 720
    iget-object v0, p0, Lcom/viber/voip/ci;->b:Lcom/viber/voip/SystemDialogActivity;

    iget-object v1, p0, Lcom/viber/voip/ci;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/content/DialogInterface;)V

    goto/16 :goto_0

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x7f07023f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
