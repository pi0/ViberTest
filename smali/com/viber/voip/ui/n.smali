.class public Lcom/viber/voip/ui/n;
.super Lcom/viber/voip/ui/e;
.source "SourceFile"


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/Button;

.field public d:Landroid/view/View;

.field public e:Landroid/view/View;

.field public f:Z

.field public g:Z

.field public h:[Lcom/viber/voip/contacts/ui/ak;

.field private i:Lcom/viber/voip/util/b/w;

.field private j:Lcom/viber/voip/util/b/x;

.field private k:Lcom/viber/voip/ui/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/viber/voip/ui/e;-><init>()V

    .line 23
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/ui/n;)Lcom/viber/voip/ui/p;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/viber/voip/ui/n;->k:Lcom/viber/voip/ui/p;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/viber/voip/ui/n;->h:[Lcom/viber/voip/contacts/ui/ak;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/ui/n;->h:[Lcom/viber/voip/contacts/ui/ak;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/viber/voip/ui/n;->h:[Lcom/viber/voip/contacts/ui/ak;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/viber/voip/contacts/ui/ak;->n:Landroid/widget/ImageView;

    new-instance v2, Lcom/viber/voip/ui/o;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/ui/o;-><init>(Lcom/viber/voip/ui/n;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/viber/voip/ui/n;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/viber/voip/ui/n;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :cond_0
    return-void
.end method

.method private b(Landroid/view/View;)Lcom/viber/voip/contacts/ui/ak;
    .locals 3
    .parameter

    .prologue
    .line 104
    if-eqz p1, :cond_1

    .line 105
    new-instance v1, Lcom/viber/voip/contacts/ui/ak;

    invoke-direct {v1, p1}, Lcom/viber/voip/contacts/ui/ak;-><init>(Landroid/view/View;)V

    .line 106
    iget-object v0, v1, Lcom/viber/voip/contacts/ui/ak;->n:Landroid/widget/ImageView;

    instance-of v0, v0, Lcom/viber/voip/ui/ao;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, v1, Lcom/viber/voip/contacts/ui/ak;->n:Landroid/widget/ImageView;

    check-cast v0, Lcom/viber/voip/ui/ao;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/ao;->setShowTriangle(Z)V

    .line 108
    iget-object v0, v1, Lcom/viber/voip/contacts/ui/ak;->m:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    move-object v0, v1

    .line 112
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(ILcom/viber/voip/messages/conversation/i;Lcom/viber/voip/messages/conversation/a;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v2, 0x1

    const/16 v8, 0x8

    const/4 v1, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/viber/voip/ui/n;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-boolean v0, p0, Lcom/viber/voip/ui/n;->f:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/i;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/viber/voip/ui/n;->g:Z

    if-nez v0, :cond_5

    if-eq p1, v9, :cond_5

    :cond_2
    move v0, v2

    .line 130
    :goto_1
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/i;->getCount()I

    move-result v3

    if-gtz v3, :cond_3

    if-ne p1, v9, :cond_6

    :cond_3
    move v3, v2

    .line 131
    :goto_2
    invoke-virtual {p3}, Lcom/viber/voip/messages/conversation/a;->getCount()I

    move-result v4

    if-lez v4, :cond_7

    move v4, v2

    .line 132
    :goto_3
    iget-object v5, p0, Lcom/viber/voip/ui/n;->b:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 133
    iget-object v6, p0, Lcom/viber/voip/ui/n;->b:Landroid/widget/TextView;

    if-ne v9, p1, :cond_8

    const v5, 0x7f0c0339

    :goto_4
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    .line 134
    iget-object v6, p0, Lcom/viber/voip/ui/n;->b:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/viber/voip/ui/n;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-ne v9, p1, :cond_9

    const v5, 0x7f090058

    :goto_5
    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    :cond_4
    if-eqz v0, :cond_a

    .line 137
    invoke-virtual {p0, v2}, Lcom/viber/voip/ui/n;->b(Z)V

    .line 138
    invoke-direct {p0, v8}, Lcom/viber/voip/ui/n;->a(I)V

    .line 139
    iget-object v0, p0, Lcom/viber/voip/ui/n;->c:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/viber/voip/ui/n;->d:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/ui/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 129
    goto :goto_1

    :cond_6
    move v3, v1

    .line 130
    goto :goto_2

    :cond_7
    move v4, v1

    .line 131
    goto :goto_3

    .line 133
    :cond_8
    const v5, 0x7f0c0338

    goto :goto_4

    .line 134
    :cond_9
    const v5, 0x7f0900bb

    goto :goto_5

    .line 142
    :cond_a
    if-eqz v3, :cond_b

    .line 143
    invoke-virtual {p0, v1}, Lcom/viber/voip/ui/n;->b(Z)V

    .line 144
    invoke-direct {p0, v1}, Lcom/viber/voip/ui/n;->a(I)V

    .line 145
    iget-object v0, p0, Lcom/viber/voip/ui/n;->c:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/viber/voip/ui/n;->d:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/viber/voip/ui/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 148
    :cond_b
    if-eqz v4, :cond_d

    .line 149
    invoke-virtual {p0, v1}, Lcom/viber/voip/ui/n;->b(Z)V

    .line 150
    invoke-direct {p0, v1}, Lcom/viber/voip/ui/n;->a(I)V

    .line 151
    iget-object v0, p0, Lcom/viber/voip/ui/n;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/viber/voip/ui/n;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/viber/voip/ui/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    move v0, v1

    .line 154
    :goto_6
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 155
    invoke-virtual {p3, v0}, Lcom/viber/voip/messages/conversation/a;->e(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v2

    .line 156
    if-nez v2, :cond_c

    .line 157
    iget-object v2, p0, Lcom/viber/voip/ui/n;->h:[Lcom/viber/voip/contacts/ui/ak;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/viber/voip/contacts/ui/ak;->l:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 154
    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 159
    :cond_c
    iget-object v3, p0, Lcom/viber/voip/ui/n;->h:[Lcom/viber/voip/contacts/ui/ak;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/viber/voip/contacts/ui/ak;->l:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v3, p0, Lcom/viber/voip/ui/n;->h:[Lcom/viber/voip/contacts/ui/ak;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/viber/voip/contacts/ui/ak;->o:Landroid/widget/TextView;

    invoke-interface {v2}, Lcom/viber/voip/contacts/b/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v3, p0, Lcom/viber/voip/ui/n;->i:Lcom/viber/voip/util/b/w;

    invoke-interface {v2}, Lcom/viber/voip/contacts/b/e;->b()Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/viber/voip/ui/n;->h:[Lcom/viber/voip/contacts/ui/ak;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/viber/voip/contacts/ui/ak;->n:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/viber/voip/ui/n;->j:Lcom/viber/voip/util/b/x;

    invoke-virtual {v3, v2, v4, v5}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    goto :goto_7

    .line 165
    :cond_d
    invoke-virtual {p0, v1}, Lcom/viber/voip/ui/n;->b(Z)V

    .line 166
    invoke-direct {p0, v1}, Lcom/viber/voip/ui/n;->a(I)V

    .line 167
    iget-object v0, p0, Lcom/viber/voip/ui/n;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/viber/voip/ui/n;->d:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/viber/voip/ui/n;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public a(Lcom/viber/voip/ui/p;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/viber/voip/ui/n;->k:Lcom/viber/voip/ui/p;

    .line 87
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/viber/voip/ui/n;->f:Z

    .line 118
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/viber/voip/ui/e;->a(Landroid/view/View;)Z

    move-result v0

    .line 45
    if-nez v0, :cond_0

    move v0, v1

    .line 82
    :goto_0
    return v0

    .line 48
    :cond_0
    const v0, 0x7f0700fd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/ui/n;->a:Landroid/widget/ImageView;

    .line 49
    const v0, 0x7f0700fc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/ui/n;->b:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0700ff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/ui/n;->c:Landroid/widget/Button;

    .line 52
    const v0, 0x7f0700fe

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 53
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 56
    :cond_1
    const v0, 0x7f070100

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/n;->d:Landroid/view/View;

    .line 57
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/n;->e:Landroid/view/View;

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/viber/voip/contacts/ui/ak;

    iput-object v0, p0, Lcom/viber/voip/ui/n;->h:[Lcom/viber/voip/contacts/ui/ak;

    .line 60
    iget-object v0, p0, Lcom/viber/voip/ui/n;->h:[Lcom/viber/voip/contacts/ui/ak;

    const v3, 0x7f070102

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/viber/voip/ui/n;->b(Landroid/view/View;)Lcom/viber/voip/contacts/ui/ak;

    move-result-object v3

    aput-object v3, v0, v1

    .line 61
    iget-object v0, p0, Lcom/viber/voip/ui/n;->h:[Lcom/viber/voip/contacts/ui/ak;

    const v3, 0x7f070103

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/viber/voip/ui/n;->b(Landroid/view/View;)Lcom/viber/voip/contacts/ui/ak;

    move-result-object v3

    aput-object v3, v0, v2

    .line 62
    iget-object v0, p0, Lcom/viber/voip/ui/n;->h:[Lcom/viber/voip/contacts/ui/ak;

    const/4 v3, 0x2

    const v4, 0x7f070105

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/viber/voip/ui/n;->b(Landroid/view/View;)Lcom/viber/voip/contacts/ui/ak;

    move-result-object v4

    aput-object v4, v0, v3

    .line 63
    iget-object v0, p0, Lcom/viber/voip/ui/n;->h:[Lcom/viber/voip/contacts/ui/ak;

    const/4 v3, 0x3

    const v4, 0x7f070106

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/viber/voip/ui/n;->b(Landroid/view/View;)Lcom/viber/voip/contacts/ui/ak;

    move-result-object v4

    aput-object v4, v0, v3

    .line 64
    invoke-direct {p0}, Lcom/viber/voip/ui/n;->a()V

    .line 66
    iget-object v0, p0, Lcom/viber/voip/ui/n;->a:Landroid/widget/ImageView;

    const v3, 0x7f020095

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 67
    iget-object v0, p0, Lcom/viber/voip/ui/n;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/viber/voip/ui/n;->b:Landroid/widget/TextView;

    const v3, 0x7f0c0338

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/ui/n;->c:Landroid/widget/Button;

    const v3, 0x7f0c0349

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v3

    iput-object v3, p0, Lcom/viber/voip/ui/n;->i:Lcom/viber/voip/util/b/w;

    .line 74
    new-instance v3, Lcom/viber/voip/util/b/z;

    invoke-direct {v3}, Lcom/viber/voip/util/b/z;-><init>()V

    invoke-virtual {v3, v1}, Lcom/viber/voip/util/b/z;->b(Z)Lcom/viber/voip/util/b/z;

    move-result-object v1

    const v3, 0x7f0202ca

    invoke-virtual {v1, v3, v0}, Lcom/viber/voip/util/b/z;->b(ILandroid/content/Context;)Lcom/viber/voip/util/b/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/z;->b()Lcom/viber/voip/util/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/ui/n;->j:Lcom/viber/voip/util/b/x;

    .line 79
    iget-object v0, p0, Lcom/viber/voip/ui/n;->c:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/viber/voip/ui/n;->e:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move v0, v2

    .line 82
    goto/16 :goto_0
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/viber/voip/ui/n;->g:Z

    .line 122
    return-void
.end method
