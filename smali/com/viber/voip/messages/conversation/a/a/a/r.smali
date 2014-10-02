.class public abstract Lcom/viber/voip/messages/conversation/a/a/a/r;
.super Lcom/viber/voip/messages/conversation/a/a/a/k;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final l:I


# instance fields
.field protected final a:Lcom/viber/voip/stickers/r;

.field protected final b:Lcom/viber/voip/stickers/b;

.field protected final c:Landroid/widget/ImageView;

.field protected final d:Landroid/widget/TextView;

.field protected final e:Landroid/view/View;

.field protected final f:Landroid/widget/ImageView;

.field protected final g:Landroid/widget/ImageView;

.field protected final h:Landroid/widget/ProgressBar;

.field private final m:Lcom/viber/voip/stickers/ui/b;

.field private final n:Lcom/viber/voip/messages/conversation/a/r;

.field private final o:Lcom/viber/voip/messages/conversation/a/s;

.field private final p:Lcom/viber/voip/messages/conversation/a/s;

.field private q:Lcom/viber/voip/messages/conversation/a/a/a;

.field private r:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    const/16 v0, 0x4c

    const/16 v1, 0xff

    invoke-static {v0, v1, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/viber/voip/messages/conversation/a/a/a/r;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/support/v4/app/Fragment;Lcom/viber/voip/messages/conversation/a/r;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/messages/conversation/a/s;Lcom/viber/voip/stickers/b;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/a/a/k;-><init>(Landroid/view/View;)V

    .line 71
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->a:Lcom/viber/voip/stickers/r;

    .line 72
    iput-object p6, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->b:Lcom/viber/voip/stickers/b;

    .line 74
    iput-object p3, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->n:Lcom/viber/voip/messages/conversation/a/r;

    .line 75
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->o:Lcom/viber/voip/messages/conversation/a/s;

    .line 76
    iput-object p5, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->p:Lcom/viber/voip/messages/conversation/a/s;

    .line 78
    const v0, 0x7f070309

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->r:Landroid/view/View;

    .line 80
    const v0, 0x7f0703bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->e:Landroid/view/View;

    .line 81
    const v0, 0x7f0703bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f0703be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->g:Landroid/widget/ImageView;

    .line 83
    const v0, 0x7f0703bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->h:Landroid/widget/ProgressBar;

    .line 85
    const v0, 0x7f070328

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->c:Landroid/widget/ImageView;

    .line 86
    const v0, 0x7f070327

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->d:Landroid/widget/TextView;

    .line 88
    new-instance v0, Lcom/viber/voip/stickers/ui/b;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->b:Lcom/viber/voip/stickers/b;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->g:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v2, v3}, Lcom/viber/voip/stickers/ui/b;-><init>(Lcom/viber/voip/stickers/b;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->m:Lcom/viber/voip/stickers/ui/b;

    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->e:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/support/v4/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->j:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/g;

    invoke-direct {v1, p1}, Lcom/viber/voip/messages/conversation/a/a/a/g;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->j:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/a;

    check-cast p2, Lcom/viber/voip/messages/conversation/a/b/a;

    invoke-direct {v1, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/a;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/a/b/a;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->j:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/messages/conversation/a/a/a/t;

    invoke-direct {v1, p1}, Lcom/viber/voip/messages/conversation/a/a/a/t;-><init>(Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method private d()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f80

    .line 163
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->q:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->F()I

    move-result v0

    .line 165
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->r:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 167
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 177
    :goto_0
    return-void

    .line 169
    :cond_1
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 170
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    sget v1, Lcom/viber/voip/messages/conversation/a/a/a/r;->l:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 171
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->r:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    goto :goto_0

    .line 174
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->r:Landroid/view/View;

    const v1, 0x3ecccccd

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 175
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0
.end method


# virtual methods
.method protected a()Lcom/viber/voip/stickers/c/a;
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/a/a/r;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->P()J

    move-result-wide v0

    long-to-int v0, v0

    .line 192
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->a:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->l(I)Lcom/viber/voip/stickers/c/a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 154
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/k;->a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V

    .line 156
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->q:Lcom/viber/voip/messages/conversation/a/a/a;

    .line 158
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/a/a/a/r;->d()V

    .line 159
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->n:Lcom/viber/voip/messages/conversation/a/r;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->r:Landroid/view/View;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/viber/voip/messages/conversation/a/a/a/r;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a;Lcom/viber/voip/messages/conversation/a/r;Landroid/view/View;)V

    .line 160
    return-void
.end method

.method protected a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a;Lcom/viber/voip/messages/conversation/a/r;Landroid/view/View;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->r:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->r:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->q:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {p2, v2}, Lcom/viber/voip/messages/conversation/a/a/b/a;->a(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->r:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->q:Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {p2, v4}, Lcom/viber/voip/messages/conversation/a/a/b/a;->b(Lcom/viber/voip/messages/conversation/a/a/a;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 187
    invoke-super {p0, p1, p2, p3, p4}, Lcom/viber/voip/messages/conversation/a/a/a/k;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a;Lcom/viber/voip/messages/conversation/a/r;Landroid/view/View;)V

    .line 188
    return-void
.end method

.method protected a(Lcom/viber/voip/stickers/c/a;Z)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const v10, 0x7f070054

    const v9, 0x7f070053

    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 105
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 106
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 107
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    const v4, 0x7f070055

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 108
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    const v5, 0x7f070056

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    .line 109
    iget-object v5, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    const v6, 0x7f070057

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 111
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v6, p1, Lcom/viber/voip/stickers/c/a;->b:I

    if-ne v2, v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->g()Z

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->j()Z

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->e()Z

    move-result v3

    if-ne v2, v3, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    if-ne p2, v7, :cond_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->m:Lcom/viber/voip/stickers/ui/b;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/ui/b;->a()V

    .line 118
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->m:Lcom/viber/voip/stickers/ui/b;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/ui/b;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 122
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 123
    iget v2, p1, Lcom/viber/voip/stickers/c/a;->p:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 124
    iget v2, p1, Lcom/viber/voip/stickers/c/a;->q:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 126
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 127
    iget v2, p1, Lcom/viber/voip/stickers/c/a;->p:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 128
    iget v2, p1, Lcom/viber/voip/stickers/c/a;->q:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 130
    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->m:Lcom/viber/voip/stickers/ui/b;

    if-nez p2, :cond_2

    move v3, v7

    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/a/a/r;->b()Z

    move-result v4

    sget-object v5, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    const/4 v6, 0x0

    move v2, v1

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/stickers/ui/b;->a(ZZZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/ui/c;)Z

    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->m:Lcom/viber/voip/stickers/ui/b;

    invoke-virtual {v0, v7}, Lcom/viber/voip/stickers/ui/b;->a(Z)V

    .line 134
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 143
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    iget v1, p1, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    const v1, 0x7f070055

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    const v1, 0x7f070056

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->j()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    const v1, 0x7f070057

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/a;->e()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 149
    :cond_1
    return-void

    :cond_2
    move v3, v1

    .line 131
    goto :goto_0

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->m:Lcom/viber/voip/stickers/ui/b;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/ui/b;->a(Z)V

    .line 138
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->m:Lcom/viber/voip/stickers/ui/b;

    if-nez p2, :cond_4

    move v3, v7

    :goto_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/a/a/r;->b()Z

    move-result v4

    sget-object v5, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    const/4 v6, 0x0

    move v2, v7

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/stickers/ui/b;->a(ZZZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/ui/c;)Z

    .line 140
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v3, v1

    .line 139
    goto :goto_2
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    check-cast p1, Lcom/viber/voip/messages/conversation/a/a/a;

    check-cast p2, Lcom/viber/voip/messages/conversation/a/a/b/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/conversation/a/a/a/r;->a(Lcom/viber/voip/messages/conversation/a/a/a;Lcom/viber/voip/messages/conversation/a/a/b/a/b;)V

    return-void
.end method

.method protected b()Z
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->k:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 246
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/a/a/r;->a()Lcom/viber/voip/stickers/c/a;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->e()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/viber/voip/stickers/c/a;->c:Lcom/viber/voip/stickers/c/c;

    sget-object v2, Lcom/viber/voip/stickers/c/c;->c:Lcom/viber/voip/stickers/c/c;

    if-ne v1, v2, :cond_0

    .line 199
    iget v0, v0, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-static {v0}, Lcom/viber/voip/stickers/b/h;->d(I)I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->d(I)V

    .line 201
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/16 v3, 0xff

    const/16 v2, 0xb2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 206
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->o:Lcom/viber/voip/messages/conversation/a/s;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->o:Lcom/viber/voip/messages/conversation/a/s;

    invoke-interface {v0, p2}, Lcom/viber/voip/messages/conversation/a/s;->a(Landroid/view/MotionEvent;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->p:Lcom/viber/voip/messages/conversation/a/s;

    invoke-interface {v0, p2}, Lcom/viber/voip/messages/conversation/a/s;->a(Landroid/view/MotionEvent;)V

    .line 212
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/a/a/r;->a()Lcom/viber/voip/stickers/c/a;

    move-result-object v0

    .line 214
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 240
    :goto_0
    :pswitch_0
    return v4

    .line 216
    :pswitch_1
    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->m:Lcom/viber/voip/stickers/ui/b;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/a/a/r;->b()Z

    move-result v1

    sget-object v2, Lcom/viber/voip/stickers/ba;->b:Lcom/viber/voip/stickers/ba;

    new-instance v3, Lcom/viber/voip/messages/conversation/a/a/a/s;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/conversation/a/a/a/s;-><init>(Lcom/viber/voip/messages/conversation/a/a/a/r;)V

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/viber/voip/stickers/ui/b;->a(ZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/ui/c;)Z

    goto :goto_0

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/viber/voip/util/gl;->a(Landroid/widget/ImageView;I)V

    .line 227
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->g:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/viber/voip/util/gl;->a(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 232
    :pswitch_2
    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->m:Lcom/viber/voip/stickers/ui/b;

    invoke-virtual {v0, v5}, Lcom/viber/voip/stickers/ui/b;->a(Z)V

    goto :goto_0

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->f:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/viber/voip/util/gl;->a(Landroid/widget/ImageView;I)V

    .line 237
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/a/a/r;->g:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Lcom/viber/voip/util/gl;->a(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
