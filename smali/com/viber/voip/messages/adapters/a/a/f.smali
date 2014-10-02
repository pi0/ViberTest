.class public Lcom/viber/voip/messages/adapters/a/a/f;
.super Lcom/viber/voip/ui/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/viber/voip/messages/adapters/a/a;",
        ">",
        "Lcom/viber/voip/ui/b/a",
        "<TT;",
        "Lcom/viber/voip/messages/adapters/a/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/widget/ImageView;

.field protected b:[Landroid/widget/ImageView;

.field protected final c:Lcom/viber/voip/util/b/w;

.field protected final d:Lcom/viber/voip/util/b/x;

.field protected final e:Lcom/viber/voip/util/b/x;

.field protected final f:Lcom/viber/voip/util/b/x;

.field protected final g:Lcom/viber/voip/util/b/x;

.field protected final h:Lcom/viber/voip/util/b/x;

.field protected final i:Lcom/viber/voip/util/b/x;


# direct methods
.method protected constructor <init>(Landroid/view/View;Lcom/viber/voip/messages/adapters/a/b/a;Lcom/viber/voip/util/b/w;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/viber/voip/ui/b/a;-><init>(Landroid/view/View;)V

    .line 36
    iput-object p3, p0, Lcom/viber/voip/messages/adapters/a/a/f;->c:Lcom/viber/voip/util/b/w;

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/x;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->d:Lcom/viber/voip/util/b/x;

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0202c5

    sget-object v2, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/b/x;->a(Landroid/content/Context;ILcom/viber/voip/util/b/aa;Z)Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->e:Lcom/viber/voip/util/b/x;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0202c8

    sget-object v2, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/b/x;->a(Landroid/content/Context;ILcom/viber/voip/util/b/aa;Z)Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->f:Lcom/viber/voip/util/b/x;

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0202c6

    sget-object v2, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/b/x;->a(Landroid/content/Context;ILcom/viber/voip/util/b/aa;Z)Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->g:Lcom/viber/voip/util/b/x;

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0202c9

    sget-object v2, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/b/x;->a(Landroid/content/Context;ILcom/viber/voip/util/b/aa;Z)Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->h:Lcom/viber/voip/util/b/x;

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0202c7

    sget-object v2, Lcom/viber/voip/util/b/aa;->b:Lcom/viber/voip/util/b/aa;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/b/x;->a(Landroid/content/Context;ILcom/viber/voip/util/b/aa;Z)Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->i:Lcom/viber/voip/util/b/x;

    .line 43
    const v0, 0x7f0700d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->a:Landroid/widget/ImageView;

    .line 44
    invoke-virtual {p0, p2}, Lcom/viber/voip/messages/adapters/a/a/f;->a(Lcom/viber/voip/messages/adapters/a/b/a;)V

    .line 45
    return-void
.end method

.method private a(Ljava/lang/Integer;)Lcom/viber/voip/util/b/x;
    .locals 2
    .parameter

    .prologue
    .line 189
    if-nez p1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->d:Lcom/viber/voip/util/b/x;

    .line 205
    :goto_0
    return-object v0

    .line 192
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 193
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->d:Lcom/viber/voip/util/b/x;

    goto :goto_0

    .line 194
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 195
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->e:Lcom/viber/voip/util/b/x;

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 197
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->i:Lcom/viber/voip/util/b/x;

    goto :goto_0

    .line 198
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 199
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->h:Lcom/viber/voip/util/b/x;

    goto :goto_0

    .line 200
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 201
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->g:Lcom/viber/voip/util/b/x;

    goto :goto_0

    .line 202
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 203
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->f:Lcom/viber/voip/util/b/x;

    goto :goto_0

    .line 205
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->d:Lcom/viber/voip/util/b/x;

    goto :goto_0
.end method

.method private a(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x4

    const v6, 0x7f070050

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 99
    if-gtz p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    if-le p1, v1, :cond_2

    move p1, v1

    .line 105
    :cond_2
    if-ne p1, v4, :cond_4

    .line 106
    sget v0, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lcom/viber/voip/messages/adapters/a/b/a;->b:I

    add-int/2addr v0, v1

    .line 107
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v1, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 109
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v0, :cond_3

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v2, v0, :cond_0

    .line 110
    :cond_3
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 111
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 113
    :cond_4
    if-ne p1, v5, :cond_8

    .line 114
    sget v0, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lcom/viber/voip/messages/adapters/a/b/a;->b:I

    add-int/2addr v0, v1

    .line 116
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v1, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 117
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 118
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v0, :cond_5

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v3, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    if-eq v2, v3, :cond_6

    .line 119
    :cond_5
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    sget v2, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 123
    :cond_6
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v1, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 124
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 125
    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v0, :cond_7

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v3, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    if-eq v2, v3, :cond_0

    .line 126
    :cond_7
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 127
    sget v0, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 129
    :cond_8
    if-ne p1, v7, :cond_e

    .line 130
    sget v0, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    mul-int/lit8 v0, v0, 0x2

    sget v2, Lcom/viber/voip/messages/adapters/a/b/a;->b:I

    add-int/2addr v2, v0

    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 134
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v2, :cond_9

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget v4, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    if-eq v3, v4, :cond_a

    .line 135
    :cond_9
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 136
    sget v2, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 139
    :cond_a
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 141
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sget v2, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    if-ne v1, v2, :cond_b

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget v2, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    if-eq v1, v2, :cond_c

    .line 142
    :cond_b
    sget v1, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 143
    sget v1, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 146
    :cond_c
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v7

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 148
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sget v2, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    if-ne v1, v2, :cond_d

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sget v2, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    if-ne v1, v2, :cond_d

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v2, 0x55

    if-eq v1, v2, :cond_0

    .line 150
    :cond_d
    sget v1, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 151
    sget v1, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 152
    const/16 v1, 0x55

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto/16 :goto_0

    .line 154
    :cond_e
    if-ne p1, v1, :cond_0

    .line 155
    sget v2, Lcom/viber/voip/messages/adapters/a/b/a;->a:I

    .line 157
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 159
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v2, :cond_f

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v2, :cond_10

    .line 160
    :cond_f
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 161
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 164
    :cond_10
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 166
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v2, :cond_11

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v3, v2, :cond_12

    .line 167
    :cond_11
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 168
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 171
    :cond_12
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v7

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 172
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 173
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v3, v2, :cond_13

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v3, v2, :cond_13

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v4, 0x53

    if-eq v3, v4, :cond_14

    .line 174
    :cond_13
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 175
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 176
    const/16 v3, 0x53

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 179
    :cond_14
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 181
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v1, v2, :cond_15

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v1, v2, :cond_0

    .line 182
    :cond_15
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 183
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto/16 :goto_0
.end method


# virtual methods
.method a()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public a(Lcom/viber/voip/messages/adapters/a/a;Lcom/viber/voip/messages/adapters/a/b/a;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/viber/voip/messages/adapters/a/b/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->e()Z

    move-result v0

    .line 50
    invoke-virtual {p2}, Lcom/viber/voip/messages/adapters/a/b/a;->a()Z

    move-result v2

    .line 51
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->f()Z

    move-result v9

    .line 52
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->h()Z

    move-result v10

    .line 53
    invoke-virtual {p2}, Lcom/viber/voip/messages/adapters/a/b/a;->b()I

    move-result v3

    .line 54
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->p()[J

    move-result-object v4

    .line 55
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->q()J

    move-result-wide v5

    .line 56
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/f;->a:Landroid/widget/ImageView;

    const v7, 0x7f07004e

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 57
    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    .line 58
    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/adapters/a/a/f;->a(Lcom/viber/voip/messages/adapters/a/a;ZI[JJ)V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p2}, Lcom/viber/voip/messages/adapters/a/b/a;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {p2}, Lcom/viber/voip/messages/adapters/a/b/a;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    move-object v1, p0

    move v2, v9

    move v3, v10

    invoke-virtual/range {v1 .. v8}, Lcom/viber/voip/messages/adapters/a/a/f;->a(ZZ[JJLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected a(Lcom/viber/voip/messages/adapters/a/a;ZI[JJ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZI[JJ)V"
        }
    .end annotation

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 76
    if-eqz p4, :cond_1

    .line 77
    const/4 v0, 0x0

    :goto_0
    array-length v2, p4

    if-ge v0, v2, :cond_1

    .line 78
    if-ge v0, p3, :cond_0

    aget-wide v2, p4, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 77
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_1
    invoke-direct {p0, v1}, Lcom/viber/voip/messages/adapters/a/a/f;->a(I)V

    .line 84
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/f;->c:Lcom/viber/voip/util/b/w;

    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    const/4 v2, 0x0

    aget-wide v2, p4, v2

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4}, Lcom/viber/voip/messages/a/a;->a(JZ)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    const/4 v4, 0x0

    aget-object v0, v0, v4

    const v4, 0x7f070050

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/adapters/a/a/f;->a(Ljava/lang/Integer;)Lcom/viber/voip/util/b/x;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 86
    const/4 v0, 0x1

    move v1, v0

    :goto_1
    const/4 v0, 0x5

    if-ge v1, v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    aget-object v2, v0, v1

    .line 88
    add-int/lit8 v0, v1, -0x1

    aget-wide v3, p4, v0

    .line 89
    add-int/lit8 v0, v1, -0x1

    if-ge v0, p3, :cond_2

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    .line 90
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    iget-object v5, p0, Lcom/viber/voip/messages/adapters/a/a/f;->c:Lcom/viber/voip/util/b/w;

    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    const/4 v6, 0x1

    invoke-interface {v0, v3, v4, v6}, Lcom/viber/voip/messages/a/a;->a(JZ)Landroid/net/Uri;

    move-result-object v3

    const v0, 0x7f070050

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/adapters/a/a/f;->a(Ljava/lang/Integer;)Lcom/viber/voip/util/b/x;

    move-result-object v0

    invoke-virtual {v5, v3, v2, v0}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 86
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 93
    :cond_2
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 96
    :cond_3
    return-void
.end method

.method protected a(Lcom/viber/voip/messages/adapters/a/b/a;)V
    .locals 4
    .parameter

    .prologue
    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/a/a/f;->a:Landroid/widget/ImageView;

    aput-object v2, v0, v1

    .line 67
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->k:Landroid/view/View;

    const v3, 0x7f0700dd

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 68
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->k:Landroid/view/View;

    const v3, 0x7f0700de

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 69
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->k:Landroid/view/View;

    const v3, 0x7f0700df

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 70
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/f;->b:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->k:Landroid/view/View;

    const v3, 0x7f0700e0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 71
    return-void
.end method

.method public bridge synthetic a(Lcom/viber/voip/ui/b/f;Lcom/viber/voip/ui/b/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    check-cast p1, Lcom/viber/voip/messages/adapters/a/a;

    check-cast p2, Lcom/viber/voip/messages/adapters/a/b/a;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/messages/adapters/a/a/f;->a(Lcom/viber/voip/messages/adapters/a/a;Lcom/viber/voip/messages/adapters/a/b/a;)V

    return-void
.end method

.method protected a(ZZ[JJLandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 209
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/f;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    if-eqz p1, :cond_1

    .line 211
    iget-object v0, p0, Lcom/viber/voip/messages/adapters/a/a/f;->a:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, p7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :goto_1
    return-void

    :cond_0
    move-object p7, p6

    .line 211
    goto :goto_0

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/adapters/a/a/f;->c:Lcom/viber/voip/util/b/w;

    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v2

    aget-wide v3, p3, v0

    const-wide/16 v5, 0x0

    cmp-long v5, p4, v5

    if-lez v5, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {v2, v3, v4, v0}, Lcom/viber/voip/messages/a/a;->a(JZ)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/adapters/a/a/f;->a:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/viber/voip/messages/adapters/a/a/f;->d:Lcom/viber/voip/util/b/x;

    invoke-virtual {v1, v0, v2, v3}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    goto :goto_1
.end method
