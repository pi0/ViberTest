.class Lcom/viber/voip/contacts/ui/ck;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/hj;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/viber/voip/contacts/ui/cb;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/cb;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ck;->b:Lcom/viber/voip/contacts/ui/cb;

    iput-object p2, p0, Lcom/viber/voip/contacts/ui/ck;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 611
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ck;->b:Lcom/viber/voip/contacts/ui/cb;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addNewNumber status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/cb;->a(Lcom/viber/voip/contacts/ui/cb;Ljava/lang/String;)V

    .line 613
    packed-switch p2, :pswitch_data_0

    .line 624
    :pswitch_0
    const-string/jumbo v0, "com.viber.voip.action.NUMBER_NOT_VIBER_DIALOG"

    .line 628
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ck;->b:Lcom/viber/voip/contacts/ui/cb;

    invoke-static {v1}, Lcom/viber/voip/contacts/ui/cb;->b(Lcom/viber/voip/contacts/ui/cb;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/contacts/ui/cl;

    invoke-direct {v2, p0, v0, p3}, Lcom/viber/voip/contacts/ui/cl;-><init>(Lcom/viber/voip/contacts/ui/ck;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 644
    return-void

    .line 615
    :pswitch_1
    const/4 v0, 0x0

    .line 616
    goto :goto_0

    .line 618
    :pswitch_2
    const-string/jumbo v0, "com.viber.voip.action.CONNECTION_PROBLEM"

    goto :goto_0

    .line 621
    :pswitch_3
    const-string/jumbo v0, "com.viber.voip.action.NO_SERVICE_DIALOG"

    goto :goto_0

    .line 613
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
