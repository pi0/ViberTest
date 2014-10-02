.class public Lcom/viber/voip/messages/conversation/ui/ConversationFragment;
.super Lcom/viber/voip/ui/am;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/c/d;
.implements Lcom/viber/voip/d;
.implements Lcom/viber/voip/messages/conversation/a/b/a;
.implements Lcom/viber/voip/messages/conversation/a/b/b;
.implements Lcom/viber/voip/messages/conversation/a/b/c;
.implements Lcom/viber/voip/messages/conversation/a/b/e;
.implements Lcom/viber/voip/messages/conversation/a/b/f;
.implements Lcom/viber/voip/messages/conversation/a/r;
.implements Lcom/viber/voip/messages/conversation/ad;
.implements Lcom/viber/voip/messages/conversation/ao;
.implements Lcom/viber/voip/messages/conversation/ui/bu;
.implements Lcom/viber/voip/messages/conversation/ui/cm;
.implements Lcom/viber/voip/messages/conversation/ui/cp;
.implements Lcom/viber/voip/messages/conversation/ui/cr;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field protected b:Lcom/viber/voip/messages/conversation/ui/co;

.field protected c:Lcom/viber/voip/messages/conversation/ui/ba;

.field protected d:Lcom/viber/voip/messages/conversation/ui/m;

.field protected e:Lcom/viber/voip/messages/conversation/a/o;

.field protected f:Lcom/viber/voip/messages/conversation/w;

.field protected g:Lcom/viber/voip/messages/i;

.field protected h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

.field protected i:Lcom/actionbarsherlock/view/Menu;

.field protected j:Lcom/viber/voip/messages/conversation/ui/az;

.field protected k:Landroid/os/Handler;

.field private l:Lcom/viber/voip/messages/ui/h;

.field private m:Lcom/viber/voip/messages/conversation/ui/cq;

.field private n:Lcom/viber/voip/messages/conversation/a/g;

.field private o:Lcom/viber/voip/messages/ui/ad;

.field private p:Lcom/viber/voip/e/u;

.field private q:Lcom/viber/voip/messages/extras/fb/s;

.field private r:J

.field private s:J

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:Lcom/viber/voip/contacts/c/c/c;

.field private z:Lcom/viber/voip/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    const-class v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/viber/voip/ui/am;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->t:Z

    .line 165
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->v:Ljava/lang/String;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->w:Ljava/lang/String;

    .line 177
    sget-object v0, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    return-void
.end method

.method static synthetic H()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method private I()V
    .locals 1

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/messages/ui/ConversationActivity;

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/ConversationActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->e()V

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/HomeActivity;

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->m()V

    goto :goto_0
.end method

.method private K()V
    .locals 7

    .prologue
    .line 580
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->M()V

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->N()V

    goto :goto_0

    .line 587
    :cond_2
    new-instance v3, Lcom/viber/voip/messages/conversation/ui/at;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/conversation/ui/at;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    .line 598
    new-instance v4, Lcom/viber/voip/messages/conversation/ui/au;

    invoke-direct {v4, p0}, Lcom/viber/voip/messages/conversation/ui/au;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    .line 608
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c03cd

    const v2, 0x7f0c03d2

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f0c034a

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IZ)Landroid/content/DialogInterface;

    .line 610
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "330"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0
.end method

.method private L()V
    .locals 0

    .prologue
    .line 616
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->O()V

    .line 617
    return-void
.end method

.method private M()V
    .locals 7

    .prologue
    .line 628
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "343"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 630
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c03ce

    const v2, 0x7f0c0499

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/messages/conversation/ui/av;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/conversation/ui/av;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    const/4 v4, 0x0

    const v5, 0x7f0c049e

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IZ)Landroid/content/DialogInterface;

    .line 641
    return-void
.end method

.method private N()V
    .locals 5

    .prologue
    .line 645
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "343"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 646
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "501b"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 648
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03008f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 649
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 650
    new-instance v3, Lcom/viber/voip/messages/conversation/ui/aw;

    invoke-direct {v3, p0, v2}, Lcom/viber/voip/messages/conversation/ui/aw;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;Landroid/app/AlertDialog;)V

    .line 686
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/ax;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/ui/ax;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 697
    const v0, 0x7f07023c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 698
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    const v4, 0x7f0c02b6

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 701
    const v0, 0x7f07023d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 702
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    const v4, 0x7f0c0329

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 705
    const v0, 0x7f07023e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 706
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    const v3, 0x7f0c049e

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    .line 709
    const v0, 0x7f070122

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 710
    const v1, 0x7f0c049c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 712
    const v0, 0x7f0c03ce

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 713
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 714
    return-void
.end method

.method private O()V
    .locals 3

    .prologue
    .line 717
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 718
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/m;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 719
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/messages/conversation/ui/ay;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/conversation/ui/ay;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/viber/voip/messages/controller/x;->a(Ljava/util/Set;Lcom/viber/voip/messages/controller/aa;)V

    .line 727
    return-void
.end method

.method private P()V
    .locals 5

    .prologue
    .line 730
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/m;->b()J

    move-result-wide v1

    const/4 v3, 0x1

    new-instance v4, Lcom/viber/voip/messages/conversation/ui/af;

    invoke-direct {v4, p0}, Lcom/viber/voip/messages/conversation/ui/af;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/x;->a(JZLcom/viber/voip/messages/controller/ai;)V

    .line 743
    return-void
.end method

.method private Q()V
    .locals 6

    .prologue
    .line 853
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    iget-wide v1, v1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->n:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/a/o;->a(J)V

    .line 854
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->getCount()I

    move-result v1

    .line 855
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 856
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    iget-wide v2, v2, Lcom/viber/voip/messages/conversation/ui/ConversationData;->n:J

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/viber/voip/messages/conversation/v;->a_(I)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 857
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v1, v0}, Lcom/viber/voip/ConversationListView;->a(I)V

    .line 861
    :cond_0
    return-void

    .line 855
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private R()V
    .locals 4

    .prologue
    .line 864
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->k:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/aj;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/aj;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 871
    return-void
.end method

.method private S()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 954
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/v;->m()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/ConversationListView;->setHasNew(Z)V

    .line 956
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->a()V

    .line 958
    :cond_0
    invoke-direct {p0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f(Z)V

    .line 959
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/o;->notifyDataSetChanged()V

    .line 960
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n:Lcom/viber/voip/messages/conversation/a/g;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->c()Z

    move-result v3

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1, v0}, Lcom/viber/voip/messages/conversation/a/g;->a(ZZZ)V

    .line 964
    return-void

    :cond_1
    move v0, v1

    .line 960
    goto :goto_0
.end method

.method private T()V
    .locals 3

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    if-eqz v0, :cond_1

    .line 1374
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.ACTION_CLOSE_HOME"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->startActivity(Landroid/content/Intent;)V

    .line 1375
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j:Lcom/viber/voip/messages/conversation/ui/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j:Lcom/viber/voip/messages/conversation/ui/az;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/ui/az;->c(Z)V

    .line 1376
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/w;->k()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/gn;->b(Landroid/content/Context;J)V

    .line 1378
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/ui/cq;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    return-object v0
.end method

.method private a(Lcom/actionbarsherlock/view/Menu;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 567
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 568
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/co;->a(Lcom/actionbarsherlock/view/Menu;)V

    .line 569
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/conversation/ui/co;->a(Z)V

    .line 570
    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Z)V

    .line 571
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j()Z

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/viber/voip/messages/conversation/ui/co;->a(ZZ)V

    .line 573
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j()Z

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v4

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ui/m;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/viber/voip/messages/conversation/ui/co;->a(ZZLjava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/ui/m;->i()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/co;->d(Z)V

    .line 577
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 569
    goto :goto_0

    :cond_2
    move v1, v2

    .line 574
    goto :goto_1
.end method

.method private a(Lcom/viber/voip/messages/conversation/ui/ConversationData;ZZ)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 234
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v4

    .line 237
    iget-wide v5, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    cmp-long v0, v5, v8

    if-gtz v0, :cond_0

    iget-wide v5, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->m:J

    cmp-long v0, v5, v8

    if-gtz v0, :cond_0

    iget-object v0, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_0
    move v0, v2

    .line 238
    :goto_0
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b(Lcom/viber/voip/messages/conversation/ui/ConversationData;)Z

    move-result v5

    .line 239
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    if-eqz v3, :cond_7

    iget-wide v6, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    cmp-long v3, v6, v8

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    iget-wide v6, v3, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    iget-wide v8, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_7

    move v3, v2

    .line 240
    :goto_1
    if-eqz v4, :cond_1

    iget-object v1, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 242
    :cond_1
    if-nez v4, :cond_2

    .line 248
    :cond_2
    if-nez v1, :cond_3

    if-nez v0, :cond_8

    .line 250
    :cond_3
    if-eqz v1, :cond_4

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const v1, 0x7f0c0525

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->showToast(Ljava/lang/String;)V

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j:Lcom/viber/voip/messages/conversation/ui/az;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j:Lcom/viber/voip/messages/conversation/ui/az;

    invoke-interface {v0, v2}, Lcom/viber/voip/messages/conversation/ui/az;->c(Z)V

    .line 284
    :cond_5
    :goto_2
    return-void

    :cond_6
    move v0, v1

    .line 237
    goto :goto_0

    :cond_7
    move v3, v1

    .line 239
    goto :goto_1

    .line 253
    :cond_8
    if-eqz p1, :cond_f

    if-nez v5, :cond_f

    if-nez v3, :cond_f

    .line 254
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)V

    .line 255
    :cond_9
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)V

    .line 257
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    if-eqz v0, :cond_a

    .line 258
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->l()V

    .line 259
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->setFragment(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    .line 260
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->c()V

    .line 263
    :cond_a
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d()V

    .line 264
    :cond_b
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n:Lcom/viber/voip/messages/conversation/a/g;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n:Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/g;->e()V

    .line 266
    :cond_c
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    if-eqz v0, :cond_e

    .line 267
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    iget-boolean v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->t:Z

    invoke-virtual {v0, v1, p2, v2}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;ZZ)Z

    .line 268
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->g()V

    .line 272
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)V

    goto :goto_2

    .line 270
    :cond_e
    invoke-virtual {p0, p2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b(Z)V

    goto :goto_3

    .line 275
    :cond_f
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    if-eqz v0, :cond_10

    .line 276
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->i()V

    .line 277
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->v:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 278
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->setMessageDraft(Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->v:Ljava/lang/String;

    .line 282
    :cond_10
    if-nez p3, :cond_5

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j:Lcom/viber/voip/messages/conversation/ui/az;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j:Lcom/viber/voip/messages/conversation/ui/az;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/ui/az;->e_()V

    goto/16 :goto_2
.end method

.method private a(ZLjava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1391
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1392
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n:Lcom/viber/voip/messages/conversation/a/g;

    if-eqz v0, :cond_0

    .line 1393
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/ap;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/ui/ap;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1401
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1403
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/MessageComposerView;->setBlocked(Z)V

    .line 1406
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->L()V

    return-void
.end method

.method private b(Lcom/viber/voip/messages/conversation/ui/ConversationData;)Z
    .locals 8
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 287
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    if-nez v2, :cond_1

    move v0, v1

    .line 294
    :cond_0
    :goto_0
    return v0

    .line 290
    :cond_1
    iget-wide v2, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    iget-wide v2, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->l:J

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/w;->k()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 293
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/w;->f()Lcom/viber/voip/messages/conversation/h;

    move-result-object v2

    .line 294
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v3, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->m:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_4

    iget-wide v3, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->m:J

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->d()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->O()V

    return-void
.end method

.method static synthetic d(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->P()V

    return-void
.end method

.method static synthetic e(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->s:J

    return-wide v0
.end method

.method static synthetic f(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->T()V

    return-void
.end method

.method private f(Z)V
    .locals 1
    .parameter

    .prologue
    .line 967
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/a/o;->b(Z)V

    .line 968
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ConversationListView;->setHasNew(Z)V

    .line 969
    return-void
.end method

.method static synthetic g(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)Lcom/viber/voip/messages/conversation/a/g;
    .locals 1
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n:Lcom/viber/voip/messages/conversation/a/g;

    return-object v0
.end method

.method static synthetic h(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->I()V

    return-void
.end method


# virtual methods
.method public A()V
    .locals 4

    .prologue
    .line 1415
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->u:Z

    if-eqz v0, :cond_0

    .line 1416
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/HomeActivity;

    if-eqz v0, :cond_1

    .line 1417
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->k:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/aq;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/aq;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1426
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->u:Z

    .line 1428
    :cond_0
    return-void

    .line 1424
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->I()V

    goto :goto_0
.end method

.method public B()Lcom/viber/voip/messages/conversation/ui/ba;
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    return-object v0
.end method

.method public C()Lcom/viber/voip/messages/conversation/ui/m;
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    return-object v0
.end method

.method public D()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1447
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public E()Landroid/view/View;
    .locals 1

    .prologue
    .line 1451
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1455
    const-string/jumbo v0, "Messages"

    return-object v0
.end method

.method public G()Lcom/viber/voip/messages/conversation/w;
    .locals 1

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 875
    return-void
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->s()V

    .line 1291
    return-void
.end method

.method public a(J)V
    .locals 3
    .parameter

    .prologue
    .line 621
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->k()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j:Lcom/viber/voip/messages/conversation/ui/az;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/ui/az;->c(Z)V

    .line 623
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/w;->a(J)V

    .line 625
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 513
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/messages/conversation/a/a/a/k;

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->l:Lcom/viber/voip/messages/ui/h;

    invoke-virtual {v0, p1, p3, p2}, Lcom/viber/voip/messages/ui/h;->a(Landroid/view/ContextMenu;Landroid/view/MenuInflater;Landroid/view/View;)Lcom/viber/voip/messages/conversation/a/a/a/k;

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 515
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 516
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->l:Lcom/viber/voip/messages/ui/h;

    invoke-virtual {v0, p1, p3, p2}, Lcom/viber/voip/messages/ui/h;->b(Landroid/view/ContextMenu;Landroid/view/MenuInflater;Landroid/view/View;)V

    goto :goto_0

    .line 517
    :cond_2
    instance-of v0, p2, Lcom/viber/voip/messages/LocationEditText;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->l:Lcom/viber/voip/messages/ui/h;

    invoke-virtual {v0, p1, p3, p2}, Lcom/viber/voip/messages/ui/h;->c(Landroid/view/ContextMenu;Landroid/view/MenuInflater;Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/conversation/h;ZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 881
    if-eqz p1, :cond_6

    .line 882
    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 883
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/viber/voip/a/a;->o:Lcom/viber/voip/a/m;

    :goto_0
    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    .line 885
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->F()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/viber/voip/a/m;->a(Ljava/lang/String;)V

    .line 886
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    invoke-virtual {v0, v3}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/c;)V

    .line 888
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f()V

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Lcom/viber/voip/messages/conversation/h;)V

    .line 892
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/ui/m;->i()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/conversation/ui/co;->a(Z)V

    .line 893
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j()Z

    move-result v3

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/viber/voip/messages/conversation/ui/co;->a(ZZ)V

    .line 894
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j()Z

    move-result v3

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v4

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/viber/voip/messages/conversation/ui/co;->a(ZZLjava/lang/String;)V

    .line 895
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->i()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/conversation/ui/co;->d(Z)V

    .line 896
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/h;)V

    .line 897
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->getCount()I

    move-result v5

    .line 899
    iget-object v6, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n:Lcom/viber/voip/messages/conversation/a/g;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    if-lez v5, :cond_9

    move v0, v1

    :goto_2
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/w;->d()Z

    move-result v3

    if-eqz v3, :cond_a

    if-lez v5, :cond_a

    move v3, v1

    :goto_3
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v1

    :goto_4
    invoke-virtual {v6, v0, v3, v4}, Lcom/viber/voip/messages/conversation/a/g;->a(ZZZ)V

    .line 904
    if-eqz v5, :cond_c

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v0

    add-int/lit8 v3, v5, -0x1

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/conversation/v;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->m()J

    move-result-wide v3

    :goto_5
    iput-wide v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->r:J

    .line 905
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v0

    :goto_6
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Z)V

    .line 906
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->i:Lcom/actionbarsherlock/view/Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->i:Lcom/actionbarsherlock/view/Menu;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/actionbarsherlock/view/Menu;)V

    .line 908
    :cond_1
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->t:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 909
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ConversationListView;->a(Z)Z

    .line 912
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/HomeActivity;

    if-eqz v0, :cond_3

    .line 913
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->A()V

    .line 915
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->w:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 916
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->w:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/ui/MessageComposerView;->b(Ljava/lang/String;)V

    .line 919
    :cond_4
    if-nez p3, :cond_5

    .line 920
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n:Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/a/g;->a(Lcom/viber/voip/messages/conversation/h;)V

    .line 921
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 922
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Ljava/lang/CharSequence;Z)V

    .line 925
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j:Lcom/viber/voip/messages/conversation/ui/az;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j:Lcom/viber/voip/messages/conversation/ui/az;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/messages/conversation/ui/az;->a(Lcom/viber/voip/messages/conversation/h;Z)V

    .line 927
    :cond_6
    return-void

    .line 883
    :cond_7
    sget-object v0, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 895
    goto/16 :goto_1

    :cond_9
    move v0, v2

    .line 899
    goto/16 :goto_2

    :cond_a
    move v3, v2

    goto/16 :goto_3

    :cond_b
    move v4, v2

    goto/16 :goto_4

    .line 904
    :cond_c
    const-wide/16 v3, 0x0

    goto :goto_5

    :cond_d
    move v0, v2

    .line 905
    goto :goto_6
.end method

.method protected a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    .line 227
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/v;)V
    .locals 1
    .parameter

    .prologue
    .line 769
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->g()V

    .line 770
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/v;ZI)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 778
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/v;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/viber/voip/messages/conversation/v;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->j()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/v;->w()J

    move-result-wide v7

    cmp-long v0, v3, v7

    if-eqz v0, :cond_0

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Z)V

    .line 783
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->i()V

    .line 784
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->g()V

    .line 786
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/MessageComposerView;->setConversationMessageLoader(Lcom/viber/voip/messages/conversation/v;)V

    .line 787
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Z)V

    .line 789
    iget-object v7, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n:Lcom/viber/voip/messages/conversation/a/g;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->c()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/v;->getCount()I

    move-result v0

    if-lez v0, :cond_b

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/w;->d()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/v;->getCount()I

    move-result v3

    if-lez v3, :cond_c

    move v3, v2

    :goto_2
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v4

    if-eqz v4, :cond_d

    move v4, v2

    :goto_3
    invoke-virtual {v7, v0, v3, v4}, Lcom/viber/voip/messages/conversation/a/g;->a(ZZZ)V

    .line 793
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n:Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/g;->l()V

    .line 794
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 795
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->f()V

    .line 796
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/v;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->h()V

    .line 800
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->d()Z

    .line 802
    :cond_2
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/v;->p()Z

    move-result v0

    if-nez v0, :cond_e

    .line 804
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->j()V

    .line 805
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->i:Lcom/viber/voip/z;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v3, v3, Lcom/viber/voip/messages/conversation/ui/ba;->i:Lcom/viber/voip/z;

    invoke-virtual {v0, v2}, Lcom/viber/voip/z;->a(I)V

    .line 811
    :goto_4
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->getCount()I

    move-result v3

    .line 813
    if-nez p2, :cond_3

    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->x:Z

    if-eqz v0, :cond_f

    .line 814
    :cond_3
    iput-boolean v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->x:Z

    .line 815
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/v;->m()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f(Z)V

    .line 820
    :cond_4
    :goto_5
    if-eqz p2, :cond_12

    .line 821
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->t:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    iget-wide v7, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->n:J

    cmp-long v0, v7, v5

    if-nez v0, :cond_11

    .line 822
    :cond_5
    const/4 v0, -0x1

    if-eq p3, v0, :cond_10

    .line 823
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {v0, v2}, Lcom/viber/voip/ConversationListView;->a(I)V

    .line 827
    :goto_6
    iget-wide v7, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->s:J

    cmp-long v0, v7, v5

    if-eqz v0, :cond_6

    .line 829
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->R()V

    .line 834
    :cond_6
    :goto_7
    iput-boolean v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->t:Z

    .line 842
    :cond_7
    :goto_8
    if-eqz v3, :cond_13

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v0

    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/v;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->m()J

    move-result-wide v0

    :goto_9
    iput-wide v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->r:J

    .line 844
    if-lez v3, :cond_8

    .line 845
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v1

    add-int/lit8 v2, v3, -0x1

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/conversation/v;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/an;->l()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v2

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/viber/voip/messages/conversation/v;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/an;->T()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/conversation/ui/m;->a(Ljava/lang/String;Z)V

    .line 849
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j:Lcom/viber/voip/messages/conversation/ui/az;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j:Lcom/viber/voip/messages/conversation/ui/az;

    invoke-interface {v0, p2}, Lcom/viber/voip/messages/conversation/ui/az;->d(Z)V

    .line 850
    :cond_9
    return-void

    :cond_a
    move v0, v1

    .line 787
    goto/16 :goto_0

    :cond_b
    move v0, v1

    .line 789
    goto/16 :goto_1

    :cond_c
    move v3, v1

    goto/16 :goto_2

    :cond_d
    move v4, v1

    goto/16 :goto_3

    .line 808
    :cond_e
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->k()V

    goto/16 :goto_4

    .line 816
    :cond_f
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/v;->m()Z

    move-result v0

    if-nez v0, :cond_4

    .line 817
    invoke-direct {p0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f(Z)V

    goto/16 :goto_5

    .line 825
    :cond_10
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->a()V

    goto :goto_6

    .line 832
    :cond_11
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->Q()V

    goto :goto_7

    .line 836
    :cond_12
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0, v2}, Lcom/viber/voip/ConversationListView;->a(Z)Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v3, :cond_7

    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->r:J

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v2

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Lcom/viber/voip/messages/conversation/v;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/an;->m()J

    move-result-wide v7

    cmp-long v0, v0, v7

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->m()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 839
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->h()V

    goto/16 :goto_8

    :cond_13
    move-wide v0, v5

    .line 842
    goto/16 :goto_9
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 940
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 942
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->S()V

    .line 943
    return-void
.end method

.method public a(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Ljava/lang/CharSequence;Z)V

    .line 1295
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1431
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/viber/voip/util/gl;->b(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    .line 1432
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1234
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    if-nez v0, :cond_1

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    if-eqz p3, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1240
    :cond_2
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->ar()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-interface {v0, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1241
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->as()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-interface {v0, v3, v4}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1244
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 1245
    :goto_1
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/conversation/a/o;->a(Z)V

    .line 1247
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->i()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1248
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->e()V

    .line 1253
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->getCount()I

    move-result v3

    .line 1254
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n:Lcom/viber/voip/messages/conversation/a/g;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    if-lez v3, :cond_6

    move v0, v1

    :goto_3
    iget-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/w;->d()Z

    move-result v5

    if-eqz v5, :cond_7

    if-lez v3, :cond_7

    move v3, v1

    :goto_4
    iget-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_5
    invoke-virtual {v4, v0, v3, v1}, Lcom/viber/voip/messages/conversation/a/g;->a(ZZZ)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 1244
    goto :goto_1

    .line 1250
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1254
    goto :goto_3

    :cond_7
    move v3, v2

    goto :goto_4

    :cond_8
    move v1, v2

    goto :goto_5
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1183
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getPttPlaylist()Lcom/viber/voip/h/a;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/h/a;->b(Ljava/lang/String;Z)V

    .line 1186
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/viber/voip/messages/conversation/ui/am;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/conversation/ui/am;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    invoke-interface {v0, v1, v3, v2}, Lcom/viber/voip/messages/controller/x;->a(Ljava/util/Set;ZLcom/viber/voip/messages/controller/aa;)V

    .line 1199
    return-void
.end method

.method public a(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1382
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(ZLjava/util/Set;)V

    .line 1383
    return-void
.end method

.method public a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1227
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1228
    :goto_0
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/ui/m;->i()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/viber/voip/messages/conversation/ui/co;->c(Z)V

    .line 1230
    return-void

    :cond_0
    move v0, v2

    .line 1227
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1228
    goto :goto_1
.end method

.method public a([Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 948
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/w;->a([Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 950
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->S()V

    .line 951
    return-void
.end method

.method public a(Landroid/content/Intent;ZZ)Z
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    .line 192
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 194
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getPttPlaylist()Lcom/viber/voip/h/a;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/viber/voip/h/a;->b(Ljava/lang/String;Z)V

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "extra_conversation_data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;

    .line 199
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "extra_search_message"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->t:Z

    .line 200
    const-string/jumbo v3, "notif_extra_message"

    invoke-virtual {p1, v3, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 201
    const-string/jumbo v5, "notif_extra_ptt_message_id_for_playing"

    invoke-virtual {p1, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->s:J

    .line 202
    cmp-long v5, v3, v7

    if-eqz v5, :cond_1

    .line 203
    iget-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->p:Lcom/viber/voip/e/u;

    invoke-virtual {v5, v3, v4}, Lcom/viber/voip/e/u;->c(J)V

    .line 205
    :cond_1
    const-string/jumbo v3, "open_conversation_info"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "open_conversation_info"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->u:Z

    .line 208
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "draft"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->v:Ljava/lang/String;

    .line 209
    const-string/jumbo v3, "open_custom_menu"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->w:Ljava/lang/String;

    .line 211
    if-eqz v0, :cond_3

    .line 212
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v2, p1}, Lcom/viber/voip/messages/conversation/ui/ba;->b(Landroid/content/Intent;)V

    .line 213
    invoke-direct {p0, v0, p2, p3}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;ZZ)V

    move v0, v1

    .line 218
    :goto_0
    return v0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method protected a(Landroid/view/View;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 385
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a/k;

    .line 386
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-virtual {v1, v4}, Lcom/viber/voip/messages/conversation/ui/cq;->a(Z)V

    .line 387
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/a/a/k;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/conversation/ui/cq;->a(J)Z

    .line 388
    return v4
.end method

.method public a_(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->g()V

    .line 1306
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1261
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/conversation/ui/co;->c(Z)V

    .line 1263
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v1

    invoke-virtual {v0, v4, v1}, Lcom/viber/voip/messages/conversation/ui/co;->a(ZZ)V

    .line 1265
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ui/m;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/viber/voip/messages/conversation/ui/co;->a(ZZLjava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/conversation/ui/co;->d(Z)V

    .line 1270
    :cond_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    iget-object v1, v1, Lcom/viber/voip/a/m;->a:Lcom/viber/voip/a/q;

    invoke-virtual {v1}, Lcom/viber/voip/a/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 1271
    return-void
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1311
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/conversation/ui/ba;->b(Z)V

    .line 1312
    return-void

    .line 1311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 974
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    :goto_0
    return-void

    .line 976
    :cond_0
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->p()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 977
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->X()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 978
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->X()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->ad()J

    move-result-wide v3

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->z()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    iget-object v7, v7, Lcom/viber/voip/a/m;->f:Lcom/viber/voip/a/k;

    invoke-virtual {v7}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/messages/conversation/ui/m;->a(JJLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 981
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->aa()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/a/a;->a(JZ)Landroid/net/Uri;

    move-result-object v0

    .line 982
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->Y()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->z()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    iget-object v4, v4, Lcom/viber/voip/a/m;->f:Lcom/viber/voip/a/k;

    invoke-virtual {v4}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/viber/voip/messages/conversation/ui/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 984
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->Y()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    iget-object v2, v2, Lcom/viber/voip/a/m;->f:Lcom/viber/voip/a/k;

    invoke-virtual {v2}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v6, v2}, Lcom/viber/voip/messages/conversation/ui/m;->a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 987
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->n()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1435
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    .line 1436
    return-void
.end method

.method public b(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1387
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(ZLjava/util/Set;)V

    .line 1388
    return-void
.end method

.method public b(Z)V
    .locals 6
    .parameter

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 311
    new-instance v0, Lcom/viber/voip/messages/conversation/w;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g:Lcom/viber/voip/messages/i;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    iget v3, v3, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/viber/voip/messages/conversation/w;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/i;ILcom/viber/voip/messages/conversation/ad;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    .line 315
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->h()V

    .line 316
    new-instance v0, Lcom/viber/voip/messages/ui/h;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/messages/ui/h;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->l:Lcom/viber/voip/messages/ui/h;

    .line 317
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    if-nez v0, :cond_0

    new-instance v0, Lcom/viber/voip/messages/conversation/ui/co;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/viber/voip/messages/conversation/ui/co;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/conversation/ui/cp;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 319
    new-instance v1, Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/app/ViberFragmentActivity;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v3, v3, Lcom/viber/voip/messages/conversation/ui/ba;->a:Landroid/view/View;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/viber/voip/messages/conversation/ui/cq;-><init>(Lcom/viber/voip/messages/conversation/ui/cr;Lcom/viber/voip/app/ViberFragmentActivity;Lcom/viber/voip/messages/conversation/w;Landroid/view/View;)V

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    .line 321
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Z)V

    .line 323
    :cond_1
    new-instance v0, Lcom/viber/voip/contacts/c/c/a/g;

    invoke-direct {v0}, Lcom/viber/voip/contacts/c/c/a/g;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->y:Lcom/viber/voip/contacts/c/c/c;

    .line 324
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->y:Lcom/viber/voip/contacts/c/c/c;

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/c/c;->a(Lcom/viber/voip/contacts/c/c/d;)V

    .line 326
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e()Lcom/viber/voip/messages/conversation/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    .line 327
    new-instance v0, Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    invoke-direct {v0, v1, p0, v2}, Lcom/viber/voip/messages/conversation/a/g;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/conversation/ui/ConversationFragment;Lcom/viber/voip/messages/conversation/a/o;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n:Lcom/viber/voip/messages/conversation/a/g;

    .line 328
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n:Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ConversationListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 329
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ConversationListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 330
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/ae;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/ae;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/ConversationListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 342
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/ar;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/ar;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/ConversationListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/as;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/as;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/ConversationListView;->setOnLongItemClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    iget-boolean v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->t:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/viber/voip/messages/conversation/w;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;ZZ)Z

    .line 372
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)V

    .line 373
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->l:Lcom/viber/voip/messages/ui/h;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    iget-boolean v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->p:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    iget-boolean v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->q:Z

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/h;->a(Z)V

    .line 374
    return-void

    .line 313
    :cond_3
    new-instance v0, Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g:Lcom/viber/voip/messages/i;

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    iget v4, v4, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/w;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;ILcom/viber/voip/messages/conversation/ad;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    goto/16 :goto_0

    .line 373
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected b(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1274
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1275
    :goto_0
    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/conversation/ui/co;->c(Z)V

    .line 1276
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/messages/conversation/ui/co;->a(ZZ)V

    .line 1277
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/ui/m;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/viber/voip/messages/conversation/ui/co;->a(ZZLjava/lang/String;)V

    .line 1278
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/co;->d(Z)V

    .line 1279
    return-void

    :cond_0
    move v0, v2

    .line 1274
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1278
    goto :goto_1
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 454
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/w;->a(Z)V

    .line 455
    :cond_0
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/h/b;->a(Z)V

    .line 456
    return-void
.end method

.method public c(Lcom/viber/voip/messages/conversation/a/a/a;)Z
    .locals 12
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 1016
    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1017
    :cond_0
    const-string/jumbo v0, "image"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "video"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "animated_message"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1020
    :cond_1
    const-string/jumbo v0, "image"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1021
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    sget-object v2, Lcom/viber/voip/a/n;->e:Lcom/viber/voip/a/n;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/m;->a(Lcom/viber/voip/a/n;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 1025
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/m;->b()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v3

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ui/m;->a()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    invoke-virtual {v6}, Lcom/viber/voip/a/m;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;)V

    move v0, v11

    .line 1044
    :goto_2
    return v0

    .line 1023
    :cond_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    sget-object v2, Lcom/viber/voip/a/n;->d:Lcom/viber/voip/a/n;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/m;->a(Lcom/viber/voip/a/n;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 1025
    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_1

    .line 1028
    :cond_4
    const-string/jumbo v0, "location"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1029
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    sget-object v3, Lcom/viber/voip/a/n;->c:Lcom/viber/voip/a/n;

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/m;->a(Lcom/viber/voip/a/n;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 1030
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    :goto_3
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    invoke-virtual {v2}, Lcom/viber/voip/a/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2, v11}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;Lcom/viber/voip/messages/conversation/a/a/a;ZLjava/lang/String;Z)V

    move v0, v11

    .line 1031
    goto :goto_2

    .line 1030
    :cond_5
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_3

    .line 1032
    :cond_6
    const-string/jumbo v0, "formatted_follow"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_7
    :goto_4
    move v0, v11

    .line 1042
    goto :goto_2

    .line 1035
    :cond_8
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->ag()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->y()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->I()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/viber/voip/util/hv;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->E()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->M()I

    move-result v6

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->h()J

    move-result-wide v7

    long-to-int v7, v7

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->ah()J

    move-result-wide v8

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->Y()Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;-><init>(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;IIJLjava/lang/String;)V

    invoke-static {v0, v11}, Lcom/viber/voip/messages/j;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;Z)Landroid/content/Intent;

    move-result-object v1

    .line 1038
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1039
    const-string/jumbo v2, "back_intent"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1040
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 1039
    :cond_9
    const/4 v0, 0x0

    goto :goto_5

    :cond_a
    move v0, v1

    .line 1044
    goto/16 :goto_2
.end method

.method public d()V
    .locals 4

    .prologue
    .line 1139
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/conversation/ui/cq;->a(Z)V

    .line 1140
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n:Lcom/viber/voip/messages/conversation/a/g;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/w;->c()Z

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/w;->d()Z

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/conversation/a/g;->a(ZZZ)V

    .line 1144
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->c()V

    .line 1145
    return-void

    .line 1139
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 1320
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->i()Lcom/viber/voip/messages/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->f()V

    .line 1321
    return-void
.end method

.method public d(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1149
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gn;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1160
    :goto_0
    return-void

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1154
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->v:Lcom/viber/voip/a/g;

    invoke-virtual {v1, p1}, Lcom/viber/voip/a/g;->f(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 1159
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/m;->a(Z)V

    goto :goto_0

    .line 1156
    :cond_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->v:Lcom/viber/voip/a/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/g;->g(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_1
.end method

.method protected e()Lcom/viber/voip/messages/conversation/a/o;
    .locals 8

    .prologue
    .line 377
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    if-nez v0, :cond_0

    .line 378
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v4

    .line 379
    new-instance v0, Lcom/viber/voip/messages/conversation/a/o;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    iget v6, v1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    move-object v1, p0

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/viber/voip/messages/conversation/a/o;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;Lcom/viber/voip/messages/conversation/v;Lcom/viber/voip/messages/conversation/ui/cq;Lcom/viber/voip/stickers/b;ZILcom/viber/voip/messages/conversation/a/r;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    return-object v0
.end method

.method public e(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 4
    .parameter

    .prologue
    .line 1059
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1060
    :cond_0
    const-string/jumbo v0, "image"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1061
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->p:Lcom/viber/voip/a/y;

    sget-object v2, Lcom/viber/voip/a/z;->b:Lcom/viber/voip/a/z;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/y;->a(Lcom/viber/voip/a/z;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 1069
    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.ACTION_FORWARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1070
    const-string/jumbo v1, "default_message_id"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1071
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1072
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->startActivity(Landroid/content/Intent;)V

    .line 1078
    :cond_2
    :goto_1
    return-void

    .line 1062
    :cond_3
    const-string/jumbo v0, "video"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1063
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->p:Lcom/viber/voip/a/y;

    sget-object v2, Lcom/viber/voip/a/z;->c:Lcom/viber/voip/a/z;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/y;->a(Lcom/viber/voip/a/z;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 1064
    :cond_4
    const-string/jumbo v0, "animated_message"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1065
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->p:Lcom/viber/voip/a/y;

    sget-object v2, Lcom/viber/voip/a/z;->f:Lcom/viber/voip/a/z;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/y;->a(Lcom/viber/voip/a/z;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 1074
    :cond_5
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1075
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public e(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1172
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->getCount()I

    move-result v3

    .line 1174
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/a/o;->c(Z)V

    .line 1175
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n:Lcom/viber/voip/messages/conversation/a/g;

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez v3, :cond_0

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/w;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    if-lez v3, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->m:Lcom/viber/voip/messages/conversation/ui/cq;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ui/cq;->a()Z

    move-result v2

    invoke-virtual {v4, v0, v1, v2}, Lcom/viber/voip/messages/conversation/a/g;->a(ZZZ)V

    .line 1179
    return-void

    :cond_0
    move v0, v2

    .line 1175
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->getMessageDraft()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/m;->d(Ljava/lang/String;)V

    .line 445
    :cond_0
    return-void
.end method

.method public f(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 4
    .parameter

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v1

    new-instance v3, Lcom/viber/voip/messages/conversation/ui/ak;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/conversation/ui/ak;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/x;->a(JLcom/viber/voip/messages/controller/af;)V

    .line 1103
    return-void
.end method

.method public g()Lcom/viber/voip/messages/conversation/ui/ConversationData;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h:Lcom/viber/voip/messages/conversation/ui/ConversationData;

    return-object v0
.end method

.method public g(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 4
    .parameter

    .prologue
    .line 993
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/viber/voip/a/n;->b:Lcom/viber/voip/a/n;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/viber/voip/a/m;->a(Lcom/viber/voip/a/n;)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 995
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->S()Z

    move-result v2

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    invoke-virtual {v0}, Lcom/viber/voip/a/m;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->T()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, p1, v2, v3, v0}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;Lcom/viber/voip/messages/conversation/a/a/a;ZLjava/lang/String;Z)V

    .line 996
    return-void

    .line 993
    :cond_0
    sget-object v0, Lcom/viber/voip/a/n;->a:Lcom/viber/voip/a/n;

    goto :goto_0

    .line 995
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public h()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 3
    .parameter

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/controller/x;->b(J)V

    .line 1001
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/controller/x;->b()V

    .line 1002
    return-void
.end method

.method public i()Lcom/viber/voip/messages/ui/ad;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->o:Lcom/viber/voip/messages/ui/ad;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/k;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/ui/k;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->o:Lcom/viber/voip/messages/ui/ad;

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->o:Lcom/viber/voip/messages/ui/ad;

    return-object v0
.end method

.method public i(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 4
    .parameter

    .prologue
    .line 1006
    const-string/jumbo v0, "image"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1007
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    sget-object v2, Lcom/viber/voip/a/n;->e:Lcom/viber/voip/a/n;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/m;->b(Lcom/viber/voip/a/n;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 1011
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v1

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->H()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/x;->b(JLjava/lang/String;)V

    .line 1012
    return-void

    .line 1008
    :cond_1
    const-string/jumbo v0, "video"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    sget-object v2, Lcom/viber/voip/a/n;->d:Lcom/viber/voip/a/n;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/m;->b(Lcom/viber/voip/a/n;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0
.end method

.method protected j()Z
    .locals 2

    .prologue
    .line 549
    const/4 v0, 0x0

    .line 550
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/viber/voip/messages/ui/ConversationActivity;

    if-eqz v1, :cond_1

    .line 551
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/ConversationActivity;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->c()Z

    move-result v0

    .line 555
    :cond_0
    :goto_0
    return v0

    .line 552
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/viber/voip/HomeActivity;

    if-eqz v1, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->l()Z

    move-result v0

    goto :goto_0
.end method

.method public k()V
    .locals 5

    .prologue
    .line 746
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    check-cast v0, Lcom/viber/voip/a/p;

    invoke-virtual {v0}, Lcom/viber/voip/a/p;->i()Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 748
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/m;->b()J

    move-result-wide v1

    const/4 v3, 0x0

    new-instance v4, Lcom/viber/voip/messages/conversation/ui/ah;

    invoke-direct {v4, p0}, Lcom/viber/voip/messages/conversation/ui/ah;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/x;->a(JZLcom/viber/voip/messages/controller/ai;)V

    .line 761
    return-void
.end method

.method public l()Lcom/viber/voip/a/m;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z:Lcom/viber/voip/a/m;

    return-object v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j:Lcom/viber/voip/messages/conversation/ui/az;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/ui/az;->d()V

    .line 931
    return-void
.end method

.method public n()Ljava/util/List;
    .locals 1
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
    .line 934
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->f()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public o()V
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->i()V

    .line 1133
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/o;->d()V

    .line 1134
    return-void
.end method

.method public onActivityBackPressed()Z
    .locals 1

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->a()V

    .line 1114
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->g()V

    .line 1115
    const/4 v0, 0x1

    .line 1117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1122
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/conversation/ui/ba;->a(IILandroid/content/Intent;)V

    .line 416
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/ui/am;->onActivityResult(IILandroid/content/Intent;)V

    .line 417
    return-void
.end method

.method public onActivitySearchRequested()Z
    .locals 1

    .prologue
    .line 1107
    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 301
    invoke-super {p0, p1}, Lcom/viber/voip/ui/am;->onAttach(Landroid/app/Activity;)V

    .line 302
    instance-of v0, p1, Lcom/viber/voip/messages/conversation/ui/az;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "Activity must implement fragment\'s callbacks."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 305
    :cond_0
    check-cast p1, Lcom/viber/voip/messages/conversation/ui/az;

    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j:Lcom/viber/voip/messages/conversation/ui/az;

    .line 306
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter

    .prologue
    .line 460
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/o;->b()V

    .line 461
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->f()Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->f()Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 465
    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/ui/am;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 466
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 524
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    const v1, 0x7f070464

    if-ne v0, v1, :cond_0

    .line 525
    invoke-super {p0, p1}, Lcom/viber/voip/ui/am;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 528
    :goto_0
    return v0

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->l:Lcom/viber/voip/messages/ui/h;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/messages/ui/h;->a(Landroid/view/MenuItem;Lcom/viber/voip/messages/conversation/ui/m;)Z

    .line 528
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/viber/voip/ui/am;->onCreate(Landroid/os/Bundle;)V

    .line 183
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->k:Landroid/os/Handler;

    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->setHasOptionsMenu(Z)V

    .line 185
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g:Lcom/viber/voip/messages/i;

    .line 187
    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->p:Lcom/viber/voip/e/u;

    .line 188
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->q:Lcom/viber/voip/messages/extras/fb/s;

    .line 189
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 508
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/ui/am;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 509
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/MenuInflater;)V

    .line 510
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 533
    const v0, 0x7f10001d

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 534
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->i:Lcom/actionbarsherlock/view/Menu;

    .line 535
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/actionbarsherlock/view/Menu;)V

    .line 536
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    const v0, 0x7f0300d7

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 398
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/m;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/ui/m;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    .line 399
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->i()Lcom/viber/voip/messages/ui/ad;

    move-result-object v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/conversation/ui/ba;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;Lcom/viber/voip/messages/conversation/ui/bu;Lcom/viber/voip/messages/conversation/ui/m;Landroid/view/View;Landroid/os/Bundle;Lcom/viber/voip/messages/ui/ad;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    .line 400
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/voip/messages/conversation/ui/ba;)V

    .line 401
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->setFragment(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    .line 402
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->setMessageSender(Lcom/viber/voip/messages/conversation/ao;)V

    .line 403
    return-object v4
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 479
    invoke-super {p0}, Lcom/viber/voip/ui/am;->onDestroyView()V

    .line 481
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->m()V

    .line 482
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->c()V

    .line 484
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->g()V

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->y:Lcom/viber/voip/contacts/c/c/c;

    if-eqz v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->y:Lcom/viber/voip/contacts/c/c/c;

    invoke-interface {v0, p0}, Lcom/viber/voip/contacts/c/c/c;->b(Lcom/viber/voip/contacts/c/c/d;)V

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n:Lcom/viber/voip/messages/conversation/a/g;

    if-eqz v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n:Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/g;->b()V

    .line 495
    :cond_2
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 499
    invoke-super {p0}, Lcom/viber/voip/ui/am;->onDetach()V

    .line 500
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->a()V

    .line 502
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->z()V

    .line 504
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 545
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/co;->a(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 432
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f()V

    .line 433
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getPttPlaylist()Lcom/viber/voip/h/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/h/a;->b(Ljava/lang/String;Z)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->b()V

    .line 437
    iput-boolean v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->x:Z

    .line 438
    invoke-super {p0}, Lcom/viber/voip/ui/am;->onPause()V

    .line 439
    return-void
.end method

.method public onPrepareOptionsMenu(Lcom/actionbarsherlock/view/Menu;)V
    .locals 1
    .parameter

    .prologue
    .line 540
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/co;->b(Lcom/actionbarsherlock/view/Menu;)V

    .line 541
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->a()V

    .line 450
    invoke-super {p0}, Lcom/viber/voip/ui/am;->onResume()V

    .line 451
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1127
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 1329
    invoke-super {p0, p1}, Lcom/viber/voip/ui/am;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1330
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/ba;->a(Landroid/os/Bundle;)V

    .line 1331
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 421
    invoke-super {p0}, Lcom/viber/voip/ui/am;->onStart()V

    .line 423
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/o;->notifyDataSetChanged()V

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->k()V

    .line 428
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 470
    invoke-super {p0}, Lcom/viber/voip/ui/am;->onStop()V

    .line 471
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->l()V

    .line 472
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->t()V

    .line 475
    :cond_0
    return-void
.end method

.method public p()V
    .locals 0

    .prologue
    .line 1164
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->K()V

    .line 1165
    return-void
.end method

.method public q()V
    .locals 0

    .prologue
    .line 1205
    return-void
.end method

.method public r()V
    .locals 2

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->c()V

    .line 1210
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->setVisibility(I)V

    .line 1211
    return-void
.end method

.method public s()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1215
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/m;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1223
    :goto_0
    return-void

    .line 1217
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v1, v1, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->setVisibility(I)V

    .line 1219
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Z)V

    .line 1220
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j()Z

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/conversation/ui/co;->a(ZZ)V

    .line 1221
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j()Z

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/ui/m;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/viber/voip/messages/conversation/ui/co;->a(ZZLjava/lang/String;)V

    .line 1222
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->j()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/conversation/ui/co;->d(Z)V

    goto :goto_0
.end method

.method public t()Lcom/viber/voip/messages/ui/MessageComposerView;
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    return-object v0
.end method

.method public u()Landroid/view/View;
    .locals 1

    .prologue
    .line 1286
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    return-object v0
.end method

.method public v()V
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/o;->c()V

    .line 1300
    :cond_0
    return-void
.end method

.method public w()V
    .locals 2

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    const v1, 0x7f0702d9

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->a(I)V

    .line 1325
    return-void
.end method

.method public x()V
    .locals 5

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->e()Ljava/lang/String;

    move-result-object v0

    .line 1337
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1338
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1339
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ui/m;->d()Ljava/lang/String;

    move-result-object v2

    .line 1340
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1341
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1342
    invoke-static {v0}, Lcom/viber/voip/block/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1343
    invoke-static {v1, v2, v3}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Set;)V

    .line 1349
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v0, v4}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Set;Ljava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method public y()V
    .locals 8

    .prologue
    .line 1353
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->aB()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->aC()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1354
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0669

    const v2, 0x7f0c066a

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/messages/conversation/ui/ao;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/conversation/ui/ao;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V

    const/4 v4, 0x0

    const v5, 0x7f0c02b5

    const v6, 0x7f0c051e

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IIZ)Landroid/content/DialogInterface;

    .line 1366
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "383"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 1370
    :goto_0
    return-void

    .line 1368
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->T()V

    goto :goto_0
.end method

.method public z()V
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->b()V

    .line 1412
    :cond_0
    return-void
.end method
