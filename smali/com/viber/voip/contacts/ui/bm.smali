.class public Lcom/viber/voip/contacts/ui/bm;
.super Lcom/viber/voip/contacts/ui/ContactsFragment;
.source "SourceFile"


# static fields
.field private static final t:Ljava/lang/String;


# instance fields
.field private A:I

.field q:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Lcom/viber/voip/messages/ui/view/a;

.field private w:Lcom/viber/voip/messages/conversation/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/viber/voip/messages/conversation/i",
            "<",
            "Lcom/viber/voip/messages/conversation/ConversationLoaderEntity;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/viber/voip/messages/adapters/k;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/viber/voip/contacts/ui/bm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/ui/bm;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;-><init>()V

    .line 213
    return-void
.end method

.method private A()Landroid/view/View;
    .locals 3

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/bm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03007e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 126
    const v0, 0x7f070247

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    const v2, 0x7f0c066c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    return-object v1
.end method

.method private B()Lcom/viber/voip/messages/ui/view/a;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Lcom/viber/voip/messages/ui/view/a;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/bm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/ui/view/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private C()Landroid/view/View;
    .locals 3

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/bm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 137
    const v0, 0x7f0700fc

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f0c0330

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 138
    return-object v1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/bm;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/bm;->z()V

    return-void
.end method

.method private a(Lcom/viber/voip/messages/adapters/a/a;)V
    .locals 3
    .parameter

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CONVERSATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    const-string/jumbo v1, "extra_conversation_data"

    new-instance v2, Lcom/viber/voip/messages/conversation/ui/ConversationData;

    invoke-direct {v2, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationData;-><init>(Lcom/viber/voip/messages/adapters/a/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 155
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/bm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 156
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "localSearch "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/bm;->c(Ljava/lang/String;)V

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 170
    :goto_0
    iget-boolean v3, p0, Lcom/viber/voip/contacts/ui/bm;->y:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/bm;->v()V

    .line 172
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/bm;->u:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 173
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/bm;->x:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v3, v4, v1}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;Z)V

    .line 174
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/bm;->q:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 180
    :cond_0
    :goto_1
    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/bm;->y:Z

    .line 181
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/bm;->y:Z

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->w:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/i;->d(Ljava/lang/String;)V

    .line 184
    :cond_1
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/j/a;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->v:Lcom/viber/voip/messages/ui/view/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/view/a;->setSearchText(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bm;->v:Lcom/viber/voip/messages/ui/view/a;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    :goto_2
    invoke-virtual {v0, v3, v1}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 188
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 169
    goto :goto_0

    .line 175
    :cond_4
    iget-boolean v3, p0, Lcom/viber/voip/contacts/ui/bm;->y:Z

    if-eqz v3, :cond_0

    if-nez v0, :cond_0

    .line 176
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/bm;->u:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 177
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/bm;->x:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v3, v4, v2}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;Z)V

    .line 178
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/bm;->q:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    goto :goto_1

    :cond_5
    move v1, v2

    .line 186
    goto :goto_2
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    return-void
.end method

.method private z()V
    .locals 5

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->n:Lcom/viber/voip/contacts/a/v;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/a/v;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget v0, p0, Lcom/viber/voip/contacts/ui/bm;->z:I

    .line 97
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

    invoke-direct {p0, v1}, Lcom/viber/voip/contacts/ui/bm;->c(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bm;->u:Landroid/view/View;

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/bm;->u:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bm;->u:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/bm;->u:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 99
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/j/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bm;->v:Lcom/viber/voip/messages/ui/view/a;

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->n:Lcom/viber/voip/contacts/a/v;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/a/v;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/view/a;->setContentTopPadding(Z)V

    .line 102
    :cond_0
    return-void

    .line 96
    :cond_1
    iget v0, p0, Lcom/viber/voip/contacts/ui/bm;->A:I

    goto :goto_0

    .line 100
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public a(Lcom/viber/provider/b;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    invoke-super {p0, p1, p2}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Lcom/viber/provider/b;Z)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLoadFinished "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", count="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/provider/b;->getCount()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/bm;->c(Ljava/lang/String;)V

    .line 109
    instance-of v0, p1, Lcom/viber/voip/messages/conversation/i;

    if-eqz v0, :cond_0

    .line 110
    const-string/jumbo v0, "mMessagesAdapter.notifyDataSetChanged()"

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/bm;->c(Ljava/lang/String;)V

    .line 111
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/bm;->u:Landroid/view/View;

    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/bm;->y:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/viber/provider/b;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v4, v0}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 112
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->x:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/k;->notifyDataSetChanged()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bm;->q:Landroid/view/View;

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/bm;->n:Lcom/viber/voip/contacts/a/v;

    invoke-virtual {v4}, Lcom/viber/voip/contacts/a/v;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/bm;->x:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v4}, Lcom/viber/voip/messages/adapters/k;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/viber/voip/contacts/ui/bm;->y:Z

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v0, v3, v1}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 115
    return-void

    :cond_1
    move v0, v2

    .line 111
    goto :goto_0

    :cond_2
    move v1, v2

    .line 114
    goto :goto_1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Ljava/lang/String;)Z

    move-result v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/bm;->b(Ljava/lang/String;)V

    .line 164
    :cond_0
    return v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 192
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 193
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/messages/adapters/a/a/b;

    if-eqz v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/contacts/ui/ContactsFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->onDestroyView()V

    .line 203
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->w:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->w:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->q()V

    .line 206
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->onDetach()V

    .line 210
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->w:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->l()V

    .line 211
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/messages/adapters/a/a/b;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a/b;

    .line 146
    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/a/a/b;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/bm;->a(Lcom/viber/voip/messages/adapters/a/a;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/viber/voip/contacts/ui/ContactsFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    goto :goto_0
.end method

.method protected p()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 55
    invoke-super {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->p()V

    .line 57
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/bm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/ui/bm;->z:I

    .line 58
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/bm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a01e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/ui/bm;->A:I

    .line 60
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/bm;->A()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->u:Landroid/view/View;

    .line 61
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/bm;->B()Lcom/viber/voip/messages/ui/view/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->v:Lcom/viber/voip/messages/ui/view/a;

    .line 62
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/bm;->C()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->q:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bm;->u:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/view/View;)V

    .line 67
    new-instance v0, Lcom/viber/voip/messages/conversation/aw;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/bm;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/bm;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bm;->h:Lcom/viber/voip/messages/i;

    const/4 v4, 0x1

    move-object v7, v6

    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/messages/conversation/aw;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;ZZLjava/util/ArrayList;Ljava/lang/String;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->w:Lcom/viber/voip/messages/conversation/i;

    .line 69
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->w:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->s()V

    .line 70
    new-instance v0, Lcom/viber/voip/contacts/ui/bo;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bm;->w:Lcom/viber/voip/messages/conversation/i;

    move-object v1, p0

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/bo;-><init>(Lcom/viber/voip/contacts/ui/bm;Landroid/content/Context;Lcom/viber/voip/messages/conversation/i;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;Z)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->x:Lcom/viber/voip/messages/adapters/k;

    .line 72
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bm;->x:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 73
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/j/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bm;->v:Lcom/viber/voip/messages/ui/view/a;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bm;->v:Lcom/viber/voip/messages/ui/view/a;

    invoke-virtual {v0, v1, v5}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bm;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bm;->u:Landroid/view/View;

    invoke-virtual {v0, v1, v5}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 79
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bm;->x:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v0, v1, v5}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;Z)V

    .line 80
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->k:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bm;->q:Landroid/view/View;

    invoke-virtual {v0, v1, v5}, Lcom/a/a/a/a;->b(Landroid/view/View;Z)V

    .line 82
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->n:Lcom/viber/voip/contacts/a/v;

    new-instance v1, Lcom/viber/voip/contacts/ui/bn;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/ui/bn;-><init>(Lcom/viber/voip/contacts/ui/bm;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/a/v;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 93
    return-void
.end method

.method protected v()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->w:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->w:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->e()V

    .line 120
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bm;->w:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->r()V

    .line 122
    :cond_0
    return-void
.end method
