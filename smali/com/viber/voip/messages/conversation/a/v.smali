.class public Lcom/viber/voip/messages/conversation/a/v;
.super Lcom/viber/voip/gallery/b;
.source "SourceFile"


# instance fields
.field private b:Lcom/viber/voip/util/b/ad;

.field private c:Lcom/viber/voip/util/b/x;

.field private d:Lcom/viber/voip/messages/conversation/r;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/view/View$OnLongClickListener;

.field private j:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/viber/voip/util/b/ad;ILcom/viber/voip/messages/conversation/r;Ljava/util/Set;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/viber/voip/util/b/ad;",
            "I",
            "Lcom/viber/voip/messages/conversation/r;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/viber/voip/gallery/b;-><init>()V

    .line 48
    iput-object p4, p0, Lcom/viber/voip/messages/conversation/a/v;->d:Lcom/viber/voip/messages/conversation/r;

    .line 49
    invoke-static {p1}, Lcom/viber/voip/backgrounds/n;->b(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/v;->e:I

    .line 50
    const/high16 v0, 0x4130

    invoke-static {p1, v0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/a/v;->g:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 52
    sget-object v1, Lcom/viber/voip/messages/extras/image/j;->a:Lcom/viber/voip/messages/extras/image/j;

    invoke-static {p1, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Lcom/viber/voip/messages/extras/image/j;)I

    move-result v1

    .line 53
    div-int v0, v1, v0

    .line 54
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/a/v;->b:Lcom/viber/voip/util/b/ad;

    .line 55
    new-instance v1, Lcom/viber/voip/util/b/z;

    invoke-direct {v1}, Lcom/viber/voip/util/b/z;-><init>()V

    const v2, 0x7f0202f1

    invoke-virtual {v1, v2, p1}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v1

    const v2, 0x7f0201d3

    invoke-virtual {v1, v2, p1}, Lcom/viber/voip/util/b/z;->a(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/viber/voip/util/b/z;->a(II)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/a/v;->c:Lcom/viber/voip/util/b/x;

    .line 60
    iput p3, p0, Lcom/viber/voip/messages/conversation/a/v;->f:I

    .line 61
    iput-object p5, p0, Lcom/viber/voip/messages/conversation/a/v;->h:Ljava/util/Set;

    .line 62
    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const v4, 0x7f07009c

    const/4 v3, 0x1

    .line 89
    .line 90
    if-nez p2, :cond_0

    .line 91
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f030082

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 93
    const v0, 0x7f070209

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    new-instance v1, Lcom/viber/voip/ui/ak;

    invoke-direct {v1}, Lcom/viber/voip/ui/ak;-><init>()V

    invoke-virtual {p2, v4, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v1, v0

    .line 101
    :goto_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/a/v;->a(I)[Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {p2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/ak;

    .line 104
    invoke-virtual {v0, v3}, Lcom/viber/voip/ui/ak;->b(Z)V

    .line 105
    invoke-virtual {v0, v3}, Lcom/viber/voip/ui/ak;->a(Z)V

    .line 106
    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/ak;->a(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-object p2

    .line 98
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/a/v;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/a/v;->a(Landroid/view/View;)V

    return-void
.end method

.method private b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 113
    move-object v0, p2

    check-cast v0, Landroid/widget/LinearLayout;

    .line 114
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/a/v;->a(I)[Lcom/viber/voip/messages/conversation/an;

    move-result-object v9

    .line 116
    if-nez p2, :cond_a

    .line 117
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 118
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 119
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/v;->f:I

    new-array v11, v0, [Lcom/viber/voip/messages/conversation/a/x;

    .line 123
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget v0, p0, Lcom/viber/voip/messages/conversation/a/v;->f:I

    if-ge v7, v0, :cond_0

    .line 124
    const v0, 0x7f030083

    const/4 v1, 0x0

    invoke-static {v10, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 125
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iget v2, p0, Lcom/viber/voip/messages/conversation/a/v;->e:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 127
    invoke-virtual {v4, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v0, Lcom/viber/voip/messages/conversation/a/x;

    const v1, 0x7f07020a

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const v1, 0x7f07020c

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v1, 0x7f07020b

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/conversation/a/x;-><init>(Lcom/viber/voip/messages/conversation/a/v;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/viber/voip/messages/conversation/a/w;)V

    aput-object v0, v11, v7

    .line 132
    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 123
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 135
    :cond_0
    invoke-virtual {v8, v11}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 136
    const v0, 0x7f07009c

    new-instance v1, Lcom/viber/voip/ui/ak;

    invoke-direct {v1}, Lcom/viber/voip/ui/ak;-><init>()V

    invoke-virtual {v8, v0, v1}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    move-object v1, v8

    .line 139
    :goto_1
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/voip/messages/conversation/a/x;

    check-cast v0, [Lcom/viber/voip/messages/conversation/a/x;

    .line 141
    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Lcom/viber/voip/messages/conversation/a/v;->f:I

    if-ge v2, v3, :cond_8

    .line 143
    aget-object v6, v0, v2

    .line 145
    array-length v3, v9

    if-ge v2, v3, :cond_1

    aget-object v3, v9, v2

    move-object v5, v3

    .line 147
    :goto_3
    if-nez v5, :cond_2

    .line 148
    iget-object v3, v6, Lcom/viber/voip/messages/conversation/a/x;->c:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 145
    :cond_1
    const/4 v3, 0x0

    move-object v5, v3

    goto :goto_3

    .line 150
    :cond_2
    iget-object v3, v6, Lcom/viber/voip/messages/conversation/a/x;->a:Landroid/widget/ImageView;

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/viber/voip/messages/conversation/a/v;->a(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 151
    iget-object v3, v6, Lcom/viber/voip/messages/conversation/a/x;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/a/v;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v3, v6, Lcom/viber/voip/messages/conversation/a/x;->a:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/a/v;->i:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 153
    iget-object v3, v6, Lcom/viber/voip/messages/conversation/a/x;->a:Landroid/widget/ImageView;

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 155
    const-string/jumbo v3, "video"

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "animated_message"

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/an;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v3, 0x1

    .line 158
    :goto_5
    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/an;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    .line 160
    :goto_6
    iget-object v7, p0, Lcom/viber/voip/messages/conversation/a/v;->b:Lcom/viber/voip/util/b/ad;

    iget-object v8, v6, Lcom/viber/voip/messages/conversation/a/x;->a:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/viber/voip/messages/conversation/a/v;->c:Lcom/viber/voip/util/b/x;

    invoke-virtual {v7, v4, v8, v10}, Lcom/viber/voip/util/b/ad;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 162
    iget-object v7, v6, Lcom/viber/voip/messages/conversation/a/x;->c:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v7, v6, Lcom/viber/voip/messages/conversation/a/x;->b:Landroid/view/View;

    iget-object v8, p0, Lcom/viber/voip/messages/conversation/a/v;->h:Ljava/util/Set;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/viber/voip/messages/conversation/a/v;->h:Ljava/util/Set;

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/an;->a()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v5, v6, Lcom/viber/voip/messages/conversation/a/x;->d:Landroid/view/View;

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    new-instance v3, Ljava/io/File;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    :goto_8
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 155
    :cond_4
    const/4 v3, 0x0

    goto :goto_5

    .line 158
    :cond_5
    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/an;->p()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_6

    .line 163
    :cond_6
    const/16 v5, 0x8

    goto :goto_7

    .line 164
    :cond_7
    const/16 v3, 0x8

    goto :goto_8

    .line 168
    :cond_8
    const v0, 0x7f07009c

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/ak;

    .line 169
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/ak;->b(Z)V

    .line 170
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/ak;->a(Z)V

    .line 171
    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/an;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/ak;->a(Ljava/lang/String;)V

    .line 173
    const/high16 v0, 0x3fc0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v2

    const/4 v3, 0x0

    const/high16 v0, 0x3fc0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v4

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/v;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_9

    iget v0, p0, Lcom/viber/voip/messages/conversation/a/v;->g:I

    :goto_9
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 174
    return-object v1

    .line 173
    :cond_9
    const/4 v0, 0x0

    goto :goto_9

    :cond_a
    move-object v1, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/v;->j:Landroid/view/View$OnClickListener;

    .line 198
    return-void
.end method

.method public a(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 193
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/v;->i:Landroid/view/View$OnLongClickListener;

    .line 194
    return-void
.end method

.method public a(Ljava/util/Set;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 201
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/v;->h:Ljava/util/Set;

    .line 203
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/a/v;->notifyDataSetChanged()V

    .line 204
    return-void
.end method

.method public a(I)[Lcom/viber/voip/messages/conversation/an;
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/v;->d:Lcom/viber/voip/messages/conversation/r;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/r;->c_(I)Lcom/viber/voip/messages/conversation/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/u;->a()[Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/v;->d:Lcom/viber/voip/messages/conversation/r;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/r;->m()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/a/v;->a(I)[Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 76
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/v;->d:Lcom/viber/voip/messages/conversation/r;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/r;->c_(I)Lcom/viber/voip/messages/conversation/u;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/messages/conversation/s;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/a/v;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/conversation/a/v;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/messages/conversation/a/v;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x2

    return v0
.end method
