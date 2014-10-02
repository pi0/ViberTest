.class public Lcom/viber/voip/HomeActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Lcom/actionbarsherlock/app/ActionBar$TabListener;
.implements Lcom/viber/voip/calls/ui/j;
.implements Lcom/viber/voip/contacts/ui/ac;
.implements Lcom/viber/voip/contacts/ui/bl;
.implements Lcom/viber/voip/f/h;
.implements Lcom/viber/voip/j/c;
.implements Lcom/viber/voip/messages/conversation/ui/az;
.implements Lcom/viber/voip/messages/conversation/ui/ci;
.implements Lcom/viber/voip/messages/conversation/ui/cm;
.implements Lcom/viber/voip/messages/ui/df;
.implements Lcom/viber/voip/settings/ui/bi;
.implements Lcom/viber/voip/settings/ui/by;
.implements Lcom/viber/voip/user/YouFragment$Callbacks;
.implements Lcom/viber/voip/util/gf;
.implements Lcom/viber/voip/widget/k;


# static fields
.field private static final i:I


# instance fields
.field final a:Lcom/viber/jni/PhoneControllerDelegateAdapter;

.field b:Z

.field private c:I

.field private d:Lcom/viber/voip/util/bl;

.field private e:Lcom/viber/voip/ui/HomeViewPager;

.field private f:Lcom/viber/voip/util/bo;

.field private g:Lcom/actionbarsherlock/view/Menu;

.field private h:Lcom/viber/voip/util/fz;

.field private j:I

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Landroid/os/Handler;

.field private o:Lcom/viber/voip/widget/MessageBar;

.field private p:I

.field private q:Lcom/viber/voip/messages/ui/dt;

.field private r:Z

.field private s:Ljava/lang/Runnable;

.field private t:Z

.field private u:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput v0, Lcom/viber/voip/HomeActivity;->i:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 90
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    .line 114
    invoke-static {}, Lcom/viber/voip/HomeActivity;->t()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/HomeActivity;->c:I

    .line 126
    sget v0, Lcom/viber/voip/HomeActivity;->i:I

    iput v0, p0, Lcom/viber/voip/HomeActivity;->j:I

    .line 131
    iput v1, p0, Lcom/viber/voip/HomeActivity;->m:I

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/HomeActivity;->n:Landroid/os/Handler;

    .line 136
    iput v1, p0, Lcom/viber/voip/HomeActivity;->p:I

    .line 271
    new-instance v0, Lcom/viber/voip/ac;

    invoke-direct {v0, p0}, Lcom/viber/voip/ac;-><init>(Lcom/viber/voip/HomeActivity;)V

    iput-object v0, p0, Lcom/viber/voip/HomeActivity;->a:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    .line 313
    new-instance v0, Lcom/viber/voip/af;

    invoke-direct {v0, p0}, Lcom/viber/voip/af;-><init>(Lcom/viber/voip/HomeActivity;)V

    iput-object v0, p0, Lcom/viber/voip/HomeActivity;->s:Ljava/lang/Runnable;

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/HomeActivity;->b:Z

    .line 1093
    new-instance v0, Lcom/viber/voip/ak;

    invoke-direct {v0, p0}, Lcom/viber/voip/ak;-><init>(Lcom/viber/voip/HomeActivity;)V

    iput-object v0, p0, Lcom/viber/voip/HomeActivity;->u:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/HomeActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/viber/voip/HomeActivity;->p:I

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/HomeActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput p1, p0, Lcom/viber/voip/HomeActivity;->p:I

    return p1
.end method

.method private a(Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1
    .parameter

    .prologue
    .line 267
    if-eqz p1, :cond_0

    const-string/jumbo v0, "last_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "last_intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method private a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 825
    if-ltz p1, :cond_0

    .line 826
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bo;->e(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 827
    invoke-direct {p0, v0, p2}, Lcom/viber/voip/HomeActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 829
    :cond_0
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 832
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 835
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 836
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->c()V

    .line 839
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/HomeActivity;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/HomeActivity;->c(II)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 713
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 714
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-static {p0}, Lcom/viber/voip/HomeActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/HomeActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/viber/voip/HomeActivity;->r:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/HomeActivity;)Lcom/viber/voip/widget/MessageBar;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->o:Lcom/viber/voip/widget/MessageBar;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 636
    const-string/jumbo v0, "com.viber.voip.action.CONTACTS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "android.intent.action.CALL_BUTTON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "com.viber.voip.action.YOU"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-nez v0, :cond_2

    :cond_0
    const-string/jumbo v0, "com.viber.voip.action.SETTINGS"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-nez v0, :cond_2

    :cond_1
    const-string/jumbo v0, "com.viber.voip.action.VIEW_CONTACT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/HomeActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->s:Ljava/lang/Runnable;

    return-object v0
.end method

.method private c(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 677
    iget v0, p0, Lcom/viber/voip/HomeActivity;->c:I

    if-lt p1, v0, :cond_0

    .line 705
    :goto_0
    return-void

    .line 678
    :cond_0
    new-instance v0, Lcom/viber/voip/ah;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/ah;-><init>(Lcom/viber/voip/HomeActivity;II)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/HomeActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/HomeActivity;)Lcom/viber/voip/util/fz;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->h:Lcom/viber/voip/util/fz;

    return-object v0
.end method

.method private e(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1064
    const-string/jumbo v0, "checkContactsOnStart()"

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->c(Ljava/lang/String;)V

    .line 1065
    if-ne p1, v1, :cond_0

    .line 1066
    iput-boolean v1, p0, Lcom/viber/voip/HomeActivity;->t:Z

    .line 1067
    const-string/jumbo v0, "checkContactsOnStart() Scheduling CONTACTS_SHOWN"

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->c(Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1069
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1074
    :goto_0
    return-void

    .line 1071
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/HomeActivity;->t:Z

    goto :goto_0
.end method

.method private e(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 211
    const-string/jumbo v0, "popup_action_id"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 212
    if-eq v1, v2, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v2, 0x7f070090

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    .line 214
    if-eqz v0, :cond_0

    .line 215
    packed-switch v1, :pswitch_data_0

    .line 250
    :cond_0
    :goto_0
    :pswitch_0
    const-string/jumbo v0, "popup_action_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0, p1}, Lcom/viber/voip/HomeActivity;->setIntent(Landroid/content/Intent;)V

    .line 255
    :goto_1
    return-void

    .line 217
    :pswitch_1
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->j()Lcom/viber/voip/messages/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->b()Landroid/net/Uri;

    goto :goto_0

    .line 220
    :pswitch_2
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->j()Lcom/viber/voip/messages/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->c()V

    goto :goto_0

    .line 223
    :pswitch_3
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->j()Lcom/viber/voip/messages/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->e()V

    goto :goto_0

    .line 226
    :pswitch_4
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->j()Lcom/viber/voip/messages/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->a()V

    goto :goto_0

    .line 229
    :pswitch_5
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->j()Lcom/viber/voip/messages/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->d()Landroid/net/Uri;

    goto :goto_0

    .line 232
    :pswitch_6
    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->B()Lcom/viber/voip/messages/conversation/ui/ba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ba;->j()Lcom/viber/voip/messages/ui/ad;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/ui/ad;->f()V

    goto :goto_0

    .line 235
    :pswitch_7
    invoke-static {}, Lcom/viber/voip/market/MarketActivity;->a()V

    goto :goto_0

    .line 238
    :pswitch_8
    const-string/jumbo v0, "package_id"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->d(I)V

    .line 239
    const-string/jumbo v0, "package_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :pswitch_9
    const-string/jumbo v0, "package_id"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/market/MarketActivity;->e(I)V

    .line 243
    const-string/jumbo v0, "package_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CLOSE_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 253
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CLOSE_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 215
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

.method static synthetic f(Lcom/viber/voip/HomeActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/viber/voip/HomeActivity;->c:I

    return v0
.end method

.method private f(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1077
    const-string/jumbo v0, "checkContactsOnTabChanged()"

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->c(Ljava/lang/String;)V

    .line 1078
    if-ne p1, v1, :cond_0

    .line 1079
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->t:Z

    if-nez v0, :cond_0

    .line 1080
    iput-boolean v1, p0, Lcom/viber/voip/HomeActivity;->t:Z

    .line 1081
    const-string/jumbo v0, "checkContactsOnTabChanged() scheduling CONTACTS_SHOWN"

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->c(Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1083
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1086
    :cond_0
    return-void
.end method

.method private f(Z)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x3

    const/4 v4, -0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 533
    new-array v5, v2, [I

    fill-array-data v5, :array_0

    .line 534
    new-array v6, v2, [I

    fill-array-data v6, :array_1

    .line 535
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 538
    new-array v7, v2, [Ljava/lang/String;

    const v2, 0x7f0c02b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    const/4 v2, 0x1

    const v3, 0x7f0c02b1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x2

    const v3, 0x7f0c02b0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const v2, 0x7f0c02b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v11

    .line 541
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v0, :cond_2

    .line 542
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 543
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/viber/voip/util/gl;->h()I

    move-result v0

    :goto_0
    sub-int v0, v3, v0

    .line 544
    invoke-static {v2}, Lcom/viber/voip/util/gl;->a(Landroid/content/res/Resources;)F

    move-result v2

    .line 545
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 546
    iget v2, p0, Lcom/viber/voip/HomeActivity;->c:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/viber/voip/HomeActivity;->c:I

    div-int/2addr v0, v2

    move v3, v0

    .line 551
    :goto_1
    if-eqz p1, :cond_0

    .line 552
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->removeAllTabs()V

    .line 555
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    move v2, v1

    .line 556
    :goto_2
    iget v0, p0, Lcom/viber/voip/HomeActivity;->c:I

    if-ge v2, v0, :cond_4

    .line 557
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->newTab()Lcom/actionbarsherlock/app/ActionBar$Tab;

    move-result-object v9

    .line 558
    aget v0, v5, v2

    invoke-virtual {v9, v0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setContentDescription(I)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 559
    invoke-virtual {v9, p0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setTabListener(Lcom/actionbarsherlock/app/ActionBar$TabListener;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 561
    if-ne v2, v11, :cond_3

    const v0, 0x7f030039

    :goto_3
    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 562
    aget-object v1, v7, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 563
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    const v1, 0x7f0700d6

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 565
    aget v10, v6, v2

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 567
    invoke-virtual {v9, v0}, Lcom/actionbarsherlock/app/ActionBar$Tab;->setCustomView(Landroid/view/View;)Lcom/actionbarsherlock/app/ActionBar$Tab;

    .line 568
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/actionbarsherlock/app/ActionBar;->addTab(Lcom/actionbarsherlock/app/ActionBar$Tab;)V

    .line 556
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_1
    move v0, v1

    .line 543
    goto :goto_0

    :cond_2
    move v3, v4

    .line 548
    goto :goto_1

    .line 561
    :cond_3
    const v0, 0x7f030038

    goto :goto_3

    .line 570
    :cond_4
    return-void

    .line 533
    :array_0
    .array-data 0x4
        0xb2t 0x2t 0xct 0x7ft
        0xb1t 0x2t 0xct 0x7ft
        0xb0t 0x2t 0xct 0x7ft
        0x6dt 0x6t 0xct 0x7ft
    .end array-data

    .line 534
    :array_1
    .array-data 0x4
        0xbat 0x0t 0x2t 0x7ft
        0xb9t 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
        0xbct 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private f(Landroid/content/Intent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 368
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    .line 369
    const/high16 v2, 0x10

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    const-string/jumbo v1, "com.viber.voip.action.ACTION_CLOSE_HOME"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->finish()V

    .line 374
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 573
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-direct {p0, p1}, Lcom/viber/voip/HomeActivity;->i(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 576
    sget v0, Lcom/viber/voip/HomeActivity;->i:I

    iput v0, p0, Lcom/viber/voip/HomeActivity;->j:I

    .line 577
    const-string/jumbo v0, "fresh_start"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    move v0, v1

    .line 588
    :goto_0
    iget v6, p0, Lcom/viber/voip/HomeActivity;->c:I

    if-lt v0, v6, :cond_0

    .line 589
    sget v0, Lcom/viber/voip/HomeActivity;->i:I

    .line 592
    :cond_0
    if-eq v0, v1, :cond_3

    .line 593
    iget-boolean v1, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/viber/voip/HomeActivity;->j:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/actionbarsherlock/app/ActionBar;->getNavigationMode()I

    move-result v1

    if-eq v1, v5, :cond_1

    .line 595
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->i()Lcom/viber/voip/util/bl;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/viber/voip/util/bl;->a(Z)V

    .line 597
    :cond_1
    iget v1, p0, Lcom/viber/voip/HomeActivity;->j:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/viber/voip/HomeActivity;->j:I

    if-eq v1, v0, :cond_2

    .line 598
    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->h:Lcom/viber/voip/util/fz;

    invoke-virtual {v1, v4}, Lcom/viber/voip/util/fz;->a(Z)V

    .line 600
    :cond_2
    iput v0, p0, Lcom/viber/voip/HomeActivity;->j:I

    .line 602
    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-ne v0, v5, :cond_b

    .line 603
    iget v0, p0, Lcom/viber/voip/HomeActivity;->j:I

    iput v0, p0, Lcom/viber/voip/HomeActivity;->m:I

    .line 604
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/HomeActivity;->j:I

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 605
    invoke-direct {p0, p1}, Lcom/viber/voip/HomeActivity;->h(Landroid/content/Intent;)V

    .line 611
    :cond_4
    :goto_1
    iget v0, p0, Lcom/viber/voip/HomeActivity;->j:I

    invoke-direct {p0, v0}, Lcom/viber/voip/HomeActivity;->e(I)V

    .line 612
    return-void

    .line 578
    :cond_5
    const-string/jumbo v6, "com.viber.voip.action.CALL_LOG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "com.viber.voip.action.DIALER"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string/jumbo v6, "android.intent.action.DIAL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    move v0, v5

    .line 579
    goto :goto_0

    .line 580
    :cond_7
    invoke-direct {p0, v0}, Lcom/viber/voip/HomeActivity;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    move v0, v2

    .line 581
    goto :goto_0

    .line 582
    :cond_8
    const-string/jumbo v6, "com.viber.voip.action.MESSAGES"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "com.viber.voip.action.CONVERSATION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-boolean v6, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v6, :cond_a

    :cond_9
    move v0, v4

    .line 583
    goto/16 :goto_0

    .line 584
    :cond_a
    const-string/jumbo v6, "com.viber.voip.action.PUBLIC_GROUP"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v3

    .line 585
    goto/16 :goto_0

    .line 606
    :cond_b
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v0, :cond_4

    .line 607
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    iget v1, p0, Lcom/viber/voip/HomeActivity;->j:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bo;->g(I)V

    .line 608
    invoke-direct {p0, p1}, Lcom/viber/voip/HomeActivity;->h(Landroid/content/Intent;)V

    goto :goto_1

    :cond_c
    move v0, v1

    goto/16 :goto_0
.end method

.method static synthetic g(Lcom/viber/voip/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method private h(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 615
    iget v0, p0, Lcom/viber/voip/HomeActivity;->j:I

    packed-switch v0, :pswitch_data_0

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 617
    :pswitch_0
    const-string/jumbo v0, "filter"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    const-string/jumbo v0, "filter"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 619
    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v1, v0}, Lcom/viber/voip/util/bo;->h(I)V

    .line 620
    const-string/jumbo v0, "filter"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0

    .line 624
    :pswitch_1
    const-string/jumbo v0, "open_keypad_number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bo;->h(Landroid/content/Intent;)V

    goto :goto_0

    .line 626
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    const-string/jumbo v0, "open_keypad_number"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bo;->h(Landroid/content/Intent;)V

    goto :goto_0

    .line 615
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic h(Lcom/viber/voip/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method

.method static synthetic i(Lcom/viber/voip/HomeActivity;)Lcom/viber/voip/util/bo;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    return-object v0
.end method

.method private i(Landroid/content/Intent;)Z
    .locals 2
    .parameter

    .prologue
    .line 644
    const-string/jumbo v0, "fresh_start"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "fresh_start"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/viber/voip/HomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/viber/voip/HomeActivity;->o()V

    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 393
    invoke-static {}, Lcom/viber/voip/HomeActivity;->t()I

    move-result v0

    .line 394
    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    invoke-virtual {v1}, Lcom/viber/voip/ui/HomeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 395
    iput v0, p0, Lcom/viber/voip/HomeActivity;->c:I

    .line 396
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    invoke-virtual {v0}, Lcom/viber/voip/ui/HomeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 397
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/HomeActivity;->f(Z)V

    .line 399
    :cond_0
    return-void
.end method

.method private p()V
    .locals 1

    .prologue
    .line 658
    new-instance v0, Lcom/viber/voip/ag;

    invoke-direct {v0, p0}, Lcom/viber/voip/ag;-><init>(Lcom/viber/voip/HomeActivity;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/HomeActivity;->a(Ljava/lang/Runnable;)V

    .line 674
    return-void
.end method

.method private q()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 814
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, v2}, Lcom/viber/voip/util/bo;->e(I)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 815
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bo;->e(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 816
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, v7}, Lcom/viber/voip/util/bo;->e(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 817
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, v8}, Lcom/viber/voip/util/bo;->e(I)Landroid/support/v4/app/Fragment;

    move-result-object v6

    .line 818
    iget v0, p0, Lcom/viber/voip/HomeActivity;->j:I

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/viber/voip/HomeActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 819
    iget v0, p0, Lcom/viber/voip/HomeActivity;->j:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0, v4, v0}, Lcom/viber/voip/HomeActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 820
    iget v0, p0, Lcom/viber/voip/HomeActivity;->j:I

    if-ne v0, v7, :cond_2

    move v0, v1

    :goto_2
    invoke-direct {p0, v5, v0}, Lcom/viber/voip/HomeActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 821
    iget v0, p0, Lcom/viber/voip/HomeActivity;->j:I

    if-ne v0, v8, :cond_3

    :goto_3
    invoke-direct {p0, v6, v1}, Lcom/viber/voip/HomeActivity;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 822
    return-void

    :cond_0
    move v0, v2

    .line 818
    goto :goto_0

    :cond_1
    move v0, v2

    .line 819
    goto :goto_1

    :cond_2
    move v0, v2

    .line 820
    goto :goto_2

    :cond_3
    move v1, v2

    .line 821
    goto :goto_3
.end method

.method private r()Z
    .locals 3

    .prologue
    .line 1041
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1042
    const-string/jumbo v1, "system_conversation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private s()Z
    .locals 3

    .prologue
    .line 1204
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1205
    const-string/jumbo v1, "invalidate_options_menu"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1206
    if-eqz v1, :cond_0

    .line 1207
    const-string/jumbo v2, "invalidate_options_menu"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 1209
    :cond_0
    return v1
.end method

.method private static t()I
    .locals 1

    .prologue
    .line 1247
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/j/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v0, :cond_0

    .line 884
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bo;->f(I)V

    .line 886
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 748
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/HomeActivity;->c(II)V

    .line 749
    return-void
.end method

.method public a(ILandroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 899
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/util/bo;->a(ILandroid/support/v4/app/Fragment;)V

    .line 900
    return-void
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 997
    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2
    .parameter

    .prologue
    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "You clicked message #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->c(Ljava/lang/String;)V

    .line 1091
    return-void
.end method

.method public a(Landroid/preference/PreferenceScreen;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPreferenceAttached root:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", xmlId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->c(Ljava/lang/String;)V

    .line 1188
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/h;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/util/bo;->a(Lcom/viber/voip/messages/conversation/h;Z)V

    .line 1011
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 409
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->d:Lcom/viber/voip/util/bl;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bl;->b(Z)V

    .line 410
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->b(Z)V

    .line 411
    return-void

    .line 410
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(ZJLjava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1019
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->r:Z

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->n:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/aj;

    invoke-direct {v1, p0}, Lcom/viber/voip/aj;-><init>(Lcom/viber/voip/HomeActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1028
    :cond_0
    return-void
.end method

.method public a(ZLandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 904
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-nez v0, :cond_0

    .line 905
    invoke-virtual {p0, p2}, Lcom/viber/voip/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 909
    :goto_0
    return-void

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p2}, Lcom/viber/voip/util/bo;->e(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a_(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 874
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-nez v0, :cond_0

    .line 875
    invoke-virtual {p0, p1}, Lcom/viber/voip/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 879
    :goto_0
    return-void

    .line 877
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bo;->b(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    invoke-virtual {v0}, Lcom/viber/voip/ui/HomeViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 808
    :cond_0
    iget v0, p0, Lcom/viber/voip/HomeActivity;->j:I

    .line 810
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    invoke-virtual {v0}, Lcom/viber/voip/ui/HomeViewPager;->getCurrentItem()I

    move-result v0

    goto :goto_0
.end method

.method public b(I)V
    .locals 1
    .parameter

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bo;->b(I)V

    .line 1006
    return-void
.end method

.method public b(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSettingsItemSelected position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->c(Ljava/lang/String;)V

    .line 1182
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/util/bo;->a(II)V

    .line 1183
    return-void
.end method

.method public b(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-nez v0, :cond_0

    .line 891
    invoke-virtual {p0, p1}, Lcom/viber/voip/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 895
    :goto_0
    return-void

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bo;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    invoke-virtual {v0, p1}, Lcom/viber/voip/ui/HomeViewPager;->setPagingEnabled(Z)V

    .line 417
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    new-instance v1, Lcom/viber/voip/ai;

    invoke-direct {v1, p0}, Lcom/viber/voip/ai;-><init>(Lcom/viber/voip/HomeActivity;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/HomeViewPager;->post(Ljava/lang/Runnable;)Z

    .line 862
    :goto_0
    return-void

    .line 860
    :cond_0
    invoke-static {p0}, Lcom/viber/voip/HomeActivity;->h(Lcom/viber/voip/HomeActivity;)V

    goto :goto_0
.end method

.method public c(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 912
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-nez v0, :cond_0

    .line 913
    invoke-virtual {p0, p1}, Lcom/viber/voip/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 917
    :goto_0
    return-void

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bo;->c(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 649
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bo;->c(Z)V

    .line 650
    return-void
.end method

.method public c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bo;->c(I)Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0}, Lcom/viber/voip/util/bo;->d()V

    .line 1033
    return-void
.end method

.method public d(I)V
    .locals 1
    .parameter

    .prologue
    .line 1237
    new-instance v0, Lcom/viber/voip/al;

    invoke-direct {v0, p0}, Lcom/viber/voip/al;-><init>(Lcom/viber/voip/HomeActivity;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1244
    return-void
.end method

.method public d(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 920
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bo;->d(Landroid/content/Intent;)V

    .line 923
    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1015
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 1047
    return-void
.end method

.method public e(Z)V
    .locals 3
    .parameter

    .prologue
    .line 1227
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/viber/voip/HomeActivity;->c:I

    if-ge v1, v0, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bo;->e(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1229
    instance-of v2, v0, Lcom/viber/voip/f/h;

    if-eqz v2, :cond_0

    .line 1230
    check-cast v0, Lcom/viber/voip/f/h;

    invoke-interface {v0, p1}, Lcom/viber/voip/f/h;->e(Z)V

    .line 1227
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1233
    :cond_1
    return-void
.end method

.method public e_()V
    .locals 0

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->h()V

    .line 655
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 1102
    iget v0, p0, Lcom/viber/voip/HomeActivity;->m:I

    return v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 1106
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v0, :cond_0

    .line 1107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/HomeActivity;->r:Z

    .line 1109
    :cond_0
    return-void
.end method

.method public h()V
    .locals 1

    .prologue
    .line 1112
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0}, Lcom/viber/voip/util/bo;->e()V

    .line 1115
    :cond_0
    return-void
.end method

.method public i()Lcom/viber/voip/util/bl;
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->d:Lcom/viber/voip/util/bl;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 1122
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0}, Lcom/viber/voip/util/bo;->j()V

    .line 1125
    :cond_0
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 1128
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0}, Lcom/viber/voip/util/bo;->k()Z

    move-result v0

    .line 1131
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0}, Lcom/viber/voip/util/bo;->h()Z

    move-result v0

    return v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0}, Lcom/viber/voip/util/bo;->i()V

    .line 1196
    return-void
.end method

.method public n()V
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0}, Lcom/viber/voip/util/bo;->l()V

    .line 1201
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1136
    const/4 v0, 0x3

    const-string/jumbo v1, "HomeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleActivityResult requestCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-super {p0, p1, p2, p3}, Lcom/viber/voip/app/ViberFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1139
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1140
    packed-switch p1, :pswitch_data_0

    .line 1159
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v0, :cond_1

    .line 1160
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/extras/fb/s;->a(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 1163
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1164
    const v1, 0x7f0700a6

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1165
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/viber/voip/settings/ui/bv;

    if-eqz v1, :cond_2

    .line 1166
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1168
    :cond_2
    return-void

    .line 1142
    :pswitch_0
    const-string/jumbo v0, "action"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1144
    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/user/YouFragment;

    .line 1145
    const-string/jumbo v1, "action"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 1147
    :pswitch_1
    invoke-virtual {v0}, Lcom/viber/voip/user/YouFragment;->onFacebookDetailsRequested()V

    goto :goto_0

    .line 1150
    :pswitch_2
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/viber/voip/user/YouFragment;->showDialog(I)V

    goto :goto_0

    .line 1140
    nop

    :pswitch_data_0
    .packed-switch 0x4d1
        :pswitch_0
    .end packed-switch

    .line 1145
    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter

    .prologue
    .line 866
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    iget v1, p0, Lcom/viber/voip/HomeActivity;->j:I

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/util/bo;->a(Landroid/support/v4/app/Fragment;I)V

    .line 867
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 868
    invoke-direct {p0}, Lcom/viber/voip/HomeActivity;->q()V

    .line 870
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    invoke-virtual {v1}, Lcom/viber/voip/ui/HomeViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bo;->e(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 486
    instance-of v1, v0, Lcom/viber/voip/d;

    if-eqz v1, :cond_2

    .line 487
    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0}, Lcom/viber/voip/d;->onActivityBackPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0}, Lcom/viber/voip/util/bo;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 496
    :cond_2
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 144
    const-string/jumbo v0, "onCreate"

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->c(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getSherlock()Lcom/actionbarsherlock/ActionBarSherlock;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/actionbarsherlock/ActionBarSherlock;->setUiOptions(I)V

    .line 147
    new-instance v0, Lcom/viber/voip/util/bl;

    invoke-direct {v0, p0}, Lcom/viber/voip/util/bl;-><init>(Lcom/viber/voip/HomeActivity;)V

    iput-object v0, p0, Lcom/viber/voip/HomeActivity;->d:Lcom/viber/voip/util/bl;

    .line 148
    new-instance v0, Lcom/viber/voip/util/bo;

    invoke-direct {v0}, Lcom/viber/voip/util/bo;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    .line 150
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->requestViberOutCheck()V

    .line 151
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/HomeActivity;->f(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p0, v4}, Lcom/viber/voip/HomeActivity;->setDefaultKeyMode(I)V

    .line 155
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->setDefaultKeyMode(I)V

    .line 157
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->setContentView(I)V

    .line 159
    const v0, 0x7f070096

    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/dt;

    iput-object v0, p0, Lcom/viber/voip/HomeActivity;->q:Lcom/viber/voip/messages/ui/dt;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Root view: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->q:Lcom/viber/voip/messages/ui/dt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->c(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/viber/voip/util/fz;->a()Lcom/viber/voip/util/fz;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/HomeActivity;->h:Lcom/viber/voip/util/fz;

    .line 163
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->h:Lcom/viber/voip/util/fz;

    const/4 v1, -0x1

    iget v2, p0, Lcom/viber/voip/HomeActivity;->c:I

    sget v3, Lcom/viber/voip/HomeActivity;->i:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/util/fz;->a(III)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/HomeActivity;->j:I

    .line 165
    const-string/jumbo v0, "onCreate pager"

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->c(Ljava/lang/String;)V

    .line 166
    const v0, 0x7f070097

    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/HomeViewPager;

    iput-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    .line 168
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    .line 170
    invoke-direct {p0, p1}, Lcom/viber/voip/HomeActivity;->a(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 172
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    invoke-virtual {v0, p0}, Lcom/viber/voip/ui/HomeViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 174
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    iget v2, p0, Lcom/viber/voip/HomeActivity;->c:I

    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/HomeViewPager;->setOffscreenPageLimit(I)V

    .line 175
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    new-instance v2, Lcom/viber/voip/an;

    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/viber/voip/an;-><init>(Lcom/viber/voip/HomeActivity;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {v0, v2}, Lcom/viber/voip/ui/HomeViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 177
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPromoHandler()Lcom/viber/voip/f/j;

    move-result-object v2

    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->q:Lcom/viber/voip/messages/ui/dt;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v2, p0, v0, p0}, Lcom/viber/voip/f/j;->a(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/viber/voip/f/h;)V

    .line 183
    :goto_1
    invoke-direct {p0, v5}, Lcom/viber/voip/HomeActivity;->f(Z)V

    .line 185
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRecentLetterManager()Lcom/viber/voip/calls/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/calls/ao;->a()V

    .line 186
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v4}, Lcom/viber/voip/messages/extras/fb/s;->b(Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ad;Z)V

    .line 188
    invoke-virtual {p0, v1}, Lcom/viber/voip/HomeActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 190
    if-nez p1, :cond_1

    .line 191
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->a()Lcom/viber/voip/messages/controller/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/controller/c/b;->c()V

    .line 194
    :cond_1
    new-instance v0, Lcom/viber/voip/widget/MessageBar;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/MessageBar;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/viber/voip/HomeActivity;->o:Lcom/viber/voip/widget/MessageBar;

    .line 195
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->o:Lcom/viber/voip/widget/MessageBar;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/MessageBar;->a(Lcom/viber/voip/widget/k;)V

    .line 197
    invoke-static {}, Lcom/viber/voip/viberout/e;->c()Lcom/viber/voip/viberout/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/viberout/e;->f()Lcom/viber/voip/viberout/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/viberout/a;->b()V

    .line 198
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/viber/voip/contacts/c/d/b;->b(Z)V

    .line 199
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/HomeActivity;->e(Landroid/content/Intent;)V

    .line 201
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/j/a;->a(Lcom/viber/voip/j/c;)V

    .line 203
    const-string/jumbo v0, "onCreate stop"

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-direct {p0}, Lcom/viber/voip/HomeActivity;->r()Z

    move-result v2

    invoke-virtual {v0, p0, v2}, Lcom/viber/voip/util/bo;->a(Lcom/viber/voip/HomeActivity;Z)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 1
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/viber/voip/HomeActivity;->g:Lcom/actionbarsherlock/view/Menu;

    .line 940
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 798
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onDestroy()V

    .line 800
    invoke-static {}, Lcom/viber/voip/j/a;->a()Lcom/viber/voip/j/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/j/a;->b(Lcom/viber/voip/j/c;)V

    .line 801
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->a:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 802
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->n:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->s:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 803
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 521
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    invoke-virtual {v1}, Lcom/viber/voip/ui/HomeViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bo;->e(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 523
    instance-of v1, v0, Lcom/viber/voip/d;

    if-eqz v1, :cond_0

    .line 524
    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/d;->onActivityKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    const/4 v0, 0x1

    .line 529
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/viber/voip/app/ViberFragmentActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNewIntent ACTION:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->c(Ljava/lang/String;)V

    .line 354
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 355
    invoke-direct {p0, p1}, Lcom/viber/voip/HomeActivity;->f(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    :goto_0
    return-void

    .line 357
    :cond_0
    invoke-static {p0, p1}, Lcom/viber/voip/util/bm;->a(Lcom/viber/voip/HomeActivity;Landroid/content/Intent;)V

    .line 358
    invoke-direct {p0, p1}, Lcom/viber/voip/HomeActivity;->g(Landroid/content/Intent;)V

    .line 363
    const-string/jumbo v0, "com.viber.voip.action.DEFAULT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    invoke-virtual {p0, p1}, Lcom/viber/voip/HomeActivity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1051
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1059
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1053
    :sswitch_0
    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v1}, Lcom/viber/voip/util/bo;->g()Z

    goto :goto_0

    .line 1056
    :sswitch_1
    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v1}, Lcom/viber/voip/util/bo;->f()V

    goto :goto_0

    .line 1051
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f07048c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPageScrollStateChanged(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 971
    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/HomeActivity;->k:Z

    .line 972
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->g:Lcom/actionbarsherlock/view/Menu;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->g:Lcom/actionbarsherlock/view/Menu;

    iget-boolean v3, p0, Lcom/viber/voip/HomeActivity;->k:Z

    invoke-interface {v0, v2, v3}, Lcom/actionbarsherlock/view/Menu;->setGroupEnabled(IZ)V

    .line 976
    :cond_0
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 977
    packed-switch p1, :pswitch_data_0

    .line 992
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 971
    goto :goto_0

    .line 979
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    invoke-virtual {v0}, Lcom/viber/voip/ui/HomeViewPager;->getCurrentItem()I

    move-result v0

    .line 981
    iget v3, p0, Lcom/viber/voip/HomeActivity;->m:I

    if-ne v3, v0, :cond_3

    invoke-direct {p0}, Lcom/viber/voip/HomeActivity;->s()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 982
    :cond_3
    iget v3, p0, Lcom/viber/voip/HomeActivity;->m:I

    invoke-direct {p0, v3, v2}, Lcom/viber/voip/HomeActivity;->a(IZ)V

    .line 983
    invoke-direct {p0, v0, v1}, Lcom/viber/voip/HomeActivity;->a(IZ)V

    .line 986
    iput v0, p0, Lcom/viber/voip/HomeActivity;->m:I

    goto :goto_1

    .line 977
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 945
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 950
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/ActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 952
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 955
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-nez v0, :cond_1

    .line 956
    iput p1, p0, Lcom/viber/voip/HomeActivity;->j:I

    :cond_1
    move v1, v2

    .line 959
    :goto_0
    iget v0, p0, Lcom/viber/voip/HomeActivity;->c:I

    if-ge v1, v0, :cond_4

    .line 960
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bo;->e(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 961
    if-eqz v0, :cond_2

    instance-of v3, v0, Lcom/viber/voip/d;

    if-eqz v3, :cond_2

    .line 962
    check-cast v0, Lcom/viber/voip/d;

    if-ne p1, v1, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-interface {v0, v3}, Lcom/viber/voip/d;->onFragmentVisibilityChanged(Z)V

    .line 959
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v3, v2

    .line 962
    goto :goto_1

    .line 966
    :cond_4
    invoke-direct {p0, p1}, Lcom/viber/voip/HomeActivity;->f(I)V

    .line 967
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 403
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onPause()V

    .line 405
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getAvailableScreenWidthMeasurer()Lcom/viber/voip/ui/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->q:Lcom/viber/voip/messages/ui/dt;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/a;->b(Lcom/viber/voip/messages/ui/dt;)V

    .line 406
    return-void
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onRestart()V

    .line 260
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/HomeActivity;->e(Landroid/content/Intent;)V

    .line 261
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 347
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 348
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->o:Lcom/viber/voip/widget/MessageBar;

    const-string/jumbo v1, "com.viber.voip.HomeActivity.messageBar"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/MessageBar;->a(Landroid/os/Bundle;)V

    .line 349
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResume ACTION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", DATA: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", BUNDLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/HomeActivity;->c(Ljava/lang/String;)V

    .line 383
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getAvailableScreenWidthMeasurer()Lcom/viber/voip/ui/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->q:Lcom/viber/voip/messages/ui/dt;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/a;->a(Lcom/viber/voip/messages/ui/dt;)V

    .line 384
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bo;->g(Landroid/content/Intent;)V

    .line 386
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CLOSE_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 388
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onResume()V

    .line 389
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/rakuten/l;->a(Landroid/content/Context;)V

    .line 390
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 500
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 501
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    iget-object v2, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    invoke-virtual {v2}, Lcom/viber/voip/ui/HomeViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/util/bo;->e(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 503
    instance-of v2, v0, Lcom/viber/voip/d;

    if-eqz v2, :cond_0

    .line 504
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0}, Lcom/viber/voip/d;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 507
    :cond_0
    return-object v1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 333
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "com.viber.voip.action.DEFAULT"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0}, Lcom/viber/voip/util/bo;->m()Landroid/content/Intent;

    move-result-object v0

    .line 336
    if-eqz v0, :cond_0

    .line 340
    :goto_0
    const-string/jumbo v1, "last_intent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 341
    const-string/jumbo v0, "com.viber.voip.HomeActivity.messageBar"

    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->o:Lcom/viber/voip/widget/MessageBar;

    invoke-virtual {v1}, Lcom/viber/voip/widget/MessageBar;->c()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 342
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 343
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->k:Z

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    invoke-virtual {v1}, Lcom/viber/voip/ui/HomeViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bo;->e(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 473
    instance-of v1, v0, Lcom/viber/voip/d;

    if-eqz v1, :cond_0

    .line 474
    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0}, Lcom/viber/voip/d;->onActivitySearchRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    const/4 v0, 0x1

    .line 479
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onSearchRequested()Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 753
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onStart()V

    .line 755
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 756
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 757
    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 758
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 759
    const-class v1, Lcom/viber/voip/WelcomeActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 760
    invoke-virtual {p0, v0}, Lcom/viber/voip/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 761
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->finish()V

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->h:Lcom/viber/voip/util/fz;

    invoke-virtual {v0, p0}, Lcom/viber/voip/util/fz;->a(Lcom/viber/voip/util/gf;)V

    .line 766
    invoke-direct {p0}, Lcom/viber/voip/HomeActivity;->p()V

    .line 768
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 769
    iget v3, p0, Lcom/viber/voip/HomeActivity;->j:I

    move v0, v1

    .line 770
    :goto_1
    iget v2, p0, Lcom/viber/voip/HomeActivity;->c:I

    if-ge v0, v2, :cond_3

    .line 771
    if-ne v0, v3, :cond_2

    const/4 v2, 0x1

    :goto_2
    invoke-direct {p0, v0, v2}, Lcom/viber/voip/HomeActivity;->a(IZ)V

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    .line 771
    goto :goto_2

    .line 775
    :cond_3
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    .line 776
    iget-object v2, p0, Lcom/viber/voip/HomeActivity;->a:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    invoke-virtual {v0, v2}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 778
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bo;->e(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 785
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onStop()V

    .line 786
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/a/bc;->b(Landroid/app/Activity;)V

    .line 788
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bo;->e(Z)V

    .line 792
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->h:Lcom/viber/voip/util/fz;

    iget v1, p0, Lcom/viber/voip/HomeActivity;->j:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/fz;->a(I)V

    .line 793
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->h:Lcom/viber/voip/util/fz;

    invoke-virtual {v0, p0}, Lcom/viber/voip/util/fz;->b(Lcom/viber/voip/util/gf;)V

    .line 794
    return-void
.end method

.method public onTabReselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 931
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    iget v1, p0, Lcom/viber/voip/HomeActivity;->j:I

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bo;->e(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 932
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/viber/voip/d;

    if-eqz v1, :cond_0

    .line 933
    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0}, Lcom/viber/voip/d;->onTabReselected()V

    .line 935
    :cond_0
    return-void
.end method

.method public onTabSelected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 423
    invoke-virtual {p1}, Lcom/actionbarsherlock/app/ActionBar$Tab;->getPosition()I

    move-result v0

    .line 424
    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->d:Lcom/viber/voip/util/bl;

    invoke-virtual {v1, v0}, Lcom/viber/voip/util/bl;->a(I)V

    .line 426
    iget-boolean v1, p0, Lcom/viber/voip/HomeActivity;->b:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/viber/voip/HomeActivity;->j:I

    if-eqz v1, :cond_1

    .line 427
    const-string/jumbo v0, "HomeActivity"

    const-string/jumbo v1, "callback onTabSelected was ignored!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iput-boolean v3, p0, Lcom/viber/voip/HomeActivity;->b:Z

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    iput-boolean v3, p0, Lcom/viber/voip/HomeActivity;->b:Z

    .line 434
    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v1, v0}, Lcom/viber/voip/util/bo;->d(I)V

    .line 436
    iget v1, p0, Lcom/viber/voip/HomeActivity;->j:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/viber/voip/HomeActivity;->j:I

    if-eq v1, v0, :cond_2

    .line 437
    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->h:Lcom/viber/voip/util/fz;

    invoke-virtual {v1, v3}, Lcom/viber/voip/util/fz;->a(Z)V

    .line 440
    :cond_2
    iget v1, p0, Lcom/viber/voip/HomeActivity;->j:I

    if-ne v1, v4, :cond_3

    iget v1, p0, Lcom/viber/voip/HomeActivity;->j:I

    if-eq v1, v0, :cond_3

    .line 441
    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->h:Lcom/viber/voip/util/fz;

    invoke-virtual {v1}, Lcom/viber/voip/util/fz;->k()V

    .line 444
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    if-eqz v1, :cond_7

    .line 445
    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    invoke-virtual {v1}, Lcom/viber/voip/ui/HomeViewPager;->getCurrentItem()I

    move-result v1

    if-eq v1, v0, :cond_4

    .line 446
    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    invoke-virtual {v1, v0, v4}, Lcom/viber/voip/ui/HomeViewPager;->setCurrentItem(IZ)V

    .line 452
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v1, :cond_5

    .line 453
    iput v0, p0, Lcom/viber/voip/HomeActivity;->j:I

    .line 456
    :cond_5
    invoke-static {}, Lcom/viber/voip/sound/SoundFactory;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 457
    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 458
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->stream_Dtmf()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/HomeActivity;->setVolumeControlStream(I)V

    .line 464
    :cond_6
    :goto_2
    iget-boolean v1, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v1, :cond_0

    .line 465
    iput v0, p0, Lcom/viber/voip/HomeActivity;->m:I

    goto :goto_0

    .line 449
    :cond_7
    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v1, v0}, Lcom/viber/voip/util/bo;->g(I)V

    goto :goto_1

    .line 460
    :cond_8
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->stream_Ring()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/HomeActivity;->setVolumeControlStream(I)V

    goto :goto_2
.end method

.method public onTabUnselected(Lcom/actionbarsherlock/app/ActionBar$Tab;Landroid/support/v4/app/FragmentTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 927
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    if-eqz v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    iget-object v1, p0, Lcom/viber/voip/HomeActivity;->e:Lcom/viber/voip/ui/HomeViewPager;

    invoke-virtual {v1}, Lcom/viber/voip/ui/HomeViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/bo;->e(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 1216
    instance-of v1, v0, Lcom/viber/voip/d;

    if-eqz v1, :cond_0

    .line 1217
    check-cast v0, Lcom/viber/voip/d;

    invoke-interface {v0, p1}, Lcom/viber/voip/d;->onActivityTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    const/4 v0, 0x1

    .line 1222
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onWindowFocusChanged(Z)V

    .line 328
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bo;->a(Z)V

    .line 329
    :cond_0
    return-void
.end method

.method public onYouItemSelected(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 1172
    iget-boolean v0, p0, Lcom/viber/voip/HomeActivity;->l:Z

    if-nez v0, :cond_0

    .line 1173
    invoke-virtual {p0, p1}, Lcom/viber/voip/HomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 1177
    :goto_0
    return-void

    .line 1175
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/HomeActivity;->f:Lcom/viber/voip/util/bo;

    invoke-virtual {v0, p1}, Lcom/viber/voip/util/bo;->f(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 844
    invoke-static {}, Lcom/viber/voip/util/gl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {p0}, Lcom/viber/voip/HomeActivity;->c()V

    .line 847
    :cond_0
    return-void
.end method
