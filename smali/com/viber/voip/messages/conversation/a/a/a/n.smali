.class public Lcom/viber/voip/messages/conversation/a/a/a/n;
.super Lcom/viber/voip/messages/conversation/a/a/a/k;
.source "SourceFile"


# instance fields
.field a:Lcom/viber/voip/messages/conversation/a/a/a;

.field private final b:Landroid/view/View;

.field private final c:Lcom/viber/voip/messages/extras/map/BalloonLayout;

.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/ImageView;

.field private final f:Lcom/viber/voip/messages/h;

.field private final g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final h:Lcom/viber/voip/messages/conversation/a/r;

.field private final l:Lcom/viber/voip/util/b/w;

.field private final m:Lcom/viber/voip/util/b/x;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/messages/h;Lcom/viber/voip/messages/conversation/a/r;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0202cb

    .line 46
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/a/a/k;-><init>(Landroid/view/View;)V

    .line 48
    iput-object p3, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->h:Lcom/viber/voip/messages/conversation/a/r;

    .line 49
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 51
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->f:Lcom/viber/voip/messages/h;

    .line 53
    const v0, 0x7f070309

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->b:Landroid/view/View;

    .line 54
    const v0, 0x7f07031b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/extras/map/BalloonLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->c:Lcom/viber/voip/messages/extras/map/BalloonLayout;

    .line 55
    const v0, 0x7f07031d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->d:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f07031c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->e:Landroid/widget/ImageView;

    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->l:Lcom/viber/voip/util/b/w;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/viber/voip/util/b/z;

    invoke-direct {v1}, Lcom/viber/voip/util/b/z;-><init>()V

    sget-object v2, Lcom/viber/voip/util/b/aa;->a:Lcom/viber/voip/util/b/aa;

    invoke-virtual {v1, v2}, Lcom/viber/voip/util/b/z;->a(Lcom/viber/voip/util/b/aa;)Lcom/viber/voip/util/b/z;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/viber/voip/util/b/z;->a(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->m:Lcom/viber/voip/util/b/x;

    .line 67
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->j:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/g;

    invoke-direct {v1, p1}, Lcom/viber/voip/messages/conversation/a/a/a/g;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->j:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/i;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->b:Landroid/view/View;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->g:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {v1, v2, p0, v3}, Lcom/viber/voip/messages/conversation/a/a/a/i;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/a/a/k;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method private a(Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 10
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->f:Lcom/viber/voip/messages/h;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->a:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v1}, Lcom/viber/voip/messages/conversation/a/a/a;->y()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->a:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v2}, Lcom/viber/voip/messages/conversation/a/a/a;->z()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->a:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v3}, Lcom/viber/voip/messages/conversation/a/a/a;->A()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->a:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v4}, Lcom/viber/voip/messages/conversation/a/a/a;->U()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/h;->a(Ljava/lang/String;Ljava/lang/String;IZ)Landroid/util/Pair;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->d:Landroid/widget/TextView;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/a/a/b/a/b;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->a:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->aa()J

    move-result-wide v2

    .line 89
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->a:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->ad()J

    move-result-wide v4

    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->a:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->S()Z

    move-result v6

    .line 92
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->l:Lcom/viber/voip/util/b/w;

    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v7

    if-nez v6, :cond_0

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-interface {v7, v2, v3, v0}, Lcom/viber/voip/messages/a/a;->a(JZ)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->e:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->m:Lcom/viber/voip/util/b/x;

    invoke-virtual {v1, v0, v2, v3}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 97
    :goto_1
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->e:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->k:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202cb

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/k;->a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V

    .line 75
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->a:Lcom/viber/voip/messages/conversation/a/a/a;

    .line 77
    invoke-direct {p0, p2}, Lcom/viber/voip/messages/conversation/a/a/a/n;->a(Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    .line 78
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->h:Lcom/viber/voip/messages/conversation/a/r;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->b:Landroid/view/View;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/viber/voip/messages/conversation/a/a/a/n;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a;Lcom/viber/voip/messages/conversation/a/r;Landroid/view/View;)V

    .line 79
    return-void
.end method

.method protected a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a;Lcom/viber/voip/messages/conversation/a/r;Landroid/view/View;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->b:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->a:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {p2, v2}, Lcom/viber/voip/messages/conversation/a/a/b/a;->e(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/a/a/a/n;->a:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {p2, v4}, Lcom/viber/voip/messages/conversation/a/a/b/a;->f(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Lcom/viber/voip/messages/conversation/a/a/a/k;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a;Lcom/viber/voip/messages/conversation/a/r;Landroid/view/View;)V

    .line 108
    return-void
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    check-cast p1, Lcom/viber/voip/messages/conversation/a/a/a;

    check-cast p2, Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/n;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    return-void
.end method
