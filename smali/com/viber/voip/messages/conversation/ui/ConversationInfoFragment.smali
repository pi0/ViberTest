.class public Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;
.super Lcom/actionbarsherlock/app/SherlockListFragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/viber/provider/e;
.implements Lcom/viber/voip/messages/controller/dc;
.implements Lcom/viber/voip/messages/conversation/ui/cs;


# static fields
.field private static final a:Ljava/lang/String;

.field private static n:Lcom/viber/voip/messages/conversation/ui/ci;


# instance fields
.field private b:Lcom/a/a/a/a;

.field private c:Lcom/viber/voip/messages/ui/view/c;

.field private d:Lcom/viber/voip/messages/adapters/l;

.field private e:Lcom/viber/voip/messages/conversation/h;

.field private f:Lcom/viber/voip/messages/conversation/ap;

.field private g:Lcom/viber/voip/messages/i;

.field private h:Landroid/os/Handler;

.field private i:Landroid/net/Uri;

.field private j:Lcom/viber/voip/a/q;

.field private k:Lcom/viber/voip/messages/conversation/ui/cn;

.field private l:Ljava/lang/String;

.field private m:Lcom/viber/voip/messages/conversation/ui/cm;

.field private o:Lcom/viber/voip/messages/conversation/ui/ci;

.field private final p:Lcom/viber/jni/lastonline/LastOnlineDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a:Ljava/lang/String;

    .line 133
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/bx;

    invoke-direct {v0}, Lcom/viber/voip/messages/conversation/ui/bx;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->n:Lcom/viber/voip/messages/conversation/ui/ci;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;-><init>()V

    .line 116
    new-instance v0, Lcom/viber/voip/a/q;

    invoke-direct {v0}, Lcom/viber/voip/a/q;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->j:Lcom/viber/voip/a/q;

    .line 167
    sget-object v0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->n:Lcom/viber/voip/messages/conversation/ui/ci;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->o:Lcom/viber/voip/messages/conversation/ui/ci;

    .line 760
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/ca;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/ui/ca;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->p:Lcom/viber/jni/lastonline/LastOnlineDelegate;

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)Lcom/viber/voip/messages/conversation/h;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    return-object v0
.end method

.method private a(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 585
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    if-nez v0, :cond_2

    .line 586
    const-string/jumbo v0, "saveBitmapToConversation :: mGroupEntity == null => callback init"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->d(Ljava/lang/String;)V

    .line 594
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    .line 596
    :try_start_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c048e

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :cond_1
    :goto_1
    return-void

    .line 587
    :cond_2
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 588
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 589
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/GroupController;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 591
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->c:Lcom/viber/voip/messages/ui/view/c;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/ui/view/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->b:Lcom/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a;->notifyDataSetChanged()V

    goto :goto_0

    .line 597
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/os/IBinder;)V
    .locals 2
    .parameter

    .prologue
    .line 849
    if-eqz p1, :cond_0

    .line 850
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 851
    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 853
    :cond_0
    return-void
.end method

.method private a(Lcom/viber/voip/messages/conversation/h;Lcom/viber/voip/messages/conversation/ap;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 308
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->Z()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 313
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 314
    invoke-direct {p0, v4}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Z)V

    .line 315
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    .line 316
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v3

    .line 318
    :goto_1
    invoke-virtual {p2}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 319
    invoke-virtual {p2, v0}, Lcom/viber/voip/messages/conversation/ap;->e(I)Lcom/viber/voip/messages/conversation/ar;

    move-result-object v2

    .line 320
    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ar;->o()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ar;->p()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 321
    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ar;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    :cond_3
    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v2

    .line 326
    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->getLastOnlineController()Lcom/viber/jni/lastonline/LastOnlineController;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/viber/jni/lastonline/LastOnlineController;->handleGetLastOnline([Ljava/lang/String;IIJ)Z

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/messages/conversation/h;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 796
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->c:Lcom/viber/voip/messages/ui/view/c;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/view/c;->a(Lcom/viber/voip/messages/conversation/h;)V

    .line 797
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->b:Lcom/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a;->notifyDataSetChanged()V

    .line 799
    if-eqz p1, :cond_0

    .line 803
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->c:Lcom/viber/voip/messages/ui/view/c;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/view/c;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    .line 805
    if-eqz p2, :cond_2

    .line 806
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->f:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->e()V

    .line 811
    :cond_0
    :goto_1
    return-void

    .line 803
    :cond_1
    invoke-static {p1}, Lcom/viber/voip/util/gk;->b(Lcom/viber/voip/messages/conversation/h;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 807
    :cond_2
    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/util/gl;->b(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Landroid/os/IBinder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 4
    .parameter

    .prologue
    .line 525
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->q()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Runnable;)V

    .line 531
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 648
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->d()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1}, Lcom/viber/voip/messages/controller/GroupController;->a(JLjava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->c:Lcom/viber/voip/messages/ui/view/c;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/view/c;->a(Ljava/lang/String;)V

    .line 651
    const-string/jumbo v0, "rename_dialog"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->b(Ljava/lang/String;)V

    .line 653
    :cond_1
    return-void
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 296
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->Z()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 297
    if-eqz v0, :cond_0

    .line 299
    if-eqz p1, :cond_1

    .line 300
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getLastOnlineListener()Lcom/viber/jni/lastonline/LastOnlineListener;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/viber/jni/lastonline/LastOnlineDelegate;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->p:Lcom/viber/jni/lastonline/LastOnlineDelegate;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/jni/lastonline/LastOnlineListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getLastOnlineListener()Lcom/viber/jni/lastonline/LastOnlineListener;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->p:Lcom/viber/jni/lastonline/LastOnlineDelegate;

    invoke-virtual {v0, v1}, Lcom/viber/jni/lastonline/LastOnlineListener;->removeDelegate(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)Lcom/viber/voip/messages/conversation/ap;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->f:Lcom/viber/voip/messages/conversation/ap;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->d(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 670
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 671
    if-eqz v1, :cond_0

    .line 672
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 675
    :cond_0
    invoke-static {p1}, Lcom/viber/voip/messages/conversation/ui/cj;->a(Ljava/lang/String;)Lcom/viber/voip/messages/conversation/ui/cj;

    move-result-object v1

    .line 676
    invoke-virtual {v1, v0, p1}, Lcom/viber/voip/messages/conversation/ui/cj;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->k:Lcom/viber/voip/messages/conversation/ui/cn;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/cn;->a(Ljava/lang/String;)V

    .line 679
    const-wide/16 v0, 0x2710

    .line 680
    const-string/jumbo v2, "loading_dialog"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 681
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->k:Lcom/viber/voip/messages/conversation/ui/cn;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 682
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->k:Lcom/viber/voip/messages/conversation/ui/cn;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 687
    :cond_1
    :goto_0
    return-void

    .line 683
    :cond_2
    const-string/jumbo v2, "rename_dialog"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 684
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->k:Lcom/viber/voip/messages/conversation/ui/cn;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 685
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->k:Lcom/viber/voip/messages/conversation/ui/cn;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private b(Z)V
    .locals 3
    .parameter

    .prologue
    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saveGroupNotification isSmartNotificationOn - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->d(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->s()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 659
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->j:Lcom/viber/voip/a/q;

    invoke-virtual {v1, p1}, Lcom/viber/voip/a/q;->a(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 661
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->c:Lcom/viber/voip/messages/ui/view/c;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/view/c;->a(Z)V

    .line 662
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->b:Lcom/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a;->notifyDataSetChanged()V

    .line 664
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1}, Lcom/viber/voip/messages/controller/GroupController;->a(JZ)V

    .line 666
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)Lcom/viber/voip/messages/ui/view/c;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->c:Lcom/viber/voip/messages/ui/view/c;

    return-object v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 435
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    if-nez v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    const v2, 0x7f0c049d

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/messages/conversation/ui/cd;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/conversation/ui/cd;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)V

    const v5, 0x7f0c04a0

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IZ)Landroid/content/DialogInterface;

    goto :goto_0

    .line 448
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 449
    const v0, 0x7f0c0491

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 450
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 451
    const v1, 0x7f030133

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 452
    const v0, 0x7f0703d8

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 453
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0008

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 456
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string/jumbo v1, ""

    .line 457
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 458
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 460
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 461
    const v3, 0x7f0c02b6

    new-instance v4, Lcom/viber/voip/messages/conversation/ui/ce;

    invoke-direct {v4, p0, v0}, Lcom/viber/voip/messages/conversation/ui/ce;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 468
    const v3, 0x7f0c047c

    new-instance v4, Lcom/viber/voip/messages/conversation/ui/cf;

    invoke-direct {v4, p0, v0}, Lcom/viber/voip/messages/conversation/ui/cf;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 477
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 479
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 481
    new-instance v3, Lcom/viber/voip/messages/conversation/ui/cg;

    invoke-direct {v3, p0, v2, v1}, Lcom/viber/voip/messages/conversation/ui/cg;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Landroid/app/AlertDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 496
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 497
    const/4 v0, -0x2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->c()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method static synthetic c(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 690
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->k:Lcom/viber/voip/messages/conversation/ui/cn;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 691
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 692
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 693
    if-eqz v1, :cond_0

    .line 694
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 695
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 697
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)Lcom/viber/voip/messages/adapters/l;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->d:Lcom/viber/voip/messages/adapters/l;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 602
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 604
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 605
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->d()Lcom/viber/voip/messages/controller/GroupController;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v1

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/controller/GroupController;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->c:Lcom/viber/voip/messages/ui/view/c;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/messages/ui/view/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0c048e

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 609
    :cond_0
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 742
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 743
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 87
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 503
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->j:Lcom/viber/voip/a/q;

    invoke-virtual {v1}, Lcom/viber/voip/a/q;->f()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 504
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->f:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->f:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v0

    invoke-static {}, Lcom/viber/voip/contacts/ui/cb;->a()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 506
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/ch;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/ui/ch;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Ljava/lang/Runnable;)V

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "500"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 519
    const-string/jumbo v0, "can_not_add_dialog"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 635
    if-eqz v0, :cond_0

    .line 636
    new-instance v1, Lcom/viber/voip/messages/conversation/ui/bz;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/conversation/ui/bz;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 645
    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 842
    return-void
.end method

.method public a(IJJLjava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 838
    return-void
.end method

.method public a(IJLjava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 846
    return-void
.end method

.method public a(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 834
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 815
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->f:Lcom/viber/voip/messages/conversation/ap;

    if-ne p1, v0, :cond_1

    .line 820
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->m:Lcom/viber/voip/messages/conversation/ui/cm;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->f:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ap;->getCount()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/conversation/ui/cm;->b(I)V

    .line 821
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->b:Lcom/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a;->notifyDataSetChanged()V

    .line 822
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->f:Lcom/viber/voip/messages/conversation/ap;

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Lcom/viber/voip/messages/conversation/h;Lcom/viber/voip/messages/conversation/ap;)V

    .line 823
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->f:Lcom/viber/voip/messages/conversation/ap;

    invoke-static {v0, v1}, Lcom/viber/voip/util/gj;->a(ILcom/viber/voip/messages/conversation/ap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->l:Ljava/lang/String;

    .line 825
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/viber/voip/util/gl;->b(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Ljava/lang/String;)V

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->o:Lcom/viber/voip/messages/conversation/ui/ci;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v1

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->l:Ljava/lang/String;

    invoke-interface {v0, p2, v1, v2, v3}, Lcom/viber/voip/messages/conversation/ui/ci;->a(ZJLjava/lang/String;)V

    .line 830
    :cond_1
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/h;ZZ)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 781
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    .line 783
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->f:Lcom/viber/voip/messages/conversation/ap;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/messages/conversation/ap;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 784
    :goto_0
    if-eqz v0, :cond_2

    .line 785
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->f:Lcom/viber/voip/messages/conversation/ap;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/messages/conversation/ap;->b(J)V

    .line 790
    :goto_1
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 791
    invoke-direct {p0, p1, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Lcom/viber/voip/messages/conversation/h;Z)V

    .line 793
    :cond_0
    return-void

    .line 783
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 787
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->o:Lcom/viber/voip/messages/conversation/ui/ci;

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v3

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->l:Ljava/lang/String;

    invoke-interface {v2, v1, v3, v4, v5}, Lcom/viber/voip/messages/conversation/ui/ci;->a(ZJLjava/lang/String;)V

    goto :goto_1
.end method

.method public b()V
    .locals 4

    .prologue
    .line 534
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.BACKGROUND_GALLERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 535
    const-string/jumbo v1, "thread_id"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 536
    const/16 v1, 0x7d4

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 537
    return-void
.end method

.method public b(J)V
    .locals 2
    .parameter

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 618
    if-eqz v0, :cond_0

    .line 619
    new-instance v1, Lcom/viber/voip/messages/conversation/ui/by;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/messages/conversation/ui/by;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;J)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 630
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 186
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 188
    new-instance v0, Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->g:Lcom/viber/voip/messages/i;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/conversation/ap;-><init>(Landroid/content/Context;ZLandroid/support/v4/app/LoaderManager;Lcom/viber/voip/messages/i;Lcom/viber/provider/e;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->f:Lcom/viber/voip/messages/conversation/ap;

    .line 189
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->f:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->n()V

    .line 190
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/cm;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->m:Lcom/viber/voip/messages/conversation/ui/cm;

    .line 191
    new-instance v0, Lcom/a/a/a/a;

    invoke-direct {v0}, Lcom/a/a/a/a;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->b:Lcom/a/a/a/a;

    .line 192
    new-instance v0, Lcom/viber/voip/messages/ui/view/c;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/ui/view/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->c:Lcom/viber/voip/messages/ui/view/c;

    .line 193
    new-instance v0, Lcom/viber/voip/messages/adapters/l;

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->f:Lcom/viber/voip/messages/conversation/ap;

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/messages/adapters/l;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/conversation/ap;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->d:Lcom/viber/voip/messages/adapters/l;

    .line 195
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->b:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->c:Lcom/viber/voip/messages/ui/view/c;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/view/c;->b()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 196
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->b:Lcom/a/a/a/a;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->d:Lcom/viber/voip/messages/adapters/l;

    invoke-virtual {v0, v1}, Lcom/a/a/a/a;->a(Landroid/widget/ListAdapter;)V

    .line 198
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->c:Lcom/viber/voip/messages/ui/view/c;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/view/c;->a()Landroid/view/View;

    move-result-object v0

    .line 199
    const v1, 0x7f07033b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/messages/conversation/ui/cc;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/conversation/ui/cc;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->b:Lcom/a/a/a/a;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/dc;)V

    .line 211
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x7d4

    .line 367
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 368
    packed-switch p1, :pswitch_data_0

    .line 418
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 419
    return-void

    .line 370
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/viber/voip/messages/conversation/ui/ci;

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ci;

    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/ui/ci;->n()V

    goto :goto_0

    .line 375
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uriFromIntent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->d(Ljava/lang/String;)V

    .line 378
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->i:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->i:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 382
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/viber/voip/messages/extras/image/g;->b(Landroid/app/Activity;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 386
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->i:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->i:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/viber/voip/messages/extras/image/g;->b(Landroid/app/Activity;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 392
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 393
    const-string/jumbo v0, "portraitUri"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 394
    const-string/jumbo v1, "landscapeUri"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResult: action(portrait img uri): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", landscape img uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->d(Ljava/lang/String;)V

    .line 397
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e()Z

    move-result v2

    if-nez v2, :cond_2

    .line 398
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->j:Lcom/viber/voip/a/q;

    invoke-virtual {v3}, Lcom/viber/voip/a/q;->c()Lcom/viber/voip/a/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 403
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Landroid/net/Uri;Landroid/net/Uri;)V

    .line 404
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->i:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->i:Landroid/net/Uri;

    goto/16 :goto_0

    .line 400
    :cond_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->j:Lcom/viber/voip/a/q;

    invoke-virtual {v3}, Lcom/viber/voip/a/q;->d()Lcom/viber/voip/a/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_1

    .line 407
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "remove_conversation_background"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->j:Lcom/viber/voip/a/q;

    invoke-virtual {v1}, Lcom/viber/voip/a/q;->e()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 409
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->d()V

    goto/16 :goto_0

    .line 413
    :pswitch_4
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->o:Lcom/viber/voip/messages/conversation/ui/ci;

    const-string/jumbo v1, "thread_id"

    const-wide/16 v2, -0x1

    invoke-virtual {p3, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/conversation/ui/ci;->a(J)V

    goto/16 :goto_0

    .line 368
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 747
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onAttach(Landroid/app/Activity;)V

    .line 748
    instance-of v0, p1, Lcom/viber/voip/messages/conversation/ui/ci;

    if-nez v0, :cond_0

    .line 749
    new-instance v0, Ljava/lang/ClassCastException;

    const-string/jumbo v1, "Activity must implement fragment\'s callbacks."

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_0
    check-cast p1, Lcom/viber/voip/messages/conversation/ui/ci;

    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->o:Lcom/viber/voip/messages/conversation/ui/ci;

    .line 752
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 343
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 360
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 362
    :goto_0
    return v0

    .line 345
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->b:Lcom/viber/voip/messages/extras/image/l;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/image/h;->a(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->i:Landroid/net/Uri;

    .line 347
    const-string/jumbo v1, "output"

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->i:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 348
    const/16 v1, 0x7d2

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 362
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 351
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 352
    const v1, 0x7f0c041a

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/Intent;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x7d1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 356
    :pswitch_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->j:Lcom/viber/voip/a/q;

    invoke-virtual {v1}, Lcom/viber/voip/a/q;->e()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 357
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->d()V

    goto :goto_1

    .line 343
    :pswitch_data_0
    .packed-switch 0x7f070465
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 171
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->h:Landroid/os/Handler;

    .line 174
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->g:Lcom/viber/voip/messages/i;

    .line 175
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/cn;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/conversation/ui/cn;-><init>(Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;Lcom/viber/voip/messages/conversation/ui/bx;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->k:Lcom/viber/voip/messages/conversation/ui/cn;

    .line 176
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 335
    const v1, 0x7f10000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 336
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 337
    const v0, 0x7f070467

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    .line 339
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    const v0, 0x7f030085

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 181
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->f:Lcom/viber/voip/messages/conversation/ap;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ap;->m()V

    .line 222
    invoke-static {}, Lcom/viber/voip/messages/controller/c/e;->a()Lcom/viber/voip/messages/controller/c/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/controller/c/e;->b(Lcom/viber/voip/messages/controller/dc;)V

    .line 223
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onDestroyView()V

    .line 224
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 756
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onDetach()V

    .line 757
    sget-object v0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->n:Lcom/viber/voip/messages/conversation/ui/ci;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->o:Lcom/viber/voip/messages/conversation/ui/ci;

    .line 758
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 228
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 229
    instance-of v1, v0, Lcom/viber/voip/messages/adapters/o;

    if-eqz v1, :cond_b

    .line 230
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/viber/voip/messages/conversation/ar;

    .line 231
    if-nez v5, :cond_1

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error: ParticipantsListAdapter. null item CLICK position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 293
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 243
    :cond_1
    const/4 v1, 0x0

    .line 244
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    .line 246
    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ar;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/gj;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ar;->h()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Viber"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 262
    :goto_1
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ar;->o()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 249
    const-string/jumbo v1, "ParticipantsListAdapter.YOU item CLICK"

    invoke-static {v1}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 250
    new-instance v1, Landroid/content/Intent;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "com.viber.voip.action.YOU_DIALOG"

    :goto_2
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "com.viber.voip.action.YOU"

    goto :goto_2

    .line 251
    :cond_4
    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ar;->f()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 252
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v2

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ar;->b()J

    move-result-wide v3

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ar;->f()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_6

    :cond_5
    const/4 v1, 0x1

    :goto_3
    invoke-interface {v2, v3, v4, v1}, Lcom/viber/voip/messages/a/a;->a(JZ)Landroid/net/Uri;

    move-result-object v3

    .line 253
    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ar;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ar;->n()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->j:Lcom/viber/voip/a/q;

    iget-object v5, v5, Lcom/viber/voip/a/q;->a:Lcom/viber/voip/a/k;

    invoke-virtual {v5}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/gn;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    .line 252
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 255
    :cond_7
    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ar;->f()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v1

    if-nez v1, :cond_8

    .line 256
    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ar;->h()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->j:Lcom/viber/voip/a/q;

    iget-object v5, v5, Lcom/viber/voip/a/q;->a:Lcom/viber/voip/a/k;

    invoke-virtual {v5}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/gn;->a(ZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_1

    .line 258
    :cond_8
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v2

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ar;->b()J

    move-result-wide v3

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ar;->f()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_a

    :cond_9
    const/4 v1, 0x1

    :goto_4
    invoke-interface {v2, v3, v4, v1}, Lcom/viber/voip/messages/a/a;->a(JZ)Landroid/net/Uri;

    move-result-object v7

    .line 259
    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ar;->f()J

    move-result-wide v1

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ar;->g()J

    move-result-wide v3

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/ar;->q()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->j:Lcom/viber/voip/a/q;

    iget-object v9, v9, Lcom/viber/voip/a/q;->a:Lcom/viber/voip/a/k;

    invoke-virtual {v9}, Lcom/viber/voip/a/k;->a()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v0 .. v9}, Lcom/viber/voip/util/gn;->a(ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto/16 :goto_1

    .line 258
    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 266
    :cond_b
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 271
    :pswitch_1
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->c()V

    goto/16 :goto_0

    .line 274
    :pswitch_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->b()V

    goto/16 :goto_0

    .line 277
    :pswitch_3
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->o()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->s()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_5
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->b(Z)V

    goto/16 :goto_0

    :cond_c
    const/4 v0, 0x0

    goto :goto_5

    .line 280
    :pswitch_4
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->o()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 282
    :goto_6
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->c:Lcom/viber/voip/messages/ui/view/c;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/view/c;->b(Z)V

    .line 283
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->g:Lcom/viber/voip/messages/i;

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/viber/voip/messages/controller/x;->a(JZLcom/viber/voip/messages/controller/ai;)V

    goto/16 :goto_0

    .line 281
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .line 287
    :pswitch_5
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->e:Lcom/viber/voip/messages/conversation/h;

    invoke-static {v2}, Lcom/viber/voip/util/gk;->b(Lcom/viber/voip/messages/conversation/h;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/ui/ConversationGalleryActivity;->a(JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x7d5

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockListFragment;->onPause()V

    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationInfoFragment;->a(Z)V

    .line 217
    return-void
.end method
