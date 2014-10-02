.class Lcom/viber/voip/contacts/ui/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hj;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/t;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/t;)V
    .locals 0
    .parameter

    .prologue
    .line 425
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/u;->a:Lcom/viber/voip/contacts/ui/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 428
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/u;->a:Lcom/viber/voip/contacts/ui/t;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/t;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkUnknownContact status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/u;->a:Lcom/viber/voip/contacts/ui/t;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/t;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 431
    if-nez v2, :cond_0

    .line 467
    :goto_0
    return-void

    .line 434
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 449
    :pswitch_0
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/u;->a:Lcom/viber/voip/contacts/ui/t;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/t;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Z)Z

    .line 454
    :goto_1
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/u;->a:Lcom/viber/voip/contacts/ui/t;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/t;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->i(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/contacts/ui/v;

    invoke-direct {v2, p0, v0, p3}, Lcom/viber/voip/contacts/ui/v;-><init>(Lcom/viber/voip/contacts/ui/u;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 436
    :pswitch_1
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/u;->a:Lcom/viber/voip/contacts/ui/t;

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/t;->b:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->b(Lcom/viber/voip/contacts/ui/ContactDetailsFragment;Z)Z

    goto :goto_1

    .line 440
    :pswitch_2
    const-string/jumbo v0, "com.viber.voip.action.CONNECTION_PROBLEM"

    .line 441
    invoke-static {v2}, Lcom/viber/voip/util/ft;->c(Landroid/content/Context;)Z

    goto :goto_1

    .line 444
    :pswitch_3
    const-string/jumbo v1, "com.viber.voip.action.NO_SERVICE_DIALOG"

    .line 445
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v3

    sget-object v4, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v5, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "204"

    invoke-virtual {v4, v5}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 446
    const v3, 0x7f0c0557

    const v4, 0x7f0c0558

    invoke-static {v2, v3, v4, v0}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    move-object v0, v1

    .line 447
    goto :goto_1

    .line 434
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
