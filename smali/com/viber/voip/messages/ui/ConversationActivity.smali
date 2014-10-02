.class public Lcom/viber/voip/messages/ui/ConversationActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"

# interfaces
.implements Lcom/slidingmenu/lib/l;
.implements Lcom/slidingmenu/lib/n;
.implements Lcom/slidingmenu/lib/p;
.implements Lcom/viber/voip/messages/conversation/ui/az;
.implements Lcom/viber/voip/messages/conversation/ui/ci;
.implements Lcom/viber/voip/messages/conversation/ui/cm;
.implements Lcom/viber/voip/messages/ui/bl;
.implements Lcom/viber/voip/messages/ui/df;


# instance fields
.field private a:Lcom/viber/voip/messages/ui/g;

.field private b:Landroid/os/Handler;

.field private c:Lcom/slidingmenu/lib/SlidingMenu;

.field private d:Lcom/viber/voip/messages/ui/a;

.field private e:Lcom/viber/voip/messages/conversation/h;

.field private f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

.field private g:Lcom/viber/voip/messages/conversation/ui/cs;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:J

.field private n:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    .line 412
    new-instance v0, Lcom/viber/voip/messages/ui/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/e;-><init>(Lcom/viber/voip/messages/ui/ConversationActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->n:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/ConversationActivity;)Lcom/slidingmenu/lib/SlidingMenu;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/ConversationActivity;Lcom/viber/voip/messages/conversation/h;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/ConversationActivity;->b(Lcom/viber/voip/messages/conversation/h;Z)V

    return-void
.end method

.method private a(Landroid/content/Intent;Z)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 301
    const-string/jumbo v1, "go_up"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    const-string/jumbo v1, "navigated_to_messages_on_back"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/ConversationActivity;->e(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "com.viber.voip.action.PUBLIC_GROUP"

    :goto_0
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/ui/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 303
    const/4 v0, 0x1

    .line 305
    :cond_1
    return v0

    .line 302
    :cond_2
    const-string/jumbo v0, "com.viber.voip.action.MESSAGES"

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/ConversationActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/ConversationActivity;)Lcom/viber/voip/messages/conversation/h;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->e:Lcom/viber/voip/messages/conversation/h;

    return-object v0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 121
    const-string/jumbo v0, "popup_action_id"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 122
    if-eq v0, v1, :cond_0

    .line 123
    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    :pswitch_0
    const-string/jumbo v0, "popup_action_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/ConversationActivity;->setIntent(Landroid/content/Intent;)V

    .line 162
    :goto_1
    return-void

    .line 125
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->j()Lcom/viber/voip/messages/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->b()Landroid/net/Uri;

    goto :goto_0

    .line 128
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->j()Lcom/viber/voip/messages/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->c()V

    goto :goto_0

    .line 131
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->j()Lcom/viber/voip/messages/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->e()V

    goto :goto_0

    .line 134
    :pswitch_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->j()Lcom/viber/voip/messages/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->a()V

    goto :goto_0

    .line 137
    :pswitch_5
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->j()Lcom/viber/voip/messages/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->d()Landroid/net/Uri;

    goto :goto_0

    .line 140
    :pswitch_6
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->j()Lcom/viber/voip/messages/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->f()V

    goto :goto_0

    .line 143
    :pswitch_7
    invoke-static {}, Lcom/viber/voip/market/MarketActivity;->a()V

    goto :goto_0

    .line 146
    :pswitch_8
    const-string/jumbo v0, "package_id"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->d(I)V

    .line 147
    const-string/jumbo v0, "package_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :pswitch_9
    const-string/jumbo v0, "package_id"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->e(I)V

    .line 151
    const-string/jumbo v0, "package_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CLOSE_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 160
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CLOSE_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 123
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private b(Lcom/viber/voip/messages/conversation/h;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 468
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->d:Lcom/viber/voip/messages/ui/a;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/ui/a;->a(Lcom/viber/voip/messages/conversation/h;Z)V

    .line 469
    iget-object v2, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->g:Lcom/viber/voip/messages/conversation/ui/cs;

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, p1, v0, v1}, Lcom/viber/voip/messages/conversation/ui/cs;->a(Lcom/viber/voip/messages/conversation/h;ZZ)V

    .line 470
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->m:J

    .line 471
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->i()V

    .line 472
    return-void

    :cond_0
    move v0, v1

    .line 469
    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/ConversationActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->j:Z

    return p1
.end method

.method private c(Landroid/content/Intent;)Z
    .locals 1
    .parameter

    .prologue
    .line 309
    const-string/jumbo v0, "back_intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 310
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 312
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/ConversationActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->l()V

    return-void
.end method

.method private d(Landroid/content/Intent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 323
    if-eqz p1, :cond_2

    .line 324
    const-string/jumbo v0, "extra_conversation_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;

    .line 325
    if-eqz v0, :cond_2

    .line 326
    iget-boolean v2, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->p:Z

    if-nez v2, :cond_0

    iget-boolean v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->q:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 329
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 326
    goto :goto_0

    :cond_2
    move v0, v1

    .line 329
    goto :goto_0
.end method

.method private e(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 333
    if-eqz p1, :cond_2

    .line 334
    const-string/jumbo v0, "extra_conversation_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;

    .line 335
    if-eqz v0, :cond_2

    .line 336
    iget v2, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 340
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 336
    goto :goto_0

    :cond_2
    move v0, v1

    .line 340
    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->e(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->h:Z

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V

    goto :goto_0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 181
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->a:Lcom/viber/voip/messages/ui/g;

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-wide v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->m:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->a:Lcom/viber/voip/messages/ui/g;

    iget-wide v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->m:J

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/ui/g;->a(J)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->a:Lcom/viber/voip/messages/ui/g;

    iget-wide v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->m:J

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/ui/g;->b(J)V

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 374
    const/4 v1, 0x0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 376
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchmodeMarginThreshold(I)V

    .line 377
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->g()Z

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/SlidingMenu;->h()Z

    move-result v1

    .line 396
    iget-object v2, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->setHasOptionsMenu(Z)V

    .line 397
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->i:Z

    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 398
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b()V

    .line 402
    :cond_0
    :goto_1
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->i:Z

    .line 403
    return-void

    .line 396
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :cond_2
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->i:Z

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 400
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c()V

    goto :goto_1
.end method

.method private l()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0a0137

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    .line 440
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0a0136

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffsetRes(I)V

    .line 441
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    const v1, 0x3eb33333

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 442
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->a(Landroid/app/Activity;I)V

    .line 446
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0203d4

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 447
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0203d5

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setSecondaryShadowDrawable(I)V

    .line 449
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->e(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    .line 451
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f030005

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setSecondaryMenu(I)V

    .line 452
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f070092

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->g:Lcom/viber/voip/messages/conversation/ui/cs;

    .line 458
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f070091

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/a;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->d:Lcom/viber/voip/messages/ui/a;

    .line 459
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->d:Lcom/viber/voip/messages/ui/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/a;->setHasOptionsMenu(Z)V

    .line 461
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->A()V

    .line 463
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->h()V

    .line 464
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->j()V

    .line 465
    return-void

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    .line 455
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setSecondaryMenu(I)V

    .line 456
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f070093

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->g:Lcom/viber/voip/messages/conversation/ui/cs;

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 385
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->k()V

    .line 386
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 519
    return-void
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 350
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/h;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->e:Lcom/viber/voip/messages/conversation/h;

    .line 427
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->h:Z

    .line 428
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->h()V

    .line 430
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->k:Z

    if-nez v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 432
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 436
    :goto_1
    return-void

    .line 427
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 434
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/ConversationActivity;->b(Lcom/viber/voip/messages/conversation/h;Z)V

    goto :goto_1
.end method

.method public a(ZJLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 480
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->j:Z

    if-eqz v0, :cond_0

    .line 481
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/f;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/f;-><init>(Lcom/viber/voip/messages/ui/ConversationActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 489
    :cond_0
    return-void
.end method

.method public a_(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 513
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Landroid/content/Intent;ZZ)Z

    .line 514
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->j:Z

    .line 515
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->k()V

    .line 391
    return-void
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 503
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b(I)V

    .line 504
    return-void
.end method

.method public c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 294
    if-eqz p1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/ConversationActivity;->a(Landroid/content/Intent;Z)Z

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->finish()V

    .line 298
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 493
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->getMode()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 494
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, p1}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 495
    const/4 v0, 0x1

    .line 498
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->g:Lcom/viber/voip/messages/conversation/ui/cs;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/ui/cs;->a()V

    .line 509
    return-void
.end method

.method public d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 476
    return-void
.end method

.method public d_(I)V
    .locals 1
    .parameter

    .prologue
    .line 407
    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_1

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(I)V

    .line 410
    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->b()V

    .line 523
    return-void
.end method

.method public e_()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->c()V

    .line 320
    return-void
.end method

.method public f()V
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->l:Z

    .line 534
    return-void
.end method

.method public g()V
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->l:Z

    .line 539
    return-void
.end method

.method public getActionBarSherlock()Lcom/actionbarsherlock/ActionBarSherlock;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    return-object v0
.end method

.method public n()V
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    .line 528
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->w()V

    .line 529
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 365
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/app/ViberFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 366
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 367
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 370
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->c()V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->onActivityBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/ui/ConversationActivity;->a(Landroid/content/Intent;Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->c(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 276
    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->finish()V

    goto :goto_0

    .line 278
    :cond_4
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 360
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->j()V

    .line 361
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 84
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->requestViberOutCheck()V

    .line 85
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->e(Landroid/content/Intent;)Z

    move-result v1

    .line 88
    if-eqz v1, :cond_0

    const v0, 0x7f030003

    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->d(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->h:Z

    .line 90
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f070090

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    .line 91
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->b:Landroid/os/Handler;

    .line 92
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 93
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 97
    new-instance v0, Lcom/slidingmenu/lib/SlidingMenu;

    invoke-direct {v0, p0}, Lcom/slidingmenu/lib/SlidingMenu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    .line 99
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->n()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 100
    iget-object v3, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v3, v0}, Lcom/slidingmenu/lib/SlidingMenu;->a(Landroid/view/View;)V

    goto :goto_1

    .line 88
    :cond_0
    const v0, 0x7f030001

    goto :goto_0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, p0}, Lcom/slidingmenu/lib/SlidingMenu;->setOnOpenedListener(Lcom/slidingmenu/lib/n;)V

    .line 104
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, p0}, Lcom/slidingmenu/lib/SlidingMenu;->setOnClosedListener(Lcom/slidingmenu/lib/l;)V

    .line 105
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, p0}, Lcom/slidingmenu/lib/SlidingMenu;->setOnStartDragListener(Lcom/slidingmenu/lib/p;)V

    .line 107
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v5}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Landroid/content/Intent;ZZ)Z

    .line 108
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->h()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->i:Z

    .line 109
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->a:Lcom/viber/voip/messages/ui/g;

    .line 111
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->b(Landroid/content/Intent;)V

    .line 113
    if-eqz v1, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 115
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0202d9

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->n:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->setOnSoftKeyboardVisibilityChangeListener(Lcom/viber/voip/messages/ui/bl;)V

    .line 118
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onDestroy()V

    .line 233
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->a:Lcom/viber/voip/messages/ui/g;

    .line 235
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->onActivityKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/viber/voip/app/ViberFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 201
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/ConversationActivity;->e(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/ConversationActivity;->e(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    instance-of v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    if-eqz v0, :cond_2

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->finish()V

    .line 205
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/ConversationActivity;->startActivity(Landroid/content/Intent;)V

    .line 216
    :goto_0
    return-void

    .line 207
    :cond_2
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/ConversationActivity;->d(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->h:Z

    .line 210
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    .line 211
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->h()V

    .line 213
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/ConversationActivity;->setIntent(Landroid/content/Intent;)V

    .line 214
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Landroid/content/Intent;ZZ)Z

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 239
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 267
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 241
    :sswitch_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->onActivityBackPressed()Z

    .line 244
    :cond_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->c(Z)V

    goto :goto_0

    .line 247
    :sswitch_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/SlidingMenu;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/SlidingMenu;->c()V

    goto :goto_0

    .line 250
    :cond_1
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->l:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->t()Lcom/viber/voip/messages/ui/MessageComposerView;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 251
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->t()Lcom/viber/voip/messages/ui/MessageComposerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->c()V

    .line 252
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->b:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/messages/ui/d;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/ui/d;-><init>(Lcom/viber/voip/messages/ui/ConversationActivity;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->c:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/SlidingMenu;->b()V

    goto :goto_0

    .line 239
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f07048c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onRestart()V

    .line 167
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/ConversationActivity;->b(Landroid/content/Intent;)V

    .line 168
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onStart()V

    .line 221
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->i()V

    .line 222
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onStop()V

    .line 227
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/ConversationActivity;->i()V

    .line 228
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 193
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onWindowFocusChanged(Z)V

    .line 194
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->f:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c(Z)V

    .line 195
    iget-object v0, p0, Lcom/viber/voip/messages/ui/ConversationActivity;->a:Lcom/viber/voip/messages/ui/g;

    invoke-interface {v0, p1}, Lcom/viber/voip/messages/ui/g;->a(Z)V

    .line 196
    invoke-static {}, Lcom/viber/voip/util/hu;->a()Lcom/viber/voip/util/hu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/hu;->a(Z)V

    .line 197
    return-void
.end method
