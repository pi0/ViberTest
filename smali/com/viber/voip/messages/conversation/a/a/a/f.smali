.class public Lcom/viber/voip/messages/conversation/a/a/a/f;
.super Lcom/viber/voip/messages/conversation/a/a/a/k;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/viber/voip/messages/extras/map/BalloonLayout;

.field private d:Lcom/viber/voip/messages/conversation/a/b/c;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private l:Lcom/viber/voip/messages/conversation/a/r;

.field private m:Lcom/viber/voip/messages/conversation/a/a/a;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/support/v4/app/Fragment;Lcom/viber/voip/messages/conversation/a/r;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/a/a/k;-><init>(Landroid/view/View;)V

    .line 40
    iput-object p3, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->l:Lcom/viber/voip/messages/conversation/a/r;

    .line 42
    const v0, 0x7f0700f6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->a:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f07030b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->b:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f07030a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/map/BalloonLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->c:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    .line 45
    const v0, 0x7f070327

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->g:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f070326

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->h:Landroid/view/View;

    .line 47
    const v0, 0x7f07030c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->f:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f070309

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->e:Landroid/view/View;

    .line 50
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->c:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setTag(Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->c:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->c:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-virtual {p2, v0}, Landroid/support/v4/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 54
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->j:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/g;

    invoke-direct {v1, p1}, Lcom/viber/voip/messages/conversation/a/a/a/g;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->j:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/i;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->e:Landroid/view/View;

    invoke-direct {v1, v2, p0, p4}, Lcom/viber/voip/messages/conversation/a/a/a/i;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/a/a/k;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->j:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/m;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3}, Lcom/viber/voip/messages/conversation/a/a/a/m;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/b/e;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->j:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/t;

    invoke-direct {v1, p1}, Lcom/viber/voip/messages/conversation/a/a/a/t;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    check-cast p2, Lcom/viber/voip/messages/conversation/a/b/c;

    iput-object p2, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->d:Lcom/viber/voip/messages/conversation/a/b/c;

    .line 60
    return-void
.end method

.method private a(Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 8
    .parameter

    .prologue
    const/16 v7, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->c:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->l()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setMaxWidth(F)V

    .line 75
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->m:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->M()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->b:Landroid/widget/TextView;

    const-string/jumbo v3, "(%s)"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->m:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v5}, Lcom/viber/voip/messages/conversation/a/a/a;->M()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->m:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v3}, Lcom/viber/voip/messages/conversation/a/a/a;->y()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->m:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v4}, Lcom/viber/voip/messages/conversation/a/a/a;->M()I

    move-result v4

    invoke-static {v3, v4}, Lcom/viber/voip/util/gk;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->c:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->m:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->N()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->d()I

    move-result v0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setBackgroundResource(I)V

    .line 93
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->m:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->M()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->m:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->ai()Z

    move-result v0

    if-nez v0, :cond_5

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    move v0, v2

    .line 104
    :goto_2
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->c:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    if-eqz v0, :cond_6

    :goto_3
    invoke-virtual {v1, p0}, Lcom/viber/voip/messages/extras/map/BalloonLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->m:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->q()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->m:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->h()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_3

    .line 79
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->b:Landroid/widget/TextView;

    const-string/jumbo v3, "(%s)"

    new-array v4, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->m:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v5}, Lcom/viber/voip/messages/conversation/a/a/a;->h()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/viber/voip/util/ak;->a(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 86
    :cond_4
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->c()I

    move-result v0

    goto :goto_1

    .line 99
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->h:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 100
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    move v0, v1

    .line 101
    goto :goto_2

    .line 104
    :cond_6
    const/4 p0, 0x0

    goto :goto_3
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/k;->a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V

    .line 66
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->m:Lcom/viber/voip/messages/conversation/a/a/a;

    .line 68
    invoke-direct {p0, p2}, Lcom/viber/voip/messages/conversation/a/a/a/f;->a(Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->l:Lcom/viber/voip/messages/conversation/a/r;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->e:Landroid/view/View;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/viber/voip/messages/conversation/a/a/a/f;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a;Lcom/viber/voip/messages/conversation/a/r;Landroid/view/View;)V

    .line 70
    return-void
.end method

.method protected a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a;Lcom/viber/voip/messages/conversation/a/r;Landroid/view/View;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->e:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->m:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {p2, v2}, Lcom/viber/voip/messages/conversation/a/a/b/a;->c(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->m:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {p2, v4}, Lcom/viber/voip/messages/conversation/a/a/b/a;->d(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Lcom/viber/voip/messages/conversation/a/a/a/k;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a;Lcom/viber/voip/messages/conversation/a/r;Landroid/view/View;)V

    .line 116
    return-void
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    check-cast p1, Lcom/viber/voip/messages/conversation/a/a/a;

    check-cast p2, Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/f;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->d:Lcom/viber/voip/messages/conversation/a/b/c;

    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/f;->d:Lcom/viber/voip/messages/conversation/a/b/c;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/a/a/f;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/conversation/a/b/c;->f(Lcom/viber/voip/messages/conversation/a/a/a;)V

    .line 128
    :cond_0
    return-void
.end method
