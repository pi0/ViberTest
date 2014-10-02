.class public Lcom/viber/voip/messages/ui/MessagesFragment;
.super Lcom/viber/voip/messages/ui/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/viber/provider/e;
.implements Lcom/viber/voip/d;
.implements Lcom/viber/voip/f/h;
.implements Lcom/viber/voip/messages/ui/dn;
.implements Lcom/viber/voip/ui/p;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# static fields
.field public static final c:Ljava/lang/String;

.field private static m:Lcom/viber/voip/messages/ui/df;


# instance fields
.field protected d:Lcom/viber/voip/messages/adapters/k;

.field protected e:Lcom/viber/voip/contacts/c/d/b;

.field private f:Lcom/viber/voip/messages/conversation/i;

.field private g:Lcom/viber/voip/messages/conversation/a;

.field private h:Lcom/viber/voip/messages/i;

.field private i:Lcom/viber/voip/ui/n;

.field private j:Z

.field private k:Landroid/widget/ListView;

.field private l:Lcom/viber/voip/util/b/w;

.field private n:Lcom/viber/voip/messages/ui/df;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/MessagesFragment;->c:Ljava/lang/String;

    .line 100
    new-instance v0, Lcom/viber/voip/messages/ui/db;

    invoke-direct {v0}, Lcom/viber/voip/messages/ui/db;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/ui/MessagesFragment;->m:Lcom/viber/voip/messages/ui/df;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/a;-><init>(I)V

    .line 91
    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->j:Z

    .line 108
    sget-object v0, Lcom/viber/voip/messages/ui/MessagesFragment;->m:Lcom/viber/voip/messages/ui/df;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->n:Lcom/viber/voip/messages/ui/df;

    .line 117
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;-><init>()V

    .line 112
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->j:Z

    .line 113
    return-void
.end method


# virtual methods
.method protected a()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->d:Lcom/viber/voip/messages/adapters/k;

    return-object v0
.end method

.method public a(Ljava/util/Set;)Ljava/util/Map;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/viber/voip/messages/ui/dl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/i;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 254
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->d:Lcom/viber/voip/messages/adapters/k;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->d:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/adapters/k;->a(J)V

    .line 257
    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 379
    new-instance v1, Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string/jumbo v0, "com.viber.voip.action.ACTION_CONTACT_LIST_SELECTABLE2"

    :goto_0
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    const-string/jumbo v2, "title"

    if-eqz p2, :cond_1

    const v0, 0x7f0c03c7

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 382
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 383
    return-void

    .line 379
    :cond_0
    const-string/jumbo v0, "com.viber.voip.action.ACTION_CONTACT_LIST_SELECTABLE2_1TO1"

    goto :goto_0

    .line 380
    :cond_1
    const v0, 0x7f0c0647

    goto :goto_1
.end method

.method public a(Landroid/view/View;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 366
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->g:Lcom/viber/voip/messages/conversation/a;

    invoke-virtual {v0, p2}, Lcom/viber/voip/messages/conversation/a;->e(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v6

    .line 368
    if-eqz v6, :cond_0

    invoke-interface {v6}, Lcom/viber/voip/contacts/b/e;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    invoke-interface {v6}, Lcom/viber/voip/contacts/b/e;->i()Lcom/viber/voip/contacts/b/i;

    move-result-object v0

    .line 370
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->r:Lcom/viber/voip/a/ad;

    invoke-virtual {v2}, Lcom/viber/voip/a/ad;->d()Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 372
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6}, Lcom/viber/voip/contacts/b/e;->getId()J

    move-result-wide v1

    invoke-interface {v6}, Lcom/viber/voip/contacts/b/e;->c()J

    move-result-wide v3

    invoke-interface {v6}, Lcom/viber/voip/contacts/b/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6}, Lcom/viber/voip/contacts/b/e;->b()Landroid/net/Uri;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 374
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 376
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/provider/b;)V
    .locals 4
    .parameter

    .prologue
    .line 515
    instance-of v0, p1, Lcom/viber/voip/messages/conversation/i;

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->d:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/k;->notifyDataSetChanged()V

    .line 522
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->n:Lcom/viber/voip/messages/ui/df;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->d:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v1}, Lcom/viber/voip/messages/adapters/k;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/df;->a(I)V

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    instance-of v0, p1, Lcom/viber/voip/messages/conversation/a;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->i:Lcom/viber/voip/ui/n;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->j()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->g:Lcom/viber/voip/messages/conversation/a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/ui/n;->a(ILcom/viber/voip/messages/conversation/i;Lcom/viber/voip/messages/conversation/a;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 468
    instance-of v1, p1, Lcom/viber/voip/messages/conversation/i;

    if-eqz v1, :cond_9

    .line 469
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->d:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v1}, Lcom/viber/voip/messages/adapters/k;->notifyDataSetChanged()V

    .line 470
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->i:Lcom/viber/voip/ui/n;

    invoke-virtual {v1, v0}, Lcom/viber/voip/ui/n;->a(Z)V

    .line 472
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->q()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 474
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->q:Lcom/viber/voip/a/ad;

    invoke-virtual {v2}, Lcom/viber/voip/a/ad;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 483
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->d:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v1}, Lcom/viber/voip/messages/adapters/k;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 484
    iput-wide v4, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->b:J

    .line 485
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/viber/voip/util/gl;->b(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    .line 489
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->n:Lcom/viber/voip/messages/ui/df;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->d:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v2}, Lcom/viber/voip/messages/adapters/k;->getCount()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/viber/voip/messages/ui/df;->a(I)V

    .line 490
    iget-wide v1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->b:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_2

    .line 491
    iget-wide v1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->b:J

    invoke-virtual {p0, v1, v2, v0}, Lcom/viber/voip/messages/ui/MessagesFragment;->a(JZ)V

    .line 494
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 495
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->p()V

    .line 498
    :cond_3
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getPromoHandler()Lcom/viber/voip/f/j;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->d:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v2}, Lcom/viber/voip/messages/adapters/k;->getCount()I

    move-result v2

    if-lez v2, :cond_8

    :goto_1
    invoke-virtual {v1, v0}, Lcom/viber/voip/f/j;->c(Z)V

    .line 499
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->i()V

    .line 504
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 505
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->i:Lcom/viber/voip/ui/n;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->j()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->g:Lcom/viber/voip/messages/conversation/a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/ui/n;->a(ILcom/viber/voip/messages/conversation/i;Lcom/viber/voip/messages/conversation/a;)V

    .line 508
    :cond_5
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->j:Z

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->l()Z

    move-result v0

    if-nez v0, :cond_6

    .line 509
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->w()V

    .line 511
    :cond_6
    return-void

    .line 476
    :cond_7
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->r:Lcom/viber/voip/a/ad;

    invoke-virtual {v2}, Lcom/viber/voip/a/ad;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 498
    :cond_8
    const/4 v0, 0x0

    goto :goto_1

    .line 500
    :cond_9
    instance-of v1, p1, Lcom/viber/voip/messages/conversation/a;

    if-eqz v1, :cond_4

    .line 501
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->i:Lcom/viber/voip/ui/n;

    invoke-virtual {v1, v0}, Lcom/viber/voip/ui/n;->c(Z)V

    goto :goto_2
.end method

.method public a(Lcom/viber/voip/messages/adapters/a/a;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 322
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CONVERSATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    const-string/jumbo v1, "extra_conversation_data"

    new-instance v2, Lcom/viber/voip/messages/conversation/ui/ConversationData;

    invoke-direct {v2, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationData;-><init>(Lcom/viber/voip/messages/adapters/a/a;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 324
    const-string/jumbo v1, "clicked"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    const-string/jumbo v1, "extra_search_message"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->s()V

    .line 330
    :cond_0
    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->a()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->b:J

    .line 331
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->d:Lcom/viber/voip/messages/adapters/k;

    iget-wide v2, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/adapters/k;->a(J)V

    .line 332
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->n:Lcom/viber/voip/messages/ui/df;

    if-eqz v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->n:Lcom/viber/voip/messages/ui/df;

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/ui/df;->a_(Landroid/content/Intent;)V

    .line 335
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    invoke-virtual {v1}, Lcom/viber/voip/a/m;->g()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 339
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 261
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/i;->d(Ljava/lang/String;)V

    .line 264
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 268
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/a;->b(I)V

    .line 270
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPromoHandler()Lcom/viber/voip/f/j;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/f/j;->c(Z)V

    .line 271
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->i()V

    .line 272
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->d:Lcom/viber/voip/messages/adapters/k;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->d:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/k;->notifyDataSetChanged()V

    .line 250
    :cond_0
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->e()V

    .line 224
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->r()V

    .line 226
    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 619
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 631
    :cond_0
    :goto_0
    return-void

    .line 622
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 623
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    if-nez v1, :cond_2

    .line 624
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 625
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 626
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setClipToPadding(Z)V

    goto :goto_0

    .line 627
    :cond_2
    if-nez p1, :cond_0

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 629
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    goto :goto_0
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->g:Lcom/viber/voip/messages/conversation/a;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->g:Lcom/viber/voip/messages/conversation/a;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a;->e()V

    .line 231
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->g:Lcom/viber/voip/messages/conversation/a;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a;->n()V

    .line 233
    :cond_0
    return-void
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getListAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->d:Lcom/viber/voip/messages/adapters/k;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->k:Landroid/widget/ListView;

    return-object v0
.end method

.method protected h()V
    .locals 0

    .prologue
    .line 576
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->s()V

    .line 577
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->f()V

    .line 578
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->e()V

    .line 579
    return-void
.end method

.method protected i()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 597
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPromoHandler()Lcom/viber/voip/f/j;

    move-result-object v4

    .line 598
    invoke-virtual {v4}, Lcom/viber/voip/f/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lcom/viber/voip/f/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 599
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 600
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, v1, Lcom/viber/voip/HomeActivity;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->b()I

    move-result v0

    if-nez v0, :cond_1

    .line 602
    new-instance v0, Lcom/viber/voip/messages/ui/de;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/de;-><init>(Lcom/viber/voip/messages/ui/MessagesFragment;)V

    invoke-virtual {v4, v1, v0}, Lcom/viber/voip/f/j;->a(Landroid/app/Activity;Lcom/viber/voip/f/e;)Z

    move-result v5

    .line 609
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->j()I

    move-result v0

    if-nez v0, :cond_2

    check-cast v1, Lcom/viber/voip/HomeActivity;

    invoke-virtual {v1}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    move v0, v2

    .line 612
    :goto_0
    if-nez v5, :cond_3

    if-eqz v0, :cond_3

    move v0, v2

    :goto_1
    invoke-virtual {v4, v0}, Lcom/viber/voip/f/j;->a(Z)V

    .line 615
    :cond_1
    return-void

    :cond_2
    move v0, v3

    .line 609
    goto :goto_0

    :cond_3
    move v0, v3

    .line 612
    goto :goto_1
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->d:Lcom/viber/voip/messages/adapters/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->d:Lcom/viber/voip/messages/adapters/k;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/k;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()V
    .locals 2

    .prologue
    .line 435
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->j:Z

    if-eqz v0, :cond_0

    .line 436
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/dd;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/dd;-><init>(Lcom/viber/voip/messages/ui/MessagesFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 444
    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 540
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 541
    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/viber/voip/messages/ui/ConversationActivity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/viber/voip/messages/ui/dl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->t()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public n()Z
    .locals 2

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 547
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/viber/voip/HomeActivity;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 163
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/a;->onActivityCreated(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/viber/voip/util/gl;->a(Landroid/widget/ListView;I)V

    .line 175
    :cond_0
    if-eqz p1, :cond_4

    .line 176
    const-string/jumbo v0, "mode_manager"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;

    .line 177
    const-string/jumbo v2, "conversation_search_result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 178
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;->a()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    const-string/jumbo v1, "open_for_forward"

    iget-boolean v2, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->j:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->j:Z

    move-object v7, v0

    .line 183
    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 184
    new-instance v0, Lcom/viber/voip/messages/conversation/aw;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->h:Lcom/viber/voip/messages/i;

    invoke-direct {v0, v1, v2, p0}, Lcom/viber/voip/messages/conversation/aw;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    .line 193
    :goto_2
    new-instance v0, Lcom/viber/voip/messages/adapters/k;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v3

    iget-boolean v5, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->j:Z

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/viber/voip/messages/adapters/k;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/conversation/i;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;Z)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->d:Lcom/viber/voip/messages/adapters/k;

    .line 194
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->k:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->a()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    invoke-virtual {p0, v4}, Lcom/viber/voip/messages/ui/MessagesFragment;->setHasOptionsMenu(Z)V

    .line 199
    return-void

    :cond_1
    move-object v0, v1

    .line 178
    goto :goto_0

    .line 186
    :cond_2
    new-instance v0, Lcom/viber/voip/messages/conversation/aw;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->h:Lcom/viber/voip/messages/i;

    iget-boolean v5, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->j:Z

    if-nez v5, :cond_3

    move v5, v4

    :goto_3
    move-object v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/messages/conversation/aw;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;ZZLjava/util/ArrayList;Ljava/lang/String;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    .line 188
    new-instance v0, Lcom/viber/voip/messages/conversation/a;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->e:Lcom/viber/voip/contacts/c/d/b;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/viber/voip/messages/conversation/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->g:Lcom/viber/voip/messages/conversation/a;

    goto :goto_2

    .line 186
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    move-object v7, v1

    move-object v6, v1

    goto :goto_1
.end method

.method public onActivityKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 451
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x52

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->y()V

    .line 454
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 635
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPromoHandler()Lcom/viber/voip/f/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/f/j;->e()Z

    move-result v0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/a;->onAttach(Landroid/app/Activity;)V

    .line 122
    instance-of v0, p1, Lcom/viber/voip/messages/ui/df;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "Activity must implement fragment\'s callbacks."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    check-cast p1, Lcom/viber/voip/messages/ui/df;

    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->n:Lcom/viber/voip/messages/ui/df;

    .line 126
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0700ff

    if-ne v0, v1, :cond_0

    .line 360
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/ui/MessagesFragment;->a(Landroid/content/Context;Z)V

    .line 362
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/MessagesFragment;->setHasOptionsMenu(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->l:Lcom/viber/voip/util/b/w;

    .line 140
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->h:Lcom/viber/voip/messages/i;

    .line 141
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->e:Lcom/viber/voip/contacts/c/d/b;

    .line 142
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const v2, 0x7f070456

    .line 387
    const-string/jumbo v0, "onCreateContextMenu"

    const-string/jumbo v1, "Messages fragment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    :goto_0
    return-void

    .line 389
    :cond_0
    const v0, 0x7f100007

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 391
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 392
    invoke-static {v0}, Lcom/viber/voip/util/gl;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/viber/voip/util/gl;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 396
    :cond_1
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->j:Z

    if-eqz v0, :cond_2

    .line 397
    const v0, 0x7f07043b

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 398
    invoke-interface {p1, v2}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 399
    const v0, 0x7f070455

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 400
    const v0, 0x7f07043d

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 403
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/ui/a;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 146
    const v0, 0x7f03001f

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 148
    const v0, 0x102000a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->k:Landroid/widget/ListView;

    .line 149
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->k:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 150
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->k:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->k:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->k:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 154
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 156
    new-instance v0, Lcom/viber/voip/ui/n;

    invoke-direct {v0}, Lcom/viber/voip/ui/n;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->i:Lcom/viber/voip/ui/n;

    .line 158
    return-object v1
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->q()V

    .line 238
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->f()V

    .line 239
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->g:Lcom/viber/voip/messages/conversation/a;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->g:Lcom/viber/voip/messages/conversation/a;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a;->m()V

    .line 242
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/messages/ui/a;->onDestroyView()V

    .line 243
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcom/viber/voip/messages/ui/a;->onDetach()V

    .line 131
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->l()V

    .line 132
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 290
    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/ui/MessagesFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 291
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 295
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->j:Z

    if-eqz v0, :cond_2

    .line 298
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a/b;

    .line 299
    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/a/a/b;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a;

    .line 300
    invoke-interface {v0}, Lcom/viber/voip/messages/adapters/a/a;->e()Z

    move-result v1

    if-nez v1, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0}, Lcom/viber/voip/messages/adapters/a/a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/viber/voip/messages/adapters/a/a;->u()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/viber/voip/messages/ui/dc;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/viber/voip/messages/ui/dc;-><init>(Lcom/viber/voip/messages/ui/MessagesFragment;Landroid/widget/ListView;Landroid/view/View;I)V

    invoke-static {v1, v2, v0, v4, v3}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 317
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/viber/voip/messages/ui/a;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 318
    return-void

    .line 310
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/viber/voip/messages/ui/MessagesFragment;->a(Landroid/widget/ListView;Landroid/view/View;IZ)V

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/viber/voip/messages/ui/MessagesFragment;->a(Landroid/widget/ListView;Landroid/view/View;IZ)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 408
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 429
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/a;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 410
    :sswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/messages/ui/MessagesFragment;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 414
    :sswitch_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/messages/ui/MessagesFragment;->a(Landroid/content/Context;Z)V

    goto :goto_0

    .line 418
    :sswitch_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 421
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.YOU"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/ui/MessagesFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v1

    goto :goto_0

    .line 408
    :sswitch_data_0
    .sparse-switch
        0x7f07043d -> :sswitch_2
        0x7f070455 -> :sswitch_1
        0x7f070456 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->l:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Z)V

    .line 204
    invoke-super {p0}, Lcom/viber/voip/messages/ui/a;->onPause()V

    .line 205
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 459
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 460
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const-string/jumbo v0, "conversation_search_result"

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/i;->v()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 462
    const-string/jumbo v0, "open_for_forward"

    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->j:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 464
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 349
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->l:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Z)V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->l:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Z)V

    goto :goto_0
.end method

.method public onTabReselected()V
    .locals 0

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->y()V

    .line 567
    return-void
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/i;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 557
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b(Z)V

    .line 561
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected s()V
    .locals 4

    .prologue
    .line 582
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->i:Lcom/viber/voip/ui/n;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p0}, Lcom/viber/voip/ui/n;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Landroid/view/View$OnTouchListener;)Z

    .line 583
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->i:Lcom/viber/voip/ui/n;

    invoke-virtual {v0, p0}, Lcom/viber/voip/ui/n;->a(Lcom/viber/voip/ui/p;)V

    .line 584
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->i:Lcom/viber/voip/ui/n;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->j()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->f:Lcom/viber/voip/messages/conversation/i;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessagesFragment;->g:Lcom/viber/voip/messages/conversation/a;

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/ui/n;->a(ILcom/viber/voip/messages/conversation/i;Lcom/viber/voip/messages/conversation/a;)V

    .line 585
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0
    .parameter

    .prologue
    .line 589
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/a;->setUserVisibleHint(Z)V

    .line 590
    if-eqz p1, :cond_0

    .line 591
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessagesFragment;->i()V

    .line 593
    :cond_0
    return-void
.end method
