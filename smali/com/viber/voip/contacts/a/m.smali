.class public Lcom/viber/voip/contacts/a/m;
.super Lcom/viber/voip/contacts/a/v;
.source "SourceFile"


# instance fields
.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/contacts/a/v;-><init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;)V

    .line 25
    iput-object p2, p0, Lcom/viber/voip/contacts/a/m;->i:Lcom/viber/voip/contacts/a;

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/a/m;->g:Z

    .line 27
    iput-boolean p3, p0, Lcom/viber/voip/contacts/a/m;->m:Z

    .line 28
    return-void
.end method

.method private a(Lcom/viber/voip/contacts/b/e;Lcom/viber/voip/contacts/a/l;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 97
    .line 100
    iget-object v0, p0, Lcom/viber/voip/contacts/a/m;->j:Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 101
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->h()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v4

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/i;

    .line 102
    iget-object v6, p0, Lcom/viber/voip/contacts/a/m;->j:Ljava/util/Set;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v2

    .line 106
    :cond_0
    iget-boolean v6, p0, Lcom/viber/voip/contacts/a/m;->m:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/viber/voip/contacts/a/m;->k:Ljava/util/Set;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez v3, :cond_4

    iget-boolean v0, p0, Lcom/viber/voip/contacts/a/m;->l:Z

    if-eqz v0, :cond_4

    :cond_1
    move v0, v4

    :goto_1
    move v1, v0

    .line 108
    goto :goto_0

    :cond_2
    move v1, v2

    move v3, v4

    .line 113
    :cond_3
    iget-object v0, p2, Lcom/viber/voip/contacts/a/l;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 114
    iget-object v0, p2, Lcom/viber/voip/contacts/a/l;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 115
    iget-object v0, p2, Lcom/viber/voip/contacts/a/l;->o:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 116
    iget-object v0, p2, Lcom/viber/voip/contacts/a/l;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 117
    iget-object v0, p2, Lcom/viber/voip/contacts/a/l;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 118
    return-void

    :cond_4
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected a(ILandroid/view/View;Lcom/viber/voip/contacts/b/e;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 40
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/contacts/a/v;->a(ILandroid/view/View;Lcom/viber/voip/contacts/b/e;)V

    .line 42
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 46
    iget-object v1, v0, Lcom/viber/voip/contacts/a/l;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 49
    invoke-interface {p3}, Lcom/viber/voip/contacts/b/e;->p()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 52
    :cond_0
    if-lez p1, :cond_7

    .line 53
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/a/m;->a(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    .line 54
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/m;->getCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 55
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lcom/viber/voip/contacts/a/m;->a(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v2

    .line 57
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v3

    invoke-interface {p3}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    :cond_2
    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v1

    invoke-interface {p3}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_6

    .line 58
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/contacts/a/m;->c:Landroid/app/Activity;

    invoke-interface {p3}, Lcom/viber/voip/contacts/b/e;->p()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3}, Lcom/viber/voip/contacts/b/e;->q()Lcom/viber/voip/contacts/b/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/voip/contacts/b/f;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/viber/voip/contacts/ui/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-interface {p3}, Lcom/viber/voip/contacts/b/e;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 62
    iget-object v1, v0, Lcom/viber/voip/contacts/a/l;->p:Landroid/widget/TextView;

    invoke-interface {p3}, Lcom/viber/voip/contacts/b/e;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, v0, Lcom/viber/voip/contacts/a/l;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :cond_4
    :goto_1
    return-void

    .line 65
    :cond_5
    iget-object v0, v0, Lcom/viber/voip/contacts/a/l;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 68
    :cond_6
    iget-object v0, v0, Lcom/viber/voip/contacts/a/l;->p:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_7
    move-object v1, v2

    goto :goto_0
.end method

.method public a(Ljava/util/Set;Ljava/util/Set;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Lcom/viber/voip/contacts/a/m;->j:Ljava/util/Set;

    .line 122
    iput-object p2, p0, Lcom/viber/voip/contacts/a/m;->k:Ljava/util/Set;

    .line 123
    iput-boolean p3, p0, Lcom/viber/voip/contacts/a/m;->l:Z

    .line 124
    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/m;->notifyDataSetChanged()V

    .line 125
    return-void
.end method

.method protected b(I)Landroid/view/View;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/viber/voip/contacts/a/v;->b(I)Landroid/view/View;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 78
    iget-object v1, v0, Lcom/viber/voip/contacts/a/l;->d:Landroid/widget/TextView;

    const v3, 0x7f020336

    invoke-virtual {v1, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 79
    iget-object v1, v0, Lcom/viber/voip/contacts/a/l;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/viber/voip/contacts/a/m;->f:Landroid/content/res/Resources;

    const v4, 0x7f0a01d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 80
    iget-object v1, v0, Lcom/viber/voip/contacts/a/l;->d:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/viber/voip/contacts/a/m;->f:Landroid/content/res/Resources;

    const v4, 0x7f0900eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 82
    iget-object v1, v0, Lcom/viber/voip/contacts/a/l;->h:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 83
    iget-object v3, v0, Lcom/viber/voip/contacts/a/l;->h:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isEnabled()Z

    move-result v3

    .line 85
    if-eqz v3, :cond_1

    .line 86
    invoke-static {v2, v1}, Lcom/viber/voip/util/gl;->a(Landroid/view/View;Z)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    const v1, 0x7f0200ce

    .line 91
    :goto_0
    iget-object v0, v0, Lcom/viber/voip/contacts/a/l;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 93
    return-object v2

    .line 86
    :cond_0
    const v1, 0x7f0200cd

    goto :goto_0

    .line 89
    :cond_1
    const v1, 0x106000d

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/contacts/a/v;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 34
    iget-object v2, p0, Lcom/viber/voip/contacts/a/m;->i:Lcom/viber/voip/contacts/a;

    invoke-interface {v2, p1}, Lcom/viber/voip/contacts/a;->b(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/viber/voip/contacts/a/m;->a(Lcom/viber/voip/contacts/b/e;Lcom/viber/voip/contacts/a/l;)V

    .line 35
    return-object v1
.end method
