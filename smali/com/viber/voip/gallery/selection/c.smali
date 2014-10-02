.class public Lcom/viber/voip/gallery/selection/c;
.super Lcom/viber/voip/gallery/b;
.source "SourceFile"


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/viber/voip/gallery/selection/f;

.field private final d:Lcom/viber/voip/util/b/ad;

.field private final e:Lcom/viber/voip/util/b/x;

.field private final f:Lcom/viber/provider/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/provider/f",
            "<",
            "Lcom/viber/voip/gallery/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I

.field private final h:I

.field private final i:I

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/util/b/ad;Lcom/viber/voip/gallery/a/a;Lcom/viber/voip/gallery/selection/f;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0b0013

    .line 48
    invoke-direct {p0}, Lcom/viber/voip/gallery/b;-><init>()V

    .line 37
    new-instance v0, Lcom/viber/voip/gallery/selection/d;

    invoke-direct {v0, p0}, Lcom/viber/voip/gallery/selection/d;-><init>(Lcom/viber/voip/gallery/selection/c;)V

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/c;->j:Landroid/view/View$OnClickListener;

    .line 49
    iput-object p1, p0, Lcom/viber/voip/gallery/selection/c;->b:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/viber/voip/gallery/selection/c;->d:Lcom/viber/voip/util/b/ad;

    .line 51
    iput-object p4, p0, Lcom/viber/voip/gallery/selection/c;->c:Lcom/viber/voip/gallery/selection/f;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 53
    sget-object v1, Lcom/viber/voip/messages/extras/image/j;->a:Lcom/viber/voip/messages/extras/image/j;

    invoke-static {p1, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Lcom/viber/voip/messages/extras/image/j;)I

    move-result v1

    .line 54
    div-int v0, v1, v0

    .line 55
    new-instance v1, Lcom/viber/voip/util/b/z;

    invoke-direct {v1}, Lcom/viber/voip/util/b/z;-><init>()V

    const v2, 0x7f0201d3

    invoke-virtual {v1, v2, p1}, Lcom/viber/voip/util/b/z;->a(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/viber/voip/util/b/z;->a(II)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/gallery/selection/c;->e:Lcom/viber/voip/util/b/x;

    .line 60
    const v0, 0x7f0a01a9

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/selection/c;->b(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/selection/c;->g:I

    .line 61
    const v0, 0x7f0a01aa

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/selection/c;->b(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/selection/c;->h:I

    .line 62
    const v0, 0x7f0a01a8

    invoke-direct {p0, v0}, Lcom/viber/voip/gallery/selection/c;->b(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/gallery/selection/c;->i:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 65
    new-instance v1, Lcom/viber/voip/gallery/selection/e;

    invoke-direct {v1, p0, v0, p3}, Lcom/viber/voip/gallery/selection/e;-><init>(Lcom/viber/voip/gallery/selection/c;ILcom/viber/provider/a;)V

    iput-object v1, p0, Lcom/viber/voip/gallery/selection/c;->f:Lcom/viber/provider/f;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/gallery/selection/c;)Lcom/viber/voip/gallery/selection/f;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/c;->c:Lcom/viber/voip/gallery/selection/f;

    return-object v0
.end method

.method private a(Lcom/viber/voip/gallery/selection/g;Lcom/viber/voip/gallery/a/b;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-static {p1, p2}, Lcom/viber/voip/gallery/selection/g;->a(Lcom/viber/voip/gallery/selection/g;Lcom/viber/voip/gallery/a/b;)V

    .line 133
    if-nez p2, :cond_1

    .line 134
    invoke-static {p1}, Lcom/viber/voip/gallery/selection/g;->b(Lcom/viber/voip/gallery/selection/g;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {p1}, Lcom/viber/voip/gallery/selection/g;->b(Lcom/viber/voip/gallery/selection/g;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 137
    invoke-static {p1}, Lcom/viber/voip/gallery/selection/g;->c(Lcom/viber/voip/gallery/selection/g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/viber/voip/gallery/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-static {p1}, Lcom/viber/voip/gallery/selection/g;->d(Lcom/viber/voip/gallery/selection/g;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/viber/voip/gallery/a/b;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/c;->d:Lcom/viber/voip/util/b/ad;

    invoke-virtual {p2}, Lcom/viber/voip/gallery/a/b;->c()Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Lcom/viber/voip/gallery/selection/g;->a(Lcom/viber/voip/gallery/selection/g;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/gallery/selection/c;->e:Lcom/viber/voip/util/b/x;

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/util/b/ad;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 141
    invoke-static {p1}, Lcom/viber/voip/gallery/selection/g;->a(Lcom/viber/voip/gallery/selection/g;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/viber/voip/gallery/selection/c;->a(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    goto :goto_0
.end method

.method private b(I)I
    .locals 1
    .parameter

    .prologue
    .line 124
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/c;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(I)[Lcom/viber/voip/gallery/a/b;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/c;->f:Lcom/viber/provider/f;

    invoke-virtual {v0, p1}, Lcom/viber/provider/f;->a(I)[Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/gallery/a/b;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/c;->f:Lcom/viber/provider/f;

    invoke-virtual {v0}, Lcom/viber/provider/f;->a()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/selection/c;->a(I)[Lcom/viber/voip/gallery/a/b;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/viber/voip/gallery/selection/c;->f:Lcom/viber/provider/f;

    invoke-virtual {v0, p1}, Lcom/viber/provider/f;->a(I)[Lcom/viber/voip/messages/orm/entity/Entity;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/gallery/a/b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/viber/voip/gallery/a/b;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 96
    invoke-virtual {p0, p1}, Lcom/viber/voip/gallery/selection/c;->a(I)[Lcom/viber/voip/gallery/a/b;

    move-result-object v11

    .line 97
    check-cast p2, Lcom/viber/voip/widget/l;

    .line 99
    if-nez p2, :cond_1

    .line 100
    new-instance v0, Lcom/viber/voip/widget/l;

    iget-object v1, p0, Lcom/viber/voip/gallery/selection/c;->b:Landroid/content/Context;

    const v2, 0x7f0300b1

    array-length v3, v11

    iget v4, p0, Lcom/viber/voip/gallery/selection/c;->g:I

    iget v5, p0, Lcom/viber/voip/gallery/selection/c;->g:I

    iget v6, p0, Lcom/viber/voip/gallery/selection/c;->h:I

    iget v7, p0, Lcom/viber/voip/gallery/selection/c;->g:I

    iget v8, p0, Lcom/viber/voip/gallery/selection/c;->i:I

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/widget/l;-><init>(Landroid/content/Context;IIIIIII)V

    .line 106
    invoke-virtual {v0}, Lcom/viber/voip/widget/l;->getViews()[Landroid/view/View;

    move-result-object v2

    array-length v3, v2

    move v1, v10

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 107
    new-instance v5, Lcom/viber/voip/gallery/selection/g;

    invoke-direct {v5, v4, v9}, Lcom/viber/voip/gallery/selection/g;-><init>(Landroid/view/View;Lcom/viber/voip/gallery/selection/d;)V

    .line 108
    iget-object v6, p0, Lcom/viber/voip/gallery/selection/c;->j:Landroid/view/View$OnClickListener;

    invoke-static {v5, v6}, Lcom/viber/voip/gallery/selection/g;->a(Lcom/viber/voip/gallery/selection/g;Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 110
    invoke-static {v5}, Lcom/viber/voip/gallery/selection/g;->a(Lcom/viber/voip/gallery/selection/g;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/viber/voip/gallery/selection/c;->a(Landroid/view/View;)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v0

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/gallery/selection/c;->getCount()I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/viber/voip/widget/l;->a(II)V

    .line 115
    array-length v3, v11

    move v2, v10

    :goto_1
    if-ge v2, v3, :cond_4

    .line 116
    invoke-virtual {p2}, Lcom/viber/voip/widget/l;->getViews()[Landroid/view/View;

    move-result-object v0

    array-length v0, v0

    if-le v0, v2, :cond_2

    invoke-virtual {p2}, Lcom/viber/voip/widget/l;->getViews()[Landroid/view/View;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/selection/g;

    .line 117
    :goto_2
    array-length v1, v11

    if-le v1, v2, :cond_3

    aget-object v1, v11, v2

    .line 118
    :goto_3
    invoke-direct {p0, v0, v1}, Lcom/viber/voip/gallery/selection/c;->a(Lcom/viber/voip/gallery/selection/g;Lcom/viber/voip/gallery/a/b;)V

    .line 115
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move-object v0, v9

    .line 116
    goto :goto_2

    :cond_3
    move-object v1, v9

    .line 117
    goto :goto_3

    .line 120
    :cond_4
    return-object p2
.end method
