.class public Lcom/viber/voip/contacts/ui/al;
.super Lcom/viber/voip/contacts/ui/ContactsFragment;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/ui/co;


# instance fields
.field private q:Lcom/viber/voip/contacts/ui/cb;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;

.field private v:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;-><init>()V

    .line 293
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/al;)Lcom/viber/voip/contacts/ui/cb;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/al;->q:Lcom/viber/voip/contacts/ui/cb;

    return-object v0
.end method

.method private a(Ljava/util/Collection;Lcom/viber/voip/util/ai;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/viber/voip/contacts/b/i;",
            ">;",
            "Lcom/viber/voip/util/ai;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/al;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 223
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/i;

    .line 224
    new-instance v4, Lcom/viber/voip/contacts/ui/ao;

    invoke-direct {v4, p0, v0}, Lcom/viber/voip/contacts/ui/ao;-><init>(Lcom/viber/voip/contacts/ui/al;Lcom/viber/voip/contacts/b/i;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/al;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x0

    move v4, v3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/w;->a(Landroid/content/Context;Ljava/util/Collection;Ljava/util/Collection;ZZLcom/viber/voip/util/ai;)V

    goto :goto_0
.end method

.method private b(Lcom/viber/voip/contacts/b/e;)V
    .locals 2
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/al;->d:Lcom/viber/voip/ui/k;

    invoke-virtual {v0}, Lcom/viber/voip/ui/k;->g()Z

    .line 185
    new-instance v0, Lcom/viber/voip/contacts/ui/am;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/contacts/ui/am;-><init>(Lcom/viber/voip/contacts/ui/al;Lcom/viber/voip/contacts/b/e;)V

    .line 196
    new-instance v1, Lcom/viber/voip/contacts/ui/an;

    invoke-direct {v1, p0, p1, v0}, Lcom/viber/voip/contacts/ui/an;-><init>(Lcom/viber/voip/contacts/ui/al;Lcom/viber/voip/contacts/b/e;Lcom/viber/voip/block/n;)V

    .line 216
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->h()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/contacts/ui/al;->a(Ljava/util/Collection;Lcom/viber/voip/util/ai;)V

    .line 217
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 134
    invoke-static {p1}, Lcom/viber/voip/util/hd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/al;->u:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :goto_0
    return v0

    .line 140
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/al;->u:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/al;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/al;->j:Lcom/viber/voip/ui/ContactsListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ContactsListView;->setupViews(Z)V

    .line 94
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-super {p0, p1, p2}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Lcom/viber/provider/b;Z)V

    .line 128
    invoke-virtual {p1}, Lcom/viber/provider/b;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/al;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->o()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/al;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/al;->e:Lcom/viber/voip/contacts/ui/bu;

    invoke-virtual {v0, v1, v1}, Lcom/viber/voip/contacts/ui/bu;->a(IZ)V

    .line 131
    :cond_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/contacts/b/e;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    if-nez p1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/al;->b(Lcom/viber/voip/contacts/b/e;)V

    goto :goto_0
.end method

.method public a(ZLcom/viber/voip/contacts/b/e;Ljava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    new-instance v0, Lcom/viber/voip/contacts/b/b/m;

    invoke-direct {v0, p3}, Lcom/viber/voip/contacts/b/b/m;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/al;->b(Lcom/viber/voip/contacts/b/e;)V

    .line 180
    return-void
.end method

.method public a(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 166
    if-nez p1, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/al;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/al;->d:Lcom/viber/voip/ui/k;

    invoke-virtual {v0}, Lcom/viber/voip/ui/k;->g()Z

    .line 169
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/al;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 171
    :cond_0
    const/4 v0, 0x0

    .line 173
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b_()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public d()Lcom/viber/voip/contacts/b;
    .locals 4

    .prologue
    .line 235
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/viber/voip/contacts/i;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/al;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/al;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/al;->c:Lcom/viber/voip/contacts/c/d/b;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/viber/voip/contacts/i;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/viber/voip/contacts/h;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/al;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/al;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/al;->c:Lcom/viber/voip/contacts/c/d/b;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/viber/voip/contacts/h;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;)V

    goto :goto_0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/al;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method protected k()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method protected l()Z
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method protected m()Z
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method protected n()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method protected o()Z
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-super {p0, p1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/al;->n:Lcom/viber/voip/contacts/a/v;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/a/v;->b(Z)V

    .line 87
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/al;->o:Lcom/viber/voip/contacts/a/n;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/a/n;->b(Z)V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/al;->d(Z)V

    .line 89
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 117
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/al;->v:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/al;->q:Lcom/viber/voip/contacts/ui/cb;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/al;->t:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/viber/voip/contacts/ui/cb;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    new-instance v0, Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/al;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/contacts/ui/cb;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/viber/voip/contacts/ui/co;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/al;->q:Lcom/viber/voip/contacts/ui/cb;

    .line 55
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 282
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 102
    const/high16 v0, 0x7f10

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 104
    const v0, 0x7f07043b

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 105
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/SearchView;

    .line 106
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/al;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c03c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 107
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/al;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHintColor(I)V

    .line 108
    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/widget/SearchView;->setOpenKeyboardOnExpand(Z)V

    .line 109
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->expandActionView()Z

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/al;->r:Z

    .line 111
    invoke-virtual {p0, v4, v1}, Lcom/viber/voip/contacts/ui/al;->a(ZLcom/actionbarsherlock/view/MenuItem;)V

    .line 113
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/contacts/ui/ContactsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 61
    const v0, 0x7f0700d3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 66
    :cond_0
    const v0, 0x7f0701d9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/al;->u:Landroid/view/View;

    .line 67
    const v0, 0x7f0701db

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/al;->v:Landroid/view/View;

    .line 68
    const v0, 0x7f0701dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/al;->t:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/al;->v:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->onDestroy()V

    .line 79
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/al;->q:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/cb;->c()V

    .line 80
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 155
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/ui/ak;

    .line 156
    if-nez v0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ak;->a()Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/al;->b(Lcom/viber/voip/contacts/b/e;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 286
    invoke-super {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->onStart()V

    .line 288
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/al;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {}, Lcom/viber/voip/ui/am;->J()V

    .line 291
    :cond_0
    return-void
.end method
