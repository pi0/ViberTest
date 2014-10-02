.class public Lcom/viber/voip/messages/ui/dp;
.super Lcom/viber/voip/messages/ui/MessagesFragment;
.source "SourceFile"


# instance fields
.field f:Lcom/viber/voip/contacts/b;

.field g:Landroid/widget/BaseAdapter;

.field h:Lcom/a/a/a/a;

.field i:Landroid/view/View;

.field j:Lcom/viber/voip/messages/ui/view/a;

.field k:Landroid/view/View;

.field l:Z

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/dp;->l:Z

    .line 268
    return-void
.end method

.method private a(Landroid/app/Activity;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 254
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 255
    const v0, 0x7f070247

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 256
    const v2, 0x7f0c066b

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 257
    return-object v1
.end method

.method private a(Lcom/viber/voip/messages/conversation/i;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/i;->getCount()I

    move-result v2

    .line 177
    if-nez v2, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-object v0

    .line 180
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    .line 182
    invoke-virtual {p1, v1}, Lcom/viber/voip/messages/conversation/i;->e(I)Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;

    move-result-object v4

    .line 183
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->q()J

    move-result-wide v5

    .line 184
    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;->s()Z

    move-result v4

    if-nez v4, :cond_2

    .line 185
    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 181
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 188
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/contacts/b/e;)V
    .locals 11
    .parameter

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 240
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v4

    .line 241
    if-eqz v4, :cond_0

    .line 242
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-interface {v4}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-string/jumbo v10, ""

    invoke-static/range {v0 .. v10}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;IJJLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 248
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/dp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 251
    :cond_1
    return-void

    .line 245
    :cond_2
    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->c()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->a()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->b()Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v9, Lcom/viber/voip/a/q;

    invoke-direct {v9}, Lcom/viber/voip/a/q;-><init>()V

    iget-object v9, v9, Lcom/viber/voip/a/q;->a:Lcom/viber/voip/a/k;

    invoke-virtual {v9}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lcom/viber/voip/util/gn;->a(ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/dp;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/dp;->u()V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/dp;)I
    .locals 1
    .parameter

    .prologue
    .line 45
    iget v0, p0, Lcom/viber/voip/messages/ui/dp;->o:I

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "search "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/dp;->b(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->f:Lcom/viber/voip/contacts/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    if-nez v0, :cond_2

    .line 123
    :cond_0
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/dp;->l:Z

    .line 151
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 127
    :goto_1
    iget-boolean v3, p0, Lcom/viber/voip/messages/ui/dp;->l:Z

    if-nez v3, :cond_7

    if-eqz v0, :cond_7

    .line 128
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/dp;->t()V

    .line 129
    iget-object v3, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/dp;->i:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 130
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/j/a;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 131
    iget-object v3, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/dp;->j:Lcom/viber/voip/messages/ui/view/a;

    invoke-virtual {v3, v4, v1}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 133
    :cond_3
    iget-object v3, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/dp;->g:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v4, v1}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;Z)V

    .line 134
    iget-object v1, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/dp;->k:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 144
    :cond_4
    :goto_2
    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/dp;->l:Z

    .line 145
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/dp;->l:Z

    if-eqz v0, :cond_5

    .line 146
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->f:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0, p1, v5}, Lcom/viber/voip/contacts/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_5
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/j/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->j:Lcom/viber/voip/messages/ui/view/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/view/a;->setSearchText(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move v0, v2

    .line 126
    goto :goto_1

    .line 135
    :cond_7
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/dp;->l:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    .line 136
    iget-object v1, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/dp;->i:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 137
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/j/a;->e()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 138
    iget-object v1, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/dp;->j:Lcom/viber/voip/messages/ui/view/a;

    invoke-virtual {v1, v3, v2}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 140
    :cond_8
    iget-object v1, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/dp;->g:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v3, v2}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;Z)V

    .line 141
    iget-object v1, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/dp;->k:Landroid/view/View;

    invoke-virtual {v1, v3, v2}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 142
    iget-object v1, p0, Lcom/viber/voip/messages/ui/dp;->f:Lcom/viber/voip/contacts/b;

    invoke-virtual {v1, v5}, Lcom/viber/voip/contacts/b;->d(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private u()V
    .locals 5

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->d:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/k;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/viber/voip/messages/ui/dp;->m:I

    .line 107
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMainAdapterChanged, paddingTop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/ui/dp;->b(Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/viber/voip/messages/ui/dp;->i:Landroid/view/View;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/dp;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/dp;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/messages/ui/dp;->i:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 109
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/j/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v1, p0, Lcom/viber/voip/messages/ui/dp;->j:Lcom/viber/voip/messages/ui/view/a;

    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->d:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/k;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/view/a;->setContentTopPadding(Z)V

    .line 112
    :cond_0
    return-void

    .line 106
    :cond_1
    iget v0, p0, Lcom/viber/voip/messages/ui/dp;->n:I

    goto :goto_0

    .line 110
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private v()Landroid/view/View;
    .locals 3

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/dp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private z()Lcom/viber/voip/messages/ui/view/a;
    .locals 2

    .prologue
    .line 265
    new-instance v0, Lcom/viber/voip/messages/ui/view/a;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/dp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/ui/view/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/widget/ListAdapter;
    .locals 4

    .prologue
    .line 68
    const-string/jumbo v0, "getOuterListAdapter()"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/dp;->b(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/dp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/dp;->m:I

    .line 71
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/dp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/dp;->n:I

    .line 72
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/dp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/dp;->o:I

    .line 73
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/viber/voip/contacts/g;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/dp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/dp;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/dp;->e:Lcom/viber/voip/contacts/c/d/b;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/viber/voip/contacts/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;)V

    :goto_0
    iput-object v0, p0, Lcom/viber/voip/messages/ui/dp;->f:Lcom/viber/voip/contacts/b;

    .line 76
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/dp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/dp;->a(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/dp;->i:Landroid/view/View;

    .line 77
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/dp;->z()Lcom/viber/voip/messages/ui/view/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/dp;->j:Lcom/viber/voip/messages/ui/view/a;

    .line 78
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/dp;->v()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/dp;->k:Landroid/view/View;

    .line 79
    new-instance v0, Lcom/viber/voip/messages/ui/dr;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/dp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/dp;->f:Lcom/viber/voip/contacts/b;

    invoke-direct {v0, p0, v1, v2}, Lcom/viber/voip/messages/ui/dr;-><init>(Lcom/viber/voip/messages/ui/dp;Landroid/app/Activity;Lcom/viber/voip/contacts/a;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/dp;->g:Landroid/widget/BaseAdapter;

    .line 80
    new-instance v0, Lcom/a/a/a/a;

    invoke-direct {v0}, Lcom/a/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    .line 82
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/dp;->d:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 83
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/dp;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/dp;->g:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 85
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/j/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/dp;->j:Lcom/viber/voip/messages/ui/view/a;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/view/View;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/dp;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/view/View;)V

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/dp;->c(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->d:Lcom/viber/voip/messages/adapters/k;

    new-instance v1, Lcom/viber/voip/messages/ui/dq;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/dq;-><init>(Lcom/viber/voip/messages/ui/dp;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/adapters/k;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 102
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    return-object v0

    .line 73
    :cond_1
    new-instance v0, Lcom/viber/voip/contacts/b;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/dp;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/dp;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/dp;->e:Lcom/viber/voip/contacts/c/d/b;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/viber/voip/contacts/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/provider/b;)V
    .locals 1
    .parameter

    .prologue
    .line 199
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/MessagesFragment;->a(Lcom/viber/provider/b;)V

    .line 200
    instance-of v0, p1, Lcom/viber/voip/contacts/a;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->d:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/k;->notifyDataSetChanged()V

    .line 203
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/ui/MessagesFragment;->a(Lcom/viber/provider/b;Z)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLoadFinished "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", mSearchActive:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v3, p0, Lcom/viber/voip/messages/ui/dp;->l:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", count:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/provider/b;->getCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/dp;->b(Ljava/lang/String;)V

    .line 164
    instance-of v0, p1, Lcom/viber/voip/messages/conversation/i;

    if-eqz v0, :cond_1

    .line 165
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/dp;->l:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->f:Lcom/viber/voip/contacts/b;

    check-cast p1, Lcom/viber/voip/messages/conversation/i;

    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/dp;->a(Lcom/viber/voip/messages/conversation/i;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/viber/voip/contacts/b;->d(Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/dp;->k:Landroid/view/View;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/dp;->g:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/viber/voip/messages/ui/dp;->d:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v4}, Lcom/viber/voip/messages/adapters/k;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/viber/voip/messages/ui/dp;->l:Z

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v0, v3, v1}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 173
    return-void

    .line 168
    :cond_1
    instance-of v0, p1, Lcom/viber/voip/contacts/a;

    if-eqz v0, :cond_0

    .line 169
    iget-object v3, p0, Lcom/viber/voip/messages/ui/dp;->h:Lcom/a/a/a/a;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/dp;->i:Landroid/view/View;

    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/dp;->l:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/viber/provider/b;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 170
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->g:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 169
    goto :goto_2

    :cond_3
    move v1, v2

    .line 172
    goto :goto_1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/dp;->c(Ljava/lang/String;)V

    .line 117
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/MessagesFragment;->a(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/MessagesFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 64
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 207
    invoke-super {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->onDestroyView()V

    .line 208
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->f:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->f:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->m()V

    .line 211
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 214
    invoke-super {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->onDetach()V

    .line 215
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->f:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->l()V

    .line 216
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 230
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/contacts/a/l;

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    .line 233
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/viber/voip/messages/ui/MessagesFragment;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 220
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/contacts/a/l;

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/a/l;

    .line 222
    iget-object v0, v0, Lcom/viber/voip/contacts/a/l;->k:Lcom/viber/voip/contacts/b/e;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/dp;->a(Lcom/viber/voip/contacts/b/e;)V

    .line 226
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/viber/voip/messages/ui/MessagesFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method t()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->f:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->f:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->e()V

    .line 156
    iget-object v0, p0, Lcom/viber/voip/messages/ui/dp;->f:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->n()V

    .line 158
    :cond_0
    return-void
.end method
