.class public Lcom/viber/voip/messages/conversation/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static k:Z


# instance fields
.field private b:Lcom/viber/voip/messages/conversation/ui/ba;

.field private final c:Landroid/content/res/Resources;

.field private final d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

.field private final e:Lcom/viber/voip/messages/i;

.field private final f:Lcom/viber/voip/messages/a/a;

.field private final g:Lcom/viber/voip/messages/extras/fb/s;

.field private h:Lcom/viber/voip/messages/conversation/h;

.field private i:Ljava/lang/String;

.field private j:Z

.field private final l:Landroid/os/Handler;

.field private m:Lcom/viber/voip/messages/extras/fb/af;

.field private n:Lcom/viber/voip/du;

.field private o:Lcom/viber/voip/util/hs;

.field private p:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/messages/conversation/ui/ct;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/viber/voip/messages/conversation/ui/ab;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/viber/voip/messages/conversation/ui/ac;

.field private final s:Lcom/viber/jni/PhoneControllerDelegateAdapter;

.field private final t:Lcom/viber/jni/lastonline/LastOnlineDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/viber/voip/messages/conversation/ui/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/conversation/ui/m;->a:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/messages/conversation/ui/m;->k:Z

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->i:Ljava/lang/String;

    .line 82
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->l:Landroid/os/Handler;

    .line 84
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/n;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/ui/n;-><init>(Lcom/viber/voip/messages/conversation/ui/m;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->m:Lcom/viber/voip/messages/extras/fb/af;

    .line 105
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/s;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/ui/s;-><init>(Lcom/viber/voip/messages/conversation/ui/m;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->n:Lcom/viber/voip/du;

    .line 130
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/t;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/ui/t;-><init>(Lcom/viber/voip/messages/conversation/ui/m;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->o:Lcom/viber/voip/util/hs;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->p:Ljava/util/HashMap;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->q:Ljava/util/HashMap;

    .line 200
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/u;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/ui/u;-><init>(Lcom/viber/voip/messages/conversation/ui/m;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->s:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    .line 258
    new-instance v0, Lcom/viber/voip/messages/conversation/ui/v;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/conversation/ui/v;-><init>(Lcom/viber/voip/messages/conversation/ui/m;)V

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->t:Lcom/viber/jni/lastonline/LastOnlineDelegate;

    .line 284
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    .line 285
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->c:Landroid/content/res/Resources;

    .line 286
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->e:Lcom/viber/voip/messages/i;

    .line 287
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getParticipantManager()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->f:Lcom/viber/voip/messages/a/a;

    .line 288
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getFacebookManager()Lcom/viber/voip/messages/extras/fb/s;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->g:Lcom/viber/voip/messages/extras/fb/s;

    .line 289
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->g:Lcom/viber/voip/messages/extras/fb/s;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->m:Lcom/viber/voip/messages/extras/fb/af;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/fb/s;->a(Lcom/viber/voip/messages/extras/fb/af;)Z

    .line 290
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->Z()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->j:Z

    .line 291
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->o:Lcom/viber/voip/util/hs;

    invoke-static {v0}, Lcom/viber/voip/util/hm;->a(Lcom/viber/voip/util/hs;)V

    .line 292
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->n()V

    .line 293
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ConversationFragment;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/m;Lcom/viber/voip/messages/conversation/ui/ac;)Lcom/viber/voip/messages/conversation/ui/ac;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/m;->r:Lcom/viber/voip/messages/conversation/ui/ac;

    return-object p1
.end method

.method private a(Landroid/content/Context;JZJLjava/lang/String;III)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 733
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/r;

    move-object v2, p0

    move-object/from16 v3, p7

    move-object v4, p1

    move-wide v5, p2

    move-wide v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/viber/voip/messages/conversation/ui/r;-><init>(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/String;Landroid/content/Context;JJ)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move/from16 v3, p8

    move-object v4, v9

    move-object v5, v1

    move/from16 v7, p10

    invoke-static/range {v2 .. v8}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IZ)Landroid/content/DialogInterface;

    .line 742
    return-void
.end method

.method private a(Lcom/viber/jni/OnlineContactInfo;)V
    .locals 4
    .parameter

    .prologue
    .line 311
    if-eqz p1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    iget-boolean v1, p1, Lcom/viber/jni/OnlineContactInfo;->isOnLine:Z

    iget-wide v2, p1, Lcom/viber/jni/OnlineContactInfo;->time:J

    invoke-static {v1, v2, v3}, Lcom/viber/voip/util/w;->a(ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Ljava/lang/String;)V

    .line 314
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/m;Lcom/viber/jni/OnlineContactInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/jni/OnlineContactInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/CharSequence;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/conversation/ui/m;->a(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/ui/m;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 340
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->l:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/x;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/messages/conversation/ui/x;-><init>(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 346
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 385
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/conversation/ui/aa;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/messages/conversation/ui/aa;-><init>(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/contacts/c/d/b;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/d/i;)V

    .line 399
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/extras/fb/s;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->g:Lcom/viber/voip/messages/extras/fb/s;

    return-object v0
.end method

.method static synthetic c(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ba;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/h;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    return-object v0
.end method

.method private e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 746
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/messages/conversation/ui/m;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/viber/voip/messages/conversation/ui/m;->o()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/viber/voip/messages/conversation/ui/m;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->q:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic g(Lcom/viber/voip/messages/conversation/ui/m;)Ljava/util/HashMap;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->p:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic h(Lcom/viber/voip/messages/conversation/ui/m;)Landroid/content/res/Resources;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->c:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic i(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/a/a;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->f:Lcom/viber/voip/messages/a/a;

    return-object v0
.end method

.method static synthetic j(Lcom/viber/voip/messages/conversation/ui/m;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->l:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/viber/voip/messages/conversation/ui/m;)Lcom/viber/voip/messages/conversation/ui/ac;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->r:Lcom/viber/voip/messages/conversation/ui/ac;

    return-object v0
.end method

.method static synthetic l(Lcom/viber/voip/messages/conversation/ui/m;)Z
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->j:Z

    return v0
.end method

.method static synthetic m(Lcom/viber/voip/messages/conversation/ui/m;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->i:Ljava/lang/String;

    return-object v0
.end method

.method private o()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    instance-of v0, v0, Lcom/viber/voip/messages/ui/chathead/a/b;

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->i:Ljava/lang/String;

    return-object v0
.end method

.method public a(II)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 577
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    .line 579
    if-nez v0, :cond_0

    .line 582
    :goto_0
    return-void

    .line 581
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    goto :goto_0
.end method

.method public a(III)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 560
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    .line 562
    if-eqz v0, :cond_0

    .line 564
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/messages/conversation/ui/q;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/conversation/ui/q;-><init>(Lcom/viber/voip/messages/conversation/ui/m;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v1, p1

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IZ)Landroid/content/DialogInterface;

    .line 573
    :cond_0
    return-void
.end method

.method public a(JJLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 636
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 637
    if-eqz v0, :cond_0

    .line 638
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    const-string/jumbo v7, ""

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 644
    :goto_0
    return-void

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    const-string/jumbo v7, ""

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 498
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->c(Lcom/viber/voip/messages/conversation/a/a/a;)Z

    .line 499
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/h;)V
    .locals 2
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    .line 350
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    invoke-static {v0}, Lcom/viber/voip/util/gk;->b(Lcom/viber/voip/messages/conversation/h;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->i:Ljava/lang/String;

    .line 352
    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/m;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendHandleGetLastOnline lastOnlineEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/m;->e(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->e:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/x;->a(Ljava/lang/String;)V

    .line 356
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)V
    .locals 2
    .parameter

    .prologue
    .line 304
    iget-object v0, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->j:Z

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iget-object v1, p1, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getCachedOnlineContactInfo(Ljava/lang/String;)Lcom/viber/jni/OnlineContactInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(Lcom/viber/jni/OnlineContactInfo;)V

    .line 307
    :cond_0
    invoke-static {p1}, Lcom/viber/voip/util/gk;->a(Lcom/viber/voip/messages/conversation/ui/ConversationData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->i:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/ui/ba;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/m;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    .line 297
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 417
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0, p1, p1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/messages/conversation/ui/o;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/messages/conversation/ui/o;-><init>(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/String;)V

    invoke-static {v1, p1, v2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V

    .line 471
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 647
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 648
    if-eqz v0, :cond_0

    .line 649
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;)V

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 322
    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/ui/ab;

    .line 324
    if-eqz v0, :cond_2

    .line 325
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 326
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 328
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 329
    :cond_3
    if-nez p2, :cond_0

    .line 330
    monitor-enter p0

    .line 331
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->r:Lcom/viber/voip/messages/conversation/ui/ac;

    if-eqz v0, :cond_4

    .line 332
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->r:Lcom/viber/voip/messages/conversation/ui/ac;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 333
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->r:Lcom/viber/voip/messages/conversation/ui/ac;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 335
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
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
    .line 502
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->a(Ljava/util/List;)V

    .line 503
    return-void
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 359
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->b:Lcom/viber/voip/messages/conversation/ui/ba;

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ba;->h:Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->c()V

    .line 360
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/m;->e()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/m;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 363
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/viber/voip/messages/ui/ParticipantsCallChooser;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 364
    const-string/jumbo v1, "thread_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/m;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 365
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->startActivity(Landroid/content/Intent;)V

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    new-instance v1, Lcom/viber/voip/messages/conversation/ui/y;

    invoke-direct {v1, p0, v0, p1}, Lcom/viber/voip/messages/conversation/ui/y;-><init>(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/String;Z)V

    .line 374
    new-instance v2, Lcom/viber/voip/messages/conversation/ui/z;

    invoke-direct {v2, p0, v0, v1}, Lcom/viber/voip/messages/conversation/ui/z;-><init>(Lcom/viber/voip/messages/conversation/ui/m;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0, v2}, Lcom/viber/voip/messages/conversation/ui/m;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 705
    if-nez p1, :cond_0

    .line 706
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameter must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_0
    if-eqz p7, :cond_1

    const v8, 0x7f0c043d

    .line 710
    :goto_0
    if-eqz p7, :cond_2

    const v9, 0x7f0c043f

    .line 712
    :goto_1
    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 713
    if-eqz v0, :cond_5

    .line 714
    invoke-static {p1, v0}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 715
    const/4 v0, 0x1

    .line 728
    :goto_2
    return v0

    .line 709
    :cond_1
    const v8, 0x7f0c04e8

    goto :goto_0

    .line 710
    :cond_2
    const v9, 0x7f0c04e9

    goto :goto_1

    .line 716
    :cond_3
    if-eqz p6, :cond_4

    .line 717
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v4

    const v9, 0x7f0c0440

    const v10, 0x7f0c04e7

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v10}, Lcom/viber/voip/messages/conversation/ui/m;->a(Landroid/content/Context;JZJLjava/lang/String;III)V

    .line 728
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    .line 721
    :cond_4
    const v0, 0x7f0c0441

    const/4 v1, 0x0

    invoke-static {p1, v8, v0, v1}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    goto :goto_3

    .line 724
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v2

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v4

    const v10, 0x7f0c04e7

    move-object v0, p0

    move-object v1, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v10}, Lcom/viber/voip/messages/conversation/ui/m;->a(Landroid/content/Context;JZJLjava/lang/String;III)V

    goto :goto_3
.end method

.method public b()J
    .locals 2

    .prologue
    .line 474
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(Lcom/viber/voip/messages/conversation/a/a/a;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0c04e7

    const v5, 0x7f0c04e5

    .line 590
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    .line 592
    if-nez v0, :cond_0

    .line 618
    :goto_0
    return-void

    .line 594
    :cond_0
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->p()Z

    move-result v1

    .line 595
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->e()Ljava/lang/String;

    move-result-object v2

    .line 596
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->H()Ljava/lang/String;

    move-result-object v3

    .line 598
    const-string/jumbo v4, "image"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    .line 599
    const v0, 0x7f0c04e6

    invoke-virtual {p0, v5, v0, v6}, Lcom/viber/voip/messages/conversation/ui/m;->a(III)V

    goto :goto_0

    .line 600
    :cond_1
    const-string/jumbo v4, "image"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0, v3}, Lcom/viber/voip/util/bj;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 601
    if-eqz v1, :cond_2

    .line 602
    const v0, 0x7f0c0440

    invoke-virtual {p0, v5, v0, v6}, Lcom/viber/voip/messages/conversation/ui/m;->a(III)V

    goto :goto_0

    .line 604
    :cond_2
    const v0, 0x7f0c0441

    invoke-virtual {p0, v5, v0}, Lcom/viber/voip/messages/conversation/ui/m;->a(II)V

    goto :goto_0

    .line 607
    :cond_3
    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->x()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 608
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.INVITE_TO_PUBLIC_GROUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    const-string/jumbo v1, "thread_id"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/m;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 610
    const-string/jumbo v1, "extra_group_id"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->ag()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 611
    const-string/jumbo v1, "extra_group_name"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 614
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.ACTION_FORWARD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "default_message_id"

    invoke-interface {p1}, Lcom/viber/voip/messages/conversation/a/a/a;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 621
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    .line 622
    if-nez v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 624
    :cond_0
    const-string/jumbo v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 625
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 402
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0, p1, p1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 403
    const-string/jumbo v1, "tel"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 404
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CALL"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 405
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 407
    if-eqz p2, :cond_0

    const-string/jumbo v0, "viber_out"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/m;->f()Lcom/viber/voip/a/m;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 411
    const-string/jumbo v0, "prev_action"

    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/ui/m;->f()Lcom/viber/voip/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/a/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->startActivity(Landroid/content/Intent;)V

    .line 414
    return-void
.end method

.method public c()J
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 668
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    .line 669
    invoke-static {v0, p1}, Lcom/viber/voip/util/gv;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 670
    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 671
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->startActivity(Landroid/content/Intent;)V

    .line 675
    :goto_0
    return-void

    .line 673
    :cond_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->i()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g()Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public d(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 749
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->e:Lcom/viber/voip/messages/i;

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p1}, Lcom/viber/voip/messages/controller/x;->a(JLjava/lang/String;)V

    .line 752
    :cond_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->e()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->g()Lcom/viber/voip/messages/conversation/ui/ConversationData;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/conversation/ui/ConversationData;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method public f()Lcom/viber/voip/a/m;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->l()Lcom/viber/voip/a/m;

    move-result-object v0

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->n()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->h:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->o()Z

    move-result v0

    return v0
.end method

.method public k()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 522
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->n:Lcom/viber/voip/du;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->registerMediaMountListener(Lcom/viber/voip/du;)V

    .line 523
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->r()V

    .line 525
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getLocationManager()Lcom/viber/voip/messages/extras/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/extras/a/a;->a()V

    .line 526
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    instance-of v0, v0, Lcom/viber/voip/messages/ui/chathead/a/b;

    if-eqz v0, :cond_0

    .line 527
    invoke-static {}, Lcom/viber/voip/util/hu;->a()Lcom/viber/voip/util/hu;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/util/hu;->a(Z)V

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->o:Lcom/viber/voip/util/hs;

    invoke-static {v0}, Lcom/viber/voip/util/hm;->a(Lcom/viber/voip/util/hs;)V

    .line 531
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->s:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 532
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getLastOnlineListener()Lcom/viber/jni/lastonline/LastOnlineListener;

    move-result-object v0

    new-array v1, v2, [Lcom/viber/jni/lastonline/LastOnlineDelegate;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/ui/m;->t:Lcom/viber/jni/lastonline/LastOnlineDelegate;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/viber/jni/lastonline/LastOnlineListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 533
    return-void
.end method

.method public l()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 536
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->n:Lcom/viber/voip/du;

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->unregisterMediaMountListener(Lcom/viber/voip/du;)V

    .line 539
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->s:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->removeDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 540
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getLastOnlineListener()Lcom/viber/jni/lastonline/LastOnlineListener;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->t:Lcom/viber/jni/lastonline/LastOnlineDelegate;

    invoke-virtual {v0, v1}, Lcom/viber/jni/lastonline/LastOnlineListener;->removeDelegate(Ljava/lang/Object;)V

    .line 541
    return-void
.end method

.method public m()V
    .locals 2

    .prologue
    .line 544
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->o()V

    .line 545
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->v()V

    .line 547
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->g:Lcom/viber/voip/messages/extras/fb/s;

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/m;->m:Lcom/viber/voip/messages/extras/fb/af;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/fb/s;->b(Lcom/viber/voip/messages/extras/fb/af;)Z

    .line 548
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/util/hm;->a(Lcom/viber/voip/util/hs;)V

    .line 550
    sget-boolean v0, Lcom/viber/voip/messages/conversation/ui/m;->k:Z

    if-nez v0, :cond_0

    .line 551
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    .line 552
    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->c()V

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/viber/voip/messages/conversation/ui/m;->k:Z

    goto :goto_0
.end method

.method public n()V
    .locals 4

    .prologue
    .line 656
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 657
    if-eqz v1, :cond_1

    .line 658
    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.viber.voip.action.YOU_DIALOG"

    :goto_0
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 665
    :goto_1
    return-void

    .line 658
    :cond_0
    const-string/jumbo v0, "com.viber.voip.action.YOU"

    goto :goto_0

    .line 660
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "com.viber.voip.action.YOU_DIALOG"

    :goto_2
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 662
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.viber.voip.action.CLOSE_POPUP"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 663
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/m;->d:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->D()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 660
    :cond_2
    const-string/jumbo v0, "com.viber.voip.action.YOU"

    goto :goto_2
.end method
