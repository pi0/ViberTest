.class public Lcom/viber/voip/messages/conversation/ui/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final o:Ljava/lang/String;


# instance fields
.field private A:Lcom/viber/voip/messages/ui/w;

.field private B:Lcom/viber/voip/messages/conversation/h;

.field private C:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Lcom/viber/voip/messages/ui/bn;",
            ">;"
        }
    .end annotation
.end field

.field private D:Lcom/viber/voip/a/m;

.field private E:Lcom/viber/voip/messages/ui/ad;

.field private F:Landroid/os/Handler;

.field private final G:Ljava/lang/Runnable;

.field private H:Lcom/viber/voip/messages/conversation/ui/bt;

.field private I:Lcom/viber/voip/messages/ui/aj;

.field public final a:Landroid/view/View;

.field public final b:Landroid/widget/ImageView;

.field public final c:Landroid/view/ViewGroup;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/view/View;

.field public final f:Landroid/widget/ProgressBar;

.field public final g:Lcom/viber/voip/messages/conversation/ui/b;

.field public final h:Lcom/viber/voip/messages/ui/MessageComposerView;

.field public final i:Lcom/viber/voip/z;

.field public final j:Lcom/viber/voip/ConversationListView;

.field public final k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

.field public final l:Lcom/viber/voip/messages/conversation/ui/m;

.field public final m:Lcom/viber/voip/messages/conversation/ui/bu;

.field public n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

.field private p:J

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Landroid/net/Uri;

.field private y:Lcom/viber/voip/messages/conversation/ui/ConversationData;

.field private z:Lcom/viber/voip/messages/conversation/ui/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/conversation/ui/ba;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;Lcom/viber/voip/messages/conversation/ui/bu;Lcom/viber/voip/messages/conversation/ui/m;Landroid/view/View;Landroid/os/Bundle;Lcom/viber/voip/messages/ui/ad;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->C:Landroid/support/v4/util/SparseArrayCompat;

    .line 148
    sget-object v0, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->D:Lcom/viber/voip/a/m;

    .line 154
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/bb;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/ui/bb;-><init>(Lcom/viber/voip/messages/conversation/ui/ba;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->G:Ljava/lang/Runnable;

    .line 811
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/bt;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/conversation/ui/bt;-><init>(Lcom/viber/voip/messages/conversation/ui/ba;Lcom/viber/voip/messages/conversation/ui/bb;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->H:Lcom/viber/voip/messages/conversation/ui/bt;

    .line 164
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    .line 165
    iput-object p3, p0, Lcom/viber/voip/messages/conversation/ui/ba;->l:Lcom/viber/voip/messages/conversation/ui/m;

    .line 166
    iput-object p2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->m:Lcom/viber/voip/messages/conversation/ui/bu;

    .line 167
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->F:Landroid/os/Handler;

    .line 168
    if-eqz p5, :cond_1

    const-string/jumbo v0, "share_uri"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :goto_0
    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    .line 169
    if-eqz p5, :cond_2

    const-string/jumbo v0, "extra_conversation_data"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;

    :goto_1
    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->y:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    .line 171
    const v0, 0x7f0702ee

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->a:Landroid/view/View;

    .line 172
    const v0, 0x7f0702eb

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->e:Landroid/view/View;

    .line 173
    const v0, 0x7f0702e9

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->c:Landroid/view/ViewGroup;

    .line 174
    const v0, 0x7f0702ea

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->d:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f0702e6

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->b:Landroid/widget/ImageView;

    .line 176
    const v0, 0x7f0701c3

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->f:Landroid/widget/ProgressBar;

    .line 177
    const v0, 0x7f0702ed

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/MessageComposerView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    .line 179
    const v0, 0x7f0702e7

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ConversationListView;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    .line 180
    new-instance v0, Lcom/viber/voip/z;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2}, Lcom/viber/voip/z;-><init>(Lcom/viber/voip/ConversationListView;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->i:Lcom/viber/voip/z;

    .line 181
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ConversationListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 182
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ConversationListView;->setDividerHeight(I)V

    .line 183
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    const v1, 0x7f020355

    invoke-virtual {v0, v1}, Lcom/viber/voip/ConversationListView;->setSelector(I)V

    .line 184
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0, v8}, Lcom/viber/voip/ConversationListView;->setEnablSmoothOverscroll(Z)V

    .line 185
    iget-object v7, p0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    new-instance v0, Lcom/viber/voip/ui/y;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v1}, Lcom/viber/voip/ConversationListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030113

    const v3, 0x7f07038d

    const v4, 0x7f07038f

    const v5, 0x7f0c0512

    const v6, 0x7f0c0513

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/ui/y;-><init>(Landroid/content/Context;IIIII)V

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->i:Lcom/viber/voip/z;

    invoke-virtual {v7, v0, v1}, Lcom/viber/voip/ConversationListView;->a(Lcom/viber/voip/ui/y;Lcom/viber/voip/ui/x;)V

    .line 188
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->e:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/bd;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/bd;-><init>(Lcom/viber/voip/messages/conversation/ui/ba;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    const v0, 0x7f0702ec

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->setExternalControls(Landroid/widget/TextView;)V

    .line 197
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p5, :cond_0

    .line 198
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    const-string/jumbo v1, "extra_draft"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->setDraft(Ljava/lang/String;)V

    .line 201
    :cond_0
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/b;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/be;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/be;-><init>(Lcom/viber/voip/messages/conversation/ui/ba;)V

    invoke-direct {v0, p4, v1}, Lcom/viber/voip/messages/conversation/ui/b;-><init>(Landroid/view/View;Lcom/viber/voip/messages/conversation/ui/f;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->g:Lcom/viber/voip/messages/conversation/ui/b;

    .line 214
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/bf;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/bf;-><init>(Lcom/viber/voip/messages/conversation/ui/ba;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/ConversationListView;->setOnRefreshListener(Lcom/viber/voip/ui/aj;)V

    .line 228
    const v0, 0x7f0702f6

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    .line 229
    new-instance v0, Lcom/viber/voip/messages/ui/w;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/ui/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->A:Lcom/viber/voip/messages/ui/w;

    .line 230
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->C:Landroid/support/v4/util/SparseArrayCompat;

    const v1, 0x7f0702d9

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->A:Lcom/viber/voip/messages/ui/w;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 231
    new-instance v0, Lcom/viber/voip/messages/ui/aj;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v5

    invoke-virtual {v5}, Lcom/viber/voip/stickers/r;->v()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/ui/aj;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/viber/voip/messages/ui/u;Lcom/viber/voip/messages/ui/p;I)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->I:Lcom/viber/voip/messages/ui/aj;

    .line 232
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->I:Lcom/viber/voip/messages/ui/aj;

    const v0, 0x7f0702db

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/aj;->a(Landroid/widget/EditText;)V

    .line 233
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->C:Landroid/support/v4/util/SparseArrayCompat;

    const v1, 0x7f0702da

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->I:Lcom/viber/voip/messages/ui/aj;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 234
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    new-instance v1, Lcom/viber/voip/messages/ui/bm;

    new-instance v2, Lcom/viber/voip/messages/ui/bh;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    invoke-direct {v2, v3}, Lcom/viber/voip/messages/ui/bh;-><init>(Landroid/view/ViewGroup;)V

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ba;->C:Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/messages/ui/bm;-><init>(Lcom/viber/voip/messages/ui/bi;Landroid/support/v4/util/SparseArrayCompat;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->setAdapter(Lcom/viber/voip/messages/ui/bi;)V

    .line 235
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/bh;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/bh;-><init>(Lcom/viber/voip/messages/conversation/ui/ba;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->setStateListener(Lcom/viber/voip/messages/ui/bj;)V

    .line 243
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/a;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/conversation/ui/a;-><init>(Lcom/viber/voip/messages/ui/ExpandablePanelLayout;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->z:Lcom/viber/voip/messages/conversation/ui/a;

    .line 244
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->z:Lcom/viber/voip/messages/conversation/ui/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->setOnButtonsListener(Lcom/viber/voip/messages/ui/cx;)V

    .line 246
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    const v1, 0x7f070201

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/bi;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/bi;-><init>(Lcom/viber/voip/messages/conversation/ui/ba;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 260
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/bj;

    invoke-direct {v0, p0, p6}, Lcom/viber/voip/messages/conversation/ui/bj;-><init>(Lcom/viber/voip/messages/conversation/ui/ba;Lcom/viber/voip/messages/ui/ad;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->E:Lcom/viber/voip/messages/ui/ad;

    .line 352
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->A:Lcom/viber/voip/messages/ui/w;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->E:Lcom/viber/voip/messages/ui/ad;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/w;->a(Lcom/viber/voip/messages/ui/ad;)V

    .line 354
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/br;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/br;-><init>(Lcom/viber/voip/messages/conversation/ui/ba;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->setHost(Lcom/viber/voip/messages/ui/cw;)V

    .line 366
    invoke-virtual {p0, v8}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Z)V

    .line 367
    return-void

    :cond_1
    move-object v0, v1

    .line 168
    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    .line 169
    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/ba;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/ba;)Lcom/viber/voip/messages/ui/aj;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->I:Lcom/viber/voip/messages/ui/aj;

    return-object v0
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 799
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/messages/conversation/ui/ba;->a(I[Ljava/lang/Object;)V

    .line 800
    return-void
.end method

.method private varargs a(I[Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 803
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 805
    if-eqz v1, :cond_0

    .line 806
    if-nez p2, :cond_1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 807
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02ee

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->H:Lcom/viber/voip/messages/conversation/ui/bt;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 809
    :cond_0
    return-void

    .line 806
    :cond_1
    invoke-virtual {v1, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri;Lcom/viber/voip/messages/conversation/ui/ConversationFragment;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 843
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g()Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v0

    .line 844
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;[Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 848
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.viber.voip.action.CONVERSATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 849
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 850
    const-string/jumbo v3, "extra_conversation_data"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 851
    const-string/jumbo v0, "open_camera"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 853
    const-string/jumbo v0, "open_on_canceled_action"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 854
    invoke-virtual {p1, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->startActivity(Landroid/content/Intent;)V

    .line 855
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/ba;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 6
    .parameter

    .prologue
    .line 370
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->B:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->B:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->B:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->B:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->q()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h()Landroid/os/IBinder;

    move-result-object v4

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/block/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/IBinder;Ljava/lang/Runnable;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    if-eqz p1, :cond_0

    .line 375
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const v4, 0x7f0c05a8

    .line 757
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 759
    if-eqz v0, :cond_0

    .line 760
    const-string/jumbo v1, "video"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 761
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 762
    invoke-direct {p0, v4}, Lcom/viber/voip/messages/conversation/ui/ba;->a(I)V

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 766
    invoke-static {v1}, Lcom/viber/voip/util/bj;->b(Ljava/lang/String;)J

    move-result-wide v2

    .line 767
    invoke-static {v1}, Lcom/viber/voip/util/bj;->d(Ljava/lang/String;)Z

    move-result v1

    .line 769
    if-nez v1, :cond_2

    .line 770
    invoke-direct {p0, v4}, Lcom/viber/voip/messages/conversation/ui/ba;->a(I)V

    goto :goto_0

    .line 771
    :cond_2
    const-wide/32 v4, 0x1800000

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 772
    const v0, 0x7f0c05a9

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide/16 v3, 0x18

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/conversation/ui/ba;->a(I[Ljava/lang/Object;)V

    goto :goto_0

    .line 774
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/messages/extras/image/m;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)J

    move-result-wide v0

    .line 776
    const-wide/32 v2, 0x2c308

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 777
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ba;->l()V

    goto :goto_0

    .line 779
    :cond_4
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ba;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 783
    :cond_5
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ba;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/ui/ba;)Lcom/viber/voip/messages/conversation/h;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->B:Lcom/viber/voip/messages/conversation/h;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    .line 831
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->B:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_1

    .line 832
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->B:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->b()I

    move-result v0

    .line 838
    :goto_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 839
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    const-string/jumbo v4, ""

    const/16 v5, 0x9

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/gn;->a(Landroid/support/v4/app/Fragment;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    .line 840
    return-void

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->y:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    if-eqz v0, :cond_2

    .line 834
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->y:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    iget v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    goto :goto_0

    .line 836
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 838
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lcom/viber/voip/messages/conversation/ui/ba;)Lcom/viber/voip/a/m;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->D:Lcom/viber/voip/a/m;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 866
    return-void
.end method

.method private c(Landroid/content/Intent;)Z
    .locals 6
    .parameter

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 693
    .line 695
    iput-wide v4, p0, Lcom/viber/voip/messages/conversation/ui/ba;->p:J

    .line 696
    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->q:Z

    .line 697
    iput v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->s:I

    .line 698
    iput v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->t:I

    .line 700
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "forward"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 701
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "default_message_id"

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->p:J

    .line 702
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "is_forward_only_locations"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->q:Z

    .line 703
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "forward_locations_lat"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->s:I

    .line 704
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "forward_locations_lng"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->t:I

    .line 707
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "forward"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "default_message_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move v0, v1

    .line 710
    :cond_0
    iget-boolean v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->r:Z

    if-nez v2, :cond_1

    .line 711
    const-string/jumbo v2, "share_images_uri"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->u:Ljava/util/ArrayList;

    .line 712
    const-string/jumbo v2, "share_uri"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->v:Ljava/lang/String;

    .line 713
    const-string/jumbo v2, "share_text"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->w:Ljava/lang/String;

    .line 714
    iput-boolean v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->r:Z

    .line 716
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->u:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->v:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->w:Ljava/lang/String;

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    .line 719
    :cond_3
    return v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/conversation/ui/ba;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/conversation/ui/ba;)Lcom/viber/voip/messages/ui/ad;
    .locals 1
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->E:Lcom/viber/voip/messages/ui/ad;

    return-object v0
.end method

.method private l()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 789
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 791
    if-eqz v0, :cond_0

    .line 792
    const v1, 0x7f0c05a7

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0xb4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 793
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0c05a6

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c02ee

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->H:Lcom/viber/voip/messages/conversation/ui/bt;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 796
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 381
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->l:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    const v2, 0x7f070201

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->b(I)Z

    move-result v1

    new-instance v2, Lcom/viber/voip/h/d;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ba;->l:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/ui/m;->b()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/viber/voip/h/d;-><init>(J)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/h/b;->a(ZLcom/viber/voip/h/d;Z)Lcom/viber/voip/h/b;

    .line 384
    :cond_0
    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityResult requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ba;->c(Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 569
    if-nez v0, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->c()V

    .line 573
    const/4 v1, -0x1

    if-ne p2, v1, :cond_6

    .line 574
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 604
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActivityResult image from camera uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " was handled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ba;->c(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g()Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v0

    if-nez v0, :cond_2

    .line 606
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->y:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)V

    .line 608
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/viber/voip/util/upload/n;->a(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Landroid/net/Uri;Lcom/viber/voip/messages/conversation/ui/ConversationFragment;Z)V

    .line 609
    iput-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    goto :goto_0

    .line 576
    :sswitch_1
    if-eqz p3, :cond_0

    .line 577
    const-string/jumbo v0, "extra_location_lat"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    .line 578
    const-string/jumbo v1, "extra_location_lon"

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    .line 579
    const-string/jumbo v2, "extra_location_text"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 580
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v3, v0, v1, v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(IILjava/lang/String;)V

    goto :goto_0

    .line 585
    :sswitch_2
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 586
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-static {v1}, Lcom/viber/voip/util/upload/n;->a(Landroid/net/Uri;)Landroid/net/Uri;

    .line 591
    :goto_1
    :sswitch_3
    if-eqz p3, :cond_0

    .line 592
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult video uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/conversation/ui/ba;->c(Ljava/lang/String;)V

    .line 595
    const-string/jumbo v1, "video"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-static {v2}, Lcom/viber/voip/util/bj;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 596
    const-string/jumbo v0, "video"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Ljava/lang/String;)V

    .line 600
    :goto_2
    iput-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    goto/16 :goto_0

    .line 588
    :cond_3
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    goto :goto_1

    .line 598
    :cond_4
    invoke-static {v0, v5}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 614
    :sswitch_4
    if-eqz p3, :cond_5

    const-string/jumbo v1, "data_container"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 615
    const-string/jumbo v0, "data_container"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    .line 616
    const/4 v1, 0x3

    const-string/jumbo v2, "Media"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendMediaMessage got mediaDataContainer : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 617
    if-eqz v0, :cond_0

    .line 618
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 619
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 623
    :cond_5
    invoke-static {v0, v5}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 627
    :sswitch_5
    invoke-static {}, Lcom/viber/voip/k/a;->a()Lcom/viber/voip/k/a;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/bc;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/bc;-><init>(Lcom/viber/voip/messages/conversation/ui/ba;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/viber/voip/k/a;->a(IILandroid/content/Intent;Lcom/viber/voip/k/h;)V

    goto/16 :goto_0

    .line 635
    :cond_6
    if-nez p2, :cond_0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityResult comes with code canceled mUserMediaUri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/conversation/ui/ba;->c(Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/w;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 638
    const-string/jumbo v1, "onActivityResult KILL temp file"

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/conversation/ui/ba;->c(Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 642
    :cond_7
    packed-switch p1, :pswitch_data_0

    .line 647
    iput-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    goto/16 :goto_0

    .line 644
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->E:Lcom/viber/voip/messages/ui/ad;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->d()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    goto/16 :goto_0

    .line 574
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_4
        0x5 -> :sswitch_3
        0x6 -> :sswitch_2
        0x9 -> :sswitch_4
        0x65 -> :sswitch_1
        0x2710 -> :sswitch_5
    .end sparse-switch

    .line 642
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 666
    const-string/jumbo v0, "open_camera"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/w;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    const-string/jumbo v0, "checkRetakePhoto KILL temp file"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ba;->c(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->E:Lcom/viber/voip/messages/ui/ad;

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->b()Landroid/net/Uri;

    .line 674
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "open_camera"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 676
    :cond_1
    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 859
    const-string/jumbo v0, "share_uri"

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 860
    const-string/jumbo v0, "extra_draft"

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->getMessageDraft()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string/jumbo v0, "extra_conversation_data"

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g()Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 862
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/h;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 514
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->B:Lcom/viber/voip/messages/conversation/h;

    .line 515
    if-eqz p1, :cond_4

    .line 516
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->n()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->setVisible(Z)V

    .line 517
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->g:Lcom/viber/voip/messages/conversation/ui/b;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->o()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/b;->a(Z)V

    .line 518
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 519
    sget-object v0, Lcom/viber/voip/a/a;->o:Lcom/viber/voip/a/m;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->D:Lcom/viber/voip/a/m;

    .line 520
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->D:Lcom/viber/voip/a/m;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/m;->b(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->z:Lcom/viber/voip/messages/conversation/ui/a;

    sget-object v1, Lcom/viber/voip/a/a;->o:Lcom/viber/voip/a/m;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/a;->a(Lcom/viber/voip/a/m;)V

    .line 527
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {p1}, Lcom/viber/voip/util/gk;->b(Lcom/viber/voip/messages/conversation/h;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b(Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/conversation/h;)V

    .line 530
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->A:Lcom/viber/voip/messages/ui/w;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->A:Lcom/viber/voip/messages/ui/w;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->B:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->t()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/w;->a(Z)V

    .line 536
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 516
    goto :goto_0

    :cond_2
    move v1, v2

    .line 517
    goto :goto_1

    .line 523
    :cond_3
    sget-object v0, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->D:Lcom/viber/voip/a/m;

    .line 524
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->D:Lcom/viber/voip/a/m;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/m;->b(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->z:Lcom/viber/voip/messages/conversation/ui/a;

    sget-object v1, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/a;->a(Lcom/viber/voip/a/m;)V

    goto :goto_2

    .line 534
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->b()V

    goto :goto_3
.end method

.method public a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 481
    if-eqz p1, :cond_0

    .line 482
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {p1}, Lcom/viber/voip/util/gk;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Ljava/lang/String;)V

    .line 485
    instance-of v0, p1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->setVisible(Z)V

    move-object v0, p1

    .line 487
    check-cast v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;

    iget v0, v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->a:I

    .line 488
    check-cast p1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;

    iget-object v3, p1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->b:Landroid/net/Uri;

    .line 489
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v4

    .line 490
    iget-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    const v6, 0x7f0c0672

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {v4, v6, v1}, Lcom/viber/voip/ViberApplication;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Ljava/lang/String;)V

    .line 492
    if-eqz v3, :cond_0

    .line 493
    invoke-static {v4}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    invoke-static {v4}, Lcom/viber/voip/util/b/x;->b(Landroid/content/Context;)Lcom/viber/voip/util/b/x;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/messages/conversation/ui/bs;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/conversation/ui/bs;-><init>(Lcom/viber/voip/messages/conversation/ui/ba;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Lcom/viber/voip/util/b/x;Lcom/viber/voip/util/b/al;)V

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    iget-boolean v0, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->p:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->q:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->setVisible(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public a(Ljava/lang/CharSequence;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 654
    if-eqz p2, :cond_1

    .line 655
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ConversationListView;->a(Z)Z

    .line 656
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ba;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->c:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->d:Landroid/widget/TextView;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getBiDiAwareFormatter()Lcom/viber/voip/util/l;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/viber/voip/util/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->c:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 403
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->F:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->G:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 404
    if-eqz p1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->F:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->G:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 433
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 434
    :goto_0
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 436
    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/viber/voip/messages/extras/image/g;->a(Landroid/app/Activity;)I

    .line 440
    :goto_1
    if-eqz v0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 441
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 446
    :goto_2
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ba;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    if-nez v0, :cond_7

    .line 448
    :cond_1
    invoke-static {}, Lcom/viber/voip/backgrounds/a;->a()Lcom/viber/voip/backgrounds/a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/viber/voip/backgrounds/a;->a(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 450
    if-eqz p1, :cond_5

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 452
    new-instance v5, Lcom/viber/voip/util/p;

    invoke-direct {v5, v4}, Lcom/viber/voip/util/p;-><init>(Landroid/graphics/Bitmap;)V

    .line 453
    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 454
    iget-object v6, p0, Lcom/viber/voip/messages/conversation/ui/ba;->b:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 455
    iget-object v6, p0, Lcom/viber/voip/messages/conversation/ui/ba;->b:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 465
    :goto_3
    if-eqz v4, :cond_6

    .line 466
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ba;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->b:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 475
    :goto_4
    return v1

    :cond_2
    move v0, v2

    .line 433
    goto :goto_0

    .line 436
    :cond_3
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    goto :goto_1

    .line 442
    :cond_4
    if-nez v0, :cond_8

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 443
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 459
    :cond_5
    iget-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ba;->b:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 460
    iget-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ba;->b:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_3

    .line 469
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    :cond_7
    move v1, v2

    .line 475
    goto :goto_4

    :cond_8
    move-object v0, v3

    goto :goto_2
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 387
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->l:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/h/d;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->l:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ui/m;->b()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/h/d;-><init>(J)V

    const/4 v2, 0x1

    invoke-virtual {v0, v4, v1, v2}, Lcom/viber/voip/h/b;->a(ZLcom/viber/voip/h/d;Z)Lcom/viber/voip/h/b;

    .line 391
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/util/b/w;->a(Z)V

    .line 392
    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 679
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ba;->c(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 683
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "multiply_send"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 684
    const-string/jumbo v0, "multiply_send"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 685
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "multiply_send"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 686
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 688
    :cond_1
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 539
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->g:Lcom/viber/voip/messages/conversation/ui/b;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/b;->b(Z)V

    .line 540
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->e()V

    .line 396
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->p()V

    .line 397
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->I:Lcom/viber/voip/messages/ui/aj;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->I:Lcom/viber/voip/messages/ui/aj;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/aj;->e()V

    .line 400
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 3

    .prologue
    .line 417
    :try_start_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 418
    const-string/jumbo v1, "bg/t10000138.jpg"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 420
    new-instance v1, Lcom/viber/voip/util/p;

    invoke-direct {v1, v0}, Lcom/viber/voip/util/p;-><init>(Landroid/graphics/Bitmap;)V

    .line 421
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 422
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->b:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 423
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->b:Landroid/widget/ImageView;

    const-string/jumbo v1, "bg/t10000138.jpg"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    const-string/jumbo v0, "Error loading system background from asset: bg/t10000138.jpg"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ba;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public f()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 544
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    return-object v0
.end method

.method public g()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 557
    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 561
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 563
    :cond_0
    return-void
.end method

.method public i()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 723
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 754
    :goto_0
    return-void

    .line 724
    :cond_0
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->p:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->b(J)V

    .line 727
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->p:J

    .line 729
    :cond_1
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->q:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->s:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->t:I

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    iget v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->s:I

    iget v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->t:I

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(II)V

    .line 732
    iput-boolean v4, p0, Lcom/viber/voip/messages/conversation/ui/ba;->q:Z

    .line 733
    iput v4, p0, Lcom/viber/voip/messages/conversation/ui/ba;->s:I

    .line 734
    iput v4, p0, Lcom/viber/voip/messages/conversation/ui/ba;->t:I

    .line 735
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "is_forward_only_locations"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "forward_locations_lat"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "forward_locations_lng"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 739
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 740
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g()Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ba;->u:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/viber/voip/gallery/preview/PhotoPreviewActivity;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->startActivity(Landroid/content/Intent;)V

    .line 741
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "share_images_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 742
    iput-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ba;->u:Ljava/util/ArrayList;

    .line 753
    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/viber/voip/messages/conversation/ui/ba;->r:Z

    goto/16 :goto_0

    .line 743
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->v:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 744
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    .line 745
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->x:Landroid/net/Uri;

    invoke-static {v0}, Lcom/viber/voip/util/bj;->b(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Ljava/lang/String;)V

    .line 746
    iput-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ba;->v:Ljava/lang/String;

    .line 747
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "share_uri"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_1

    .line 748
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->w:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 749
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ba;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Ljava/lang/String;)V

    .line 750
    iput-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ba;->w:Ljava/lang/String;

    .line 751
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->k:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "share_text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public j()Lcom/viber/voip/messages/ui/ad;
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->E:Lcom/viber/voip/messages/ui/ad;

    return-object v0
.end method

.method public k()Lcom/viber/voip/messages/ui/aj;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ba;->I:Lcom/viber/voip/messages/ui/aj;

    return-object v0
.end method
