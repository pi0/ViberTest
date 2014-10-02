.class public Lcom/viber/voip/contacts/a/n;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field protected a:Lcom/viber/voip/contacts/a;

.field protected b:Landroid/view/LayoutInflater;

.field protected c:Landroid/app/Activity;

.field protected d:Lcom/viber/voip/util/b/w;

.field protected e:Lcom/viber/voip/util/b/x;

.field protected f:Z

.field private final g:I

.field private final h:I

.field private i:I

.field private j:I

.field private final k:I

.field private m:I

.field private n:[Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:I

.field private r:J

.field private s:Lcom/viber/voip/contacts/a/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/viber/voip/contacts/a/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/a/n;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;ILcom/viber/voip/contacts/a/s;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0202ca

    const/4 v2, 0x1

    .line 66
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lcom/viber/voip/contacts/a/n;->k:I

    .line 56
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/viber/voip/contacts/a/n;->n:[Ljava/lang/String;

    .line 61
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/viber/voip/contacts/a/n;->r:J

    .line 64
    iput-boolean v2, p0, Lcom/viber/voip/contacts/a/n;->f:Z

    .line 67
    iput-object p2, p0, Lcom/viber/voip/contacts/a/n;->a:Lcom/viber/voip/contacts/a;

    .line 68
    iput-object p1, p0, Lcom/viber/voip/contacts/a/n;->c:Landroid/app/Activity;

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/n;->b:Landroid/view/LayoutInflater;

    .line 70
    iput p3, p0, Lcom/viber/voip/contacts/a/n;->m:I

    .line 71
    invoke-static {p1}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/n;->d:Lcom/viber/voip/util/b/w;

    .line 72
    new-instance v0, Lcom/viber/voip/util/b/z;

    invoke-direct {v0}, Lcom/viber/voip/util/b/z;-><init>()V

    invoke-virtual {v0, v3, p1}, Lcom/viber/voip/util/b/z;->a(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/n;->e:Lcom/viber/voip/util/b/x;

    .line 77
    iget-object v0, p0, Lcom/viber/voip/contacts/a/n;->n:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    .line 79
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/a/n;->o:Z

    .line 80
    const/high16 v0, 0x4080

    invoke-static {p1, v0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/a/n;->q:I

    .line 81
    iput-object p4, p0, Lcom/viber/voip/contacts/a/n;->s:Lcom/viber/voip/contacts/a/s;

    .line 83
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    const v1, 0x7f0a0144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/contacts/a/n;->g:I

    .line 85
    const v1, 0x7f0a0145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/contacts/a/n;->h:I

    .line 86
    const v1, 0x7f0a0146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/contacts/a/n;->i:I

    .line 87
    const v1, 0x7f0a0147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/a/n;->j:I

    .line 88
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/a/n;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/viber/voip/contacts/a/n;->m:I

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/contacts/a/n;)Lcom/viber/voip/contacts/a/s;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/contacts/a/n;->s:Lcom/viber/voip/contacts/a/s;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/contacts/a/n;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/viber/voip/contacts/a/n;->o:Z

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/contacts/a/n;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/viber/voip/contacts/a/n;->p:Z

    return v0
.end method

.method static synthetic e(Lcom/viber/voip/contacts/a/n;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/viber/voip/contacts/a/n;->q:I

    return v0
.end method

.method static synthetic f(Lcom/viber/voip/contacts/a/n;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/viber/voip/contacts/a/n;->i:I

    return v0
.end method

.method static synthetic g(Lcom/viber/voip/contacts/a/n;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/viber/voip/contacts/a/n;->g:I

    return v0
.end method

.method static synthetic h(Lcom/viber/voip/contacts/a/n;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/viber/voip/contacts/a/n;->j:I

    return v0
.end method

.method static synthetic i(Lcom/viber/voip/contacts/a/n;)I
    .locals 1
    .parameter

    .prologue
    .line 34
    iget v0, p0, Lcom/viber/voip/contacts/a/n;->h:I

    return v0
.end method


# virtual methods
.method protected a()Lcom/viber/voip/contacts/a/p;
    .locals 3

    .prologue
    .line 138
    new-instance v0, Lcom/viber/voip/contacts/a/p;

    iget-object v1, p0, Lcom/viber/voip/contacts/a/n;->c:Landroid/app/Activity;

    const v2, 0x7f030079

    invoke-direct {v0, p0, v1, v2}, Lcom/viber/voip/contacts/a/p;-><init>(Lcom/viber/voip/contacts/a/n;Landroid/content/Context;I)V

    .line 139
    return-object v0
.end method

.method public a(I)Ljava/util/List;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/b/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/contacts/a/n;->a:Lcom/viber/voip/contacts/a;

    invoke-interface {v0}, Lcom/viber/voip/contacts/a;->getCount()I

    move-result v0

    .line 107
    iget v1, p0, Lcom/viber/voip/contacts/a/n;->m:I

    mul-int/2addr v1, p1

    .line 108
    sub-int v2, v0, v1

    iget v3, p0, Lcom/viber/voip/contacts/a/n;->m:I

    if-le v2, v3, :cond_0

    iget v0, p0, Lcom/viber/voip/contacts/a/n;->m:I

    add-int/2addr v0, v1

    .line 110
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 111
    :goto_0
    if-ge v1, v0, :cond_1

    .line 112
    iget-object v3, p0, Lcom/viber/voip/contacts/a/n;->a:Lcom/viber/voip/contacts/a;

    invoke-interface {v3, v1}, Lcom/viber/voip/contacts/a;->b(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    return-object v2
.end method

.method protected a(ILcom/viber/voip/contacts/a/p;Ljava/util/List;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/viber/voip/contacts/a/p;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/b/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 143
    move v1, v2

    :goto_0
    iget v0, p0, Lcom/viber/voip/contacts/a/n;->m:I

    if-ge v1, v0, :cond_7

    .line 144
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/e;

    move-object v6, v0

    .line 145
    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, v1}, Lcom/viber/voip/contacts/a/p;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    .line 148
    :goto_2
    if-nez v4, :cond_3

    .line 143
    :cond_0
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v6, v5

    .line 144
    goto :goto_1

    :cond_2
    move-object v4, v5

    .line 145
    goto :goto_2

    .line 150
    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/o;

    .line 151
    invoke-virtual {v0, v6}, Lcom/viber/voip/contacts/a/o;->a(Lcom/viber/voip/contacts/b/e;)V

    .line 152
    if-eqz v6, :cond_4

    move v3, v2

    :goto_4
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 154
    if-eqz v6, :cond_0

    .line 156
    iget-object v3, v0, Lcom/viber/voip/contacts/a/o;->o:Landroid/widget/TextView;

    invoke-interface {v6}, Lcom/viber/voip/contacts/b/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    invoke-static {v0}, Lcom/viber/voip/contacts/a/o;->a(Lcom/viber/voip/contacts/a/o;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-interface {v6}, Lcom/viber/voip/contacts/b/e;->e()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v2

    :goto_5
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v3, p0, Lcom/viber/voip/contacts/a/n;->d:Lcom/viber/voip/util/b/w;

    invoke-interface {v6}, Lcom/viber/voip/contacts/b/e;->b()Landroid/net/Uri;

    move-result-object v4

    iget-object v7, v0, Lcom/viber/voip/contacts/a/o;->n:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/viber/voip/contacts/a/n;->e:Lcom/viber/voip/util/b/x;

    invoke-virtual {v3, v4, v7, v8}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 159
    iget-boolean v3, p0, Lcom/viber/voip/contacts/a/n;->o:Z

    if-eqz v3, :cond_0

    .line 160
    invoke-static {v0}, Lcom/viber/voip/contacts/a/o;->b(Lcom/viber/voip/contacts/a/o;)Landroid/view/View;

    move-result-object v3

    iget-wide v7, p0, Lcom/viber/voip/contacts/a/n;->r:J

    invoke-interface {v6}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/view/View;->setSelected(Z)V

    goto :goto_3

    .line 152
    :cond_4
    const/4 v3, 0x4

    goto :goto_4

    .line 157
    :cond_5
    const/16 v3, 0x8

    goto :goto_5

    :cond_6
    move v0, v2

    .line 160
    goto :goto_6

    .line 163
    :cond_7
    return-void
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 181
    iget-wide v0, p0, Lcom/viber/voip/contacts/a/n;->r:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 182
    iput-wide p1, p0, Lcom/viber/voip/contacts/a/n;->r:J

    .line 184
    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/n;->notifyDataSetChanged()V

    .line 186
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/viber/voip/contacts/a/n;->f:Z

    .line 92
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/viber/voip/contacts/a/n;->p:Z

    .line 310
    return-void
.end method

.method public getCount()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 96
    iget-boolean v1, p0, Lcom/viber/voip/contacts/a/n;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/contacts/a/n;->a:Lcom/viber/voip/contacts/a;

    invoke-interface {v1}, Lcom/viber/voip/contacts/a;->getCount()I

    move-result v1

    iget v2, p0, Lcom/viber/voip/contacts/a/n;->m:I

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/viber/voip/contacts/a/n;->a:Lcom/viber/voip/contacts/a;

    invoke-interface {v2}, Lcom/viber/voip/contacts/a;->getCount()I

    move-result v2

    iget v3, p0, Lcom/viber/voip/contacts/a/n;->m:I

    rem-int/2addr v2, v3

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/a/n;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 119
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/a/n;->a(I)Ljava/util/List;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/e;

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
    .line 167
    const/4 v0, 0x0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/viber/voip/contacts/a/n;->n:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    instance-of v0, p2, Lcom/viber/voip/contacts/a/p;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/viber/voip/contacts/a/p;

    .line 126
    :goto_0
    if-nez p2, :cond_4

    .line 127
    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/n;->a()Lcom/viber/voip/contacts/a/p;

    move-result-object v0

    move-object v3, v0

    .line 129
    :goto_1
    if-eqz v3, :cond_0

    .line 130
    if-nez p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/viber/voip/contacts/a/n;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne p1, v4, :cond_3

    :goto_3
    invoke-virtual {v3, v0, v1}, Lcom/viber/voip/contacts/a/p;->a(ZZ)V

    .line 131
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/a/n;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0}, Lcom/viber/voip/contacts/a/n;->a(ILcom/viber/voip/contacts/a/p;Ljava/util/List;)V

    .line 133
    :cond_0
    return-object v3

    .line 125
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 130
    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    move-object v3, v0

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method
