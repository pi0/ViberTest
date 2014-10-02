.class Lcom/viber/voip/messages/ui/bw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/MessageComposerView;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 568
    iput-object p1, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 621
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 573
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 580
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/bw;->b:Z

    if-nez v0, :cond_1

    .line 581
    iput-boolean v6, p0, Lcom/viber/voip/messages/ui/bw;->b:Z

    .line 583
    add-int v4, p2, p4

    .line 584
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->q(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/ui/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->g(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/LocationEditText;

    move-result-object v1

    sget v2, Lcom/viber/voip/messages/ui/bd;->b:I

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IIIZ)V

    .line 587
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->g(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/LocationEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/LocationEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 588
    const-class v0, Landroid/text/style/ImageSpan;

    invoke-interface {v1, v4, v4, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ImageSpan;

    .line 589
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 590
    aget-object v0, v0, v5

    .line 591
    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    if-ge v2, v4, :cond_0

    .line 593
    iget-object v2, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->g(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/LocationEditText;

    move-result-object v2

    invoke-interface {v1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/LocationEditText;->setSelection(I)V

    .line 597
    :cond_0
    iput-boolean v5, p0, Lcom/viber/voip/messages/ui/bw;->b:Z

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->r(Lcom/viber/voip/messages/ui/MessageComposerView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 601
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0, v6}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/ui/MessageComposerView;Z)Z

    .line 606
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->s(Lcom/viber/voip/messages/ui/MessageComposerView;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->t(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->t(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->t()Z

    move-result v0

    if-nez v0, :cond_4

    .line 607
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->u(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->v(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/viber/voip/widget/RadioButton;->setVisibility(I)V

    .line 609
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/h/d;

    iget-object v0, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->t(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->t(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v0

    :goto_1
    invoke-direct {v3, v0, v1}, Lcom/viber/voip/h/d;-><init>(J)V

    invoke-virtual {v2, v5, v3, v6}, Lcom/viber/voip/h/b;->a(ZLcom/viber/voip/h/d;Z)Lcom/viber/voip/h/b;

    .line 610
    sget-object v0, Lcom/viber/voip/a/a;->r:Lcom/viber/voip/a/ad;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->f(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/a/m;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/ad;->a(Ljava/lang/String;)V

    .line 611
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->r:Lcom/viber/voip/a/ad;

    invoke-virtual {v1}, Lcom/viber/voip/a/ad;->e()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 617
    :goto_2
    return-void

    .line 603
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0, v5}, Lcom/viber/voip/messages/ui/MessageComposerView;->b(Lcom/viber/voip/messages/ui/MessageComposerView;Z)Z

    goto :goto_0

    .line 609
    :cond_3
    const-wide/16 v0, -0x1

    goto :goto_1

    .line 613
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->u(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->u(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/widget/ImageButton;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->s(Lcom/viber/voip/messages/ui/MessageComposerView;)Z

    move-result v1

    if-nez v1, :cond_5

    move v5, v6

    :cond_5
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 615
    iget-object v0, p0, Lcom/viber/voip/messages/ui/bw;->a:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->v(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/viber/voip/widget/RadioButton;->setVisibility(I)V

    goto :goto_2
.end method
