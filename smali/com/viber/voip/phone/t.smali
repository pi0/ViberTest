.class final Lcom/viber/voip/phone/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/PhoneActivity;

.field private b:Lcom/viber/voip/phone/call/k;


# direct methods
.method private constructor <init>(Lcom/viber/voip/phone/PhoneActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/phone/PhoneActivity;Lcom/viber/voip/phone/n;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 622
    invoke-direct {p0, p1}, Lcom/viber/voip/phone/t;-><init>(Lcom/viber/voip/phone/PhoneActivity;)V

    return-void
.end method

.method private a(Lcom/viber/voip/phone/ab;Lcom/viber/voip/phone/call/n;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 740
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v0

    .line 741
    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_5

    .line 743
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->i(Lcom/viber/voip/phone/PhoneActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/phone/u;

    invoke-direct {v1, p0}, Lcom/viber/voip/phone/u;-><init>(Lcom/viber/voip/phone/t;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 752
    new-instance v0, Lcom/viber/voip/billing/ae;

    iget-object v1, p0, Lcom/viber/voip/phone/t;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/billing/ae;-><init>(Ljava/lang/String;)V

    .line 753
    iget-object v1, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v1, v0}, Lcom/viber/voip/phone/PhoneActivity;->a(Lcom/viber/voip/phone/PhoneActivity;Lcom/viber/voip/billing/ae;)V

    .line 766
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->d(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ab;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->d(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ab;

    move-result-object v0

    if-eq p1, v0, :cond_2

    .line 767
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->d(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/ab;->b()V

    .line 768
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "State disable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v2}, Lcom/viber/voip/phone/PhoneActivity;->d(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 771
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/viber/voip/phone/ab;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 772
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0, p1}, Lcom/viber/voip/phone/PhoneActivity;->a(Lcom/viber/voip/phone/PhoneActivity;Lcom/viber/voip/phone/ab;)Lcom/viber/voip/phone/ab;

    .line 773
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->d(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ab;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/ab;->a(Lcom/viber/jni/PhoneControllerWrapper;)V

    .line 774
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "State enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v2}, Lcom/viber/voip/phone/PhoneActivity;->d(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 777
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->d(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ab;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 778
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->d(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/t;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/ab;->a(Lcom/viber/voip/phone/call/k;)V

    .line 779
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "State update:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v2}, Lcom/viber/voip/phone/PhoneActivity;->d(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ab;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 782
    :cond_4
    return-void

    .line 754
    :cond_5
    const/16 v1, 0xd

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 755
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/phone/t;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v0

    .line 756
    const-string/jumbo v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 757
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CALL_DIALOG"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 758
    const-string/jumbo v0, "last_resolved"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 759
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 760
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 761
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->g(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->a()V

    .line 762
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->h(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/jni/dialer/DialerController;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/jni/dialer/DialerController;->handleHangup()V

    .line 763
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v0}, Lcom/viber/voip/phone/PhoneActivity;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/viber/voip/phone/t;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/phone/call/n;->addObserver(Ljava/util/Observer;)V

    .line 635
    return-void
.end method

.method public a(Lcom/viber/voip/phone/call/k;)V
    .locals 1
    .parameter

    .prologue
    .line 627
    iget-object v0, p0, Lcom/viber/voip/phone/t;->b:Lcom/viber/voip/phone/call/k;

    if-eq p1, v0, :cond_0

    .line 628
    invoke-virtual {p0}, Lcom/viber/voip/phone/t;->b()V

    .line 630
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/phone/t;->b:Lcom/viber/voip/phone/call/k;

    .line 631
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/viber/voip/phone/t;->b:Lcom/viber/voip/phone/call/k;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/viber/voip/phone/t;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/phone/call/n;->deleteObserver(Ljava/util/Observer;)V

    .line 641
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/viber/voip/phone/t;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/t;->b:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/phone/t;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 645
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v0, 0x1

    .line 650
    check-cast p2, Lcom/viber/voip/phone/call/n;

    .line 651
    iget-object v1, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v1}, Lcom/viber/voip/phone/PhoneActivity;->a(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/a/g;

    move-result-object v1

    .line 653
    iget-object v2, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v2}, Lcom/viber/voip/phone/PhoneActivity;->b(Lcom/viber/voip/phone/PhoneActivity;)Ljava/util/TimerTask;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v2

    if-eqz v2, :cond_0

    .line 654
    iget-object v2, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v2}, Lcom/viber/voip/phone/PhoneActivity;->b(Lcom/viber/voip/phone/PhoneActivity;)Ljava/util/TimerTask;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    .line 657
    :cond_0
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 735
    :cond_1
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->a(Lcom/viber/voip/phone/PhoneActivity;I)I

    .line 736
    return-void

    .line 662
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->c(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/phone/ac;->c()Lcom/viber/voip/phone/ab;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/viber/voip/phone/t;->a(Lcom/viber/voip/phone/ab;Lcom/viber/voip/phone/call/n;)V

    goto :goto_0

    .line 665
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->d(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->d(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/ab;->b()V

    goto :goto_0

    .line 672
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->e(Lcom/viber/voip/phone/PhoneActivity;)I

    move-result v0

    if-eq v0, v4, :cond_2

    .line 673
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/a/g;->e()Lcom/viber/voip/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    .line 675
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->c(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/phone/ac;->b()Lcom/viber/voip/phone/ab;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/viber/voip/phone/t;->a(Lcom/viber/voip/phone/ab;Lcom/viber/voip/phone/call/n;)V

    goto :goto_0

    .line 678
    :pswitch_4
    iget-object v2, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update PhoneState.ID_Dialed: mAnalyticsTrackedState!=PhoneState.ID_Dialed-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v4}, Lcom/viber/voip/phone/PhoneActivity;->e(Lcom/viber/voip/phone/PhoneActivity;)I

    move-result v4

    if-eq v4, v5, :cond_5

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->e(Lcom/viber/voip/phone/PhoneActivity;)I

    move-result v0

    if-eq v0, v5, :cond_3

    .line 680
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/a/g;->c()Lcom/viber/voip/a/c;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    .line 683
    :cond_3
    :pswitch_5
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->e(Lcom/viber/voip/phone/PhoneActivity;)I

    move-result v0

    if-eq v0, v6, :cond_4

    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v0

    if-ne v0, v6, :cond_4

    .line 685
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/a/g;->d()Lcom/viber/voip/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    .line 688
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->c(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/phone/ac;->a()Lcom/viber/voip/phone/ab;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/viber/voip/phone/t;->a(Lcom/viber/voip/phone/ab;Lcom/viber/voip/phone/call/n;)V

    goto/16 :goto_0

    .line 678
    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    .line 696
    :pswitch_6
    iget-object v2, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v2}, Lcom/viber/voip/phone/PhoneActivity;->e(Lcom/viber/voip/phone/PhoneActivity;)I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_6

    .line 697
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v2

    if-ne v2, v0, :cond_7

    .line 698
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/a/g;->k()Lcom/viber/voip/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    .line 705
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    const-string/jumbo v1, "Timer on Failed"

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    new-instance v1, Lcom/viber/voip/phone/q;

    iget-object v2, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    iget-object v3, p0, Lcom/viber/voip/phone/t;->b:Lcom/viber/voip/phone/call/k;

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/phone/q;-><init>(Lcom/viber/voip/phone/PhoneActivity;Lcom/viber/voip/phone/call/k;)V

    invoke-static {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->a(Lcom/viber/voip/phone/PhoneActivity;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    .line 707
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->f(Lcom/viber/voip/phone/PhoneActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v1}, Lcom/viber/voip/phone/PhoneActivity;->b(Lcom/viber/voip/phone/PhoneActivity;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 708
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->c(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/phone/ac;->d()Lcom/viber/voip/phone/ab;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/viber/voip/phone/t;->a(Lcom/viber/voip/phone/ab;Lcom/viber/voip/phone/call/n;)V

    goto/16 :goto_0

    .line 699
    :cond_7
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->p()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 700
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/a/g;->h()Lcom/viber/voip/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    goto :goto_2

    .line 702
    :cond_8
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/a/g;->i()Lcom/viber/voip/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    goto :goto_2

    .line 711
    :pswitch_7
    iget-object v2, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v2}, Lcom/viber/voip/phone/PhoneActivity;->e(Lcom/viber/voip/phone/PhoneActivity;)I

    move-result v2

    if-eq v2, v3, :cond_9

    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->c()I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 713
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v2

    invoke-virtual {v1}, Lcom/viber/voip/a/g;->j()Lcom/viber/voip/a/c;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    .line 716
    :cond_9
    iget-object v1, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    const-string/jumbo v2, "Timer on EndingCall"

    invoke-virtual {v1, v2}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v1

    if-eqz v1, :cond_1

    .line 718
    iget-object v1, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    new-instance v2, Lcom/viber/voip/phone/q;

    iget-object v3, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    iget-object v4, p0, Lcom/viber/voip/phone/t;->b:Lcom/viber/voip/phone/call/k;

    invoke-direct {v2, v3, v4}, Lcom/viber/voip/phone/q;-><init>(Lcom/viber/voip/phone/PhoneActivity;Lcom/viber/voip/phone/call/k;)V

    invoke-static {v1, v2}, Lcom/viber/voip/phone/PhoneActivity;->a(Lcom/viber/voip/phone/PhoneActivity;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    .line 719
    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v1

    if-ne v1, v0, :cond_a

    .line 720
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->f(Lcom/viber/voip/phone/PhoneActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v1}, Lcom/viber/voip/phone/PhoneActivity;->b(Lcom/viber/voip/phone/PhoneActivity;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 724
    :goto_3
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->c(Lcom/viber/voip/phone/PhoneActivity;)Lcom/viber/voip/phone/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/phone/ac;->d()Lcom/viber/voip/phone/ab;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/viber/voip/phone/t;->a(Lcom/viber/voip/phone/ab;Lcom/viber/voip/phone/call/n;)V

    goto/16 :goto_0

    .line 722
    :cond_a
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->f(Lcom/viber/voip/phone/PhoneActivity;)Ljava/util/Timer;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v1}, Lcom/viber/voip/phone/PhoneActivity;->b(Lcom/viber/voip/phone/PhoneActivity;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x708

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_3

    .line 728
    :pswitch_8
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "EndReason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/viber/voip/phone/call/n;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->b(Ljava/lang/String;)V

    .line 729
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {v0}, Lcom/viber/voip/phone/PhoneActivity;->b(Lcom/viber/voip/phone/PhoneActivity;)Ljava/util/TimerTask;

    move-result-object v0

    if-nez v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/viber/voip/phone/t;->a:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v0}, Lcom/viber/voip/phone/PhoneActivity;->finish()V

    goto/16 :goto_0

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
