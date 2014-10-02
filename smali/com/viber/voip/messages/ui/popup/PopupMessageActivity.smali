.class public Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/viber/voip/messages/conversation/av;
.implements Lcom/viber/voip/messages/ui/popup/view/f;


# static fields
.field public static a:Z

.field private static final z:Ljava/lang/String;


# instance fields
.field private A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final B:Lcom/viber/jni/lastonline/LastOnlineDelegate;

.field private C:Lcom/viber/voip/stickers/d/b;

.field public b:Z

.field public c:I

.field private d:Lcom/viber/voip/messages/ui/popup/a/a;

.field private e:Lcom/viber/voip/messages/ui/popup/a/k;

.field private f:Lcom/viber/voip/messages/ui/popup/a/g;

.field private g:Lcom/viber/voip/messages/conversation/as;

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/messages/conversation/an;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/os/Handler;

.field private j:Lcom/viber/voip/messages/i;

.field private k:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

.field private l:Landroid/content/BroadcastReceiver;

.field private m:Lcom/viber/voip/messages/ui/popup/n;

.field private n:Z

.field private o:Z

.field private p:Lcom/viber/voip/messages/ui/popup/k;

.field private q:I

.field private r:I

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Landroid/graphics/Rect;

.field private final w:Ljava/lang/Runnable;

.field private x:Ljava/lang/Runnable;

.field private y:Lcom/viber/voip/messages/ui/popup/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 725
    const-class v0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 90
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->h:Ljava/util/Set;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->i:Landroid/os/Handler;

    .line 121
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->o:Z

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->v:Landroid/graphics/Rect;

    .line 131
    new-instance v0, Lcom/viber/voip/messages/ui/popup/a;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/popup/a;-><init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->w:Ljava/lang/Runnable;

    .line 140
    new-instance v0, Lcom/viber/voip/messages/ui/popup/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/popup/b;-><init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->x:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Lcom/viber/voip/messages/ui/popup/c;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/popup/c;-><init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->y:Lcom/viber/voip/messages/ui/popup/a/h;

    .line 743
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 839
    new-instance v0, Lcom/viber/voip/messages/ui/popup/h;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/popup/h;-><init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->B:Lcom/viber/jni/lastonline/LastOnlineDelegate;

    .line 911
    new-instance v0, Lcom/viber/voip/messages/ui/popup/j;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/popup/j;-><init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->C:Lcom/viber/voip/stickers/d/b;

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput p1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->u:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;Lcom/viber/voip/messages/conversation/as;)Lcom/viber/voip/messages/conversation/as;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->k:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    return-object p1
.end method

.method private a(Lcom/viber/voip/messages/conversation/an;)V
    .locals 7
    .parameter

    .prologue
    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->j:Lcom/viber/voip/messages/i;

    if-eqz v1, :cond_2

    .line 678
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->y:Lcom/viber/voip/messages/ui/popup/a/h;

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/an;->j()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/messages/ui/popup/a/h;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v1

    .line 680
    if-eqz v1, :cond_2

    .line 681
    new-instance v2, Lcom/viber/voip/messages/controller/b/b;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/viber/voip/messages/controller/b/b;-><init>(JLjava/lang/String;I)V

    .line 682
    const-string/jumbo v3, "text"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4}, Lcom/viber/voip/messages/d;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 683
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setConversationId(J)V

    .line 684
    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setParticipantId(J)V

    .line 685
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->generateSequence()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setMessageSeq(I)V

    .line 686
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isShareLocation()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLng()I

    move-result v1

    if-nez v1, :cond_1

    .line 687
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 689
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->j:Lcom/viber/voip/messages/i;

    invoke-interface {v1}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 690
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->i:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->p:Lcom/viber/voip/messages/ui/popup/k;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/popup/k;->a(Lcom/viber/voip/messages/ui/popup/k;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 697
    :cond_2
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->l()V

    .line 699
    :goto_0
    return-void

    .line 694
    :catch_0
    move-exception v0

    .line 695
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 697
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->l()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->l()V

    throw v0
.end method

.method private varargs a([Landroid/support/v4/view/ViewPager;)V
    .locals 4
    .parameter

    .prologue
    .line 382
    if-nez p1, :cond_1

    .line 389
    :cond_0
    return-void

    .line 384
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 385
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 386
    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    .line 384
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private varargs a([Lcom/viber/voip/messages/ui/popup/a/l;)V
    .locals 3
    .parameter

    .prologue
    .line 392
    if-nez p1, :cond_1

    .line 399
    :cond_0
    return-void

    .line 394
    :cond_1
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 395
    if-eqz v2, :cond_2

    .line 396
    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/popup/a/l;->b()Z

    .line 394
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->o:Z

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->f()V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->s:Z

    return p1
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g()V

    return-void
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/ui/popup/n;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 341
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/as;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/as;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/gj;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "messageDataChange: BODY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "messageDataChange: Items count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/as;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/as;->getCount()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->c:I

    .line 349
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 350
    const-string/jumbo v0, "messageDataChange:  wrapper.viewPager.getAdapter() == null"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 351
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->f()V

    .line 352
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->e()V

    .line 358
    :goto_2
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g()V

    .line 359
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 360
    return-void

    .line 341
    :cond_0
    const-string/jumbo v0, "some problem, no messages"

    goto :goto_0

    .line 345
    :cond_1
    const-string/jumbo v0, "mService == null"

    goto :goto_1

    .line 354
    :cond_2
    const-string/jumbo v0, "messageDataChange:  wrapper.viewPager.getAdapter() != null -> notifyAdapterDataChanges()"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 356
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->x:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/conversation/as;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 363
    new-instance v0, Lcom/viber/voip/messages/ui/popup/a/a;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/ui/popup/a/a;-><init>(Landroid/app/Activity;Lcom/viber/voip/messages/conversation/ai;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    .line 364
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->n:Z

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/popup/a/a;->a(Z)V

    .line 365
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/ui/popup/a/a;->a(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    new-instance v1, Lcom/viber/voip/messages/ui/popup/a/j;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    invoke-direct {v1, v2}, Lcom/viber/voip/messages/ui/popup/a/j;-><init>(Lcom/viber/voip/messages/ui/popup/a/l;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 367
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 370
    new-instance v0, Lcom/viber/voip/messages/ui/popup/a/k;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/ui/popup/a/k;-><init>(Landroid/app/Activity;Lcom/viber/voip/messages/conversation/ai;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->e:Lcom/viber/voip/messages/ui/popup/a/k;

    .line 371
    new-instance v0, Lcom/viber/voip/messages/ui/popup/a/g;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->y:Lcom/viber/voip/messages/ui/popup/a/h;

    invoke-direct {v0, p0, v1, v2}, Lcom/viber/voip/messages/ui/popup/a/g;-><init>(Landroid/app/Activity;Lcom/viber/voip/messages/conversation/ai;Lcom/viber/voip/messages/ui/popup/a/h;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->f:Lcom/viber/voip/messages/ui/popup/a/g;

    .line 372
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->b:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/viber/voip/messages/ui/popup/a/j;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->e:Lcom/viber/voip/messages/ui/popup/a/k;

    invoke-direct {v1, v2}, Lcom/viber/voip/messages/ui/popup/a/j;-><init>(Lcom/viber/voip/messages/ui/popup/a/l;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 373
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->c:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/viber/voip/messages/ui/popup/a/j;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->f:Lcom/viber/voip/messages/ui/popup/a/g;

    invoke-direct {v1, v2}, Lcom/viber/voip/messages/ui/popup/a/j;-><init>(Lcom/viber/voip/messages/ui/popup/a/l;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 374
    return-void
.end method

.method static synthetic f(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d()V

    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 377
    new-array v0, v5, [Lcom/viber/voip/messages/ui/popup/a/l;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->f:Lcom/viber/voip/messages/ui/popup/a/g;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->e:Lcom/viber/voip/messages/ui/popup/a/k;

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a([Lcom/viber/voip/messages/ui/popup/a/l;)V

    .line 378
    new-array v0, v5, [Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/popup/n;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/popup/n;->c:Landroid/support/v4/view/ViewPager;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/popup/n;->b:Landroid/support/v4/view/ViewPager;

    aput-object v1, v0, v4

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a([Landroid/support/v4/view/ViewPager;)V

    .line 379
    return-void
.end method

.method static synthetic g(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->k()V

    return-void
.end method

.method static synthetic h(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/ui/popup/a/a;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->o:Z

    .line 405
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->w:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 407
    return-void
.end method

.method static synthetic i(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/ui/popup/a/h;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->y:Lcom/viber/voip/messages/ui/popup/a/h;

    return-object v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->k:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->k:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isPublicGroup()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->k:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isTrialPublicGroup()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 582
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v1, v0, Lcom/viber/voip/messages/ui/popup/n;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    .line 583
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 584
    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/ui/popup/a/a;->a(Landroid/view/View;)V

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m()V

    return-void
.end method

.method static synthetic k(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Landroid/graphics/Rect;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->v:Landroid/graphics/Rect;

    return-object v0
.end method

.method private k()V
    .locals 1

    .prologue
    .line 598
    invoke-static {}, Lcom/viber/voip/e/u;->a()Lcom/viber/voip/e/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/e/u;->f()V

    .line 599
    return-void
.end method

.method static synthetic l(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 90
    iget v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->u:I

    return v0
.end method

.method private l()V
    .locals 3

    .prologue
    .line 702
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 703
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/popup/n;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 704
    return-void
.end method

.method static synthetic m(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private m()V
    .locals 7

    .prologue
    .line 746
    const-string/jumbo v0, "updateReadStatus"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/as;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/as;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v5

    .line 749
    if-eqz v5, :cond_0

    .line 750
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/an;->j()J

    move-result-wide v1

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/an;->E()J

    move-result-wide v3

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/an;->m()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/messages/controller/x;->a(JJJ)V

    .line 754
    :cond_0
    return-void
.end method

.method private n()V
    .locals 6

    .prologue
    const v3, 0x7f0a018f

    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 856
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->p:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/PttViewController;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 857
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->l()V

    .line 858
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->p:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-virtual {v0, v5}, Lcom/viber/voip/messages/ui/PttViewController;->setVisibility(I)V

    .line 859
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->m:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 860
    invoke-static {p0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/a/a;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/a/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 864
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 865
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/popup/n;->l:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f0a0192

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 878
    :cond_1
    :goto_0
    return-void

    .line 868
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->p:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/PttViewController;->setVisibility(I)V

    .line 869
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->m:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 870
    invoke-static {p0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->l:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0190

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/a/a;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/a/a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->i()Z

    move-result v0

    return v0
.end method

.method private o()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 881
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/popup/n;->i:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 882
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/popup/n;->p:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/PttViewController;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 883
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->k:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    if-eqz v2, :cond_1

    .line 884
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/h/d;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->k:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v4}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/viber/voip/h/d;-><init>(J)V

    invoke-virtual {v2, v0, v3, v1}, Lcom/viber/voip/h/b;->a(ZLcom/viber/voip/h/d;Z)Lcom/viber/voip/h/b;

    .line 887
    :cond_1
    if-eqz v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->h:Landroid/widget/ImageButton;

    const v1, 0x7f020220

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 899
    :goto_0
    return-void

    .line 892
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->h:Landroid/widget/ImageButton;

    const v1, 0x7f020224

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 896
    :cond_3
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/popup/n;->h:Landroid/widget/ImageButton;

    const v3, 0x7f02021f

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 897
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/popup/n;->h:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v3, v3, Lcom/viber/voip/messages/ui/popup/n;->i:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1
.end method

.method static synthetic o(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->t:Z

    return v0
.end method

.method static synthetic p(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->n:Z

    return v0
.end method

.method static synthetic q(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->o()V

    return-void
.end method

.method static synthetic r(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->s:Z

    return v0
.end method

.method static synthetic s(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic t(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;
    .locals 1
    .parameter

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->k:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    return-object v0
.end method

.method static synthetic u(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->j()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->finish()V

    .line 306
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 283
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/as;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    :cond_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->b(I)V

    .line 287
    return-void
.end method

.method public a(II)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    return-void
.end method

.method public a(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 301
    return-void
.end method

.method public a(Lcom/viber/provider/b;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/as;->getCount()I

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    if-eqz p2, :cond_1

    .line 314
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->p:Lcom/viber/voip/messages/ui/popup/k;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 316
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/as;->getCount()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->q:I

    .line 317
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/as;->getCount()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->r:I

    .line 318
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->s:Z

    .line 320
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d()V

    .line 321
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->c()V

    .line 322
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->h()V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d()V

    .line 326
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/as;->getCount()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->r:I

    if-le v0, v1, :cond_0

    .line 328
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->y:Lcom/viber/voip/a/ah;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/as;->getCount()I

    move-result v2

    iget v3, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->q:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/ah;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 331
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/as;->getCount()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->r:I

    goto :goto_0

    .line 335
    :cond_2
    const-string/jumbo v0, "onDataReady: service count == 0"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->finish()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 730
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 602
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->A()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 603
    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 604
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 607
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 609
    :cond_2
    const-string/jumbo v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 610
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->c()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 2
    .parameter

    .prologue
    .line 290
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/popup/n;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-virtual {v0, v1, p0}, Lcom/viber/voip/messages/ui/popup/a/a;->a(Landroid/support/v4/view/ViewPager;Landroid/app/Activity;)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_0

    .line 293
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->h:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 615
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 617
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter

    .prologue
    .line 621
    const/4 v0, 0x0

    .line 622
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    if-eqz v1, :cond_b

    .line 623
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/popup/n;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-virtual {v0, v1, p0}, Lcom/viber/voip/messages/ui/popup/a/a;->a(Landroid/support/v4/view/ViewPager;Landroid/app/Activity;)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    move-object v10, v0

    .line 625
    :goto_0
    if-nez v10, :cond_1

    .line 626
    const-string/jumbo v0, "can\'t click wihle message not loaded"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 672
    :cond_0
    :goto_1
    return-void

    .line 630
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->i:Landroid/widget/EditText;

    if-ne p1, v0, :cond_2

    .line 631
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->k()V

    goto :goto_1

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->h:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    .line 633
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 634
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->n()V

    .line 635
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->o()V

    goto :goto_1

    .line 637
    :cond_3
    invoke-direct {p0, v10}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Lcom/viber/voip/messages/conversation/an;)V

    .line 638
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->k()V

    .line 639
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->finish()V

    goto :goto_1

    .line 641
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->d:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_5

    .line 642
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->finish()V

    goto :goto_1

    .line 643
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0702b0

    if-ne v0, v1, :cond_6

    .line 644
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->b()V

    goto :goto_1

    .line 645
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0702b1

    if-ne v0, v1, :cond_7

    .line 646
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a()V

    goto :goto_1

    .line 647
    :cond_7
    if-eqz p1, :cond_0

    .line 648
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->k()V

    .line 650
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->y:Lcom/viber/voip/messages/ui/popup/a/h;

    invoke-virtual {v10}, Lcom/viber/voip/messages/conversation/an;->j()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/ui/popup/a/h;->a(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v11

    .line 651
    if-eqz v11, :cond_9

    .line 652
    invoke-virtual {v11}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v0

    invoke-virtual {v11}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupId()J

    move-result-wide v2

    invoke-virtual {v11}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getConversationType()I

    move-result v5

    invoke-virtual {v10}, Lcom/viber/voip/messages/conversation/an;->B()J

    move-result-wide v6

    invoke-virtual {v10}, Lcom/viber/voip/messages/conversation/an;->C()J

    move-result-wide v8

    invoke-virtual {v11}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-virtual {v11}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v10

    :goto_2
    const/4 v11, 0x1

    invoke-static/range {v0 .. v11}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;IJJLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 657
    invoke-static {v0}, Lcom/viber/voip/e/u;->a(Landroid/content/Intent;)V

    .line 659
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->k:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    if-eqz v1, :cond_8

    .line 661
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/popup/n;->i:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "saveConversationDraft text "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " id :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->k:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 663
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->j:Lcom/viber/voip/messages/i;

    invoke-interface {v2}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->k:Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    invoke-virtual {v3}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getId()J

    move-result-wide v3

    invoke-interface {v2, v3, v4, v1}, Lcom/viber/voip/messages/controller/x;->a(JLjava/lang/String;)V

    .line 664
    const-string/jumbo v2, "draft"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    :cond_8
    const-string/jumbo v1, "com.viber.voip.action.PRE_CONVERSATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 668
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 670
    :cond_9
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->finish()V

    goto/16 :goto_1

    .line 652
    :cond_a
    invoke-virtual {v10}, Lcom/viber/voip/messages/conversation/an;->y()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_b
    move-object v10, v0

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter

    .prologue
    const v6, 0x7f0a018f

    .line 922
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 923
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->l:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->m:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->p:Lcom/viber/voip/messages/ui/PttViewController;

    if-nez v0, :cond_1

    .line 951
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0190

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v1, v0

    .line 926
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0191

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v2, v0

    .line 928
    invoke-static {p0}, Lcom/viber/voip/util/ao;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 929
    const/4 v0, -0x1

    .line 933
    :goto_1
    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v3, v3, Lcom/viber/voip/messages/ui/popup/n;->p:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/PttViewController;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v3

    if-nez v3, :cond_4

    .line 934
    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/popup/a/a;->a()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 935
    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/popup/a/a;->a()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 937
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 938
    iget-object v4, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v4, v4, Lcom/viber/voip/messages/ui/popup/n;->l:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v7, 0x7f0a0192

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-direct {v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 945
    :goto_2
    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v3, v3, Lcom/viber/voip/messages/ui/popup/n;->m:Landroid/view/View;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 946
    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/popup/n;->p:Lcom/viber/voip/messages/ui/PttViewController;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/viber/voip/messages/ui/PttViewController;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 948
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 949
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->m:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 950
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->p:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/PttViewController;->requestLayout()V

    goto/16 :goto_0

    .line 931
    :cond_3
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_1

    .line 940
    :cond_4
    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/popup/a/a;->a()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 941
    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->d:Lcom/viber/voip/messages/ui/popup/a/a;

    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/popup/a/a;->a()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 943
    :cond_5
    iget-object v3, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v3, v3, Lcom/viber/voip/messages/ui/popup/n;->l:Landroid/view/View;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 196
    const-string/jumbo v0, "onCreate"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 197
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 198
    sget-boolean v0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a:Z

    if-nez v0, :cond_0

    .line 199
    invoke-static {}, Lcom/viber/voip/ViberApplication;->startHomeActivity()V

    .line 200
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->finish()V

    .line 275
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->j:Lcom/viber/voip/messages/i;

    .line 205
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 206
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 208
    invoke-static {p0}, Lcom/viber/voip/util/gl;->b(Landroid/app/Activity;)V

    .line 210
    const v1, 0x7f0300b9

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->setContentView(I)V

    .line 212
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->y:Lcom/viber/voip/a/ah;

    invoke-virtual {v2}, Lcom/viber/voip/a/ah;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 214
    new-instance v1, Lcom/viber/voip/messages/ui/popup/k;

    invoke-direct {v1, p0, v3}, Lcom/viber/voip/messages/ui/popup/k;-><init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;Lcom/viber/voip/messages/ui/popup/a;)V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->p:Lcom/viber/voip/messages/ui/popup/k;

    .line 216
    new-instance v1, Lcom/viber/voip/messages/ui/popup/n;

    invoke-direct {v1, p0, v3}, Lcom/viber/voip/messages/ui/popup/n;-><init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;Lcom/viber/voip/messages/ui/popup/a;)V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    .line 217
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/popup/n;->g:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    const v0, 0x106000c

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 218
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 221
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->d:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->e:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->j:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/popup/n;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a(Landroid/support/v4/view/ViewPager;)V

    .line 227
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/popup/n;->c:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->a(Landroid/support/v4/view/ViewPager;)V

    .line 228
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->a:Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;

    invoke-virtual {v0, p0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerRoot;->setOnPagerChangingListener(Lcom/viber/voip/messages/ui/popup/view/f;)V

    .line 230
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->n:Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;

    new-instance v1, Lcom/viber/voip/messages/ui/popup/d;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/popup/d;-><init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->setStickerSelectListener(Lcom/viber/voip/messages/ui/popup/view/c;)V

    .line 248
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->o:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/messages/ui/popup/e;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/popup/e;-><init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->l()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->m:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->b()V

    .line 264
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->Z()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->t:Z

    .line 266
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 267
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string/jumbo v1, "com.viber.voip.action.CLOSE_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    new-instance v1, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity$ScreenReceiver;-><init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->l:Landroid/content/BroadcastReceiver;

    .line 271
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a:Z

    .line 274
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->h()V

    goto/16 :goto_0

    .line 217
    :cond_2
    const v0, 0x7f0900b2

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->l:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 714
    const-string/jumbo v0, "onDestroy: unregisterReceiver"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 716
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->l:Landroid/content/BroadcastReceiver;

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/as;->u()V

    .line 722
    :cond_1
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onDestroy()V

    .line 723
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 903
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->h:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    .line 906
    const/4 v0, 0x1

    .line 908
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 708
    invoke-super {p0, p1, p2}, Lcom/viber/voip/app/ViberFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 557
    iput-boolean v5, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->b:Z

    .line 558
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->p:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/PttViewController;->c()V

    .line 560
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getPttPlaylist()Lcom/viber/voip/h/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Lcom/viber/voip/h/a;->b(Ljava/lang/String;Z)V

    .line 561
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/h/d;

    const-wide/16 v2, -0x1

    invoke-direct {v1, v2, v3}, Lcom/viber/voip/h/d;-><init>(J)V

    invoke-virtual {v0, v4, v1, v5}, Lcom/viber/voip/h/b;->a(ZLcom/viber/voip/h/d;Z)Lcom/viber/voip/h/b;

    .line 563
    :cond_0
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->C:Lcom/viber/voip/stickers/d/b;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/r;->b(Lcom/viber/voip/stickers/d/b;)V

    .line 565
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->t:Z

    if-eqz v0, :cond_1

    .line 566
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getLastOnlineListener()Lcom/viber/jni/lastonline/LastOnlineListener;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->B:Lcom/viber/jni/lastonline/LastOnlineDelegate;

    invoke-virtual {v0, v1}, Lcom/viber/jni/lastonline/LastOnlineListener;->removeDelegate(Ljava/lang/Object;)V

    .line 568
    :cond_1
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onPause()V

    .line 569
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 487
    iput-boolean v3, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->b:Z

    .line 488
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->p:Lcom/viber/voip/messages/ui/PttViewController;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/PttViewController;->b()V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->g:Lcom/viber/voip/messages/conversation/as;

    if-nez v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 498
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/popup/f;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/popup/f;-><init>(Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;)V

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/x;->a(Lcom/viber/voip/messages/controller/ac;)V

    .line 546
    :goto_0
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->t:Z

    if-eqz v0, :cond_1

    .line 547
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

    iget-object v2, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->B:Lcom/viber/jni/lastonline/LastOnlineDelegate;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/jni/lastonline/LastOnlineListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 550
    :cond_1
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->C:Lcom/viber/voip/stickers/d/b;

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/d/b;)V

    .line 551
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->r()V

    .line 552
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->j()V

    .line 553
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onResume()V

    .line 554
    return-void

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->m:Lcom/viber/voip/messages/ui/popup/n;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/n;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 734
    invoke-super {p0}, Lcom/viber/voip/app/ViberFragmentActivity;->onStart()V

    .line 735
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->l()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->n:Z

    .line 741
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 577
    const-string/jumbo v0, "onUserInteraction"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->a(Ljava/lang/String;)V

    .line 578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/popup/PopupMessageActivity;->o:Z

    .line 579
    return-void
.end method
