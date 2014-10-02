.class public Lcom/viber/voip/contacts/ui/ContactsFragment;
.super Lcom/viber/voip/ui/h;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/viber/provider/e;
.implements Lcom/viber/voip/contacts/a/s;
.implements Lcom/viber/voip/contacts/c/d/au;
.implements Lcom/viber/voip/contacts/c/d/f;
.implements Lcom/viber/voip/d;
.implements Lcom/viber/voip/f/h;
.implements Lcom/viber/voip/ui/ab;


# static fields
.field private static final q:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Landroid/view/View;

.field private C:Lcom/viber/voip/util/b/w;

.field private final D:Ljava/lang/Runnable;

.field private E:Landroid/content/BroadcastReceiver;

.field protected a:Lcom/viber/voip/contacts/b;

.field protected b:Lcom/viber/voip/contacts/ui/bp;

.field protected c:Lcom/viber/voip/contacts/c/d/b;

.field protected d:Lcom/viber/voip/ui/k;

.field protected e:Lcom/viber/voip/contacts/ui/bu;

.field protected f:Landroid/os/Handler;

.field protected g:I

.field protected h:Lcom/viber/voip/messages/i;

.field protected i:Lcom/viber/voip/ui/d;

.field protected j:Lcom/viber/voip/ui/ContactsListView;

.field protected k:Lcom/a/a/a/a;

.field protected l:Lcom/viber/voip/contacts/a/x;

.field protected m:Lcom/viber/voip/contacts/a/t;

.field protected n:Lcom/viber/voip/contacts/a/v;

.field protected o:Lcom/viber/voip/contacts/a/n;

.field protected p:Lcom/viber/voip/contacts/a/u;

.field private t:I

.field private u:I

.field private v:J

.field private w:Lcom/viber/voip/contacts/ui/bl;

.field private x:Lcom/actionbarsherlock/view/MenuItem;

.field private y:Lcom/actionbarsherlock/view/MenuItem;

.field private z:Lcom/actionbarsherlock/view/MenuItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/ui/ContactsFragment;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 155
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/ui/h;-><init>(I)V

    .line 120
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->f:Landroid/os/Handler;

    .line 122
    iput v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    .line 123
    iput v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->t:I

    .line 126
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->v:J

    .line 146
    new-instance v0, Lcom/viber/voip/contacts/ui/bf;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/ui/bf;-><init>(Lcom/viber/voip/contacts/ui/ContactsFragment;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->D:Ljava/lang/Runnable;

    .line 1120
    new-instance v0, Lcom/viber/voip/contacts/ui/bk;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/ui/bk;-><init>(Lcom/viber/voip/contacts/ui/ContactsFragment;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->E:Landroid/content/BroadcastReceiver;

    .line 156
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ContactsFragment;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput p1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->u:I

    return p1
.end method

.method private a(Landroid/view/View;IIILandroid/view/View$OnClickListener;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 279
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 280
    invoke-virtual {v1, p5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    if-ne p3, p4, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    move-object v0, v1

    .line 282
    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x0

    if-ne p3, p4, :cond_1

    :goto_1
    invoke-virtual {v0, v4, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 283
    return-object v1

    :cond_0
    move v0, v3

    .line 281
    goto :goto_0

    :cond_1
    move v2, v3

    .line 282
    goto :goto_1
.end method

.method private a(Landroid/view/View;IZ)Landroid/view/View;
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const v11, 0x7f0701f6

    const v2, 0x7f0701f4

    const/4 v4, 0x0

    .line 263
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 p1, 0x0

    .line 275
    :cond_1
    :goto_0
    return-object p1

    .line 264
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p3, :cond_3

    const v1, 0x7f0c060a

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v5, p0

    .line 265
    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Landroid/view/View;IIILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 266
    const v7, 0x7f0701f5

    const/4 v9, 0x1

    move-object v5, p0

    move-object v6, p1

    move v8, p2

    move-object v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Landroid/view/View;IIILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 271
    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p3, :cond_4

    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 272
    if-eqz p3, :cond_1

    .line 273
    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move v2, v11

    move v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Landroid/view/View;IIILandroid/view/View$OnClickListener;)Landroid/view/View;

    goto :goto_0

    .line 264
    :cond_3
    const v1, 0x7f0c060b

    goto :goto_1

    .line 271
    :cond_4
    const/16 v4, 0x8

    goto :goto_2
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ContactsFragment;Landroid/view/View;IZ)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Landroid/view/View;IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private a(ZLcom/viber/voip/contacts/b/e;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 843
    invoke-interface {p2}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->v:J

    .line 845
    invoke-interface {p2}, Lcom/viber/voip/contacts/b/e;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v9

    .line 847
    const/4 v0, 0x0

    invoke-interface {p2}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v1

    invoke-interface {p2}, Lcom/viber/voip/contacts/b/e;->c()J

    move-result-wide v3

    invoke-interface {p2}, Lcom/viber/voip/contacts/b/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lcom/viber/voip/contacts/b/e;->g()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2}, Lcom/viber/voip/contacts/b/e;->b()Landroid/net/Uri;

    move-result-object v7

    if-eqz v9, :cond_0

    invoke-interface {v9}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-interface {p2}, Lcom/viber/voip/contacts/b/e;->e()Z

    move-result v10

    if-eqz v10, :cond_1

    sget-object v10, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v10, v10, Lcom/viber/voip/a/l;->a:Lcom/viber/voip/a/k;

    invoke-virtual {v10}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v10

    :goto_1
    invoke-static/range {v0 .. v10}, Lcom/viber/voip/util/gn;->a(ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 861
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->w:Lcom/viber/voip/contacts/ui/bl;

    invoke-interface {v1, p1, v0}, Lcom/viber/voip/contacts/ui/bl;->a(ZLandroid/content/Intent;)V

    .line 862
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->o:Lcom/viber/voip/contacts/a/n;

    invoke-interface {p2}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/a/n;->a(J)V

    .line 863
    return-void

    :cond_0
    move-object v9, v8

    .line 847
    goto :goto_0

    :cond_1
    sget-object v10, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v10, v10, Lcom/viber/voip/a/l;->b:Lcom/viber/voip/a/k;

    invoke-virtual {v10}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v10

    goto :goto_1
.end method

.method private a(ZZI)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 429
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->c:Lcom/viber/voip/contacts/c/d/b;

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/d/b;->b(Lcom/viber/voip/contacts/c/d/f;)V

    .line 431
    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->u:I

    if-lt p3, v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->f:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/contacts/ui/bj;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/contacts/ui/bj;-><init>(Lcom/viber/voip/contacts/ui/ContactsFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 442
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ContactsFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->A:Z

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/ContactsFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->A:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/ui/ContactsFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->B:Landroid/view/View;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1035
    return-void
.end method

.method private f(Z)V
    .locals 3
    .parameter

    .prologue
    .line 866
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    invoke-virtual {v1}, Lcom/viber/voip/a/l;->d()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 868
    sget-wide v0, Lcom/viber/voip/contacts/a/x;->i:J

    iput-wide v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->v:J

    .line 869
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->o:Lcom/viber/voip/contacts/a/n;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/a/n;->a(J)V

    .line 870
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->w:Lcom/viber/voip/contacts/ui/bl;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.YOU"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/contacts/ui/bl;->a(ZLandroid/content/Intent;)V

    .line 871
    return-void
.end method

.method private g(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1104
    if-nez v0, :cond_0

    .line 1112
    :goto_0
    return-void

    .line 1107
    :cond_0
    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-nez p1, :cond_4

    .line 1108
    :cond_2
    if-nez p1, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->c(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1110
    :cond_4
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->c(Z)V

    goto :goto_0
.end method

.method private v()Lcom/viber/voip/contacts/b/e;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v2, -0x1

    .line 518
    const/4 v1, 0x0

    .line 519
    invoke-virtual {p0, v7}, Lcom/viber/voip/contacts/ui/ContactsFragment;->e(I)I

    move-result v0

    .line 521
    iget-wide v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->v:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    .line 525
    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-ne v0, v8, :cond_4

    .line 526
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    iget-wide v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->v:J

    invoke-virtual {v0, v3, v4}, Lcom/viber/voip/contacts/b;->b(J)I

    move-result v0

    .line 527
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->m:Lcom/viber/voip/contacts/a/t;

    invoke-virtual {v1, v0}, Lcom/viber/voip/contacts/a/t;->a(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    .line 530
    :goto_0
    if-ne v2, v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    iget-wide v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->v:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/b;->a(J)I

    move-result v0

    .line 532
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->n:Lcom/viber/voip/contacts/a/v;

    invoke-virtual {v1, v0}, Lcom/viber/voip/contacts/a/v;->a(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    .line 534
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->m:Lcom/viber/voip/contacts/a/t;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/a/t;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->l:Lcom/viber/voip/contacts/a/x;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/a/x;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 540
    :cond_0
    if-nez v1, :cond_1

    .line 542
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->n:Lcom/viber/voip/contacts/a/v;

    invoke-virtual {v0, v7}, Lcom/viber/voip/contacts/a/v;->a(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    .line 543
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->l:Lcom/viber/voip/contacts/a/x;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/a/x;->getCount()I

    move-result v0

    add-int/2addr v0, v7

    .line 552
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->d(I)V

    .line 553
    return-object v1

    .line 545
    :cond_2
    iget v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-ne v1, v8, :cond_3

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->m:Lcom/viber/voip/contacts/a/t;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/a/t;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 546
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->m:Lcom/viber/voip/contacts/a/t;

    invoke-virtual {v1, v0}, Lcom/viber/voip/contacts/a/t;->a(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    goto :goto_1

    .line 548
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->n:Lcom/viber/voip/contacts/a/v;

    invoke-virtual {v1, v0}, Lcom/viber/voip/contacts/a/v;->a(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    .line 549
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->l:Lcom/viber/voip/contacts/a/x;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/a/x;->getCount()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ContactsListView;->setupViews(Z)V

    .line 327
    return-void
.end method

.method public a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 388
    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->t:I

    if-eq v0, p1, :cond_1

    .line 389
    iput p1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->t:I

    .line 390
    if-nez p2, :cond_0

    .line 391
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->g()V

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->e:Lcom/viber/voip/contacts/ui/bu;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->t:I

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/ui/bu;->a(Landroid/app/Activity;I)V

    .line 394
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

    .line 400
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/ui/bi;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/ui/bi;-><init>(Lcom/viber/voip/contacts/ui/ContactsFragment;)V

    invoke-static {v0, v1}, Lcom/viber/voip/util/ap;->a(Landroid/content/Context;Lcom/viber/voip/util/as;)V

    .line 409
    :cond_1
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, -0x1

    .line 577
    invoke-static {p1}, Lcom/viber/voip/util/bm;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 578
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    if-nez v0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 580
    :cond_1
    const-string/jumbo v0, "contact_id"

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->v:J

    .line 581
    const-string/jumbo v0, "con_number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 582
    iget-wide v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->v:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 583
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    iget-wide v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->v:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/b;->a(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->d(I)V

    .line 584
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->w()V

    goto :goto_0

    .line 585
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    .line 588
    sget-object v1, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v1, v1, Lcom/viber/voip/a/l;->a:Lcom/viber/voip/a/k;

    invoke-virtual {v1}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/util/gn;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 589
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->w:Lcom/viber/voip/contacts/ui/bl;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/contacts/ui/bl;->a(ZLandroid/content/Intent;)V

    .line 590
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->o:Lcom/viber/voip/contacts/a/n;

    invoke-virtual {v0, v3, v4}, Lcom/viber/voip/contacts/a/n;->a(J)V

    goto :goto_0

    .line 592
    :cond_3
    invoke-static {p1}, Lcom/viber/voip/util/bm;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/viber/voip/util/bm;->d(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    :cond_4
    sget-wide v0, Lcom/viber/voip/contacts/a/x;->i:J

    iput-wide v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->v:J

    .line 594
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 595
    instance-of v0, v1, Lcom/viber/voip/HomeActivity;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 596
    check-cast v1, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v1}, Lcom/viber/voip/HomeActivity;->j()V

    .line 598
    :cond_5
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->w()V

    goto :goto_0
.end method

.method public a(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 482
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 461
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->k:Lcom/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a;->notifyDataSetChanged()V

    .line 462
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->n:Lcom/viber/voip/contacts/a/v;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/a/v;->notifyDataSetChanged()V

    .line 464
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 465
    if-nez v6, :cond_0

    .line 478
    :goto_0
    return-void

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->e:Lcom/viber/voip/contacts/ui/bu;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->f()I

    move-result v1

    iget v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->t:I

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->j()Z

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v4}, Lcom/viber/voip/contacts/b;->d_()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->s:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_1
    move v4, v7

    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->o()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->A:Z

    if-eqz v8, :cond_2

    move v5, v7

    :cond_2
    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/bu;->a(IIZZZ)V

    .line 469
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 470
    instance-of v0, v6, Lcom/viber/voip/HomeActivity;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->s()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v6

    .line 471
    check-cast v0, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->j()V

    .line 473
    :cond_3
    instance-of v0, v6, Lcom/viber/voip/HomeActivity;

    if-eqz v0, :cond_4

    check-cast v6, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v6}, Lcom/viber/voip/HomeActivity;->k()Z

    move-result v0

    if-nez v0, :cond_5

    .line 474
    :cond_4
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->w()V

    .line 477
    :cond_5
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->i()V

    goto :goto_0

    :cond_6
    move v4, v5

    .line 467
    goto :goto_1
.end method

.method public a(Lcom/viber/voip/contacts/b/e;)V
    .locals 9
    .parameter

    .prologue
    .line 803
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    invoke-virtual {v1}, Lcom/viber/voip/a/l;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 806
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->b()Landroid/net/Uri;

    move-result-object v7

    .line 807
    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v0, v0, Lcom/viber/voip/a/l;->a:Lcom/viber/voip/a/k;

    invoke-virtual {v0}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v8

    .line 809
    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->c()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/viber/voip/contacts/b/e;->g()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v8}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 807
    :cond_2
    sget-object v0, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v0, v0, Lcom/viber/voip/a/l;->b:Lcom/viber/voip/a/k;

    invoke-virtual {v0}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method protected a(ZLcom/actionbarsherlock/view/MenuItem;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->d:Lcom/viber/voip/ui/k;

    iget-boolean v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->r:Z

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->s:Ljava/lang/String;

    invoke-virtual {v0, p2, v1, p1, v2}, Lcom/viber/voip/ui/k;->a(Lcom/actionbarsherlock/view/MenuItem;ZZLjava/lang/String;)V

    .line 678
    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->r:Z

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Z)Z

    .line 680
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->s:Ljava/lang/String;

    .line 606
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-static {p1}, Lcom/viber/voip/util/hd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/contacts/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 609
    :cond_0
    const-string/jumbo v0, "onQueryTextChange: mContactsLoader is null"

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1044
    iput-boolean p1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->r:Z

    .line 1045
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->b(Z)V

    .line 1046
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->d(Z)V

    .line 1047
    return v1

    .line 1046
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 418
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(ZZI)V

    .line 419
    return-void
.end method

.method public b(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 413
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(ZZI)V

    .line 414
    return-void
.end method

.method public b(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1072
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1073
    instance-of v3, v0, Lcom/viber/voip/HomeActivity;

    if-eqz v3, :cond_0

    .line 1074
    check-cast v0, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0, p1}, Lcom/viber/voip/HomeActivity;->a(Z)V

    .line 1076
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPromoHandler()Lcom/viber/voip/f/j;

    move-result-object v3

    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/viber/voip/f/j;->c(Z)V

    .line 1077
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->i()V

    .line 1079
    :cond_0
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->g(Z)V

    .line 1080
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    if-eqz v0, :cond_1

    .line 1081
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->k()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ContactsListView;->setEnablePull(Z)V

    .line 1083
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 1076
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1081
    goto :goto_1
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b_()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 486
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->o:Lcom/viber/voip/contacts/a/n;

    if-nez v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 490
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->o:Lcom/viber/voip/contacts/a/n;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/a/n;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->m:Lcom/viber/voip/contacts/a/t;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/a/t;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 491
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 492
    invoke-direct {p0, v3}, Lcom/viber/voip/contacts/ui/ContactsFragment;->f(Z)V

    goto :goto_0

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->o:Lcom/viber/voip/contacts/a/n;

    iget-wide v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->v:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/a/n;->a(J)V

    .line 498
    invoke-direct {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->v()Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    .line 499
    invoke-virtual {p0, v3}, Lcom/viber/voip/contacts/ui/ContactsFragment;->e(I)I

    move-result v1

    .line 500
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->o:Lcom/viber/voip/contacts/a/n;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/a/n;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->p:Lcom/viber/voip/contacts/a/u;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/a/u;->getCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 502
    if-eqz v0, :cond_2

    .line 503
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 504
    invoke-direct {p0, v3, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(ZLcom/viber/voip/contacts/b/e;)V

    goto :goto_0

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->w:Lcom/viber/voip/contacts/ui/bl;

    invoke-interface {v0, v3, p0}, Lcom/viber/voip/contacts/ui/bl;->a(ILandroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public b_(I)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 423
    invoke-direct {p0, v0, v0, p1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(ZZI)V

    .line 424
    return-void
.end method

.method public c(I)V
    .locals 6
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 987
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/ListView;->smoothScrollBy(II)V

    .line 989
    :cond_0
    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-eq v0, p1, :cond_6

    .line 990
    if-ne p1, v5, :cond_1

    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-ne v0, v5, :cond_7

    if-eq p1, v2, :cond_2

    if-nez p1, :cond_7

    :cond_2
    move v0, v2

    .line 993
    :goto_0
    iput p1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    .line 994
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    iget v4, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    invoke-virtual {v3, v4}, Lcom/viber/voip/contacts/b;->e(I)V

    .line 995
    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->m:Lcom/viber/voip/contacts/a/t;

    iget v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-ne v3, v5, :cond_8

    move v3, v2

    :goto_1
    invoke-virtual {v4, v3}, Lcom/viber/voip/contacts/a/t;->a(Z)V

    .line 996
    if-eqz v0, :cond_5

    .line 997
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->l:Lcom/viber/voip/contacts/a/x;

    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-nez v0, :cond_9

    :cond_3
    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/a/x;->a(Z)V

    .line 998
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->o:Lcom/viber/voip/contacts/a/n;

    iget v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-eq v3, v2, :cond_4

    iget v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-nez v3, :cond_a

    :cond_4
    :goto_3
    invoke-virtual {v0, v2}, Lcom/viber/voip/contacts/a/n;->a(Z)V

    .line 999
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->o:Lcom/viber/voip/contacts/a/n;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/a/n;->notifyDataSetChanged()V

    .line 1001
    :cond_5
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->q()V

    .line 1003
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->e:Lcom/viber/voip/contacts/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bu;->s:Landroid/view/View;

    iget v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    iget-boolean v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->A:Z

    invoke-direct {p0, v0, v2, v3}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Landroid/view/View;IZ)Landroid/view/View;

    .line 1004
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->B:Landroid/view/View;

    iget v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    iget-boolean v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->A:Z

    invoke-direct {p0, v0, v2, v3}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Landroid/view/View;IZ)Landroid/view/View;

    .line 1006
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "contacts_filter"

    iget v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    invoke-interface {v0, v2, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 1008
    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->d(I)V

    .line 1009
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->v:J

    .line 1011
    :cond_6
    return-void

    :cond_7
    move v0, v1

    .line 990
    goto :goto_0

    :cond_8
    move v3, v1

    .line 995
    goto :goto_1

    :cond_9
    move v0, v1

    .line 997
    goto :goto_2

    :cond_a
    move v2, v1

    .line 998
    goto :goto_3
.end method

.method protected c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->x:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->x:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->x:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->y:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1117
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->z:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->z:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v0, p1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 1118
    :cond_2
    return-void
.end method

.method public d()Lcom/viber/voip/contacts/b;
    .locals 4

    .prologue
    .line 174
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/viber/voip/contacts/g;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->c:Lcom/viber/voip/contacts/c/d/b;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/viber/voip/contacts/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/viber/voip/contacts/b;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->c:Lcom/viber/voip/contacts/c/d/b;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/viber/voip/contacts/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;)V

    goto :goto_0
.end method

.method protected d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1199
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    if-nez v0, :cond_1

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1202
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2

    .line 1203
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    invoke-static {v0, p1}, Lcom/viber/voip/util/gl;->a(Landroid/widget/ListView;Z)V

    .line 1205
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/ContactsListView;->setFastScrollEnabled(Z)V

    goto :goto_0
.end method

.method public e()I
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public e(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 1184
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1188
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    if-nez v1, :cond_2

    .line 1189
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1190
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1191
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setClipToPadding(Z)V

    goto :goto_0

    .line 1192
    :cond_2
    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1193
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 1194
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    return v0
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected h()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1149
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0701de

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1150
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->e:Lcom/viber/voip/contacts/ui/bu;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/viber/voip/contacts/ui/bu;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)Z

    .line 1151
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->e:Lcom/viber/voip/contacts/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bu;->s:Landroid/view/View;

    iget v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    iget-boolean v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->A:Z

    invoke-direct {p0, v0, v2, v3}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Landroid/view/View;IZ)Landroid/view/View;

    .line 1153
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->B:Landroid/view/View;

    iget v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    iget-boolean v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->A:Z

    invoke-direct {p0, v0, v2, v3}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Landroid/view/View;IZ)Landroid/view/View;

    .line 1156
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a()V

    .line 1157
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/ui/ContactsListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1158
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ContactsListView;->setChoiceMode(I)V

    .line 1159
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->e:Lcom/viber/voip/contacts/ui/bu;

    iget-object v0, v0, Lcom/viber/voip/contacts/ui/bu;->s:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1161
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->n()V

    .line 1162
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1163
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->s:Ljava/lang/String;

    invoke-static {v2}, Lcom/viber/voip/util/hd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->f()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/contacts/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1167
    :goto_1
    return-void

    .line 1149
    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    .line 1165
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/b;->f(I)V

    goto :goto_1
.end method

.method protected i()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1171
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPromoHandler()Lcom/viber/voip/f/j;

    move-result-object v0

    .line 1172
    invoke-virtual {v0}, Lcom/viber/voip/f/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1174
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, v1, Lcom/viber/voip/HomeActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->b()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 1176
    check-cast v1, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v1}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move v0, v2

    .line 1177
    :goto_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getPromoHandler()Lcom/viber/voip/f/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/f/j;->a(Z)V

    .line 1180
    :cond_0
    return-void

    .line 1176
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    return v0
.end method

.method protected k()Z
    .locals 1

    .prologue
    .line 573
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected l()Z
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x1

    return v0
.end method

.method protected m()Z
    .locals 1

    .prologue
    .line 565
    const/4 v0, 0x1

    return v0
.end method

.method protected n()Z
    .locals 1

    .prologue
    .line 557
    const/4 v0, 0x1

    return v0
.end method

.method protected o()Z
    .locals 1

    .prologue
    .line 569
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityBackPressed()Z
    .locals 1

    .prologue
    .line 1039
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 185
    invoke-super {p0, p1}, Lcom/viber/voip/ui/h;->onActivityCreated(Landroid/os/Bundle;)V

    .line 187
    if-eqz p1, :cond_0

    .line 188
    const-string/jumbo v0, "last_mode"

    invoke-virtual {p1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    .line 189
    const-string/jumbo v0, "selected_contact_id"

    sget-wide v3, Lcom/viber/voip/contacts/a/x;->i:J

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->v:J

    .line 192
    :cond_0
    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-ne v0, v5, :cond_1

    .line 193
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v3, "contacts_filter"

    invoke-interface {v0, v3, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    .line 194
    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-ne v0, v6, :cond_1

    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->A:Z

    if-nez v0, :cond_1

    iput v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    .line 197
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->d()Lcom/viber/voip/contacts/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    .line 199
    new-instance v0, Lcom/viber/voip/contacts/a/x;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->h:Lcom/viber/voip/messages/i;

    iget-object v5, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v5}, Lcom/viber/voip/contacts/b;->u()Lcom/viber/voip/contacts/f;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/viber/voip/contacts/a/x;-><init>(Landroid/app/Activity;Lcom/viber/voip/messages/i;Lcom/viber/voip/contacts/a;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->l:Lcom/viber/voip/contacts/a/x;

    .line 200
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->l:Lcom/viber/voip/contacts/a/x;

    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-nez v0, :cond_4

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/a/x;->a(Z)V

    .line 201
    new-instance v0, Lcom/viber/voip/contacts/a/v;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v4}, Lcom/viber/voip/contacts/b;->u()Lcom/viber/voip/contacts/f;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/viber/voip/contacts/a/v;-><init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->n:Lcom/viber/voip/contacts/a/v;

    .line 202
    new-instance v0, Lcom/viber/voip/contacts/a/n;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v4}, Lcom/viber/voip/contacts/b;->r()Lcom/viber/voip/contacts/f;

    move-result-object v4

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->e()I

    move-result v5

    invoke-direct {v0, v3, v4, v5, p0}, Lcom/viber/voip/contacts/a/n;-><init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;ILcom/viber/voip/contacts/a/s;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->o:Lcom/viber/voip/contacts/a/n;

    .line 204
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->o:Lcom/viber/voip/contacts/a/n;

    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-nez v0, :cond_5

    :cond_3
    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/a/n;->a(Z)V

    .line 205
    new-instance v0, Lcom/viber/voip/contacts/a/u;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v4}, Lcom/viber/voip/contacts/b;->s()Lcom/viber/voip/contacts/f;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/viber/voip/contacts/a/u;-><init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->p:Lcom/viber/voip/contacts/a/u;

    .line 206
    new-instance v0, Lcom/viber/voip/contacts/a/t;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v4}, Lcom/viber/voip/contacts/b;->t()Lcom/viber/voip/contacts/f;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lcom/viber/voip/contacts/a/t;-><init>(Landroid/app/Activity;Lcom/viber/voip/contacts/a;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->m:Lcom/viber/voip/contacts/a/t;

    .line 207
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->m:Lcom/viber/voip/contacts/a/t;

    iget v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-ne v3, v6, :cond_6

    :goto_2
    invoke-virtual {v0, v2}, Lcom/viber/voip/contacts/a/t;->a(Z)V

    .line 209
    new-instance v0, Lcom/a/a/a/a;

    invoke-direct {v0}, Lcom/a/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->k:Lcom/a/a/a/a;

    .line 211
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ContactsListView;->setEnablSmoothOverscroll(Z)V

    .line 212
    new-instance v0, Lcom/viber/voip/ui/d;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/viber/voip/ui/d;-><init>(Lcom/viber/voip/ui/ContactsListView;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->i:Lcom/viber/voip/ui/d;

    .line 213
    iget-object v7, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    new-instance v0, Lcom/viber/voip/ui/y;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    invoke-virtual {v1}, Lcom/viber/voip/ui/ContactsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030110

    const v3, 0x7f07038d

    const v4, 0x7f07038f

    const v5, 0x7f0c0516

    const v6, 0x7f0c0517

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/ui/y;-><init>(Landroid/content/Context;IIIII)V

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->i:Lcom/viber/voip/ui/d;

    invoke-virtual {v7, v0, v1}, Lcom/viber/voip/ui/ContactsListView;->a(Lcom/viber/voip/ui/y;Lcom/viber/voip/ui/x;)V

    .line 216
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ContactsListView;->setEnablePull(Z)V

    .line 217
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    new-instance v1, Lcom/viber/voip/contacts/ui/bg;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/ui/bg;-><init>(Lcom/viber/voip/contacts/ui/ContactsFragment;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ContactsListView;->setOnRefreshListener(Lcom/viber/voip/ui/aj;)V

    .line 234
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->p()V

    .line 236
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->k:Lcom/a/a/a/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ContactsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 237
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/ui/ContactsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 238
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/ui/ContactsListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    return-void

    :cond_4
    move v0, v1

    .line 200
    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 204
    goto/16 :goto_1

    :cond_6
    move v2, v1

    .line 207
    goto :goto_2
.end method

.method public onActivityKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1060
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 331
    invoke-super {p0, p1}, Lcom/viber/voip/ui/h;->onAttach(Landroid/app/Activity;)V

    .line 332
    instance-of v0, p1, Lcom/viber/voip/contacts/ui/bl;

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "Activity must implement fragment\'s callbacks."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    check-cast p1, Lcom/viber/voip/contacts/ui/bl;

    iput-object p1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->w:Lcom/viber/voip/contacts/ui/bl;

    .line 336
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 960
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 983
    :goto_0
    return-void

    .line 962
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->c(I)V

    goto :goto_0

    .line 965
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->c(I)V

    goto :goto_0

    .line 968
    :sswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->c(I)V

    goto :goto_0

    .line 971
    :sswitch_3
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gu;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 974
    :sswitch_4
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/bp;->b()V

    goto :goto_0

    .line 977
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.INVITE_TO_VIBER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 980
    :sswitch_6
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/bp;->b()V

    goto :goto_0

    .line 960
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0701e4 -> :sswitch_4
        0x7f0701eb -> :sswitch_3
        0x7f0701ef -> :sswitch_5
        0x7f0701f4 -> :sswitch_0
        0x7f0701f5 -> :sswitch_2
        0x7f0701f6 -> :sswitch_1
        0x7f0701fa -> :sswitch_6
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 912
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_1

    .line 955
    :cond_0
    :goto_0
    return v1

    .line 914
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 916
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 918
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/ui/ak;

    .line 919
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ak;->a()Lcom/viber/voip/contacts/b/e;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 921
    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ak;->a()Lcom/viber/voip/contacts/b/e;

    move-result-object v7

    .line 922
    invoke-interface {v7}, Lcom/viber/voip/contacts/b/e;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v5

    .line 924
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 952
    invoke-super {p0, p1}, Lcom/viber/voip/ui/h;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 927
    :sswitch_0
    invoke-interface {v7}, Lcom/viber/voip/contacts/b/e;->d()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v8

    :goto_1
    invoke-interface {v7}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v1

    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v7}, Lcom/viber/voip/contacts/b/e;->c()J

    move-result-wide v3

    :goto_2
    invoke-interface {v7}, Lcom/viber/voip/contacts/b/e;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/bp;->a(ZJJLjava/lang/String;)V

    :cond_2
    :goto_3
    move v1, v8

    .line 955
    goto :goto_0

    :cond_3
    move v0, v1

    .line 927
    goto :goto_1

    :cond_4
    const-wide/16 v3, -0x1

    goto :goto_2

    .line 932
    :sswitch_1
    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    invoke-interface {v5}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/ui/bp;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 936
    :sswitch_2
    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    invoke-interface {v7}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v1

    invoke-interface {v7}, Lcom/viber/voip/contacts/b/e;->c()J

    move-result-wide v3

    invoke-interface {v5}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7}, Lcom/viber/voip/contacts/b/e;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7}, Lcom/viber/voip/contacts/b/e;->b()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/contacts/ui/bp;->a(JJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_3

    .line 941
    :sswitch_3
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-interface {v7}, Lcom/viber/voip/contacts/b/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/ui/bp;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    .line 945
    :sswitch_4
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-interface {v7}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v1

    invoke-interface {v7}, Lcom/viber/voip/contacts/b/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7}, Lcom/viber/voip/contacts/b/e;->a()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/contacts/ui/bp;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 949
    :sswitch_5
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lcom/viber/voip/contacts/ui/bp;->a(Landroid/content/Context;Lcom/viber/voip/contacts/b/e;)V

    goto :goto_3

    .line 924
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070048 -> :sswitch_1
        0x7f070049 -> :sswitch_2
        0x7f07004a -> :sswitch_5
        0x7f070460 -> :sswitch_3
        0x7f070462 -> :sswitch_4
        0x7f0c0345 -> :sswitch_0
        0x7f0c0346 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 161
    new-instance v1, Lcom/viber/voip/ui/k;

    invoke-direct {v1, v0, p0}, Lcom/viber/voip/ui/k;-><init>(Landroid/content/Context;Lcom/viber/voip/ui/ab;)V

    iput-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->d:Lcom/viber/voip/ui/k;

    .line 163
    invoke-super {p0, p1}, Lcom/viber/voip/ui/h;->onCreate(Landroid/os/Bundle;)V

    .line 164
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->setHasOptionsMenu(Z)V

    .line 166
    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->C:Lcom/viber/voip/util/b/w;

    .line 167
    new-instance v1, Lcom/viber/voip/contacts/ui/bp;

    invoke-direct {v1, v0}, Lcom/viber/voip/contacts/ui/bp;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    .line 168
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->c:Lcom/viber/voip/contacts/c/d/b;

    .line 169
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->h:Lcom/viber/voip/messages/i;

    .line 170
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/viberout/e;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->A:Z

    .line 171
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0c0346

    const v6, 0x7f0c0345

    const/4 v5, 0x0

    .line 875
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 876
    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/ui/ak;

    .line 878
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ak;->a()Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ak;->a()Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 908
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ak;->a()Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    .line 881
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03006f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 882
    const v0, 0x7f0700ac

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 883
    invoke-interface {v1}, Lcom/viber/voip/contacts/b/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 884
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 886
    invoke-interface {v1}, Lcom/viber/voip/contacts/b/e;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 887
    invoke-interface {p1, v5, v7, v5, v7}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 892
    :goto_1
    invoke-interface {v1}, Lcom/viber/voip/contacts/b/e;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    const v0, 0x7f070048

    const v1, 0x7f0c04b3

    invoke-interface {p1, v5, v0, v5, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 895
    const v0, 0x7f070049

    const v1, 0x7f0c04b5

    invoke-interface {p1, v5, v0, v5, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 899
    :cond_2
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-nez v0, :cond_3

    .line 900
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 907
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/ui/h;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    .line 889
    :cond_4
    invoke-interface {p1, v5, v6, v5, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const v3, 0x7f07043c

    .line 639
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 641
    const-string/jumbo v1, "onCreateOptionsMenu"

    const-string/jumbo v2, "Contacts fragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const v1, 0x7f100001

    invoke-virtual {p2, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 644
    const v1, 0x7f07043b

    invoke-interface {p1, v1}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v1

    .line 645
    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->x:Lcom/actionbarsherlock/view/MenuItem;

    .line 646
    const v2, 0x7f07043d

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->y:Lcom/actionbarsherlock/view/MenuItem;

    .line 655
    const v2, 0x7f07043e

    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 658
    invoke-static {v0}, Lcom/viber/voip/util/gl;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/viber/voip/util/gl;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 659
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->y:Lcom/actionbarsherlock/view/MenuItem;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 664
    :goto_1
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 665
    invoke-interface {p1, v3}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 668
    :cond_2
    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/actionbarsherlock/widget/SearchView;

    .line 669
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    const v3, 0x7f0c02f5

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 670
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/widget/SearchView;->setQueryHintColor(I)V

    .line 672
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(ZLcom/actionbarsherlock/view/MenuItem;)V

    goto :goto_0

    .line 661
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->y:Lcom/actionbarsherlock/view/MenuItem;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getNewPackagesCount()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/viber/voip/contacts/ui/ContactsFragment;->setMoreOptionMenuIcon(Lcom/actionbarsherlock/view/MenuItem;I)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 288
    const v0, 0x7f030019

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 290
    new-instance v0, Lcom/viber/voip/contacts/ui/bu;

    invoke-direct {v0, v7}, Lcom/viber/voip/contacts/ui/bu;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->e:Lcom/viber/voip/contacts/ui/bu;

    .line 292
    const v0, 0x102000a

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/ContactsListView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    .line 294
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ContactsListView;->setEnablSmoothOverscroll(Z)V

    .line 295
    new-instance v0, Lcom/viber/voip/ui/d;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lcom/viber/voip/ui/d;-><init>(Lcom/viber/voip/ui/ContactsListView;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->i:Lcom/viber/voip/ui/d;

    .line 296
    iget-object v8, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    new-instance v0, Lcom/viber/voip/ui/y;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    invoke-virtual {v1}, Lcom/viber/voip/ui/ContactsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030110

    const v3, 0x7f07038d

    const v4, 0x7f07038f

    const v5, 0x7f0c0516

    const v6, 0x7f0c0517

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/ui/y;-><init>(Landroid/content/Context;IIIII)V

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->i:Lcom/viber/voip/ui/d;

    invoke-virtual {v8, v0, v1}, Lcom/viber/voip/ui/ContactsListView;->a(Lcom/viber/voip/ui/y;Lcom/viber/voip/ui/x;)V

    .line 299
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ContactsListView;->setEnablePull(Z)V

    .line 300
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    new-instance v1, Lcom/viber/voip/contacts/ui/bh;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/ui/bh;-><init>(Lcom/viber/voip/contacts/ui/ContactsFragment;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ContactsListView;->setOnRefreshListener(Lcom/viber/voip/ui/aj;)V

    .line 317
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const v0, 0x7f03007d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->B:Landroid/view/View;

    .line 319
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->j:Lcom/viber/voip/ui/ContactsListView;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->B:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/ContactsListView;->addHeaderView(Landroid/view/View;)V

    .line 322
    :cond_0
    return-object v7
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 376
    invoke-super {p0}, Lcom/viber/voip/ui/h;->onDestroyView()V

    .line 377
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->m()V

    .line 378
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->f()V

    .line 379
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->E:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 382
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 370
    invoke-super {p0}, Lcom/viber/voip/ui/h;->onDetach()V

    .line 371
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->l()V

    .line 372
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 815
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    invoke-virtual {v1}, Lcom/viber/voip/a/l;->e()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 817
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/ui/ak;

    .line 818
    if-nez v0, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ak;->a()Lcom/viber/voip/contacts/b/e;

    move-result-object v1

    .line 821
    if-eqz v1, :cond_0

    .line 823
    iget-boolean v2, v0, Lcom/viber/voip/contacts/ui/ak;->q:Z

    if-eqz v2, :cond_2

    .line 824
    invoke-direct {p0, v3}, Lcom/viber/voip/contacts/ui/ContactsFragment;->f(Z)V

    .line 836
    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 837
    instance-of v1, v0, Lcom/viber/voip/HomeActivity;

    if-eqz v1, :cond_0

    .line 838
    check-cast v0, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->j()V

    goto :goto_0

    .line 826
    :cond_2
    invoke-direct {p0, v3, v1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(ZLcom/viber/voip/contacts/b/e;)V

    .line 828
    iget-boolean v0, v0, Lcom/viber/voip/contacts/ui/ak;->r:Z

    if-eqz v0, :cond_3

    .line 829
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/b;->a(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->d(I)V

    goto :goto_1

    .line 831
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->o:Lcom/viber/voip/contacts/a/n;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/a/n;->getCount()I

    move-result v0

    sub-int v0, p3, v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->l:Lcom/viber/voip/contacts/a/x;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/a/x;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->p:Lcom/viber/voip/contacts/a/u;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/a/u;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->d(I)V

    goto :goto_1
.end method

.method public onNewStickerPackageCountChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 634
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->y:Lcom/actionbarsherlock/view/MenuItem;

    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->setMoreOptionMenuIcon(Lcom/actionbarsherlock/view/MenuItem;I)V

    .line 635
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 703
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v0

    .line 798
    :cond_0
    :goto_0
    :pswitch_0
    return v1

    .line 705
    :cond_1
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 798
    :pswitch_1
    invoke-super {p0, p1}, Lcom/viber/voip/ui/h;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 707
    :pswitch_2
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gu;->a(Landroid/content/Context;)V

    .line 708
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    invoke-virtual {v2}, Lcom/viber/voip/a/l;->f()Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 715
    :pswitch_3
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v2

    const-string/jumbo v3, "preff_dialog_failed_shown"

    invoke-interface {v2, v3, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 716
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/bp;->d()V

    .line 719
    :pswitch_4
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/bp;->e()V

    .line 722
    :pswitch_5
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/bp;->f()V

    .line 723
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->c:Lcom/viber/voip/contacts/c/d/b;

    instance-of v0, v0, Lcom/viber/voip/contacts/c/d/m;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->c:Lcom/viber/voip/contacts/c/d/b;

    check-cast v0, Lcom/viber/voip/contacts/c/d/m;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/d/m;->l()V

    goto :goto_0

    .line 729
    :pswitch_6
    invoke-static {}, Lcom/viber/service/contacts/sync/a;->a()Lcom/viber/service/contacts/sync/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/service/contacts/sync/a;->c()V

    goto :goto_0

    .line 733
    :pswitch_7
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v3}, Lcom/viber/voip/contacts/b;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->e:Lcom/viber/voip/contacts/ui/bu;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->o()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->A:Z

    if-eqz v5, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/viber/voip/contacts/ui/bp;->a(ILcom/viber/voip/contacts/ui/bu;IZ)V

    goto :goto_0

    .line 738
    :pswitch_8
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v3}, Lcom/viber/voip/contacts/b;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->e:Lcom/viber/voip/contacts/ui/bu;

    const/4 v5, 0x5

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->o()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->A:Z

    if-eqz v6, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/viber/voip/contacts/ui/bp;->a(ILcom/viber/voip/contacts/ui/bu;IZ)V

    goto/16 :goto_0

    .line 743
    :pswitch_9
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v3}, Lcom/viber/voip/contacts/b;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->e:Lcom/viber/voip/contacts/ui/bu;

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->o()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->A:Z

    if-eqz v6, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/viber/voip/contacts/ui/bp;->a(ILcom/viber/voip/contacts/ui/bu;IZ)V

    goto/16 :goto_0

    .line 748
    :pswitch_a
    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v3}, Lcom/viber/voip/contacts/b;->getCount()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->e:Lcom/viber/voip/contacts/ui/bu;

    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->o()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->A:Z

    if-eqz v6, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/viber/voip/contacts/ui/bp;->a(ILcom/viber/voip/contacts/ui/bu;IZ)V

    goto/16 :goto_0

    .line 753
    :pswitch_b
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v4}, Lcom/viber/voip/contacts/b;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->e:Lcom/viber/voip/contacts/ui/bu;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->o()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->A:Z

    if-eqz v6, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/viber/voip/contacts/ui/bp;->a(ILcom/viber/voip/contacts/ui/bu;IZ)V

    goto/16 :goto_0

    .line 758
    :pswitch_c
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->b:Lcom/viber/voip/contacts/ui/bp;

    iget-object v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/b;->getCount()I

    move-result v4

    iget-object v5, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->e:Lcom/viber/voip/contacts/ui/bu;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->o()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->A:Z

    if-eqz v2, :cond_7

    move v2, v1

    :goto_1
    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/viber/voip/contacts/ui/bp;->a(ILcom/viber/voip/contacts/ui/bu;IZ)V

    goto/16 :goto_0

    :cond_7
    move v2, v0

    goto :goto_1

    .line 763
    :pswitch_d
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->e:Lcom/viber/voip/contacts/ui/bu;

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->e:Lcom/viber/voip/contacts/ui/bu;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/bu;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    :goto_2
    invoke-virtual {v3, v4, v0}, Lcom/viber/voip/contacts/ui/bu;->a(Landroid/app/Activity;I)V

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto :goto_2

    .line 768
    :pswitch_e
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.YOU"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 772
    :pswitch_f
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.BLOCK_LIST"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 776
    :pswitch_10
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/util/b/w;->f()V

    .line 777
    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->c(I)V

    goto/16 :goto_0

    .line 781
    :pswitch_11
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 785
    :pswitch_12
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/fb/FacebookLikeDialogActivity;->a(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 789
    :pswitch_13
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "PREF_SHOW_COMPOSE_GROUP_PROMO"

    invoke-interface {v0, v2, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    goto/16 :goto_0

    .line 793
    :pswitch_14
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "PREF_SHOW_DESKTOP_PROMO_COUNT"

    invoke-interface {v0, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 794
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v2, "PREF_SHOW_DESKTOP_PROMO_LAST_DISMISS"

    invoke-interface {v0, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    goto/16 :goto_0

    .line 705
    nop

    :pswitch_data_0
    .packed-switch 0x7f07043b
        :pswitch_0
        :pswitch_2
        :pswitch_e
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_10
        :pswitch_f
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 684
    invoke-super {p0}, Lcom/viber/voip/ui/h;->onPause()V

    .line 685
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->C:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Z)V

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPause, mFilterBeforePause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->b(Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 691
    invoke-super {p0}, Lcom/viber/voip/ui/h;->onResume()V

    .line 692
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "contacts_filter"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    .line 693
    if-eq v0, v2, :cond_0

    iget v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/viber/voip/HomeActivity;

    if-eqz v1, :cond_0

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume, filter changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->b(Ljava/lang/String;)V

    .line 695
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->c(I)V

    .line 699
    :goto_0
    return-void

    .line 697
    :cond_0
    const-string/jumbo v0, "onResume"

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1054
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 446
    const-string/jumbo v0, "last_mode"

    iget v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 447
    const-string/jumbo v0, "selected_contact_id"

    iget-wide v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->v:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 448
    invoke-super {p0, p1}, Lcom/viber/voip/ui/h;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 449
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1031
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1015
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->d:Lcom/viber/voip/ui/k;

    invoke-virtual {v0}, Lcom/viber/voip/ui/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->d:Lcom/viber/voip/ui/k;

    invoke-virtual {v0}, Lcom/viber/voip/ui/k;->g()Z

    .line 1020
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->C:Lcom/viber/voip/util/b/w;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Z)V

    .line 1026
    :goto_0
    return-void

    .line 1024
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->C:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Z)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 340
    invoke-super {p0}, Lcom/viber/voip/ui/h;->onStart()V

    .line 342
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->c:Lcom/viber/voip/contacts/c/d/b;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->d()Lcom/viber/voip/contacts/c/d/at;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/d/at;->a(Lcom/viber/voip/contacts/c/d/au;)V

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->setHasOptionsMenu(Z)V

    .line 345
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->d:Lcom/viber/voip/ui/k;

    invoke-virtual {v0}, Lcom/viber/voip/ui/k;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/b;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->l:Lcom/viber/voip/contacts/a/x;

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->l:Lcom/viber/voip/contacts/a/x;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/a/x;->b()V

    .line 353
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 357
    invoke-super {p0}, Lcom/viber/voip/ui/h;->onStop()V

    .line 359
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 360
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->c:Lcom/viber/voip/contacts/c/d/b;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->d()Lcom/viber/voip/contacts/c/d/at;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/d/at;->b(Lcom/viber/voip/contacts/c/d/au;)V

    .line 361
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->c:Lcom/viber/voip/contacts/c/d/b;

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/d/b;->b(Lcom/viber/voip/contacts/c/d/f;)V

    .line 363
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->l:Lcom/viber/voip/contacts/a/x;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->l:Lcom/viber/voip/contacts/a/x;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/a/x;->c()V

    .line 366
    :cond_0
    return-void
.end method

.method public onTabReselected()V
    .locals 0

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->y()V

    .line 1135
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->d:Lcom/viber/voip/ui/k;

    invoke-virtual {v0}, Lcom/viber/voip/ui/k;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020004

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 1097
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->d:Lcom/viber/voip/ui/k;

    invoke-virtual {v0}, Lcom/viber/voip/ui/k;->g()Z

    .line 1099
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected p()V
    .locals 4

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->k:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->o:Lcom/viber/voip/contacts/a/n;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 246
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->k:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->m:Lcom/viber/voip/contacts/a/t;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->k:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->l:Lcom/viber/voip/contacts/a/x;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 254
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->E:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.viber.voip.viberout.STATE_CHANGED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 258
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->k:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->p:Lcom/viber/voip/contacts/a/u;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 259
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->k:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->n:Lcom/viber/voip/contacts/a/v;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 260
    return-void
.end method

.method public q()V
    .locals 2

    .prologue
    .line 616
    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    packed-switch v0, :pswitch_data_0

    .line 626
    :goto_0
    return-void

    .line 618
    :pswitch_0
    new-instance v0, Lcom/viber/logger/QaLogger$QaScreenChangeEvent;

    sget-object v1, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v1, v1, Lcom/viber/voip/a/l;->d:Lcom/viber/voip/a/c;

    invoke-virtual {v1}, Lcom/viber/voip/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/logger/QaLogger$QaScreenChangeEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 619
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v1, v1, Lcom/viber/voip/a/l;->d:Lcom/viber/voip/a/c;

    invoke-virtual {v1}, Lcom/viber/voip/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :pswitch_1
    new-instance v0, Lcom/viber/logger/QaLogger$QaScreenChangeEvent;

    sget-object v1, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v1, v1, Lcom/viber/voip/a/l;->e:Lcom/viber/voip/a/c;

    invoke-virtual {v1}, Lcom/viber/voip/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/logger/QaLogger$QaScreenChangeEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/viber/logger/QaLogger;->a(Lcom/viber/logger/QaLogger$QaEvent;)V

    .line 623
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v1, v1, Lcom/viber/voip/a/l;->e:Lcom/viber/voip/a/c;

    invoke-virtual {v1}, Lcom/viber/voip/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 616
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public r()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->g:I

    return v0
.end method

.method public s()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1064
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->a:Lcom/viber/voip/contacts/b;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/b;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public t()Z
    .locals 4

    .prologue
    .line 1068
    iget-wide v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->v:J

    sget-wide v2, Lcom/viber/voip/contacts/a/x;->i:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->d:Lcom/viber/voip/ui/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->d:Lcom/viber/voip/ui/k;

    invoke-virtual {v0}, Lcom/viber/voip/ui/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactsFragment;->d:Lcom/viber/voip/ui/k;

    invoke-virtual {v0}, Lcom/viber/voip/ui/k;->f()V

    .line 1088
    const/4 v0, 0x1

    .line 1090
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
