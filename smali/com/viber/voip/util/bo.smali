.class public Lcom/viber/voip/util/bo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/slidingmenu/lib/l;
.implements Lcom/slidingmenu/lib/n;
.implements Lcom/slidingmenu/lib/p;
.implements Lcom/viber/voip/messages/conversation/ui/az;
.implements Lcom/viber/voip/messages/conversation/ui/cm;


# static fields
.field private static z:Z


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:J

.field private F:Landroid/view/View;

.field private G:I

.field private H:Lcom/viber/voip/util/bt;

.field private a:Lcom/slidingmenu/lib/SlidingMenu;

.field private b:Lcom/slidingmenu/lib/SlidingMenu;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Lcom/viber/voip/messages/ui/MessagesFragment;

.field private l:Lcom/viber/voip/contacts/ui/ContactsFragment;

.field private m:Lcom/viber/voip/calls/ui/PhoneFragment;

.field private n:Lcom/viber/voip/messages/conversation/publicgroup/bf;

.field private o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

.field private p:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

.field private q:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

.field private r:Lcom/viber/voip/user/YouFragment;

.field private s:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

.field private t:Landroid/support/v4/app/Fragment;

.field private u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

.field private v:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

.field private w:Lcom/viber/voip/messages/ui/g;

.field private x:Lcom/viber/voip/HomeActivity;

.field private y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v1, p0, Lcom/viber/voip/util/bo;->h:I

    .line 76
    iput v1, p0, Lcom/viber/voip/util/bo;->i:I

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/util/bo;->j:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    .line 101
    iput v1, p0, Lcom/viber/voip/util/bo;->C:I

    .line 102
    iput v1, p0, Lcom/viber/voip/util/bo;->D:I

    .line 108
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/bo;->w:Lcom/viber/voip/messages/ui/g;

    .line 109
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/util/bo;)Lcom/slidingmenu/lib/SlidingMenu;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/util/bo;Lcom/viber/voip/util/bt;)Lcom/viber/voip/util/bt;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/viber/voip/util/bo;->H:Lcom/viber/voip/util/bt;

    return-object p1
.end method

.method private a(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter

    .prologue
    .line 911
    if-nez p1, :cond_0

    .line 924
    :goto_0
    return-void

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 915
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 917
    iget-object v1, p0, Lcom/viber/voip/util/bo;->t:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1

    .line 918
    iget-object v1, p0, Lcom/viber/voip/util/bo;->t:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 920
    :cond_1
    const v1, 0x7f0700a6

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 921
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 923
    iput-object p1, p0, Lcom/viber/voip/util/bo;->t:Landroid/support/v4/app/Fragment;

    goto :goto_0
.end method

.method private static a(Landroid/support/v4/app/Fragment;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 509
    instance-of v0, p0, Lcom/viber/voip/d;

    if-eqz v0, :cond_0

    .line 510
    check-cast p0, Lcom/viber/voip/d;

    invoke-interface {p0, p1}, Lcom/viber/voip/d;->onFragmentVisibilityChanged(Z)V

    .line 512
    :cond_0
    return-void
.end method

.method protected static a(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 497
    if-nez p1, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 501
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/viber/voip/util/bo;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    .line 502
    :cond_2
    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 504
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/viber/voip/util/bo;->a(Landroid/support/v4/app/Fragment;Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/util/bo;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/viber/voip/util/bo;->j(Landroid/content/Intent;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 695
    const/4 v0, 0x3

    const-string/jumbo v1, "HomeActivity"

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method private a(ZZZI)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 382
    iget-object v0, p0, Lcom/viber/voip/util/bo;->m:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->b()Z

    move-result v4

    .line 383
    iget-object v0, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragment;->b()Z

    move-result v5

    .line 384
    iget-object v0, p0, Lcom/viber/voip/util/bo;->n:Lcom/viber/voip/messages/conversation/publicgroup/bf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/util/bo;->n:Lcom/viber/voip/messages/conversation/publicgroup/bf;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v3, v0

    .line 386
    :goto_0
    packed-switch p4, :pswitch_data_0

    .line 436
    :goto_1
    return-void

    :cond_0
    move v3, v1

    .line 384
    goto :goto_0

    .line 395
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/util/bo;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 396
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setVisibility(I)V

    .line 397
    iget-boolean v0, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v0, :cond_3

    .line 398
    iget-object v4, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    if-eqz v3, :cond_1

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/viber/voip/util/bo;->e:Landroid/view/View;

    if-eqz v3, :cond_2

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    move v0, v2

    .line 398
    goto :goto_2

    :cond_2
    move v1, v2

    .line 399
    goto :goto_3

    .line 401
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/viber/voip/util/bo;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 406
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/util/bo;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setVisibility(I)V

    .line 408
    iget-boolean v0, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v0, :cond_6

    .line 409
    iget-object v3, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    if-eqz v5, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/viber/voip/util/bo;->e:Landroid/view/View;

    if-eqz v5, :cond_5

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 409
    goto :goto_4

    :cond_5
    move v1, v2

    .line 410
    goto :goto_5

    .line 412
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setVisibility(I)V

    .line 413
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->d()V

    .line 414
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/util/bo;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 418
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setVisibility(I)V

    .line 420
    iget-object v3, p0, Lcom/viber/voip/util/bo;->c:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_8

    move v0, v1

    :goto_6
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 421
    iget-object v3, p0, Lcom/viber/voip/util/bo;->d:Landroid/view/View;

    if-eqz p2, :cond_9

    move v0, v1

    :goto_7
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 422
    iget-object v0, p0, Lcom/viber/voip/util/bo;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/viber/voip/util/bo;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 424
    invoke-direct {p0}, Lcom/viber/voip/util/bo;->p()V

    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 420
    goto :goto_6

    :cond_9
    move v0, v2

    .line 421
    goto :goto_7

    .line 427
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setVisibility(I)V

    .line 429
    iget-object v3, p0, Lcom/viber/voip/util/bo;->c:Landroid/widget/FrameLayout;

    if-eqz p3, :cond_a

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 430
    iget-object v3, p0, Lcom/viber/voip/util/bo;->d:Landroid/view/View;

    if-eqz v4, :cond_b

    move v0, v1

    :goto_9
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 431
    iget-object v0, p0, Lcom/viber/voip/util/bo;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/viber/voip/util/bo;->g:Landroid/view/View;

    if-eqz p3, :cond_c

    :goto_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    invoke-direct {p0}, Lcom/viber/voip/util/bo;->p()V

    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 429
    goto :goto_8

    :cond_b
    move v0, v2

    .line 430
    goto :goto_9

    :cond_c
    move v1, v2

    .line 432
    goto :goto_a

    .line 386
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/viber/voip/util/bo;)Lcom/slidingmenu/lib/SlidingMenu;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/util/bo;)Lcom/viber/voip/contacts/ui/ContactsFragment;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/util/bo;)Z
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/viber/voip/util/bo;->A:Z

    return v0
.end method

.method static synthetic e(Lcom/viber/voip/util/bo;)Lcom/viber/voip/HomeActivity;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    return-object v0
.end method

.method static synthetic f(Lcom/viber/voip/util/bo;)Lcom/viber/voip/user/YouFragment;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/viber/voip/util/bo;->r:Lcom/viber/voip/user/YouFragment;

    return-object v0
.end method

.method private f(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/viber/voip/util/bo;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v1, p0, Lcom/viber/voip/util/bo;->F:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1120
    :cond_0
    return-void

    .line 1118
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private i(Landroid/content/Intent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 219
    if-eqz p1, :cond_1

    .line 220
    const-string/jumbo v0, "extra_conversation_data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;

    .line 221
    if-eqz v0, :cond_1

    .line 222
    iget v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->r:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 225
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 222
    goto :goto_0

    :cond_1
    move v0, v1

    .line 225
    goto :goto_0
.end method

.method private j(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 643
    const-string/jumbo v0, "selected_item"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    const-string/jumbo v0, "selected_item"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/viber/voip/util/bo;->s:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    invoke-virtual {v1, v0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->a(I)V

    .line 646
    iget-object v1, p0, Lcom/viber/voip/util/bo;->s:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    invoke-virtual {v1}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->b()V

    .line 648
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/util/bo;->a(II)V

    .line 650
    :cond_0
    return-void
.end method

.method private o()I
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    .line 230
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 231
    iget v0, p0, Lcom/viber/voip/util/bo;->C:I

    .line 235
    :cond_0
    :goto_0
    return v0

    .line 232
    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->f()I

    move-result v0

    goto :goto_0
.end method

.method private p()V
    .locals 4

    .prologue
    .line 439
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    iget v1, p0, Lcom/viber/voip/util/bo;->G:I

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    .line 441
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    .line 443
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/viber/voip/util/bq;

    invoke-direct {v1, p0}, Lcom/viber/voip/util/bq;-><init>(Lcom/viber/voip/util/bo;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcom/slidingmenu/lib/SlidingMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 451
    :cond_0
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->a()V

    .line 776
    return-void
.end method

.method private r()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 779
    iget-object v2, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v2}, Lcom/slidingmenu/lib/SlidingMenu;->g()Z

    move-result v2

    .line 780
    iget-object v3, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v3}, Lcom/slidingmenu/lib/SlidingMenu;->g()Z

    move-result v3

    .line 781
    iget-object v4, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v4}, Lcom/slidingmenu/lib/SlidingMenu;->h()Z

    move-result v4

    .line 783
    if-eqz v2, :cond_0

    .line 784
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v5

    sget-object v6, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    invoke-virtual {v6}, Lcom/viber/voip/a/m;->f()Lcom/viber/voip/a/x;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 786
    :cond_0
    iget-object v5, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v5}, Lcom/slidingmenu/lib/SlidingMenu;->h()Z

    move-result v5

    .line 787
    iget-boolean v6, p0, Lcom/viber/voip/util/bo;->A:Z

    if-nez v6, :cond_2

    iget v6, p0, Lcom/viber/voip/util/bo;->C:I

    if-eq v6, v1, :cond_2

    .line 788
    if-eqz v2, :cond_a

    .line 789
    iget-object v6, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-virtual {v6, v1}, Lcom/viber/voip/messages/ui/MessagesFragment;->setHasOptionsMenu(Z)V

    .line 790
    iget-object v6, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v6, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->setHasOptionsMenu(Z)V

    .line 791
    iget-object v6, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    if-eqz v6, :cond_1

    .line 792
    iget-object v6, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-virtual {v6, v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->setHasOptionsMenu(Z)V

    .line 795
    :cond_1
    iget-object v6, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v6}, Lcom/viber/voip/HomeActivity;->i()Lcom/viber/voip/util/bl;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/viber/voip/util/bl;->a(Z)V

    .line 815
    :cond_2
    :goto_0
    iget v6, p0, Lcom/viber/voip/util/bo;->C:I

    if-ne v6, v1, :cond_8

    .line 816
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSlidingMenuUpdated isLeftSettingsMenuShowing:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",isRightSettingsMenuShowing:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/viber/voip/util/bo;->a(Ljava/lang/String;)V

    .line 818
    if-nez v3, :cond_3

    iget-object v6, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v6}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/actionbarsherlock/app/ActionBar;->getNavigationMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 819
    :cond_3
    iget-object v6, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v6}, Lcom/viber/voip/HomeActivity;->i()Lcom/viber/voip/util/bl;

    move-result-object v6

    if-nez v3, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {v6, v3, v0}, Lcom/viber/voip/util/bl;->b(ZZ)V

    .line 821
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-virtual {v0, v3}, Lcom/viber/voip/contacts/ui/ContactsFragment;->setHasOptionsMenu(Z)V

    .line 822
    iget-object v0, p0, Lcom/viber/voip/util/bo;->q:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-virtual {v0, v3}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->setHasOptionsMenu(Z)V

    .line 823
    if-nez v3, :cond_f

    if-nez v4, :cond_f

    .line 824
    iget-object v0, p0, Lcom/viber/voip/util/bo;->j:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/bo;->j:Ljava/lang/String;

    .line 829
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v2, 0x7f0c03d8

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 830
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    const v2, 0x7f0203d2

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 831
    iget-object v0, p0, Lcom/viber/voip/util/bo;->s:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    invoke-virtual {v0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 832
    iget-object v0, p0, Lcom/viber/voip/util/bo;->s:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    invoke-virtual {v0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestLayout()V

    .line 833
    iget-object v0, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 834
    const/4 v2, -0x1

    iput v2, p0, Lcom/viber/voip/util/bo;->i:I

    .line 835
    if-eqz v0, :cond_7

    .line 836
    const-string/jumbo v2, "selected_item"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 839
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/util/bo;->r:Lcom/viber/voip/user/YouFragment;

    invoke-virtual {v0, v1}, Lcom/viber/voip/user/YouFragment;->updateSettingsItem(Z)V

    .line 868
    :cond_8
    :goto_1
    iget v0, p0, Lcom/viber/voip/util/bo;->C:I

    if-nez v0, :cond_12

    .line 869
    sget-boolean v0, Lcom/viber/voip/util/bo;->z:Z

    if-nez v0, :cond_11

    if-eqz v5, :cond_11

    .line 870
    iget-object v0, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b()V

    .line 881
    :cond_9
    :goto_2
    sput-boolean v5, Lcom/viber/voip/util/bo;->z:Z

    .line 882
    return-void

    .line 796
    :cond_a
    iget v6, p0, Lcom/viber/voip/util/bo;->C:I

    if-eqz v6, :cond_b

    iget v6, p0, Lcom/viber/voip/util/bo;->C:I

    if-ne v6, v8, :cond_2

    .line 797
    :cond_b
    iget-object v6, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-virtual {v6, v0}, Lcom/viber/voip/messages/ui/MessagesFragment;->setHasOptionsMenu(Z)V

    .line 798
    iget-object v6, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v6, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->setHasOptionsMenu(Z)V

    .line 799
    iget-object v6, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    if-eqz v6, :cond_c

    .line 800
    iget-object v6, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-virtual {v6, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->setHasOptionsMenu(Z)V

    .line 802
    :cond_c
    iget-object v6, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-virtual {v6}, Lcom/viber/voip/messages/ui/MessagesFragment;->o()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    move-result-object v6

    .line 803
    if-eqz v6, :cond_d

    .line 804
    invoke-virtual {v6}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->l()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 805
    invoke-virtual {v6}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->n()V

    .line 806
    invoke-virtual {v6}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c()V

    .line 811
    :cond_d
    :goto_3
    iget-object v6, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v6}, Lcom/viber/voip/HomeActivity;->i()Lcom/viber/voip/util/bl;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/viber/voip/util/bl;->a(Z)V

    goto/16 :goto_0

    .line 807
    :cond_e
    invoke-virtual {v6}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->k()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 808
    invoke-virtual {v6, v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->b(Z)V

    goto :goto_3

    .line 840
    :cond_f
    if-eqz v4, :cond_10

    .line 841
    invoke-direct {p0}, Lcom/viber/voip/util/bo;->s()V

    .line 842
    invoke-direct {p0}, Lcom/viber/voip/util/bo;->t()V

    goto :goto_1

    .line 843
    :cond_10
    if-eqz v2, :cond_8

    goto :goto_1

    .line 871
    :cond_11
    sget-boolean v0, Lcom/viber/voip/util/bo;->z:Z

    if-eqz v0, :cond_9

    if-nez v5, :cond_9

    .line 872
    iget-object v0, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c()V

    goto :goto_2

    .line 874
    :cond_12
    iget v0, p0, Lcom/viber/voip/util/bo;->C:I

    if-ne v0, v8, :cond_9

    iget-object v0, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    if-eqz v0, :cond_9

    .line 875
    sget-boolean v0, Lcom/viber/voip/util/bo;->z:Z

    if-nez v0, :cond_13

    if-eqz v5, :cond_13

    .line 876
    iget-object v0, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->b()V

    goto :goto_2

    .line 877
    :cond_13
    sget-boolean v0, Lcom/viber/voip/util/bo;->z:Z

    if-eqz v0, :cond_9

    if-nez v5, :cond_9

    .line 878
    iget-object v0, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->c()V

    goto :goto_2
.end method

.method private s()V
    .locals 3

    .prologue
    .line 885
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    iget v1, p0, Lcom/viber/voip/util/bo;->G:I

    iget v2, p0, Lcom/viber/voip/util/bo;->B:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 886
    return-void
.end method

.method private t()V
    .locals 3

    .prologue
    .line 889
    iget v0, p0, Lcom/viber/voip/util/bo;->h:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 890
    iget-object v0, p0, Lcom/viber/voip/util/bo;->s:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    invoke-virtual {v0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/bo;->s:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    invoke-virtual {v1}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/viber/voip/util/bo;->h:I

    .line 892
    :cond_0
    iget v0, p0, Lcom/viber/voip/util/bo;->i:I

    iget v1, p0, Lcom/viber/voip/util/bo;->h:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 894
    :cond_1
    iget v0, p0, Lcom/viber/voip/util/bo;->h:I

    iput v0, p0, Lcom/viber/voip/util/bo;->i:I

    .line 896
    iget v0, p0, Lcom/viber/voip/util/bo;->h:I

    invoke-static {v0}, Lcom/viber/voip/settings/ui/ca;->a(I)Lcom/viber/voip/user/YouFragment$PreferenceItem;

    move-result-object v0

    .line 897
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSelectedSettingsTitle mSelectedSettingsItemId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/viber/voip/util/bo;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",preferenceItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/bo;->a(Ljava/lang/String;)V

    .line 899
    if-eqz v0, :cond_2

    .line 902
    iget-object v1, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v1}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    iget v2, v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->title:I

    invoke-virtual {v1, v2}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 903
    iget-object v1, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v1}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    iget v0, v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->icon:I

    invoke-virtual {v1, v0}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(I)V

    .line 905
    iget-object v0, p0, Lcom/viber/voip/util/bo;->s:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    invoke-virtual {v0}, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/bo;->a(Landroid/support/v4/app/Fragment;)V

    .line 908
    :cond_2
    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 1035
    if-eqz v1, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    const-string/jumbo v2, "input_method"

    invoke-virtual {v0, v2}, Lcom/viber/voip/HomeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1039
    :cond_0
    return-void
.end method

.method private v()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1091
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "show_carlos_messages"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 1093
    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1095
    const v1, 0x7f03006c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/bo;->F:Landroid/view/View;

    .line 1096
    iget-object v0, p0, Lcom/viber/voip/util/bo;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/viber/voip/util/bo;->F:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1101
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 928
    invoke-direct {p0}, Lcom/viber/voip/util/bo;->r()V

    .line 929
    return-void
.end method

.method public a(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 661
    iget-object v0, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 662
    if-eqz v0, :cond_0

    .line 663
    const-string/jumbo v1, "selected_item"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/util/bo;->s()V

    .line 667
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/viber/voip/util/bs;

    invoke-direct {v1, p0}, Lcom/viber/voip/util/bs;-><init>(Lcom/viber/voip/util/bo;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/slidingmenu/lib/SlidingMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 675
    iput p2, p0, Lcom/viber/voip/util/bo;->h:I

    .line 676
    invoke-direct {p0}, Lcom/viber/voip/util/bo;->t()V

    .line 677
    return-void
.end method

.method public a(ILandroid/support/v4/app/Fragment;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 547
    .line 548
    if-nez p1, :cond_1

    .line 549
    instance-of v1, p2, Lcom/viber/voip/messages/ui/MessagesFragment;

    if-eqz v1, :cond_3

    .line 558
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    :cond_1
    iget v1, p0, Lcom/viber/voip/util/bo;->C:I

    if-ne v1, v0, :cond_2

    .line 562
    invoke-virtual {p0}, Lcom/viber/voip/util/bo;->c()V

    .line 564
    :cond_2
    return-void

    .line 551
    :cond_3
    instance-of v1, p2, Lcom/viber/voip/contacts/ui/ContactsFragment;

    if-eqz v1, :cond_4

    .line 552
    const/4 v0, 0x1

    goto :goto_0

    .line 553
    :cond_4
    instance-of v1, p2, Lcom/viber/voip/calls/ui/PhoneFragment;

    if-eqz v1, :cond_5

    .line 554
    const/4 v0, 0x2

    goto :goto_0

    .line 555
    :cond_5
    instance-of v1, p2, Lcom/viber/voip/messages/conversation/publicgroup/bf;

    if-eqz v1, :cond_0

    .line 556
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    .line 603
    iget-object v0, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    invoke-direct {p0}, Lcom/viber/voip/util/bo;->o()I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/viber/voip/util/bo;->c()V

    .line 610
    :cond_0
    return-void
.end method

.method public a(Landroid/support/v4/app/Fragment;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 515
    instance-of v0, p1, Lcom/viber/voip/messages/ui/MessagesFragment;

    if-eqz v0, :cond_1

    .line 516
    check-cast p1, Lcom/viber/voip/messages/ui/MessagesFragment;

    iput-object p1, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 517
    :cond_1
    instance-of v0, p1, Lcom/viber/voip/contacts/ui/ContactsFragment;

    if-eqz v0, :cond_2

    .line 518
    check-cast p1, Lcom/viber/voip/contacts/ui/ContactsFragment;

    iput-object p1, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    goto :goto_0

    .line 519
    :cond_2
    instance-of v0, p1, Lcom/viber/voip/calls/ui/PhoneFragment;

    if-eqz v0, :cond_3

    .line 520
    check-cast p1, Lcom/viber/voip/calls/ui/PhoneFragment;

    iput-object p1, p0, Lcom/viber/voip/util/bo;->m:Lcom/viber/voip/calls/ui/PhoneFragment;

    goto :goto_0

    .line 521
    :cond_3
    instance-of v0, p1, Lcom/viber/voip/messages/conversation/publicgroup/bf;

    if-eqz v0, :cond_0

    .line 522
    check-cast p1, Lcom/viber/voip/messages/conversation/publicgroup/bf;

    iput-object p1, p0, Lcom/viber/voip/util/bo;->n:Lcom/viber/voip/messages/conversation/publicgroup/bf;

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/HomeActivity;Z)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v6, 0x3eb33333

    const v5, 0x7f0203d5

    const/high16 v3, 0x3f80

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 112
    iput-object p1, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    .line 113
    invoke-static {p1}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/util/bo;->A:Z

    .line 114
    iget-boolean v0, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/viber/voip/util/gl;->h()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/viber/voip/util/bo;->B:I

    .line 116
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->i()Lcom/viber/voip/util/bl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/util/bl;->a(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f070099

    invoke-virtual {p1, v0}, Lcom/viber/voip/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/slidingmenu/lib/SlidingMenu;

    iput-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    .line 119
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    const v4, 0x7f030035

    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setContent(I)V

    .line 120
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v6}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 121
    iget-boolean v0, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v0, :cond_2

    .line 122
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 123
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    const v4, 0x7f030036

    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    .line 124
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v5}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 134
    :goto_1
    const v0, 0x7f07009a

    invoke-virtual {p1, v0}, Lcom/viber/voip/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/slidingmenu/lib/SlidingMenu;

    iput-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    .line 135
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const v4, 0x7f0a0137

    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    .line 136
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const v4, 0x7f03000b

    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setContent(I)V

    .line 137
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v6}, Lcom/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 138
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 140
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const v4, 0x7f0203d4

    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const v4, 0x7f03000c

    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    .line 142
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeBehind(I)V

    .line 143
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 144
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v5}, Lcom/slidingmenu/lib/SlidingMenu;->setSecondaryShadowDrawable(I)V

    .line 145
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const v4, 0x7f03000d

    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setSecondaryMenu(I)V

    .line 147
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const v4, 0x7f0700a1

    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/bo;->g:Landroid/view/View;

    .line 149
    invoke-virtual {p1}, Lcom/viber/voip/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    .line 150
    const v0, 0x7f070091

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/MessagesFragment;

    iput-object v0, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    .line 151
    const v0, 0x7f0700a4

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/ui/ContactsFragment;

    iput-object v0, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    .line 152
    const v0, 0x7f0700a5

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/calls/ui/PhoneFragment;

    iput-object v0, p0, Lcom/viber/voip/util/bo;->m:Lcom/viber/voip/calls/ui/PhoneFragment;

    .line 153
    const v0, 0x7f070076

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/publicgroup/bf;

    iput-object v0, p0, Lcom/viber/voip/util/bo;->n:Lcom/viber/voip/messages/conversation/publicgroup/bf;

    .line 154
    const v0, 0x7f0700a0

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/user/YouFragment;

    iput-object v0, p0, Lcom/viber/voip/util/bo;->r:Lcom/viber/voip/user/YouFragment;

    .line 155
    const v0, 0x7f0700a2

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    iput-object v0, p0, Lcom/viber/voip/util/bo;->s:Lcom/viber/voip/settings/ui/SettingsHeadersFragment;

    .line 156
    const v0, 0x7f070077

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    iput-object v0, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    .line 158
    const v0, 0x7f070090

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iput-object v0, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    .line 160
    const v0, 0x7f070093

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    iput-object v0, p0, Lcom/viber/voip/util/bo;->p:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    .line 161
    const v0, 0x7f070078

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    iput-object v0, p0, Lcom/viber/voip/util/bo;->v:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    .line 162
    const v0, 0x7f07009f

    invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    iput-object v0, p0, Lcom/viber/voip/util/bo;->q:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    .line 164
    invoke-virtual {p1}, Lcom/viber/voip/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, p0, Lcom/viber/voip/util/bo;->B:I

    sub-int/2addr v4, v5

    .line 166
    invoke-static {v0}, Lcom/viber/voip/util/gl;->a(Landroid/content/res/Resources;)F

    move-result v5

    .line 167
    int-to-float v6, v4

    iget-boolean v0, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    int-to-float v0, v0

    mul-float/2addr v0, v5

    sub-float v0, v3, v0

    mul-float/2addr v0, v6

    float-to-int v6, v0

    .line 168
    int-to-float v0, v4

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    iget-boolean v0, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v0, :cond_4

    sub-float v0, v3, v5

    :goto_3
    mul-float/2addr v0, v7

    float-to-int v0, v0

    .line 170
    iget-object v3, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v3, v6}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindOffset(I)V

    .line 171
    iget-object v3, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v3, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchmodeMarginThreshold(I)V

    .line 172
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    const v3, 0x7f0a0137

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    .line 173
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    iget-object v3, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->t()Lcom/viber/voip/messages/ui/MessageComposerView;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->a(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    iget-object v3, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->u()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->a(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, p0}, Lcom/slidingmenu/lib/SlidingMenu;->setOnOpenedListener(Lcom/slidingmenu/lib/n;)V

    .line 176
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, p0}, Lcom/slidingmenu/lib/SlidingMenu;->setOnClosedListener(Lcom/slidingmenu/lib/l;)V

    .line 177
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, p0}, Lcom/slidingmenu/lib/SlidingMenu;->setOnStartDragListener(Lcom/slidingmenu/lib/p;)V

    .line 178
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    if-eqz p2, :cond_5

    :goto_4
    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 180
    int-to-float v0, v4

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 181
    sub-int v2, v4, v0

    .line 183
    iget v3, p0, Lcom/viber/voip/util/bo;->B:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/viber/voip/util/bo;->G:I

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSettingsSlidingView setBehindWidth width:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",behindWidthOffset:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/viber/voip/util/bo;->G:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ",offset:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/bo;->a(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    iget v3, p0, Lcom/viber/voip/util/bo;->G:I

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    .line 186
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->a()V

    .line 187
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const v3, 0x7f07009e

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/viber/voip/util/bo;->c:Landroid/widget/FrameLayout;

    .line 188
    const v0, 0x7f0700a3

    invoke-virtual {p1, v0}, Lcom/viber/voip/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/bo;->d:Landroid/view/View;

    .line 189
    const v0, 0x7f07009b

    invoke-virtual {p1, v0}, Lcom/viber/voip/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/bo;->e:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const v3, 0x7f0700a6

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/util/bo;->f:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/viber/voip/util/bo;->g:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v3, p0, Lcom/viber/voip/util/bo;->f:Landroid/view/View;

    iget-boolean v0, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    :goto_5
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/viber/voip/util/bo;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 194
    iget-object v0, p0, Lcom/viber/voip/util/bo;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 196
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, p0}, Lcom/slidingmenu/lib/SlidingMenu;->setOnOpenedListener(Lcom/slidingmenu/lib/n;)V

    .line 197
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, p0}, Lcom/slidingmenu/lib/SlidingMenu;->setOnClosedListener(Lcom/slidingmenu/lib/l;)V

    .line 199
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 202
    iget-boolean v0, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/viber/voip/util/bo;->z:Z

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    new-instance v1, Lcom/viber/voip/util/bp;

    invoke-direct {v1, p0}, Lcom/viber/voip/util/bp;-><init>(Lcom/viber/voip/util/bo;)V

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setOnPageSelectedListener(Lcom/slidingmenu/lib/o;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->h()Z

    move-result v0

    sput-boolean v0, Lcom/viber/voip/util/bo;->z:Z

    .line 215
    invoke-direct {p0}, Lcom/viber/voip/util/bo;->v()V

    .line 216
    return-void

    :cond_1
    move v0, v1

    .line 114
    goto/16 :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->a()V

    .line 127
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V

    .line 128
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    const v4, 0x7f030037

    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setMenu(I)V

    .line 129
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    const v4, 0x7f030036

    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setSecondaryMenu(I)V

    .line 130
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    const v4, 0x106000d

    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 131
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v5}, Lcom/slidingmenu/lib/SlidingMenu;->setSecondaryShadowDrawable(I)V

    goto/16 :goto_1

    .line 167
    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_4
    move v0, v3

    .line 168
    goto/16 :goto_3

    :cond_5
    move v2, v1

    .line 178
    goto/16 :goto_4

    :cond_6
    move v0, v1

    .line 192
    goto :goto_5
.end method

.method public a(Lcom/viber/voip/messages/conversation/h;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 714
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/viber/voip/util/bo;->E:J

    .line 715
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->b()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 716
    iget-object v2, p0, Lcom/viber/voip/util/bo;->n:Lcom/viber/voip/messages/conversation/publicgroup/bf;

    if-eqz v2, :cond_0

    .line 717
    iget-object v2, p0, Lcom/viber/voip/util/bo;->v:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    invoke-virtual {v2, p1, p2, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a(Lcom/viber/voip/messages/conversation/h;ZZ)V

    .line 718
    iget-object v2, p0, Lcom/viber/voip/util/bo;->n:Lcom/viber/voip/messages/conversation/publicgroup/bf;

    invoke-virtual {v2, p1, p2}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->a(Lcom/viber/voip/messages/conversation/h;Z)V

    .line 725
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v2, :cond_3

    .line 726
    iget-object v2, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->n()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 733
    :goto_2
    invoke-virtual {p0, v1}, Lcom/viber/voip/util/bo;->e(Z)V

    .line 734
    return-void

    .line 721
    :cond_1
    iget-object v2, p0, Lcom/viber/voip/util/bo;->p:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-virtual {v2, p1, p2, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Lcom/viber/voip/messages/conversation/h;ZZ)V

    .line 722
    iget-object v2, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-virtual {v2, p1, p2}, Lcom/viber/voip/messages/ui/MessagesFragment;->a(Lcom/viber/voip/messages/conversation/h;Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 726
    goto :goto_1

    .line 729
    :cond_3
    iget-object v2, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v2, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 730
    iget-object v2, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->n()Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    :cond_4
    invoke-virtual {v2, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V

    goto :goto_2
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 243
    iget-object v2, p0, Lcom/viber/voip/util/bo;->w:Lcom/viber/voip/messages/ui/g;

    invoke-interface {v2, p1}, Lcom/viber/voip/messages/ui/g;->a(Z)V

    .line 244
    invoke-virtual {p0}, Lcom/viber/voip/util/bo;->n()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/viber/voip/util/bo;->i(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 245
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/viber/voip/util/bo;->o()I

    move-result v2

    if-nez v2, :cond_1

    .line 246
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c(Z)V

    .line 255
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 245
    goto :goto_0

    .line 250
    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/viber/voip/util/bo;->o()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 251
    :goto_2
    iget-object v1, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->c(Z)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 250
    goto :goto_2
.end method

.method public b()V
    .locals 0

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/viber/voip/util/bo;->r()V

    .line 934
    return-void
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 709
    iget-object v0, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->b(I)V

    .line 710
    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x3

    .line 613
    iget-object v2, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/viber/voip/util/bo;->i(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    invoke-direct {p0}, Lcom/viber/voip/util/bo;->o()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/viber/voip/util/bo;->o()I

    move-result v0

    if-ne v1, v0, :cond_1

    .line 615
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/util/bo;->c()V

    .line 617
    :cond_1
    return-void

    .line 613
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)V
    .locals 14
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 258
    iget-object v0, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragment;->q()Z

    move-result v4

    .line 260
    iget-object v0, p0, Lcom/viber/voip/util/bo;->m:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->a()Z

    move-result v5

    .line 261
    iget-object v0, p0, Lcom/viber/voip/util/bo;->n:Lcom/viber/voip/messages/conversation/publicgroup/bf;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/viber/voip/util/bo;->n:Lcom/viber/voip/messages/conversation/publicgroup/bf;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/bf;->j()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 263
    :goto_0
    invoke-direct {p0}, Lcom/viber/voip/util/bo;->o()I

    move-result v6

    .line 265
    if-nez p1, :cond_0

    .line 266
    iget-object v3, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    :cond_0
    invoke-direct {p0, v4, v1, v5, v6}, Lcom/viber/voip/util/bo;->a(ZZZI)V

    .line 273
    iget-object v3, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v3}, Lcom/viber/voip/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v11

    .line 274
    invoke-virtual {v11}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v12

    .line 287
    invoke-virtual {p0, v1}, Lcom/viber/voip/util/bo;->a(Z)V

    .line 288
    iget-object v7, p0, Lcom/viber/voip/util/bo;->w:Lcom/viber/voip/messages/ui/g;

    if-eqz v6, :cond_1

    if-ne v6, v8, :cond_6

    :cond_1
    move v3, v1

    :goto_1
    invoke-interface {v7, v3}, Lcom/viber/voip/messages/ui/g;->a(Z)V

    .line 290
    packed-switch v6, :pswitch_data_0

    move v0, v2

    move v3, v2

    move v1, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    .line 350
    :goto_2
    iget-object v13, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-static {v12, v13, v10}, Lcom/viber/voip/util/bo;->a(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;Z)V

    .line 351
    iget-object v10, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-static {v12, v10, v9}, Lcom/viber/voip/util/bo;->a(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;Z)V

    .line 352
    iget-object v9, p0, Lcom/viber/voip/util/bo;->p:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-static {v12, v9, v8}, Lcom/viber/voip/util/bo;->a(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;Z)V

    .line 353
    iget-object v8, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-static {v12, v8, v7}, Lcom/viber/voip/util/bo;->a(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;Z)V

    .line 354
    iget-object v7, p0, Lcom/viber/voip/util/bo;->m:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-static {v12, v7, v5}, Lcom/viber/voip/util/bo;->a(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;Z)V

    .line 355
    iget-object v5, p0, Lcom/viber/voip/util/bo;->q:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-static {v12, v5, v6}, Lcom/viber/voip/util/bo;->a(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;Z)V

    .line 356
    iget-object v5, p0, Lcom/viber/voip/util/bo;->r:Lcom/viber/voip/user/YouFragment;

    invoke-static {v12, v5, v4}, Lcom/viber/voip/util/bo;->a(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;Z)V

    .line 357
    iget-object v5, p0, Lcom/viber/voip/util/bo;->n:Lcom/viber/voip/messages/conversation/publicgroup/bf;

    if-eqz v5, :cond_2

    .line 358
    iget-object v5, p0, Lcom/viber/voip/util/bo;->n:Lcom/viber/voip/messages/conversation/publicgroup/bf;

    invoke-static {v12, v5, v1}, Lcom/viber/voip/util/bo;->a(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;Z)V

    .line 359
    iget-object v1, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-static {v12, v1, v3}, Lcom/viber/voip/util/bo;->a(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;Z)V

    .line 360
    iget-object v1, p0, Lcom/viber/voip/util/bo;->v:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    invoke-static {v12, v1, v0}, Lcom/viber/voip/util/bo;->a(Landroid/support/v4/app/FragmentTransaction;Landroid/support/v4/app/Fragment;Z)V

    .line 363
    :cond_2
    invoke-virtual {v12}, Landroid/support/v4/app/FragmentTransaction;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 365
    :try_start_0
    invoke-virtual {v12}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 366
    invoke-virtual {v11}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    .line 377
    iget-object v0, p0, Lcom/viber/voip/util/bo;->r:Lcom/viber/voip/user/YouFragment;

    invoke-virtual {v0, v2}, Lcom/viber/voip/user/YouFragment;->updateSettingsItem(Z)V

    .line 379
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 261
    goto/16 :goto_0

    :cond_6
    move v3, v2

    .line 288
    goto :goto_1

    .line 293
    :pswitch_0
    if-nez v4, :cond_7

    iget-object v0, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v3, v1

    .line 303
    :goto_4
    if-eqz v3, :cond_11

    .line 304
    iget-object v4, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-object v0, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v4, v0, v1, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Landroid/content/Intent;ZZ)Z

    move v0, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v3

    move v9, v3

    move v10, v1

    move v1, v2

    move v3, v2

    goto :goto_2

    :cond_8
    move v3, v2

    .line 293
    goto :goto_4

    .line 311
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->h()Z

    move-result v0

    if-nez v0, :cond_9

    move v3, v1

    .line 312
    :goto_5
    iget-object v0, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->t()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v4, v1

    .line 314
    :goto_6
    iget-object v0, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->t()Z

    move-result v5

    .line 319
    if-eqz v4, :cond_10

    .line 320
    iget-object v6, p0, Lcom/viber/voip/util/bo;->q:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    iget-object v0, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v6, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Landroid/content/Intent;)V

    move v0, v2

    move v1, v2

    move v6, v4

    move v7, v3

    move v8, v2

    move v9, v2

    move v10, v2

    move v3, v2

    move v4, v5

    move v5, v2

    goto/16 :goto_2

    :cond_9
    move v3, v2

    .line 311
    goto :goto_5

    :cond_a
    move v4, v2

    .line 312
    goto :goto_6

    .line 328
    :pswitch_2
    if-eqz v5, :cond_b

    iget-object v0, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v4, v1

    .line 335
    :goto_7
    if-eqz v4, :cond_f

    .line 336
    iget-object v3, p0, Lcom/viber/voip/util/bo;->q:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    iget-object v0, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v3, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->a(Landroid/content/Intent;)V

    move v0, v2

    move v3, v2

    move v5, v1

    move v6, v4

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    move v1, v2

    move v4, v2

    goto/16 :goto_2

    :cond_b
    move v4, v2

    .line 328
    goto :goto_7

    .line 341
    :pswitch_3
    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    move v3, v1

    .line 344
    :goto_8
    if-eqz v3, :cond_d

    iget-object v0, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    if-eqz v0, :cond_d

    .line 345
    iget-object v4, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    iget-object v0, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v4, v0, v1, v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->a(Landroid/content/Intent;ZZ)Z

    :cond_d
    move v0, v3

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    goto/16 :goto_2

    :cond_e
    move v3, v2

    .line 341
    goto :goto_8

    .line 367
    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_3

    :cond_f
    move v0, v2

    move v3, v2

    move v5, v1

    move v6, v4

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v2

    move v1, v2

    move v4, v2

    goto/16 :goto_2

    :cond_10
    move v0, v2

    move v1, v2

    move v6, v4

    move v7, v3

    move v8, v2

    move v9, v2

    move v10, v2

    move v3, v2

    move v4, v5

    move v5, v2

    goto/16 :goto_2

    :cond_11
    move v0, v2

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v3

    move v9, v3

    move v10, v1

    move v1, v2

    move v3, v2

    goto/16 :goto_2

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public c()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/util/bo;->b(Z)V

    .line 240
    return-void
.end method

.method public c(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 625
    iget-object v0, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Landroid/content/Intent;)V

    .line 626
    return-void
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/util/bo;->b(Z)V

    .line 464
    return-void
.end method

.method public c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 751
    const/4 v0, 0x0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/viber/voip/util/bo;->n()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/util/bo;->i(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/util/bo;->v:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/viber/voip/util/bo;->v:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a()V

    .line 747
    :goto_0
    return-void

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/bo;->p:Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a()V

    goto :goto_0
.end method

.method public d(I)V
    .locals 2
    .parameter

    .prologue
    .line 471
    packed-switch p1, :pswitch_data_0

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 473
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessagesFragment;->q()Z

    move-result v0

    .line 475
    if-eqz v0, :cond_1

    .line 476
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->q:Lcom/viber/voip/a/ad;

    invoke-virtual {v1}, Lcom/viber/voip/a/ad;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->r:Lcom/viber/voip/a/ad;

    invoke-virtual {v1}, Lcom/viber/voip/a/ad;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->r()I

    move-result v0

    .line 484
    :goto_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 485
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v1, v1, Lcom/viber/voip/a/l;->d:Lcom/viber/voip/a/c;

    invoke-virtual {v1}, Lcom/viber/voip/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 486
    :cond_3
    if-nez v0, :cond_0

    .line 487
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->s:Lcom/viber/voip/a/l;

    iget-object v1, v1, Lcom/viber/voip/a/l;->e:Lcom/viber/voip/a/c;

    invoke-virtual {v1}, Lcom/viber/voip/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 491
    :pswitch_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->g:Lcom/viber/voip/a/ae;

    invoke-virtual {v1}, Lcom/viber/voip/a/ae;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public d(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/util/bo;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "selected_item"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    invoke-direct {p0, p1}, Lcom/viber/voip/util/bo;->j(Landroid/content/Intent;)V

    .line 640
    :goto_0
    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 633
    invoke-direct {p0, p1}, Lcom/viber/voip/util/bo;->j(Landroid/content/Intent;)V

    goto :goto_0

    .line 635
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.YOU"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->a(Landroid/content/Intent;)V

    .line 636
    new-instance v0, Lcom/viber/voip/util/bt;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/util/bt;-><init>(Lcom/viber/voip/util/bo;Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/viber/voip/util/bo;->H:Lcom/viber/voip/util/bt;

    .line 637
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    iget-object v1, p0, Lcom/viber/voip/util/bo;->H:Lcom/viber/voip/util/bt;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/slidingmenu/lib/SlidingMenu;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 738
    return-void
.end method

.method public d_(I)V
    .locals 2
    .parameter

    .prologue
    .line 700
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 701
    iget-object v0, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(I)V

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    if-nez p1, :cond_0

    .line 703
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setOnPageSelectedListener(Lcom/slidingmenu/lib/o;)V

    goto :goto_0
.end method

.method public e(I)Landroid/support/v4/app/Fragment;
    .locals 3
    .parameter

    .prologue
    .line 527
    packed-switch p1, :pswitch_data_0

    .line 537
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown fragment index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    .line 535
    :goto_0
    return-object v0

    .line 531
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    goto :goto_0

    .line 533
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/util/bo;->m:Lcom/viber/voip/calls/ui/PhoneFragment;

    goto :goto_0

    .line 535
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/util/bo;->n:Lcom/viber/voip/messages/conversation/publicgroup/bf;

    goto :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public e()V
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->c()V

    .line 621
    return-void
.end method

.method public e(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 653
    iget-object v0, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    invoke-direct {p0}, Lcom/viber/voip/util/bo;->o()I

    move-result v0

    if-eq v2, v0, :cond_0

    const/4 v0, -0x2

    invoke-direct {p0}, Lcom/viber/voip/util/bo;->o()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 656
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/util/bo;->c()V

    .line 658
    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 4
    .parameter

    .prologue
    .line 454
    iget-wide v0, p0, Lcom/viber/voip/util/bo;->E:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    if-nez p1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/viber/voip/util/bo;->w:Lcom/viber/voip/messages/ui/g;

    iget-wide v1, p0, Lcom/viber/voip/util/bo;->E:J

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/ui/g;->a(J)V

    .line 459
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/bo;->w:Lcom/viber/voip/messages/ui/g;

    iget-wide v1, p0, Lcom/viber/voip/util/bo;->E:J

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/ui/g;->b(J)V

    goto :goto_0
.end method

.method public e_()V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 762
    iget-boolean v0, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setOnPageSelectedListener(Lcom/slidingmenu/lib/o;)V

    .line 764
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->d()V

    .line 772
    :goto_0
    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->c()V

    goto :goto_0

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->b()V

    goto :goto_0
.end method

.method public f(I)V
    .locals 8
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 567
    iget v3, p0, Lcom/viber/voip/util/bo;->D:I

    if-eq v3, p1, :cond_2

    .line 568
    iput p1, p0, Lcom/viber/voip/util/bo;->D:I

    .line 570
    if-eqz p1, :cond_3

    move v3, v0

    .line 571
    :goto_0
    if-nez v3, :cond_4

    .line 572
    sget-object v4, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v4}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/viber/voip/util/br;

    invoke-direct {v5, p0}, Lcom/viber/voip/util/br;-><init>(Lcom/viber/voip/util/bo;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 584
    invoke-virtual {p0, v0}, Lcom/viber/voip/util/bo;->b(Z)V

    .line 595
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v0, :cond_1

    .line 596
    iget-object v4, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    if-eqz v3, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    if-eqz v3, :cond_9

    :goto_3
    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeBehind(I)V

    .line 600
    :cond_2
    return-void

    :cond_3
    move v3, v1

    .line 570
    goto :goto_0

    .line 586
    :cond_4
    iget-boolean v4, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v4}, Lcom/slidingmenu/lib/SlidingMenu;->getVisibility()I

    move-result v4

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/viber/voip/util/bo;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 587
    invoke-virtual {p0, v1}, Lcom/viber/voip/util/bo;->b(Z)V

    .line 589
    :cond_5
    iget v4, p0, Lcom/viber/voip/util/bo;->C:I

    if-nez v4, :cond_0

    .line 590
    iget-boolean v4, p0, Lcom/viber/voip/util/bo;->A:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/viber/voip/util/bo;->A:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v4}, Lcom/slidingmenu/lib/SlidingMenu;->g()Z

    move-result v4

    if-nez v4, :cond_7

    .line 591
    :cond_6
    :goto_4
    iget-object v4, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v4}, Lcom/viber/voip/HomeActivity;->i()Lcom/viber/voip/util/bl;

    move-result-object v4

    invoke-virtual {v4, v0, v0}, Lcom/viber/voip/util/bl;->c(ZZ)V

    .line 592
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_1

    :cond_7
    move v0, v1

    .line 590
    goto :goto_4

    :cond_8
    move v0, v2

    .line 596
    goto :goto_2

    :cond_9
    move v1, v2

    .line 598
    goto :goto_3
.end method

.method public f(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 680
    iget-object v0, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    .line 682
    return-void
.end method

.method public g(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 939
    packed-switch p1, :pswitch_data_0

    .line 999
    :goto_0
    iget v0, p0, Lcom/viber/voip/util/bo;->C:I

    if-eq v0, p1, :cond_1

    .line 1000
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 1001
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1002
    iget v1, p0, Lcom/viber/voip/util/bo;->C:I

    packed-switch v1, :pswitch_data_1

    .line 1024
    :cond_0
    :goto_1
    :pswitch_0
    iput p1, p0, Lcom/viber/voip/util/bo;->C:I

    .line 1025
    invoke-direct {p0}, Lcom/viber/voip/util/bo;->u()V

    .line 1027
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1028
    invoke-virtual {p0}, Lcom/viber/voip/util/bo;->c()V

    .line 1031
    :cond_1
    return-void

    .line 942
    :pswitch_1
    iget-boolean v0, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v0, :cond_3

    .line 943
    iget-object v0, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/MessagesFragment;->setHasOptionsMenu(Z)V

    .line 944
    iget-object v0, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->setHasOptionsMenu(Z)V

    .line 945
    iget-object v0, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    if-eqz v0, :cond_2

    .line 946
    iget-object v0, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->setHasOptionsMenu(Z)V

    .line 949
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->i()Lcom/viber/voip/util/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragment;->q()Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/viber/voip/util/bl;->b(ZZ)V

    goto :goto_0

    .line 951
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 952
    iget-object v0, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/MessagesFragment;->setHasOptionsMenu(Z)V

    .line 953
    iget-object v0, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->setHasOptionsMenu(Z)V

    .line 954
    iget-object v0, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    if-eqz v0, :cond_4

    .line 955
    iget-object v0, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->setHasOptionsMenu(Z)V

    .line 957
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->i()Lcom/viber/voip/util/bl;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/util/bl;->a(Z)V

    .line 958
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 969
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->i()Lcom/viber/voip/util/bl;

    move-result-object v0

    iput-boolean v3, v0, Lcom/viber/voip/util/bl;->a:Z

    goto :goto_0

    .line 960
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->i()Lcom/viber/voip/util/bl;

    move-result-object v0

    iget-boolean v0, v0, Lcom/viber/voip/util/bl;->a:Z

    if-nez v0, :cond_5

    .line 961
    iget-object v0, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/ui/MessagesFragment;->setHasOptionsMenu(Z)V

    .line 962
    iget-object v0, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->setHasOptionsMenu(Z)V

    .line 963
    iget-object v0, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    if-eqz v0, :cond_7

    .line 964
    iget-object v0, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->setHasOptionsMenu(Z)V

    .line 966
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->i()Lcom/viber/voip/util/bl;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/util/bl;->a(Z)V

    goto :goto_2

    .line 991
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v0}, Lcom/viber/voip/HomeActivity;->i()Lcom/viber/voip/util/bl;

    move-result-object v0

    iput-boolean v3, v0, Lcom/viber/voip/util/bl;->a:Z

    .line 992
    invoke-direct {p0, v2}, Lcom/viber/voip/util/bo;->f(Z)V

    goto/16 :goto_0

    .line 995
    :pswitch_3
    invoke-direct {p0, v3}, Lcom/viber/voip/util/bo;->f(Z)V

    goto/16 :goto_0

    .line 1005
    :pswitch_4
    iget-object v1, p0, Lcom/viber/voip/util/bo;->k:Lcom/viber/voip/messages/ui/MessagesFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragment;->r()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getNavigationMode()I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 1006
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1008
    :cond_8
    iget-boolean v1, p0, Lcom/viber/voip/util/bo;->A:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/SlidingMenu;->g()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1009
    iget-object v1, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v1}, Lcom/viber/voip/HomeActivity;->i()Lcom/viber/voip/util/bl;

    move-result-object v1

    iput-boolean v2, v1, Lcom/viber/voip/util/bl;->a:Z

    .line 1010
    iget-object v1, p0, Lcom/viber/voip/util/bo;->x:Lcom/viber/voip/HomeActivity;

    invoke-virtual {v1}, Lcom/viber/voip/HomeActivity;->i()Lcom/viber/voip/util/bl;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/viber/voip/util/bl;->a(Z)V

    .line 1011
    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getNavigationMode()I

    move-result v1

    if-ne v1, v4, :cond_9

    .line 1012
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 1014
    :cond_9
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v3}, Lcom/slidingmenu/lib/SlidingMenu;->a(Z)V

    goto/16 :goto_1

    .line 1018
    :pswitch_5
    iget-object v1, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-virtual {v1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getNavigationMode()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1019
    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    goto/16 :goto_1

    .line 939
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 1002
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public g(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 685
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/viber/voip/util/bo;->C:I

    if-ne v0, v2, :cond_0

    .line 686
    iget-object v0, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    iget-object v1, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/SlidingMenu;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->setHasOptionsMenu(Z)V

    .line 687
    iget-object v0, p0, Lcom/viber/voip/util/bo;->q:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    iget-object v1, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/SlidingMenu;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->setHasOptionsMenu(Z)V

    .line 689
    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/viber/voip/util/bo;->r:Lcom/viber/voip/user/YouFragment;

    invoke-virtual {v0, v2}, Lcom/viber/voip/user/YouFragment;->updateSettingsItem(Z)V

    .line 692
    :cond_0
    return-void
.end method

.method public g()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1042
    iget v2, p0, Lcom/viber/voip/util/bo;->C:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/viber/voip/util/bo;->C:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_9

    .line 1043
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v2}, Lcom/slidingmenu/lib/SlidingMenu;->h()Z

    move-result v2

    .line 1044
    iget-boolean v3, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v3, :cond_1

    if-nez v2, :cond_2

    :cond_1
    iget-boolean v3, p0, Lcom/viber/voip/util/bo;->A:Z

    if-nez v3, :cond_4

    if-eqz v2, :cond_4

    .line 1045
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/SlidingMenu;->c()V

    .line 1075
    :cond_3
    :goto_0
    return v0

    .line 1047
    :cond_4
    iget-boolean v2, p0, Lcom/viber/voip/util/bo;->A:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v2}, Lcom/slidingmenu/lib/SlidingMenu;->e()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1048
    iget-object v1, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->onActivityBackPressed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1049
    :cond_5
    iget-object v1, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/slidingmenu/lib/SlidingMenu;->a()V

    goto :goto_0

    .line 1053
    :cond_6
    iget-boolean v2, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->onActivityBackPressed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1056
    :cond_7
    iget-boolean v2, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/viber/voip/util/bo;->u:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationFragment;->onActivityBackPressed()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_8
    move v0, v1

    .line 1075
    goto :goto_0

    .line 1059
    :cond_9
    iget v2, p0, Lcom/viber/voip/util/bo;->C:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    .line 1060
    iget-object v0, p0, Lcom/viber/voip/util/bo;->m:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v0}, Lcom/viber/voip/calls/ui/PhoneFragment;->onActivityBackPressed()Z

    move-result v0

    goto :goto_0

    .line 1061
    :cond_a
    iget v2, p0, Lcom/viber/voip/util/bo;->C:I

    if-ne v2, v0, :cond_8

    .line 1062
    iget-object v2, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v2}, Lcom/slidingmenu/lib/SlidingMenu;->h()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1063
    iget-object v1, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    iget v2, p0, Lcom/viber/voip/util/bo;->G:I

    invoke-virtual {v1, v2}, Lcom/slidingmenu/lib/SlidingMenu;->setBehindWidth(I)V

    .line 1064
    iget-object v1, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1, v0}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    goto :goto_0

    .line 1066
    :cond_b
    iget-object v2, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v2}, Lcom/slidingmenu/lib/SlidingMenu;->g()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1068
    iget-object v2, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v2, v0}, Lcom/slidingmenu/lib/SlidingMenu;->a(Z)V

    .line 1069
    invoke-virtual {p0, v1}, Lcom/viber/voip/util/bo;->b(Z)V

    goto/16 :goto_0

    .line 1071
    :cond_c
    iget-boolean v2, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/viber/voip/util/bo;->q:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/viber/voip/util/bo;->q:Lcom/viber/voip/contacts/ui/ContactDetailsFragment;

    invoke-virtual {v2}, Lcom/viber/voip/contacts/ui/ContactDetailsFragment;->onActivityBackPressed()Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_0
.end method

.method public h(I)V
    .locals 2
    .parameter

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/ui/ContactsFragment;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    iget-object v0, p0, Lcom/viber/voip/util/bo;->l:Lcom/viber/voip/contacts/ui/ContactsFragment;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/ui/ContactsFragment;->c(I)V

    .line 1128
    :goto_0
    return-void

    .line 1126
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "contacts_filter"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    goto :goto_0
.end method

.method public h(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/viber/voip/util/bo;->m:Lcom/viber/voip/calls/ui/PhoneFragment;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/viber/voip/util/bo;->m:Lcom/viber/voip/calls/ui/PhoneFragment;

    invoke-virtual {v0, p1}, Lcom/viber/voip/calls/ui/PhoneFragment;->a(Landroid/content/Intent;)V

    .line 1134
    :cond_0
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

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

.method public i()V
    .locals 1

    .prologue
    .line 1083
    iget-boolean v0, p0, Lcom/viber/voip/util/bo;->A:Z

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->a()V

    .line 1088
    :goto_0
    return-void

    .line 1086
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->b()V

    goto :goto_0
.end method

.method public j()V
    .locals 3

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/viber/voip/util/bo;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/viber/voip/util/bo;->c:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/viber/voip/util/bo;->F:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/util/bo;->F:Landroid/view/View;

    .line 1108
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "show_carlos_messages"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Z)Lcom/viber/voip/settings/l;

    .line 1110
    :cond_0
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/viber/voip/util/bo;->F:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/viber/voip/util/bo;->a:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/slidingmenu/lib/SlidingMenu;->c()V

    .line 1139
    iget-object v0, p0, Lcom/viber/voip/util/bo;->o:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->w()V

    .line 1141
    :cond_0
    return-void
.end method

.method public m()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/viber/voip/util/bo;->H:Lcom/viber/voip/util/bt;

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/viber/voip/util/bo;->H:Lcom/viber/voip/util/bt;

    invoke-virtual {v0}, Lcom/viber/voip/util/bt;->a()Landroid/content/Intent;

    move-result-object v0

    .line 1146
    iget-object v1, p0, Lcom/viber/voip/util/bo;->b:Lcom/slidingmenu/lib/SlidingMenu;

    iget-object v2, p0, Lcom/viber/voip/util/bo;->H:Lcom/viber/voip/util/bt;

    invoke-virtual {v1, v2}, Lcom/slidingmenu/lib/SlidingMenu;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1147
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/viber/voip/util/bo;->H:Lcom/viber/voip/util/bt;

    .line 1150
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/util/bo;->n()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public n()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/viber/voip/util/bo;->y:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1155
    if-eqz v0, :cond_0

    const-string/jumbo v1, "com.viber.voip.action.SETTINGS"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1158
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 756
    iget v0, p0, Lcom/viber/voip/util/bo;->C:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/viber/voip/util/bo;->C:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 757
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/util/bo;->q()V

    .line 759
    :cond_1
    return-void
.end method
