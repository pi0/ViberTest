.class Lcom/viber/voip/messages/ui/media/ay;
.super Lcom/viber/voip/messages/ui/media/ai;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;Landroid/widget/VideoView;Landroid/widget/ImageView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 715
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/ui/media/ai;-><init>(Landroid/widget/VideoView;Landroid/widget/ImageView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->d(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/ba;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/media/ba;->c()V

    .line 759
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->c(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ai;->f()V

    .line 761
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->i(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;Z)Z

    .line 763
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->c(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/media/ai;->g()V

    .line 767
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 731
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->d(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/ba;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/ui/media/ba;->a(Ljava/lang/String;)V

    .line 735
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    const v1, 0x7f0c05c0

    const v2, 0x7f0c05c1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    .line 739
    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 719
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->d(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/ba;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/media/ba;->b()V

    .line 722
    :cond_0
    if-eqz p1, :cond_1

    .line 723
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/bb;

    move-result-object v0

    const/16 v1, 0x5dc

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/media/bb;->b(I)V

    .line 727
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/bb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/media/bb;->a(I)V

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 750
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->d(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/ba;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/media/ba;->c()V

    .line 753
    :cond_0
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->d(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/ba;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/media/ba;->a()V

    .line 746
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->d(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/ba;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/media/ba;->d()V

    .line 775
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->h(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/ui/media/bb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/media/bb;->a(I)V

    .line 776
    return-void
.end method

.method protected e()V
    .locals 4

    .prologue
    .line 780
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/adapters/h;

    move-result-object v0

    if-nez v0, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 781
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)Lcom/viber/voip/messages/adapters/h;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->b(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/adapters/h;->a(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    .line 782
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->H()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/upload/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/ay;->a:Lcom/viber/voip/messages/ui/media/ViewMediaActivity;

    const-string/jumbo v2, "RE DOWNLOADING!"

    invoke-static {v1, v2}, Lcom/viber/voip/messages/ui/media/ViewMediaActivity;->a(Lcom/viber/voip/messages/ui/media/ViewMediaActivity;Ljava/lang/String;)V

    .line 784
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/messages/controller/x;->a(J)V

    goto :goto_0
.end method
