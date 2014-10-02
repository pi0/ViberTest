.class public abstract Lcom/viber/voip/contacts/a/k;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field protected a:Lcom/viber/voip/contacts/a;

.field protected b:Lcom/viber/voip/contacts/a/j;

.field protected c:Landroid/app/Activity;

.field protected d:Lcom/viber/voip/util/b/w;

.field protected e:Lcom/viber/voip/util/b/x;

.field protected f:Landroid/content/res/Resources;

.field protected g:Z

.field protected h:Z

.field private j:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/viber/voip/contacts/a/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/a/k;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/contacts/a/k;->j:[Ljava/lang/String;

    .line 56
    iput-boolean v1, p0, Lcom/viber/voip/contacts/a/k;->h:Z

    .line 59
    iget-object v0, p0, Lcom/viber/voip/contacts/a/k;->j:[Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/viber/voip/contacts/a/a;->d:Ljava/lang/Character;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 61
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/k;->f:Landroid/content/res/Resources;

    .line 62
    iput-object p2, p0, Lcom/viber/voip/contacts/a/k;->a:Lcom/viber/voip/contacts/a;

    .line 63
    iput-object p1, p0, Lcom/viber/voip/contacts/a/k;->c:Landroid/app/Activity;

    .line 64
    new-instance v0, Lcom/viber/voip/contacts/a/j;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/contacts/a/j;-><init>(Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/a/k;->b:Lcom/viber/voip/contacts/a/j;

    .line 66
    invoke-static {p1}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/k;->d:Lcom/viber/voip/util/b/w;

    .line 67
    invoke-static {p1}, Lcom/viber/voip/util/b/x;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/k;->e:Lcom/viber/voip/util/b/x;

    .line 68
    return-void
.end method

.method private a(Lcom/viber/voip/contacts/b/e;Landroid/widget/TextView;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lcom/viber/voip/contacts/a/k;->a:Lcom/viber/voip/contacts/a;

    invoke-interface {v0}, Lcom/viber/voip/contacts/a;->c_()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 147
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    const v0, 0x7f020336

    invoke-virtual {p2, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 149
    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 150
    const v0, 0x7f0c07b8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 151
    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v2, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 160
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    const v0, 0x7f0202e3

    invoke-virtual {p2, v0, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 155
    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    invoke-virtual {p2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, v2, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 158
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/a/k;->b(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/viber/voip/contacts/b/e;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/viber/voip/contacts/a/k;->a:Lcom/viber/voip/contacts/a;

    invoke-interface {v0, p1}, Lcom/viber/voip/contacts/a;->b(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILandroid/view/View;Lcom/viber/voip/contacts/b/e;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 128
    iput-object p3, v0, Lcom/viber/voip/contacts/a/l;->k:Lcom/viber/voip/contacts/b/e;

    .line 131
    invoke-interface {p3}, Lcom/viber/voip/contacts/b/e;->a()Ljava/lang/String;

    move-result-object v1

    .line 132
    iget-object v2, v0, Lcom/viber/voip/contacts/a/l;->o:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v2, v0, Lcom/viber/voip/contacts/a/l;->o:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/viber/voip/util/ca;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    :goto_0
    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 136
    iget-object v1, p0, Lcom/viber/voip/contacts/a/k;->d:Lcom/viber/voip/util/b/w;

    invoke-interface {p3}, Lcom/viber/voip/contacts/b/e;->b()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v0, Lcom/viber/voip/contacts/a/l;->n:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/viber/voip/contacts/a/k;->e:Lcom/viber/voip/util/b/x;

    invoke-virtual {v1, v2, v3, v4}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 139
    iget-object v1, v0, Lcom/viber/voip/contacts/a/l;->d:Landroid/widget/TextView;

    invoke-direct {p0, p3, v1}, Lcom/viber/voip/contacts/a/k;->a(Lcom/viber/voip/contacts/b/e;Landroid/widget/TextView;)V

    .line 141
    iget-object v0, v0, Lcom/viber/voip/contacts/a/l;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    return-void

    .line 133
    :cond_0
    const/4 v1, 0x3

    goto :goto_0
.end method

.method protected a(Lcom/viber/voip/contacts/a/l;II)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    iget-object v0, p1, Lcom/viber/voip/contacts/a/l;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 178
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 179
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 185
    iget-object v0, p1, Lcom/viber/voip/contacts/a/l;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 186
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 187
    iput p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 188
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/viber/voip/contacts/a/k;->h:Z

    .line 72
    return-void
.end method

.method protected b(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/contacts/a/k;->b:Lcom/viber/voip/contacts/a/j;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/a/j;->a(I)Landroid/view/View;

    move-result-object v0

    .line 122
    return-object v0
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/viber/voip/contacts/a/k;->g:Z

    .line 117
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/viber/voip/contacts/a/k;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/a/k;->a:Lcom/viber/voip/contacts/a;

    invoke-interface {v0}, Lcom/viber/voip/contacts/a;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/a/k;->a(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/a/k;->a(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/viber/voip/contacts/a/k;->j:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/a/k;->getItemViewType(I)I

    move-result v1

    .line 94
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 97
    :goto_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/a/k;->a(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v2

    .line 99
    if-eqz p2, :cond_0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/a/k;->b(I)Landroid/view/View;

    move-result-object p2

    .line 101
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 103
    :cond_1
    invoke-virtual {v0, v2}, Lcom/viber/voip/contacts/a/l;->a(Lcom/viber/voip/contacts/b/e;)V

    .line 105
    if-eqz v2, :cond_2

    .line 106
    invoke-virtual {p0, p1, p2, v2}, Lcom/viber/voip/contacts/a/k;->a(ILandroid/view/View;Lcom/viber/voip/contacts/b/e;)V

    .line 108
    :cond_2
    return-object p2

    .line 94
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
