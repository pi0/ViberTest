.class Lcom/viber/voip/messages/ui/chathead/au;
.super Landroid/telephony/PhoneStateListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 2532
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/au;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2532
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/chathead/au;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 2534
    packed-switch p1, :pswitch_data_0

    .line 2553
    :cond_0
    :goto_0
    return-void

    .line 2536
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/au;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->l(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2537
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/au;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    .line 2538
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/au;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/chathead/d;->j(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    goto :goto_0

    .line 2542
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/au;->a:Lcom/viber/voip/messages/ui/chathead/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->j(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 2543
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/au;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->n(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2544
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/au;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 2545
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/au;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->dismiss()V

    goto :goto_0

    .line 2547
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/au;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->j(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2548
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/au;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->o(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2549
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/au;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    goto :goto_0

    .line 2534
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
