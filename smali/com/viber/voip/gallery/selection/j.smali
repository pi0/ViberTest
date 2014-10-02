.class public Lcom/viber/voip/gallery/selection/j;
.super Lcom/viber/voip/gallery/b;
.source "SourceFile"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/viber/voip/gallery/selection/n;

.field private final d:Lcom/viber/voip/gallery/selection/p;

.field private final e:Lcom/viber/provider/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/provider/f",
            "<",
            "Lcom/viber/voip/gallery/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:Lcom/viber/voip/util/b/ad;

.field private j:Lcom/viber/voip/util/b/x;

.field private k:Landroid/view/View$OnClickListener;

.field private l:Landroid/view/View$OnLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/util/b/ad;Lcom/viber/voip/gallery/a/e;Lcom/viber/voip/gallery/selection/n;Lcom/viber/voip/gallery/selection/p;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0b0014

    .line 69
    invoke-direct {p0}, Lcom/viber/voip/gallery/b;-><init>()V

    .line 45
    new-instance v0, Lcom/viber/voip/gallery/selection/k;

    invoke-direct {v0, p0}, Lcom/viber/voip/gallery/selection/k;-><init>(Lcom/viber/voip/gallery/selection/j;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/j;->k:Landroid/view/View$OnClickListener;

    .line 56
    new-instance v0, Lcom/viber/voip/gallery/selection/l;

    invoke-direct {v0, p0}, Lcom/viber/voip/gallery/selection/l;-><init>(Lcom/viber/voip/gallery/selection/j;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/j;->l:Landroid/view/View$OnLongClickListener;

    .line 70
    iput-object p1, p0, Lcom/viber/voip/gallery/selection/j;->b:Landroid/content/Context;

    .line 71
    iput-object p4, p0, Lcom/viber/voip/gallery/selection/j;->c:Lcom/viber/voip/gallery/selection/n;

    .line 72
    iput-object p5, p0, Lcom/viber/voip/gallery/selection/j;->d:Lcom/viber/voip/gallery/selection/p;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 74
    sget-object v1, Lcom/viber/voip/messages/extras/image/j;->a:Lcom/viber/voip/messages/extras/image/j;

    invoke-static {p1, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Lcom/viber/voip/messages/extras/image/j;)I

    move-result v1

    .line 75
    div-int v0, v1, v0

    .line 76
    iput-object p2, p0, Lcom/viber/voip/gallery/selection/j;->i:Lcom/viber/voip/util/b/ad;

    .line 77
    new-instance v1, Lcom/viber/voip/util/b/z;

    invoke-direct {v1}, Lcom/viber/voip/util/b/z;-><init>()V

    const v2, 0x7f0201d3

    invoke-virtual {v1, v2, p1}, Lcom/viber/voip/util/b/z;->a(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/viber/voip/util/b/z;->a(II)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/j;->j:Lcom/viber/voip/util/b/x;

    .line 82
    const v0, 0x7f0a01ac

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/selection/j;->b(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/selection/j;->f:I

    .line 83
    const v0, 0x7f0a01ad

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/selection/j;->b(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/selection/j;->g:I

    .line 84
    const v0, 0x7f0a01ab

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/selection/j;->b(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/selection/j;->h:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 87
    new-instance v1, Lcom/viber/voip/gallery/selection/m;

    invoke-direct {v1, p0, v0, p3}, Lcom/viber/voip/gallery/selection/m;-><init>(Lcom/viber/voip/gallery/selection/j;ILcom/viber/provider/a;)V

    iput-object v1, p0, Lcom/viber/voip/gallery/selection/j;->e:Lcom/viber/provider/f;

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/selection/j;Landroid/view/View;)Lcom/viber/voip/gallery/a/d;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/selection/j;->b(Landroid/view/View;)Lcom/viber/voip/gallery/a/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/gallery/selection/j;)Lcom/viber/voip/gallery/selection/n;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/j;->c:Lcom/viber/voip/gallery/selection/n;

    return-object v0
.end method

.method private a(Lcom/viber/voip/gallery/selection/o;Lcom/viber/voip/gallery/a/d;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 167
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-static {p1, p2}, Lcom/viber/voip/gallery/selection/o;->a(Lcom/viber/voip/gallery/selection/o;Lcom/viber/voip/gallery/a/d;)V

    .line 155
    if-nez p2, :cond_1

    .line 156
    invoke-static {p1}, Lcom/viber/voip/gallery/selection/o;->a(Lcom/viber/voip/gallery/selection/o;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {p1}, Lcom/viber/voip/gallery/selection/o;->a(Lcom/viber/voip/gallery/selection/o;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    invoke-virtual {p2}, Lcom/viber/voip/gallery/a/d;->a()Lcom/viber/voip/gallery/GalleryItem;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/viber/voip/gallery/selection/j;->d:Lcom/viber/voip/gallery/selection/p;

    invoke-interface {v1, v0}, Lcom/viber/voip/gallery/selection/p;->a(Lcom/viber/voip/gallery/GalleryItem;)Z

    move-result v1

    .line 162
    invoke-virtual {p1, v1}, Lcom/viber/voip/gallery/selection/o;->a(Z)V

    .line 163
    invoke-static {p1}, Lcom/viber/voip/gallery/selection/o;->b(Lcom/viber/voip/gallery/selection/o;)Lcom/viber/voip/widget/CheckableImageView;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/selection/j;->a(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/widget/CheckableImageView;->setPressed(Z)V

    .line 165
    iget-object v1, p0, Lcom/viber/voip/gallery/selection/j;->i:Lcom/viber/voip/util/b/ad;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/GalleryItem;->b()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1}, Lcom/viber/voip/gallery/selection/o;->b(Lcom/viber/voip/gallery/selection/o;)Lcom/viber/voip/widget/CheckableImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/gallery/selection/j;->j:Lcom/viber/voip/util/b/x;

    invoke-virtual {v1, v0, v2, v3}, Lcom/viber/voip/util/b/ad;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    goto :goto_0
.end method

.method private b(I)I
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/j;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private b(Landroid/view/View;)Lcom/viber/voip/gallery/a/d;
    .locals 2
    .parameter

    .prologue
    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/selection/o;

    .line 171
    iget-object v1, p0, Lcom/viber/voip/gallery/selection/j;->c:Lcom/viber/voip/gallery/selection/n;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/o;->a()Lcom/viber/voip/gallery/a/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v0}, Lcom/viber/voip/gallery/selection/o;->a()Lcom/viber/voip/gallery/a/d;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(I)[Lcom/viber/voip/gallery/a/d;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/j;->e:Lcom/viber/provider/f;

    invoke-virtual {v0, p1}, Lcom/viber/provider/f;->a(I)[Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/gallery/a/d;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/j;->e:Lcom/viber/provider/f;

    invoke-virtual {v0}, Lcom/viber/provider/f;->a()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/selection/j;->a(I)[Lcom/viber/voip/gallery/a/d;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 113
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/j;->e:Lcom/viber/provider/f;

    invoke-virtual {v0, p1}, Lcom/viber/provider/f;->a(I)[Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/gallery/a/d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/viber/voip/gallery/a/d;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 118
    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/selection/j;->a(I)[Lcom/viber/voip/gallery/a/d;

    move-result-object v11

    .line 119
    check-cast p2, Lcom/viber/voip/widget/l;

    .line 121
    if-nez p2, :cond_1

    .line 122
    new-instance v0, Lcom/viber/voip/widget/l;

    iget-object v1, p0, Lcom/viber/voip/gallery/selection/j;->b:Landroid/content/Context;

    const v2, 0x7f0300b3

    array-length v3, v11

    iget v4, p0, Lcom/viber/voip/gallery/selection/j;->f:I

    iget v5, p0, Lcom/viber/voip/gallery/selection/j;->f:I

    iget v6, p0, Lcom/viber/voip/gallery/selection/j;->g:I

    iget v7, p0, Lcom/viber/voip/gallery/selection/j;->f:I

    iget v8, p0, Lcom/viber/voip/gallery/selection/j;->h:I

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/widget/l;-><init>(Landroid/content/Context;IIIIIII)V

    .line 128
    invoke-virtual {v0}, Lcom/viber/voip/widget/l;->getViews()[Landroid/view/View;

    move-result-object v2

    array-length v3, v2

    move v1, v9

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 129
    new-instance v5, Lcom/viber/voip/gallery/selection/o;

    invoke-direct {v5, v4, v10}, Lcom/viber/voip/gallery/selection/o;-><init>(Landroid/view/View;Lcom/viber/voip/gallery/selection/k;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    iget-object v5, p0, Lcom/viber/voip/gallery/selection/j;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v5, p0, Lcom/viber/voip/gallery/selection/j;->l:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 132
    invoke-virtual {p0, v4}, Lcom/viber/voip/gallery/selection/j;->a(Landroid/view/View;)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/j;->getCount()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/viber/voip/widget/l;->a(II)V

    move v1, v9

    .line 137
    :goto_1
    array-length v0, v11

    if-ge v1, v0, :cond_4

    .line 138
    invoke-virtual {p2}, Lcom/viber/voip/widget/l;->getViews()[Landroid/view/View;

    move-result-object v0

    array-length v0, v0

    if-le v0, v1, :cond_2

    invoke-virtual {p2}, Lcom/viber/voip/widget/l;->getViews()[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/selection/o;

    .line 139
    :goto_2
    array-length v2, v11

    if-le v2, v1, :cond_3

    aget-object v2, v11, v1

    .line 140
    :goto_3
    invoke-direct {p0, v0, v2}, Lcom/viber/voip/gallery/selection/j;->a(Lcom/viber/voip/gallery/selection/o;Lcom/viber/voip/gallery/a/d;)V

    .line 137
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move-object v0, v10

    .line 138
    goto :goto_2

    :cond_3
    move-object v2, v10

    .line 139
    goto :goto_3

    .line 142
    :cond_4
    return-object p2
.end method
