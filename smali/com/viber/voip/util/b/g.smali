.class Lcom/viber/voip/util/b/g;
.super Landroid/os/Handler;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 669
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 670
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter

    .prologue
    .line 675
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/viber/voip/util/b/f;

    .line 676
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 685
    :goto_0
    return-void

    .line 679
    :pswitch_0
    iget-object v1, v0, Lcom/viber/voip/util/b/f;->a:Lcom/viber/voip/util/b/a;

    iget-object v0, v0, Lcom/viber/voip/util/b/f;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lcom/viber/voip/util/b/a;->c(Lcom/viber/voip/util/b/a;Ljava/lang/Object;)V

    goto :goto_0

    .line 682
    :pswitch_1
    iget-object v1, v0, Lcom/viber/voip/util/b/f;->a:Lcom/viber/voip/util/b/a;

    iget-object v0, v0, Lcom/viber/voip/util/b/f;->b:[Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/viber/voip/util/b/a;->b([Ljava/lang/Object;)V

    goto :goto_0

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
