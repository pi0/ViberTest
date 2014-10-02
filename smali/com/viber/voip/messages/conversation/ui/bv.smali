.class public Lcom/viber/voip/messages/conversation/ui/bv;
.super Lcom/viber/voip/ui/al;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/actionbarsherlock/view/ActionMode$Callback;
.implements Lcom/viber/provider/e;


# instance fields
.field private a:Lcom/viber/voip/messages/conversation/a/v;

.field private b:Lcom/viber/voip/messages/ui/ConversationGalleryListView;

.field private c:Lcom/viber/voip/messages/conversation/ah;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:I

.field private g:Lcom/actionbarsherlock/view/ActionMode;

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

.field private i:Lcom/viber/voip/util/b/ad;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/viber/voip/ui/al;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/bv;Lcom/actionbarsherlock/view/ActionMode;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/bv;->g:Lcom/actionbarsherlock/view/ActionMode;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/bv;)Ljava/util/Set;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->h:Ljava/util/Set;

    return-object v0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 81
    if-eqz p1, :cond_1

    .line 82
    const-string/jumbo v0, "selected_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 83
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-wide v3, v1, v0

    .line 84
    iget-object v5, p0, Lcom/viber/voip/messages/conversation/ui/bv;->h:Ljava/util/Set;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->g:Lcom/actionbarsherlock/view/ActionMode;

    .line 89
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/bv;->h:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/ui/bv;->a(Landroid/content/Context;I)V

    .line 92
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Long;)V
    .locals 2
    .parameter

    .prologue
    .line 158
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->a:Lcom/viber/voip/messages/conversation/a/v;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/bv;->h:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/a/v;->a(Ljava/util/Set;)V

    .line 166
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->g:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->finish()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->g:Lcom/actionbarsherlock/view/ActionMode;

    .line 172
    :goto_1
    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/bv;->h:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/ui/bv;->a(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/ui/bv;)Lcom/actionbarsherlock/view/ActionMode;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->g:Lcom/actionbarsherlock/view/ActionMode;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->g:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v0}, Lcom/actionbarsherlock/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v0

    .line 176
    if-nez v0, :cond_0

    .line 177
    const v0, 0x7f030011

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 178
    const v1, 0x7f0700ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/bv;->g:Lcom/actionbarsherlock/view/ActionMode;

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/view/ActionMode;->setCustomView(Landroid/view/View;)V

    .line 182
    :cond_0
    const v1, 0x7f0700ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method

.method public a(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 236
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x8

    .line 109
    if-eqz p2, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 111
    new-instance v0, Lcom/viber/voip/messages/conversation/a/v;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/bv;->i:Lcom/viber/voip/util/b/ad;

    iget v3, p0, Lcom/viber/voip/messages/conversation/ui/bv;->f:I

    move-object v4, p1

    check-cast v4, Lcom/viber/voip/messages/conversation/r;

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/ui/bv;->h:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/a/v;-><init>(Landroid/content/Context;Lcom/viber/voip/util/b/ad;ILcom/viber/voip/messages/conversation/r;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->a:Lcom/viber/voip/messages/conversation/a/v;

    .line 113
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->a:Lcom/viber/voip/messages/conversation/a/v;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/conversation/a/v;->a(Landroid/view/View$OnLongClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->a:Lcom/viber/voip/messages/conversation/a/v;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/conversation/a/v;->a(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->b:Lcom/viber/voip/messages/ui/ConversationGalleryListView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/bv;->a:Lcom/viber/voip/messages/conversation/a/v;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/ConversationGalleryListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->d:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :goto_0
    invoke-virtual {p1}, Lcom/viber/provider/b;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->b:Lcom/viber/voip/messages/ui/ConversationGalleryListView;

    invoke-virtual {v0, v6}, Lcom/viber/voip/messages/ui/ConversationGalleryListView;->setVisibility(I)V

    .line 126
    :cond_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->a:Lcom/viber/voip/messages/conversation/a/v;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/v;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onActionItemClicked(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 212
    invoke-interface {p2}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x7f070452

    if-ne v0, v2, :cond_0

    .line 213
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-le v0, v7, :cond_1

    const v2, 0x7f0c0621

    .line 214
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v4, Lcom/viber/voip/messages/conversation/ui/bw;

    invoke-direct {v4, p0}, Lcom/viber/voip/messages/conversation/ui/bw;-><init>(Lcom/viber/voip/messages/conversation/ui/bv;)V

    const v5, 0x7f0c02b6

    const v6, 0x7f0c034a

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    move v1, v7

    .line 224
    :cond_0
    return v1

    .line 213
    :cond_1
    const v2, 0x7f0c05bb

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/viber/voip/ui/al;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->f:I

    .line 100
    new-instance v0, Lcom/viber/voip/messages/conversation/r;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v3

    iget v5, p0, Lcom/viber/voip/messages/conversation/ui/bv;->f:I

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/r;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;I)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->c:Lcom/viber/voip/messages/conversation/ah;

    .line 102
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->c:Lcom/viber/voip/messages/conversation/ah;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ah;->v()V

    .line 103
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->c:Lcom/viber/voip/messages/conversation/ah;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "conversation_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/ah;->a(J)V

    .line 104
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->c:Lcom/viber/voip/messages/conversation/ah;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ah;->e()V

    .line 105
    return-void

    .line 98
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0700ff

    if-ne v0, v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 143
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 155
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Long;

    .line 148
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->g:Lcom/actionbarsherlock/view/ActionMode;

    if-nez v0, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "conversation_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "conversation_name"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-direct {p0, v3}, Lcom/viber/voip/messages/conversation/ui/bv;->a(Ljava/lang/Long;)V

    goto :goto_0
.end method

.method public onCreateActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-virtual {p1}, Lcom/actionbarsherlock/view/ActionMode;->getMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 199
    const v1, 0x7f100005

    invoke-virtual {v0, v1, p2}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 200
    const v0, 0x7f070451

    invoke-interface {p2, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 201
    const v0, 0x7f070453

    invoke-interface {p2, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0c0614

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 60
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "conversation_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 62
    const v0, 0x7f0300be

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 64
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/viber/voip/util/b/ab;->a(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Z)Lcom/viber/voip/util/b/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->i:Lcom/viber/voip/util/b/ad;

    .line 66
    const v0, 0x7f070123

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/ConversationGalleryListView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->b:Lcom/viber/voip/messages/ui/ConversationGalleryListView;

    .line 68
    const v0, 0x7f0701a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->d:Landroid/view/View;

    .line 69
    const v0, 0x7f0702b8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->e:Landroid/view/View;

    .line 71
    const v0, 0x7f0700ff

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->h:Ljava/util/Set;

    .line 75
    invoke-direct {p0, p3}, Lcom/viber/voip/messages/conversation/ui/bv;->a(Landroid/os/Bundle;)V

    .line 77
    return-object v1
.end method

.method public onDestroyActionMode(Lcom/actionbarsherlock/view/ActionMode;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 229
    iput-object v1, p0, Lcom/viber/voip/messages/conversation/ui/bv;->g:Lcom/actionbarsherlock/view/ActionMode;

    .line 230
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 231
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->a:Lcom/viber/voip/messages/conversation/a/v;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/a/v;->a(Ljava/util/Set;)V

    .line 232
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->c:Lcom/viber/voip/messages/conversation/ah;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->c:Lcom/viber/voip/messages/conversation/ah;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ah;->u()V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->i:Lcom/viber/voip/util/b/ad;

    invoke-virtual {v0}, Lcom/viber/voip/util/b/ad;->f()V

    .line 244
    invoke-super {p0}, Lcom/viber/voip/ui/al;->onDestroyView()V

    .line 245
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->g:Lcom/actionbarsherlock/view/ActionMode;

    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/bv;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->startActionMode(Lcom/actionbarsherlock/view/ActionMode$Callback;)Lcom/actionbarsherlock/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->g:Lcom/actionbarsherlock/view/ActionMode;

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 192
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/bv;->a(Ljava/lang/Long;)V

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepareActionMode(Lcom/actionbarsherlock/view/ActionMode;Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/bv;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v3, v0, [J

    .line 131
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/bv;->h:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 133
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v1

    move v1, v2

    goto :goto_0

    .line 135
    :cond_0
    const-string/jumbo v0, "selected_ids"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 136
    return-void
.end method
