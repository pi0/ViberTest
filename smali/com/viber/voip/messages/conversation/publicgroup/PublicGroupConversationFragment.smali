.class public Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;
.super Lcom/viber/voip/messages/conversation/ui/ConversationFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/voip/messages/conversation/a/b/d;
.implements Lcom/viber/voip/widget/k;


# instance fields
.field final a:Lcom/viber/jni/PhoneControllerDelegateAdapter;

.field private l:Lcom/viber/voip/messages/conversation/publicgroup/ao;

.field private m:Landroid/view/View;

.field private n:Landroid/view/View;

.field private o:I

.field private p:I

.field private q:J

.field private r:Ljava/lang/String;

.field private s:I

.field private t:Landroid/app/ProgressDialog;

.field private u:Lcom/viber/voip/widget/MessageBar;

.field private v:Ljava/lang/Boolean;

.field private w:Z

.field private x:Lcom/actionbarsherlock/view/MenuItem;

.field private y:Lcom/viber/voip/messages/controller/di;

.field private z:Lcom/viber/voip/messages/controller/di;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 69
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;-><init>()V

    .line 82
    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->o:I

    .line 83
    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->p:I

    .line 352
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/af;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/publicgroup/af;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->y:Lcom/viber/voip/messages/controller/di;

    .line 517
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/ah;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/publicgroup/ah;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->z:Lcom/viber/voip/messages/controller/di;

    .line 537
    new-instance v0, Lcom/viber/voip/messages/conversation/publicgroup/aj;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/publicgroup/aj;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->a:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    .line 618
    return-void
.end method

.method private I()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :cond_0
    return-void
.end method

.method private K()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->n:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->n:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    :cond_0
    return-void
.end method

.method private L()V
    .locals 4

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.EDIT_PUBLIC_GROUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 289
    const-string/jumbo v1, "public_group_id_extra"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ui/m;->c()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 290
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->startActivity(Landroid/content/Intent;)V

    .line 291
    return-void
.end method

.method private M()V
    .locals 8

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c0477

    const v2, 0x7f0c0478

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/messages/conversation/publicgroup/ae;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/conversation/publicgroup/ae;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V

    const/4 v4, 0x0

    const v5, 0x7f0c02b5

    const v6, 0x7f0c058c

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IIZ)Landroid/content/DialogInterface;

    .line 350
    return-void
.end method

.method private N()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 397
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->e()Lcom/viber/voip/messages/conversation/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/v;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->f()Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->f()Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->u()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->f()Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->F()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private O()V
    .locals 1

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->N()Z

    move-result v0

    .line 404
    if-eqz v0, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->P()V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->Q()V

    goto :goto_0
.end method

.method private P()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 412
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->v:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->v:Ljava/lang/Boolean;

    .line 415
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0300d8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 417
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0702e5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    const v0, 0x7f0702f8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/ag;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/publicgroup/ag;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 431
    :cond_1
    return-void
.end method

.method private Q()V
    .locals 3

    .prologue
    .line 434
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->v:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->v:Ljava/lang/Boolean;

    .line 436
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0702f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 437
    if-eqz v1, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0702e5

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 441
    :cond_1
    return-void
.end method

.method private R()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 444
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->u:Lcom/viber/voip/widget/MessageBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->u:Lcom/viber/voip/widget/MessageBar;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const v2, 0x7f0c06bf

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    const v3, 0x7f0c06c0

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f020172

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/widget/MessageBar;->a(Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 449
    :cond_0
    return-void
.end method

.method private S()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 452
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->u:Lcom/viber/voip/widget/MessageBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->u:Lcom/viber/voip/widget/MessageBar;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    const v2, 0x7f0c06c1

    invoke-virtual {v1, v2}, Lcom/viber/voip/ViberApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v4, v3

    move v5, v3

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/widget/MessageBar;->a(Ljava/lang/String;Ljava/lang/String;IIZZZ)V

    .line 455
    :cond_0
    return-void
.end method

.method private T()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->u:Lcom/viber/voip/widget/MessageBar;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->u:Lcom/viber/voip/widget/MessageBar;

    invoke-virtual {v0}, Lcom/viber/voip/widget/MessageBar;->a()V

    .line 461
    :cond_0
    return-void
.end method

.method private U()V
    .locals 4

    .prologue
    .line 578
    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d0134

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 579
    const v1, 0x7f0c06f2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 580
    const v1, 0x7f0c06f3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 581
    const v1, 0x7f0c0686

    new-instance v2, Lcom/viber/voip/messages/conversation/publicgroup/al;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/conversation/publicgroup/al;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 587
    const v1, 0x7f0c02b6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 588
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 589
    return-void
.end method

.method private V()V
    .locals 3

    .prologue
    .line 592
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 593
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/w;->k()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 594
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/messages/conversation/publicgroup/am;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/conversation/publicgroup/am;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/viber/voip/messages/controller/x;->a(Ljava/util/Set;Lcom/viber/voip/messages/controller/aa;)V

    .line 602
    return-void
.end method

.method private W()V
    .locals 4

    .prologue
    .line 605
    invoke-static {}, Lcom/viber/voip/user/UserData;->getViberName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/user/UserData;->getViberImage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->q:J

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/GroupController;->a(JI)V

    .line 607
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->I()V

    .line 611
    :goto_0
    return-void

    .line 609
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->M()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/messages/conversation/publicgroup/ao;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->l:Lcom/viber/voip/messages/conversation/publicgroup/ao;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;Lcom/viber/voip/messages/conversation/publicgroup/ao;)Lcom/viber/voip/messages/conversation/publicgroup/ao;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->l:Lcom/viber/voip/messages/conversation/publicgroup/ao;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Lcom/viber/voip/messages/conversation/publicgroup/aq;Landroid/view/View;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x11

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 202
    const v0, 0x7f0702f2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 203
    if-eqz v0, :cond_0

    .line 204
    const v1, 0x7f03010a

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 205
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->m:Landroid/view/View;

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->m:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->m:Landroid/view/View;

    const v1, 0x7f070122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 210
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->D()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v9}, Lcom/viber/voip/messages/a/a;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->c()Ljava/lang/String;

    move-result-object v2

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u202a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0c0687

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u202a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u202c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u202a"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u202c"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 216
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 217
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 218
    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v6, v3, v4, v1, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 219
    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v9}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v6, v1, v5, v2, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 220
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->m:Landroid/view/View;

    const v1, 0x7f07036f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->m:Landroid/view/View;

    const v1, 0x7f070370

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->m:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 225
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/messages/conversation/a/o;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    return-object v0
.end method

.method private b(J)V
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 372
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "Joining"

    invoke-static {v0, v1, v2, v4, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->t:Landroid/app/ProgressDialog;

    .line 373
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->s:I

    .line 374
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->y:Lcom/viber/voip/messages/controller/di;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/dc;)V

    .line 375
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->g()Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->s:I

    const-string/jumbo v5, ""

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->g()Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v2

    iget-object v6, v2, Lcom/viber/voip/messages/conversation/ui/ConversationData;->j:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->g()Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;

    iget-wide v7, v2, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->f:J

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->g()Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v2

    check-cast v2, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;

    iget-object v9, v2, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;->g:Ljava/lang/String;

    move-wide v2, p1

    invoke-interface/range {v0 .. v9}, Lcom/viber/voip/messages/controller/GroupController;->a(IJILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 379
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;Ljava/lang/Runnable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Lcom/viber/voip/messages/conversation/publicgroup/aq;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 234
    const v0, 0x7f0702f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 235
    if-eqz v0, :cond_0

    .line 236
    const v1, 0x7f03010e

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 237
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->n:Landroid/view/View;

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->n:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->n:Landroid/view/View;

    const v1, 0x7f07038c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->n:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->s:I

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->t:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->Q()V

    return-void
.end method

.method static synthetic f(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)J
    .locals 2
    .parameter

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->q:J

    return-wide v0
.end method

.method private f(Z)V
    .locals 2
    .parameter

    .prologue
    .line 478
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->p:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 479
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->x:Lcom/actionbarsherlock/view/MenuItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->x:Lcom/actionbarsherlock/view/MenuItem;

    invoke-interface {v1}, Lcom/actionbarsherlock/view/MenuItem;->isVisible()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 482
    :cond_0
    return-void

    .line 478
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic g(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->S()V

    return-void
.end method

.method static synthetic h(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/messages/conversation/w;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    return-object v0
.end method

.method static synthetic i(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->T()V

    return-void
.end method

.method static synthetic j(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/widget/MessageBar;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->u:Lcom/viber/voip/widget/MessageBar;

    return-object v0
.end method

.method static synthetic k(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->V()V

    return-void
.end method

.method static synthetic l(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->w:Z

    return v0
.end method

.method static synthetic m(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/messages/conversation/w;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    return-object v0
.end method

.method static synthetic n(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/messages/conversation/w;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    return-object v0
.end method

.method static synthetic o(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/messages/conversation/w;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    return-object v0
.end method

.method static synthetic p(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)Lcom/viber/voip/messages/conversation/w;
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Parcelable;)V
    .locals 0
    .parameter

    .prologue
    .line 616
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 8
    .parameter

    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CONNECTION_PROBLEM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 260
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->af()I

    move-result v1

    iget-wide v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->q:J

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->ah()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->Z()J

    move-result-wide v6

    invoke-interface/range {v0 .. v7}, Lcom/viber/voip/messages/controller/x;->a(IJJJ)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/conversation/h;ZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/h;ZZ)V

    .line 114
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    check-cast p1, Lcom/viber/voip/messages/conversation/publicgroup/aq;

    .line 117
    const v0, 0x7f0c0672

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->w()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {p0, v0, v3}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->a(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 120
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->u()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->o:I

    .line 121
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->d()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->q:J

    .line 122
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->p:I

    .line 124
    iget-object v4, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->j:Lcom/viber/voip/messages/conversation/ui/az;

    iget v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->p:I

    if-ne v0, v6, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v4, v0}, Lcom/viber/voip/messages/conversation/ui/az;->c(I)Z

    .line 127
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->u()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 145
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->I()V

    .line 146
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->K()V

    .line 150
    :goto_2
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->O()V

    .line 151
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->j()Z

    move-result v0

    if-nez v0, :cond_4

    :goto_3
    invoke-direct {p0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f(Z)V

    goto :goto_0

    .line 124
    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    .line 129
    :pswitch_0
    invoke-direct {p0, p1, v3}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->a(Lcom/viber/voip/messages/conversation/publicgroup/aq;Landroid/view/View;)V

    .line 130
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->K()V

    goto :goto_2

    .line 134
    :pswitch_1
    const v0, 0x7f0702ed

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 135
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->b()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 137
    invoke-direct {p0, p1, v3}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->b(Lcom/viber/voip/messages/conversation/publicgroup/aq;Landroid/view/View;)V

    .line 142
    :goto_4
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->I()V

    goto :goto_2

    .line 140
    :cond_3
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->K()V

    goto :goto_4

    :cond_4
    move v1, v2

    .line 151
    goto :goto_3

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)V
    .locals 1
    .parameter

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->r:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/v;ZI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 168
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Lcom/viber/voip/messages/conversation/v;ZI)V

    .line 169
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->O()V

    .line 170
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->w:Z

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->c:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->j:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->a()V

    .line 175
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->w:Z

    .line 177
    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->f()Lcom/viber/voip/messages/conversation/h;

    move-result-object v1

    .line 185
    :goto_0
    if-eqz v1, :cond_1

    .line 186
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v1

    .line 188
    check-cast v0, Lcom/viber/voip/messages/conversation/publicgroup/aq;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/aq;->G()Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->r:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->r:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 191
    :cond_0
    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->r:Ljava/lang/String;

    .line 192
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v2

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v3

    invoke-interface {v2, v3, v4, v0}, Lcom/viber/voip/messages/controller/GroupController;->b(JLjava/lang/String;)V

    .line 199
    :cond_1
    return-void

    .line 184
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 501
    return-void
.end method

.method protected a(Landroid/view/View;)Z
    .locals 1
    .parameter

    .prologue
    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 268
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->d:Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ui/m;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {v2, v1, v1}, Lcom/viber/voip/messages/conversation/ui/co;->a(ZZ)V

    .line 270
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    iget v3, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->o:I

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/conversation/ui/co;->c(Z)V

    .line 271
    invoke-direct {p0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f(Z)V

    .line 273
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 270
    goto :goto_0
.end method

.method public b(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 4
    .parameter

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->C()Lcom/viber/voip/messages/conversation/ui/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/m;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->V()Z

    move-result v0

    if-nez v0, :cond_2

    .line 298
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->aa()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/a/a;->a(JZ)Landroid/net/Uri;

    move-result-object v1

    .line 299
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0370

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v1, v0}, Lcom/viber/voip/user/PublicGroupParticipantDetailsActivity;->buildIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->z()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 302
    :cond_2
    invoke-super {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b(Lcom/viber/voip/messages/conversation/a/a/a;)V

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 277
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c()V

    .line 278
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/co;->c(Z)V

    .line 279
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f(Z)V

    .line 280
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->L()V

    .line 285
    return-void
.end method

.method protected e()Lcom/viber/voip/messages/conversation/a/o;
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    if-nez v0, :cond_0

    .line 310
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e()Lcom/viber/voip/messages/conversation/a/o;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->e:Lcom/viber/voip/messages/conversation/a/o;

    .line 311
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/ad;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/publicgroup/ad;-><init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 321
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->e()Lcom/viber/voip/messages/conversation/a/o;

    move-result-object v0

    return-object v0
.end method

.method protected f()V
    .locals 2

    .prologue
    .line 572
    const/4 v0, 0x1

    iget v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->o:I

    if-ne v0, v1, :cond_0

    .line 573
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->f()V

    .line 575
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 327
    sparse-switch v0, :sswitch_data_0

    .line 338
    :goto_0
    return-void

    .line 329
    :sswitch_0
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->W()V

    goto :goto_0

    .line 332
    :sswitch_1
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->U()V

    goto :goto_0

    .line 335
    :sswitch_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f:Lcom/viber/voip/messages/conversation/w;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/w;->f()Lcom/viber/voip/messages/conversation/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->b(J)V

    goto :goto_0

    .line 327
    :sswitch_data_0
    .sparse-switch
        0x7f07036f -> :sswitch_1
        0x7f070370 -> :sswitch_0
        0x7f07038c -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 160
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->v:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->v:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->Q()V

    .line 162
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->P()V

    .line 164
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;Lcom/actionbarsherlock/view/MenuInflater;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 465
    const v0, 0x7f10001e

    invoke-virtual {p2, v0, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 466
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->i:Lcom/actionbarsherlock/view/Menu;

    .line 467
    const v0, 0x7f070490

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->x:Lcom/actionbarsherlock/view/MenuItem;

    .line 468
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->x:Lcom/actionbarsherlock/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/actionbarsherlock/view/MenuItem;->setVisible(Z)Lcom/actionbarsherlock/view/MenuItem;

    .line 469
    invoke-direct {p0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->f(Z)V

    .line 471
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 472
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/co;->a(Lcom/actionbarsherlock/view/Menu;)V

    .line 473
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/conversation/ui/co;->b(Z)V

    .line 475
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 98
    const v1, 0x7f0702f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->m:Landroid/view/View;

    .line 99
    const v1, 0x7f0702f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->n:Landroid/view/View;

    .line 100
    new-instance v1, Lcom/viber/voip/widget/MessageBar;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->E()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/viber/voip/widget/MessageBar;-><init>(Landroid/view/LayoutInflater;Landroid/view/View;)V

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->u:Lcom/viber/voip/widget/MessageBar;

    .line 101
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->u:Lcom/viber/voip/widget/MessageBar;

    invoke-virtual {v1, p0}, Lcom/viber/voip/widget/MessageBar;->a(Lcom/viber/voip/widget/k;)V

    .line 102
    return-object v0
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 566
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->y:Lcom/viber/voip/messages/controller/di;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/e;->b(Lcom/viber/voip/messages/controller/dc;)V

    .line 567
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->onDetach()V

    .line 568
    return-void
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    .line 486
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 494
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->b:Lcom/viber/voip/messages/conversation/ui/co;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/co;->a(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 488
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.INVITE_TO_PUBLIC_GROUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    const-string/jumbo v1, "extra_group_id"

    iget-wide v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->q:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 490
    const-string/jumbo v1, "extra_group_name"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->G()Lcom/viber/voip/messages/conversation/w;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/w;->f()Lcom/viber/voip/messages/conversation/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->startActivity(Landroid/content/Intent;)V

    .line 492
    const/4 v0, 0x1

    goto :goto_0

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x7f070490
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 560
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->l:Lcom/viber/voip/messages/conversation/publicgroup/ao;

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 561
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->onPause()V

    .line 562
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 383
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->onStart()V

    .line 385
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->R()V

    .line 389
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->a:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 390
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->z:Lcom/viber/voip/messages/controller/di;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/dc;)V

    .line 391
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->q:J

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/controller/c/e;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->S()V

    .line 394
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 510
    invoke-super {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->onStop()V

    .line 512
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->a:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 513
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->z:Lcom/viber/voip/messages/controller/di;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/controller/c/e;->b(Lcom/viber/voip/messages/controller/dc;)V

    .line 514
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->T()V

    .line 515
    return-void
.end method
