.class public Lcom/viber/voip/messages/conversation/publicgroup/bf;
.super Lcom/viber/voip/messages/ui/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/viber/provider/e;
.implements Lcom/viber/voip/d;
.implements Lcom/viber/voip/messages/ui/dk;
.implements Lit/sephiroth/android/library/widget/y;


# instance fields
.field private c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

.field private d:Lcom/viber/voip/messages/i;

.field private e:Lcom/actionbarsherlock/view/MenuItem;

.field private f:Lcom/viber/voip/messages/conversation/publicgroup/bi;

.field private g:Lcom/viber/voip/messages/adapters/p;

.field private h:Lcom/viber/voip/messages/ui/df;

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/jni/PublicGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/viber/voip/util/b/w;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/a;-><init>(I)V

    .line 113
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/viber/voip/ui/a/a;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/a/a;

    .line 468
    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0, p4}, Lcom/viber/voip/ui/a/a;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 470
    invoke-virtual {v0, p3}, Lcom/viber/voip/ui/a/a;->b(Landroid/content/DialogInterface$OnClickListener;)V

    .line 471
    invoke-virtual {v0, p2}, Lcom/viber/voip/ui/a/a;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 475
    :goto_0
    return-object v0

    .line 473
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/bf;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/viber/voip/ui/a/a;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 459
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 460
    invoke-virtual {v0, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 461
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 462
    :cond_0
    invoke-virtual {p1, v1, p2}, Lcom/viber/voip/ui/a/a;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 463
    return-void
.end method


# virtual methods
.method protected a(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;Lcom/viber/voip/messages/ui/do;)Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 148
    new-instance v0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;-><init>(Lcom/viber/voip/messages/ui/dk;Lcom/viber/voip/messages/ui/dn;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;Lcom/viber/voip/messages/ui/do;)V

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
    .line 447
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->r()V

    .line 305
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->e()V

    .line 306
    return-void
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 383
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->g:Lcom/viber/voip/messages/adapters/p;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->g:Lcom/viber/voip/messages/adapters/p;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/adapters/p;->a(J)V

    .line 386
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 329
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 330
    if-nez v0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    instance-of v1, p1, Lcom/viber/voip/messages/conversation/publicgroup/ar;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->f:Lcom/viber/voip/messages/conversation/publicgroup/bi;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->k()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->a(Z)V

    .line 335
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->g:Lcom/viber/voip/messages/adapters/p;

    if-nez v1, :cond_2

    .line 336
    new-instance v1, Lcom/viber/voip/messages/adapters/p;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/viber/voip/messages/adapters/p;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;Lcom/viber/voip/messages/conversation/publicgroup/ar;Z)V

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->g:Lcom/viber/voip/messages/adapters/p;

    .line 337
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->g:Lcom/viber/voip/messages/adapters/p;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->g:Lcom/viber/voip/messages/adapters/p;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/p;->notifyDataSetChanged()V

    .line 343
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->g:Lcom/viber/voip/messages/adapters/p;

    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/p;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    iput-wide v6, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->b:J

    .line 345
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/viber/voip/util/gl;->b(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    .line 348
    :cond_3
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->b:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_4

    .line 349
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->b:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->a(JZ)V

    .line 351
    :cond_4
    invoke-virtual {p1}, Lcom/viber/provider/b;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->f:Lcom/viber/voip/messages/conversation/publicgroup/bi;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->d()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_5

    .line 352
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->f()V

    .line 354
    :cond_5
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->p()V

    .line 355
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->w()V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/adapters/a/a;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 310
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CONVERSATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 311
    const-string/jumbo v1, "extra_conversation_data"

    new-instance v2, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;

    check-cast p1, Lcom/viber/voip/messages/adapters/a/b;

    invoke-direct {v2, p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;-><init>(Lcom/viber/voip/messages/adapters/a/b;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 313
    const-string/jumbo v1, "extra_search_message"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->s()V

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->h:Lcom/viber/voip/messages/ui/df;

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->h:Lcom/viber/voip/messages/ui/df;

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/ui/df;->a_(Landroid/content/Intent;)V

    .line 320
    :cond_1
    return-void
.end method

.method public a(Lit/sephiroth/android/library/widget/u;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit/sephiroth/android/library/widget/u",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 170
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/jni/PublicGroupInfo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/j;->a(Lcom/viber/jni/PublicGroupInfo;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->startActivity(Landroid/content/Intent;)V

    .line 171
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 390
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->d(Ljava/lang/String;)V

    .line 393
    :cond_0
    return-void
.end method

.method protected a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/jni/PublicGroupInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->f:Lcom/viber/voip/messages/conversation/publicgroup/bi;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->b()V

    .line 423
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->f:Lcom/viber/voip/messages/conversation/publicgroup/bi;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->a(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->a()Z

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
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->d:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/bg;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/publicgroup/bg;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/bf;)V

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/messages/controller/aj;)V

    .line 407
    return-void
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->e()V

    .line 415
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->f:Lcom/viber/voip/messages/conversation/publicgroup/bi;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->b()V

    goto :goto_0
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->a()Z

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
    .line 276
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->g:Lcom/viber/voip/messages/adapters/p;

    return-object v0
.end method

.method protected h()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->f:Lcom/viber/voip/messages/conversation/publicgroup/bi;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p0}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->a(Landroid/view/View;Landroid/view/View$OnClickListener;Lit/sephiroth/android/library/widget/y;)Z

    .line 296
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->f:Lcom/viber/voip/messages/conversation/publicgroup/bi;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->a()V

    .line 297
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->a(Ljava/util/ArrayList;)V

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->a()V

    .line 301
    return-void
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->getCount()I

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
    .locals 0

    .prologue
    .line 432
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 437
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
    .line 442
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->t()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->t()Ljava/lang/String;

    move-result-object v4

    .line 129
    :goto_0
    if-eqz p1, :cond_3

    .line 130
    const-string/jumbo v0, "conversation_search_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 131
    const-string/jumbo v0, "suggestion_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const-string/jumbo v0, "suggestion_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->i:Ljava/util/ArrayList;

    .line 136
    :cond_0
    :goto_1
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/bi;

    invoke-direct {v0}, Lcom/viber/voip/messages/conversation/publicgroup/bi;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->f:Lcom/viber/voip/messages/conversation/publicgroup/bi;

    .line 137
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/ar;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->d:Lcom/viber/voip/messages/i;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/conversation/publicgroup/ar;-><init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Ljava/lang/String;Ljava/util/ArrayList;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    .line 138
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 139
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/a;->onActivityCreated(Landroid/os/Bundle;)V

    .line 141
    if-eqz p1, :cond_1

    .line 142
    const-string/jumbo v0, "update_details"

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/bk;

    invoke-direct {v1, p0, v7}, Lcom/viber/voip/messages/conversation/publicgroup/bk;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/bf;Lcom/viber/voip/messages/conversation/publicgroup/bg;)V

    invoke-direct {p0, v0, v1, v7, v7}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Lcom/viber/voip/ui/a/a;

    .line 144
    :cond_1
    return-void

    .line 127
    :cond_2
    const-string/jumbo v4, ""

    goto :goto_0

    :cond_3
    move-object v5, v7

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 281
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/a;->onAttach(Landroid/app/Activity;)V

    .line 282
    instance-of v0, p1, Lcom/viber/voip/messages/ui/df;

    if-nez v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "Activity must implement fragment\'s callbacks."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    check-cast p1, Lcom/viber/voip/messages/ui/df;

    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->h:Lcom/viber/voip/messages/ui/df;

    .line 286
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 184
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->f:Lcom/viber/voip/messages/conversation/publicgroup/bi;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->f()V

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {}, Lcom/viber/voip/market/MarketActivity;->b()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x7f0700ff
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/a;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->setHasOptionsMenu(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->j:Lcom/viber/voip/util/b/w;

    .line 120
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->d:Lcom/viber/voip/messages/i;

    .line 121
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 189
    :cond_0
    const v0, 0x7f100009

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 190
    const v0, 0x7f07043d

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->e:Lcom/actionbarsherlock/view/MenuItem;

    .line 191
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/viber/voip/util/gl;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/viber/voip/util/gl;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->e:Lcom/actionbarsherlock/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setShowAsAction(I)V

    .line 202
    :goto_1
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/j/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    const v0, 0x7f070456

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->removeItem(I)V

    .line 205
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/viber/voip/messages/ui/a;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->e:Lcom/actionbarsherlock/view/MenuItem;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getNewPackagesCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->setMoreOptionMenuIcon(Lcom/actionbarsherlock/view/MenuItem;I)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 159
    const v0, 0x7f03001e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->q()V

    .line 154
    invoke-super {p0}, Lcom/viber/voip/messages/ui/a;->onDestroyView()V

    .line 155
    return-void
.end method

.method public onFragmentVisibilityChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 452
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/a;->onFragmentVisibilityChanged(Z)V

    .line 454
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPromoHandler()Lcom/viber/voip/f/j;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/f/j;->c(Z)V

    .line 455
    return-void

    .line 454
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a/b;

    .line 262
    invoke-virtual {v0}, Lcom/viber/voip/messages/adapters/a/a/b;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/adapters/a/a;

    .line 264
    invoke-interface {v0}, Lcom/viber/voip/messages/adapters/a/a;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 265
    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->a(Landroid/widget/ListView;Landroid/view/View;IZ)V

    .line 268
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v1

    invoke-interface {v0}, Lcom/viber/voip/messages/adapters/a/a;->x()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/messages/i;->b(J)V

    .line 271
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/viber/voip/messages/ui/a;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 272
    return-void
.end method

.method public onNewStickerPackageCountChanged(I)V
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->e:Lcom/actionbarsherlock/view/MenuItem;

    invoke-virtual {p0, v0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->setMoreOptionMenuIcon(Lcom/actionbarsherlock/view/MenuItem;I)V

    .line 227
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 231
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 254
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/a;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 233
    :sswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/hc;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 236
    :sswitch_1
    invoke-static {}, Lcom/viber/voip/user/UserData;->getViberName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/viber/voip/user/UserData;->getViberImage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    :cond_0
    new-instance v1, Lcom/viber/voip/ui/a/c;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/viber/voip/ui/a/c;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0479

    invoke-virtual {v1, v2}, Lcom/viber/voip/ui/a/c;->a(I)Lcom/viber/voip/ui/a/c;

    move-result-object v1

    const v2, 0x7f0c047a

    invoke-virtual {v1, v2}, Lcom/viber/voip/ui/a/c;->b(I)Lcom/viber/voip/ui/a/c;

    move-result-object v1

    const v2, 0x7f0c02b5

    new-instance v3, Lcom/viber/voip/messages/conversation/publicgroup/bk;

    invoke-direct {v3, p0, v4}, Lcom/viber/voip/messages/conversation/publicgroup/bk;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/bf;Lcom/viber/voip/messages/conversation/publicgroup/bg;)V

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/ui/a/c;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/viber/voip/ui/a/c;

    move-result-object v1

    const v2, 0x7f0c02b6

    invoke-virtual {v1, v2, v4}, Lcom/viber/voip/ui/a/c;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/viber/voip/ui/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ui/a/c;->a()Lcom/viber/voip/ui/a/a;

    move-result-object v1

    .line 245
    const-string/jumbo v2, "update_details"

    invoke-direct {p0, v1, v2}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->a(Lcom/viber/voip/ui/a/a;Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CREATE_PUBLIC_GROUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 251
    :sswitch_2
    invoke-static {}, Lcom/viber/voip/market/MarketActivity;->b()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 231
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f07043d -> :sswitch_0
        0x7f070456 -> :sswitch_1
        0x7f070458 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->j:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Z)V

    .line 165
    invoke-super {p0}, Lcom/viber/voip/messages/ui/a;->onPause()V

    .line 166
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 361
    invoke-super {p0, p1}, Lcom/viber/voip/messages/ui/a;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 362
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const-string/jumbo v0, "conversation_search_result"

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->v()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 364
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->f:Lcom/viber/voip/messages/conversation/publicgroup/bi;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 366
    const-string/jumbo v0, "suggestion_list"

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->f:Lcom/viber/voip/messages/conversation/publicgroup/bi;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/publicgroup/bi;->d()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->c:Lcom/viber/voip/messages/conversation/publicgroup/ar;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/ar;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const-string/jumbo v0, "suggestion_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 211
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->j:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Z)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/bf;->j:Lcom/viber/voip/util/b/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->a(Z)V

    goto :goto_0
.end method
