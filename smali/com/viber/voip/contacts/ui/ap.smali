.class public Lcom/viber/voip/contacts/ui/ap;
.super Lcom/viber/voip/ui/an;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/viber/provider/e;
.implements Lcom/viber/voip/contacts/c/d/au;
.implements Lcom/viber/voip/contacts/ui/co;
.implements Lcom/viber/voip/d;
.implements Lcom/viber/voip/ui/ab;


# static fields
.field private static final h:Ljava/lang/String;

.field private static final i:I

.field private static j:Lcom/viber/voip/contacts/ui/bc;


# instance fields
.field protected a:Lcom/viber/voip/contacts/ui/cb;

.field protected b:Lcom/viber/voip/contacts/b;

.field protected c:Lcom/viber/voip/ui/aa;

.field protected d:I

.field protected e:Lcom/viber/voip/contacts/ui/bp;

.field protected f:Lcom/viber/voip/contacts/ui/be;

.field protected g:Lcom/actionbarsherlock/view/MenuItem;

.field private k:Landroid/os/Handler;

.field private l:Lcom/viber/voip/contacts/c/d/b;

.field private m:Lcom/viber/voip/contacts/a/m;

.field private n:Lcom/viber/voip/gallery/animation/SwipeableHListView;

.field private o:Lcom/viber/voip/contacts/ui/bd;

.field private p:Ljava/lang/String;

.field private q:Lcom/viber/voip/ui/ContactsListView;

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Ljava/lang/String;

.field private final v:Ljava/lang/Runnable;

.field private w:Lcom/viber/voip/contacts/ui/bc;

.field private x:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/viber/voip/contacts/ui/ap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/ui/ap;->h:Ljava/lang/String;

    .line 90
    const/high16 v0, 0x4228

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    sput v0, Lcom/viber/voip/contacts/ui/ap;->i:I

    .line 97
    new-instance v0, Lcom/viber/voip/contacts/ui/aq;

    invoke-direct {v0}, Lcom/viber/voip/contacts/ui/aq;-><init>()V

    sput-object v0, Lcom/viber/voip/contacts/ui/ap;->j:Lcom/viber/voip/contacts/ui/bc;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/viber/voip/ui/an;-><init>()V

    .line 110
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->k:Landroid/os/Handler;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/contacts/ui/ap;->d:I

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/ap;->r:Z

    .line 130
    iput-boolean v1, p0, Lcom/viber/voip/contacts/ui/ap;->s:Z

    .line 131
    iput v1, p0, Lcom/viber/voip/contacts/ui/ap;->t:I

    .line 133
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->u:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/viber/voip/contacts/ui/at;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/ui/at;-><init>(Lcom/viber/voip/contacts/ui/ap;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->v:Ljava/lang/Runnable;

    .line 142
    sget-object v0, Lcom/viber/voip/contacts/ui/ap;->j:Lcom/viber/voip/contacts/ui/bc;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->w:Lcom/viber/voip/contacts/ui/bc;

    .line 622
    new-instance v0, Lcom/viber/voip/contacts/ui/ba;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/ui/ba;-><init>(Lcom/viber/voip/contacts/ui/ap;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->x:Landroid/view/View$OnClickListener;

    .line 769
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ap;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput p1, p0, Lcom/viber/voip/contacts/ui/ap;->t:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ap;Lcom/viber/voip/contacts/b/e;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ap;->b(Lcom/viber/voip/contacts/b/e;)I

    move-result v0

    return v0
.end method

.method private a(Lcom/viber/voip/contacts/b/e;)Landroid/util/Pair;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/contacts/b/e;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/contacts/b/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/cb;->g()Ljava/util/Set;

    move-result-object v1

    .line 747
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->h()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/i;

    .line 748
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 749
    new-instance v1, Landroid/util/Pair;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 752
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ap;)Lcom/viber/voip/contacts/ui/bd;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->o:Lcom/viber/voip/contacts/ui/bd;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ap;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ap;->u:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ap;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ap;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 564
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->i()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/contacts/ui/cb;->a(Ljava/util/Map;Z)V

    .line 565
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ap;->c(Z)V

    .line 566
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ap;->p()V

    .line 567
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ap;->r()V

    .line 568
    return-void
.end method

.method private b(Lcom/viber/voip/contacts/b/e;)I
    .locals 3
    .parameter

    .prologue
    .line 756
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->u()Lcom/viber/voip/contacts/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/contacts/f;->getCount()I

    move-result v1

    .line 757
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 758
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/b;->u()Lcom/viber/voip/contacts/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/viber/voip/contacts/f;->b(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 762
    :goto_1
    return v0

    .line 757
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 762
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/ui/ap;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->u:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 611
    if-eqz p1, :cond_0

    .line 612
    const-string/jumbo v0, "[-.]*"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 615
    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->p:Ljava/lang/String;

    .line 620
    :goto_0
    return-void

    .line 619
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/contacts/ui/ap;)I
    .locals 1
    .parameter

    .prologue
    .line 76
    iget v0, p0, Lcom/viber/voip/contacts/ui/ap;->t:I

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 767
    return-void
.end method

.method private c(Z)V
    .locals 5
    .parameter

    .prologue
    .line 571
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->f:Lcom/viber/voip/contacts/ui/be;

    if-eqz v0, :cond_0

    .line 572
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ap;->r:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/contacts/ui/cb;->b(Z)I

    move-result v1

    .line 573
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ap;->r:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/cb;->j()I

    move-result v0

    .line 574
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/contacts/ui/ap;->a(II)V

    .line 575
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ap;->f:Lcom/viber/voip/contacts/ui/be;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    invoke-virtual {v4}, Lcom/viber/voip/ui/aa;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/viber/voip/contacts/ui/be;->a(Landroid/content/Context;Ljava/lang/String;II)V

    .line 578
    :cond_0
    if-eqz p1, :cond_1

    .line 579
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->supportInvalidateOptionsMenu()V

    .line 581
    :cond_1
    return-void

    .line 572
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 573
    :cond_3
    invoke-static {}, Lcom/viber/voip/contacts/ui/cb;->b()I

    move-result v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/viber/voip/contacts/ui/ap;)Lcom/viber/voip/contacts/a/m;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->m:Lcom/viber/voip/contacts/a/m;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/contacts/ui/ap;)Lcom/viber/voip/gallery/animation/SwipeableHListView;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->n:Lcom/viber/voip/gallery/animation/SwipeableHListView;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/contacts/ui/ap;)Z
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ap;->r:Z

    return v0
.end method

.method static synthetic l()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/viber/voip/contacts/ui/ap;->i:I

    return v0
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 276
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->f:Lcom/viber/voip/contacts/ui/be;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/ui/be;->a(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 278
    invoke-direct {p0, v1}, Lcom/viber/voip/contacts/ui/ap;->c(Z)V

    .line 279
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->b()J

    move-result-wide v0

    .line 280
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 281
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/contacts/ui/ax;

    invoke-direct {v3, p0}, Lcom/viber/voip/contacts/ui/ax;-><init>(Lcom/viber/voip/contacts/ui/ap;)V

    invoke-interface {v2, v0, v1, v3}, Lcom/viber/voip/messages/controller/x;->a(JLcom/viber/voip/messages/controller/ag;)V

    .line 288
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "already_added_participants"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "already_added_participants"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 290
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 291
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 294
    :cond_1
    invoke-direct {p0, v1}, Lcom/viber/voip/contacts/ui/ap;->a(Ljava/util/Map;)V

    .line 299
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ap;->v:Ljava/lang/Runnable;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    return-void

    .line 297
    :cond_3
    invoke-direct {p0, v1}, Lcom/viber/voip/contacts/ui/ap;->c(Z)V

    goto :goto_1
.end method

.method private n()V
    .locals 1

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/a;

    .line 495
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/a/a/a/a;->notifyDataSetChanged()V

    .line 496
    :cond_0
    return-void
.end method

.method private o()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 500
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/HomeActivity;

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/HomeActivity;

    .line 502
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->b()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 504
    :goto_0
    return v0

    .line 502
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 504
    goto :goto_0
.end method

.method private p()V
    .locals 4

    .prologue
    .line 584
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->m:Lcom/viber/voip/contacts/a/m;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->m:Lcom/viber/voip/contacts/a/m;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/ui/cb;->g()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/ui/cb;->h()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {v3}, Lcom/viber/voip/contacts/ui/cb;->d()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/contacts/a/m;->a(Ljava/util/Set;Ljava/util/Set;Z)V

    .line 587
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ap;->n()V

    .line 589
    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 592
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->o:Lcom/viber/voip/contacts/ui/bd;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/bd;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->n:Lcom/viber/voip/gallery/animation/SwipeableHListView;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 593
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->n:Lcom/viber/voip/gallery/animation/SwipeableHListView;

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->setVisibility(I)V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->o:Lcom/viber/voip/contacts/ui/bd;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/bd;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->n:Lcom/viber/voip/gallery/animation/SwipeableHListView;

    invoke-virtual {v0}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->n:Lcom/viber/voip/gallery/animation/SwipeableHListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private r()V
    .locals 5

    .prologue
    .line 724
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/cb;->g()Ljava/util/Set;

    move-result-object v1

    .line 725
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ap;->s:Z

    if-eqz v0, :cond_2

    .line 726
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->u()Lcom/viber/voip/contacts/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/contacts/f;->getCount()I

    move-result v2

    .line 727
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->o:Lcom/viber/voip/contacts/ui/bd;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/bd;->a()V

    .line 728
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    .line 729
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-virtual {v3}, Lcom/viber/voip/contacts/b;->u()Lcom/viber/voip/contacts/f;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/f;->b(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v3

    .line 730
    invoke-direct {p0, v3}, Lcom/viber/voip/contacts/ui/ap;->a(Lcom/viber/voip/contacts/b/e;)Landroid/util/Pair;

    move-result-object v3

    .line 731
    if-eqz v3, :cond_0

    .line 732
    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ap;->o:Lcom/viber/voip/contacts/ui/bd;

    invoke-virtual {v4, v3}, Lcom/viber/voip/contacts/ui/bd;->a(Landroid/util/Pair;)V

    .line 733
    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 734
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ap;->q()V

    .line 728
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 738
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 739
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ap;->o:Lcom/viber/voip/contacts/ui/bd;

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/viber/voip/contacts/ui/bd;->a(Landroid/util/Pair;)V

    goto :goto_1

    .line 743
    :cond_2
    return-void
.end method


# virtual methods
.method protected a()J
    .locals 3

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "participants_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 644
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->g:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    .line 645
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ap;->g:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz p1, :cond_1

    if-gt p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 647
    :cond_0
    return-void

    .line 645
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSyncStateChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ap;->c(Ljava/lang/String;)V

    .line 408
    iget v0, p0, Lcom/viber/voip/contacts/ui/ap;->d:I

    if-eq v0, p1, :cond_1

    .line 410
    iput p1, p0, Lcom/viber/voip/contacts/ui/ap;->d:I

    .line 411
    if-nez p2, :cond_0

    .line 412
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->g()V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->f:Lcom/viber/voip/contacts/ui/be;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/contacts/ui/ap;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/ui/be;->a(Landroid/app/Activity;I)V

    .line 415
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "preff_dialog_failed_shown"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->isOnForeground()Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "108"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 420
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "preff_dialog_failed_shown"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 421
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0331

    const v2, 0x7f0c0332

    new-instance v3, Lcom/viber/voip/contacts/ui/ay;

    invoke-direct {v3, p0}, Lcom/viber/voip/contacts/ui/ay;-><init>(Lcom/viber/voip/contacts/ui/ap;)V

    new-instance v4, Lcom/viber/voip/contacts/ui/az;

    invoke-direct {v4, p0}, Lcom/viber/voip/contacts/ui/az;-><init>(Lcom/viber/voip/contacts/ui/ap;)V

    const v5, 0x7f0c0334

    const v6, 0x7f0c0333

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;II)V

    .line 442
    :cond_1
    return-void
.end method

.method public a(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 475
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 446
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    if-ne p1, v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ap;->f:Lcom/viber/voip/contacts/ui/be;

    if-nez v1, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/ap;->s:Z

    .line 452
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->g()V

    .line 453
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->f()V

    .line 454
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ap;->p:Ljava/lang/String;

    .line 456
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 457
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-virtual {v3}, Lcom/viber/voip/contacts/b;->u()Lcom/viber/voip/contacts/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/viber/voip/contacts/f;->getCount()I

    move-result v3

    .line 458
    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ap;->f:Lcom/viber/voip/contacts/ui/be;

    if-nez v3, :cond_2

    iget-object v5, p0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {v5, v1}, Lcom/viber/voip/contacts/ui/cb;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {v4, v0, v1}, Lcom/viber/voip/contacts/ui/be;->a(ZLjava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->f:Lcom/viber/voip/contacts/ui/be;

    iget-object v1, v0, Lcom/viber/voip/contacts/ui/be;->h:Landroid/widget/RelativeLayout;

    if-nez v3, :cond_3

    const v0, 0x7f0900a2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 458
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 460
    :cond_3
    const v0, 0x7f0200c5

    goto :goto_2
.end method

.method public a(ZLcom/viber/voip/contacts/b/e;Ljava/lang/String;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onParticipantSelected isSelected = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", selectedNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ap;->c(Ljava/lang/String;)V

    .line 538
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 539
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/viber/voip/contacts/ui/ap;->c(Z)V

    .line 540
    if-eqz p1, :cond_2

    .line 541
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    invoke-virtual {v1}, Lcom/viber/voip/ui/aa;->b()V

    .line 542
    if-eqz p2, :cond_1

    .line 543
    const-string/jumbo v1, ""

    .line 544
    if-eqz p4, :cond_0

    .line 545
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {p2}, Lcom/viber/voip/contacts/b/e;->p()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2}, Lcom/viber/voip/contacts/b/e;->q()Lcom/viber/voip/contacts/b/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/viber/voip/contacts/b/f;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/viber/voip/contacts/ui/ai;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 547
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ap;->p()V

    .line 551
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ap;->o:Lcom/viber/voip/contacts/ui/bd;

    invoke-virtual {v1, v0}, Lcom/viber/voip/contacts/ui/bd;->a(Landroid/util/Pair;)V

    .line 556
    :goto_0
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ap;->q()V

    .line 557
    return-void

    .line 553
    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ap;->p()V

    .line 554
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ap;->o:Lcom/viber/voip/contacts/ui/bd;

    invoke-virtual {v1, v0}, Lcom/viber/voip/contacts/ui/bd;->b(Landroid/util/Pair;)Landroid/util/Pair;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSearchQuery query = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " selectedNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->u:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " isActiveFragment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ap;->o()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ap;->c(Ljava/lang/String;)V

    .line 602
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ap;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->u:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 607
    :goto_1
    return v0

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->u:Ljava/lang/String;

    goto :goto_0

    .line 603
    :cond_2
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->u:Ljava/lang/String;

    .line 604
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ap;->b(Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-static {p1}, Lcom/viber/voip/util/hd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/contacts/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->f:Lcom/viber/voip/contacts/ui/be;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/ui/cb;->i()I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/viber/voip/contacts/ui/be;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 607
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public a(Z)Z
    .locals 1
    .parameter

    .prologue
    .line 524
    const/4 v0, 0x1

    return v0
.end method

.method protected b()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 307
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "thread_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method protected b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 529
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 530
    invoke-static {v0, p1}, Lcom/viber/voip/util/gl;->a(Landroid/widget/ListView;Z)V

    .line 532
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 533
    return-void
.end method

.method protected c()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 311
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "extra_group_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method protected d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_group_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 394
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 395
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/contacts/ui/ap;->d:I

    .line 396
    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/ui/ap;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 397
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->m()V

    .line 399
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->f()V

    .line 400
    iput-object v1, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    .line 403
    :cond_0
    return-void
.end method

.method protected f()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 470
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->f:Lcom/viber/voip/contacts/ui/be;

    const/4 v1, 0x3

    iget v2, p0, Lcom/viber/voip/contacts/ui/ap;->d:I

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    invoke-virtual {v4}, Lcom/viber/voip/ui/aa;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->h()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    :goto_0
    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/be;->a(IIZZZ)V

    .line 471
    return-void

    :cond_0
    move v4, v5

    .line 470
    goto :goto_0
.end method

.method protected g()V
    .locals 5

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 480
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Lcom/a/a/a/a;

    invoke-direct {v0}, Lcom/a/a/a/a;-><init>()V

    .line 482
    new-instance v1, Lcom/viber/voip/contacts/a/m;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-virtual {v3}, Lcom/viber/voip/contacts/b;->u()Lcom/viber/voip/contacts/f;

    move-result-object v3

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->i()Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/viber/voip/contacts/a/m;-><init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;Z)V

    iput-object v1, p0, Lcom/viber/voip/contacts/ui/ap;->m:Lcom/viber/voip/contacts/a/m;

    .line 483
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ap;->m:Lcom/viber/voip/contacts/a/m;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 484
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ap;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 485
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ap;->p()V

    .line 486
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ap;->r()V

    .line 491
    :cond_0
    :goto_0
    return-void

    .line 489
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ap;->n()V

    goto :goto_0
.end method

.method protected h()Z
    .locals 1

    .prologue
    .line 509
    const/4 v0, 0x1

    return v0
.end method

.method protected i()Z
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method protected j()Lcom/viber/voip/contacts/ui/cb;
    .locals 2

    .prologue
    .line 560
    new-instance v0, Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/contacts/ui/cb;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/viber/voip/contacts/ui/co;)V

    return-object v0
.end method

.method protected k()V
    .locals 4

    .prologue
    .line 630
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->e:Lcom/viber/voip/contacts/ui/bp;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/ui/bp;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    invoke-virtual {v0}, Lcom/viber/voip/ui/aa;->g()Z

    .line 632
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->k:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/contacts/ui/bb;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/ui/bb;-><init>(Lcom/viber/voip/contacts/ui/ap;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 641
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 361
    invoke-super {p0, p1}, Lcom/viber/voip/ui/an;->onActivityCreated(Landroid/os/Bundle;)V

    .line 363
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/viber/voip/contacts/g;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ap;->l:Lcom/viber/voip/contacts/c/d/b;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/viber/voip/contacts/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;)V

    :goto_0
    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    .line 365
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->n()V

    .line 366
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0, v4}, Lcom/viber/voip/contacts/b;->f(I)V

    .line 368
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 369
    invoke-virtual {p0, v4}, Lcom/viber/voip/contacts/ui/ap;->b(Z)V

    .line 370
    return-void

    .line 363
    :cond_0
    new-instance v0, Lcom/viber/voip/contacts/b;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ap;->l:Lcom/viber/voip/contacts/c/d/b;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/viber/voip/contacts/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;)V

    goto :goto_0
.end method

.method public onActivitySearchRequested()Z
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    invoke-virtual {v0}, Lcom/viber/voip/ui/aa;->d()V

    .line 519
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 146
    invoke-super {p0, p1}, Lcom/viber/voip/ui/an;->onAttach(Landroid/app/Activity;)V

    .line 147
    instance-of v0, p1, Lcom/viber/voip/contacts/ui/bc;

    if-nez v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity must implement fragment\'s callbacks."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_0
    check-cast p1, Lcom/viber/voip/contacts/ui/bc;

    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ap;->w:Lcom/viber/voip/contacts/ui/bc;

    .line 151
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    .line 685
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->f:Lcom/viber/voip/contacts/ui/be;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/be;->e:Landroid/widget/LinearLayout;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->f:Lcom/viber/voip/contacts/ui/be;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/be;->c:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->f:Lcom/viber/voip/contacts/ui/be;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/be;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->f:Lcom/viber/voip/contacts/ui/be;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/be;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 687
    new-instance v1, Lcom/viber/voip/contacts/ui/as;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/contacts/ui/as;-><init>(Lcom/viber/voip/contacts/ui/ap;Ljava/lang/String;)V

    .line 693
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, ""

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v4, v1}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 710
    :goto_0
    return-void

    .line 695
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 700
    :sswitch_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->e:Lcom/viber/voip/contacts/ui/bp;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/bp;->b()V

    goto :goto_0

    .line 697
    :sswitch_1
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gu;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 703
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.INVITE_TO_VIBER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ap;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 706
    :sswitch_3
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->e:Lcom/viber/voip/contacts/ui/bp;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/bp;->b()V

    goto :goto_0

    .line 695
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0701e4 -> :sswitch_0
        0x7f0701eb -> :sswitch_1
        0x7f0701ef -> :sswitch_2
        0x7f0701fa -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 352
    invoke-super {p0, p1}, Lcom/viber/voip/ui/an;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 353
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getView()Landroid/view/View;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 357
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/viber/voip/ui/an;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const-string/jumbo v0, "onCreate"

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ap;->c(Ljava/lang/String;)V

    .line 158
    new-instance v0, Lcom/viber/voip/contacts/ui/bp;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/contacts/ui/bp;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->e:Lcom/viber/voip/contacts/ui/bp;

    .line 160
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->j()Lcom/viber/voip/contacts/ui/cb;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    .line 161
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->l:Lcom/viber/voip/contacts/c/d/b;

    .line 163
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ap;->setHasOptionsMenu(Z)V

    .line 164
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 374
    const v0, 0x7f100004

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 375
    const v0, 0x7f070450

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->g:Lcom/actionbarsherlock/view/MenuItem;

    .line 376
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->g:Lcom/actionbarsherlock/view/MenuItem;

    const v1, 0x7f02006c

    const v2, 0x7f0c0537

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ap;->x:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/view/MenuItem;IILandroid/view/View$OnClickListener;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    .line 378
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 176
    const v0, 0x7f030018

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 178
    const v0, 0x7f0701de

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 180
    const v0, 0x102000a

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/ContactsListView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->q:Lcom/viber/voip/ui/ContactsListView;

    .line 181
    new-instance v0, Lcom/viber/voip/contacts/ui/be;

    invoke-direct {v0, v3}, Lcom/viber/voip/contacts/ui/be;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->f:Lcom/viber/voip/contacts/ui/be;

    .line 182
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->f:Lcom/viber/voip/contacts/ui/be;

    invoke-virtual {v0, v3, p0}, Lcom/viber/voip/contacts/ui/be;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    .line 183
    new-instance v0, Lcom/viber/voip/contacts/ui/bw;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4, p0, v3}, Lcom/viber/voip/contacts/ui/bw;-><init>(Landroid/content/Context;Lcom/viber/voip/ui/ab;Landroid/view/View;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    .line 185
    const v0, 0x7f070340

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/gallery/animation/SwipeableHListView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->n:Lcom/viber/voip/gallery/animation/SwipeableHListView;

    .line 186
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->a()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v0, v4, v6

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "already_added_participants"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "already_added_participants"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 189
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "already_added_participants"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/ap;->r:Z

    .line 190
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->n:Lcom/viber/voip/gallery/animation/SwipeableHListView;

    invoke-virtual {v0, v2}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->setVisibility(I)V

    .line 193
    :cond_2
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ap;->m()V

    .line 194
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->q:Lcom/viber/voip/ui/ContactsListView;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ContactsListView;->setupViews(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0111

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 197
    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 198
    new-instance v5, Lit/sephiroth/android/library/widget/i;

    sget v6, Lcom/viber/voip/contacts/ui/ap;->i:I

    invoke-direct {v5, v0, v6}, Lit/sephiroth/android/library/widget/i;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 200
    new-instance v6, Lit/sephiroth/android/library/widget/i;

    sget v7, Lcom/viber/voip/contacts/ui/ap;->i:I

    invoke-direct {v6, v0, v7}, Lit/sephiroth/android/library/widget/i;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->n:Lcom/viber/voip/gallery/animation/SwipeableHListView;

    invoke-virtual {v0, v4}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->f(Landroid/view/View;)V

    .line 202
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->n:Lcom/viber/voip/gallery/animation/SwipeableHListView;

    invoke-virtual {v0, v5}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->g(Landroid/view/View;)V

    .line 203
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->n:Lcom/viber/voip/gallery/animation/SwipeableHListView;

    new-instance v4, Lcom/viber/voip/contacts/ui/au;

    invoke-direct {v4, p0}, Lcom/viber/voip/contacts/ui/au;-><init>(Lcom/viber/voip/contacts/ui/ap;)V

    invoke-virtual {v0, v4}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->setViewClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->n:Lcom/viber/voip/gallery/animation/SwipeableHListView;

    invoke-virtual {v0, v2}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->setFocusable(Z)V

    .line 253
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->n:Lcom/viber/voip/gallery/animation/SwipeableHListView;

    invoke-virtual {v0, v2}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->setFocusableInTouchMode(Z)V

    .line 254
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->n:Lcom/viber/voip/gallery/animation/SwipeableHListView;

    new-instance v2, Lcom/viber/voip/contacts/ui/aw;

    invoke-direct {v2, p0}, Lcom/viber/voip/contacts/ui/aw;-><init>(Lcom/viber/voip/contacts/ui/ap;)V

    invoke-virtual {v0, v2}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->setViewRemoveListener(Lcom/viber/voip/gallery/animation/b;)V

    .line 268
    new-instance v0, Lcom/viber/voip/contacts/ui/bd;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/contacts/ui/bd;-><init>(Lcom/viber/voip/contacts/ui/ap;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->o:Lcom/viber/voip/contacts/ui/bd;

    .line 269
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->n:Lcom/viber/voip/gallery/animation/SwipeableHListView;

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ap;->o:Lcom/viber/voip/contacts/ui/bd;

    invoke-virtual {v0, v2}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 270
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->n:Lcom/viber/voip/gallery/animation/SwipeableHListView;

    invoke-virtual {v0, v1}, Lcom/viber/voip/gallery/animation/SwipeableHListView;->setTranscriptMode(I)V

    .line 272
    return-object v3

    :cond_3
    move v0, v2

    .line 189
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 334
    invoke-super {p0}, Lcom/viber/voip/ui/an;->onDestroy()V

    .line 335
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->m()V

    .line 336
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->f()V

    .line 337
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->a:Lcom/viber/voip/contacts/ui/cb;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/cb;->c()V

    .line 338
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 387
    invoke-super {p0}, Lcom/viber/voip/ui/an;->onDetach()V

    .line 388
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    invoke-virtual {v0}, Lcom/viber/voip/ui/aa;->g()Z

    .line 389
    sget-object v0, Lcom/viber/voip/contacts/ui/ap;->j:Lcom/viber/voip/contacts/ui/bc;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->w:Lcom/viber/voip/contacts/ui/bc;

    .line 390
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->l()V

    .line 391
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 652
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    invoke-virtual {v1}, Lcom/viber/voip/a/l;->e()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 654
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/ui/ak;

    .line 655
    if-nez v0, :cond_1

    .line 681
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ak;->a()Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 659
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/e;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 660
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ap;->e:Lcom/viber/voip/contacts/ui/bp;

    invoke-virtual {v1, v5}, Lcom/viber/voip/contacts/ui/bp;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 661
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/viber/voip/contacts/a/l;

    if-eqz v1, :cond_0

    .line 663
    new-instance v1, Lcom/viber/voip/contacts/ui/ar;

    invoke-direct {v1, p0, p2, v0}, Lcom/viber/voip/contacts/ui/ar;-><init>(Lcom/viber/voip/contacts/ui/ap;Landroid/view/View;Lcom/viber/voip/contacts/b/e;)V

    .line 679
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ap;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/e;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0, v5, v1}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 327
    invoke-super {p0}, Lcom/viber/voip/ui/an;->onPause()V

    .line 328
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ap;->v:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 329
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->l:Lcom/viber/voip/contacts/c/d/b;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->d()Lcom/viber/voip/contacts/c/d/at;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/d/at;->b(Lcom/viber/voip/contacts/c/d/au;)V

    .line 330
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 1
    .parameter

    .prologue
    .line 382
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ap;->c(Z)V

    .line 383
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 320
    invoke-super {p0}, Lcom/viber/voip/ui/an;->onResume()V

    .line 321
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ap;->setHasOptionsMenu(Z)V

    .line 322
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->l:Lcom/viber/voip/contacts/c/d/b;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->d()Lcom/viber/voip/contacts/c/d/at;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/d/at;->a(Lcom/viber/voip/contacts/c/d/au;)V

    .line 323
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ap;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string/jumbo v0, "cont_query"

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    invoke-virtual {v1}, Lcom/viber/voip/ui/aa;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/ui/an;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 172
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 721
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 714
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    invoke-virtual {v0}, Lcom/viber/voip/ui/aa;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    invoke-virtual {v0}, Lcom/viber/voip/ui/aa;->g()Z

    .line 717
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 342
    invoke-super {p0}, Lcom/viber/voip/ui/an;->onStart()V

    .line 343
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    invoke-virtual {v0}, Lcom/viber/voip/ui/aa;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->c:Lcom/viber/voip/ui/aa;

    invoke-virtual {v0}, Lcom/viber/voip/ui/aa;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ap;->b:Lcom/viber/voip/contacts/b;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_0
    return-void
.end method
