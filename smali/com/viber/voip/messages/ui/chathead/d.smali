.class public Lcom/viber/voip/messages/ui/chathead/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/gf;


# static fields
.field private static final c:Ljava/lang/String;

.field private static d:I


# instance fields
.field private A:I

.field private B:I

.field private C:F

.field private D:F

.field private E:I

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:J

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Landroid/widget/FrameLayout;

.field private Y:Landroid/os/Vibrator;

.field private Z:Z

.field public a:Landroid/content/BroadcastReceiver;

.field private aA:Lcom/viber/voip/messages/controller/db;

.field private aB:Lcom/viber/voip/messages/controller/df;

.field private aC:Lcom/viber/voip/messages/controller/dh;

.field private aD:Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;

.field private aa:Lcom/viber/voip/util/fz;

.field private ab:Lcom/viber/voip/messages/ui/chathead/au;

.field private ac:Landroid/telephony/TelephonyManager;

.field private ad:Lcom/viber/voip/registration/cp;

.field private ae:Lcom/viber/voip/messages/controller/cx;

.field private af:Z

.field private ag:Landroid/widget/TextView;

.field private ah:F

.field private ai:F

.field private aj:F

.field private ak:F

.field private al:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/messages/ui/chathead/b;",
            ">;"
        }
    .end annotation
.end field

.field private am:Landroid/content/Context;

.field private an:Z

.field private ao:Lcom/nineoldandroids/animation/AnimatorSet;

.field private ap:Lcom/nineoldandroids/animation/AnimatorSet;

.field private aq:Lcom/nineoldandroids/animation/AnimatorSet;

.field private ar:Lcom/nineoldandroids/animation/AnimatorSet;

.field private as:Lcom/nineoldandroids/animation/AnimatorSet;

.field private final at:Landroid/view/View$OnTouchListener;

.field private final au:Landroid/view/View$OnTouchListener;

.field private final av:Landroid/view/View$OnClickListener;

.field private aw:Ljava/lang/Runnable;

.field private ax:Ljava/lang/Runnable;

.field private ay:Z

.field private az:Lcom/nineoldandroids/animation/AnimatorSet;

.field public b:Landroid/content/BroadcastReceiver;

.field private e:Lcom/viber/voip/messages/ui/chathead/c;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Lcom/viber/voip/messages/ui/chathead/a/a;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/FrameLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Lcom/viber/voip/messages/ui/chathead/a/l;

.field private m:Landroid/widget/PopupWindow;

.field private n:Lcom/viber/voip/messages/ui/chathead/a/a;

.field private o:Lcom/viber/voip/messages/ui/chathead/a/a;

.field private p:Lcom/viber/voip/messages/ui/chathead/a/a;

.field private q:Lcom/viber/voip/messages/ui/bb;

.field private r:Landroid/os/Handler;

.field private s:Landroid/view/WindowManager;

.field private t:Landroid/view/WindowManager$LayoutParams;

.field private u:Landroid/view/WindowManager$LayoutParams;

.field private v:Landroid/view/WindowManager$LayoutParams;

.field private w:Landroid/view/WindowManager$LayoutParams;

.field private x:Landroid/view/WindowManager$LayoutParams;

.field private y:Landroid/util/DisplayMetrics;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const-class v0, Lcom/viber/voip/messages/ui/chathead/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/chathead/d;->c:Ljava/lang/String;

    .line 115
    const/4 v0, 0x5

    sput v0, Lcom/viber/voip/messages/ui/chathead/d;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/e;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->at:Landroid/view/View$OnTouchListener;

    .line 216
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/p;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/p;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->au:Landroid/view/View$OnTouchListener;

    .line 250
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/aa;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/aa;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->av:Landroid/view/View$OnClickListener;

    .line 260
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/al;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/al;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aw:Ljava/lang/Runnable;

    .line 747
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/aq;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/aq;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ax:Ljava/lang/Runnable;

    .line 1527
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/r;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/r;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->a:Landroid/content/BroadcastReceiver;

    .line 1576
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/s;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/s;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->b:Landroid/content/BroadcastReceiver;

    .line 2556
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/ab;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/ab;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aA:Lcom/viber/voip/messages/controller/db;

    .line 2610
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/ad;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/ad;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aB:Lcom/viber/voip/messages/controller/df;

    .line 2658
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/af;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/af;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aC:Lcom/viber/voip/messages/controller/dh;

    .line 2707
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/ah;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/ah;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aD:Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;

    .line 273
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    .line 274
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 275
    const-string/jumbo v1, "com.viber.voip.action.MESSAGE_CHAT_HEADS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v1, "com.viber.voip.action.CLOSE_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 278
    return-void
.end method

.method static synthetic A(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/os/Vibrator;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->Y:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic B(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->s:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic C(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->s()V

    return-void
.end method

.method static synthetic D(Lcom/viber/voip/messages/ui/chathead/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->v()Z

    move-result v0

    return v0
.end method

.method static synthetic E(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic F(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->n()V

    return-void
.end method

.method static synthetic G(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->u()V

    return-void
.end method

.method static synthetic H(Lcom/viber/voip/messages/ui/chathead/d;)F
    .locals 1
    .parameter

    .prologue
    .line 98
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->J:F

    return v0
.end method

.method static synthetic I(Lcom/viber/voip/messages/ui/chathead/d;)F
    .locals 1
    .parameter

    .prologue
    .line 98
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->K:F

    return v0
.end method

.method static synthetic J(Lcom/viber/voip/messages/ui/chathead/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->Q:Z

    return v0
.end method

.method static synthetic K(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->X:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic L(Lcom/viber/voip/messages/ui/chathead/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    return v0
.end method

.method static synthetic M(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->k:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic N(Lcom/viber/voip/messages/ui/chathead/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->M:Z

    return v0
.end method

.method static synthetic O(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/registration/cp;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ad:Lcom/viber/voip/registration/cp;

    return-object v0
.end method

.method static synthetic P(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/nineoldandroids/animation/AnimatorSet;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ar:Lcom/nineoldandroids/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic Q(Lcom/viber/voip/messages/ui/chathead/d;)I
    .locals 1
    .parameter

    .prologue
    .line 98
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->A:I

    return v0
.end method

.method static synthetic R(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->k()V

    return-void
.end method

.method static synthetic S(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->i()V

    return-void
.end method

.method static synthetic T(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->t:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic U(Lcom/viber/voip/messages/ui/chathead/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ay:Z

    return v0
.end method

.method static synthetic V(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->h()V

    return-void
.end method

.method static synthetic W(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/au;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ab:Lcom/viber/voip/messages/ui/chathead/au;

    return-object v0
.end method

.method static synthetic X(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ac:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic Y(Lcom/viber/voip/messages/ui/chathead/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->W:Z

    return v0
.end method

.method static synthetic Z(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->j()V

    return-void
.end method

.method private a(I)F
    .locals 3
    .parameter

    .prologue
    .line 1240
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->D:F

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v1, v1, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->C:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/d;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->H:F

    return p1
.end method

.method private a(J)I
    .locals 5
    .parameter

    .prologue
    .line 423
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 424
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    .line 425
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->b()Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getId()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-nez v0, :cond_0

    move v0, v1

    .line 430
    :goto_1
    return v0

    .line 423
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/d;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->ac:Landroid/telephony/TelephonyManager;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;)Lcom/viber/voip/messages/ui/chathead/a/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->o:Lcom/viber/voip/messages/ui/chathead/a/a;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/au;)Lcom/viber/voip/messages/ui/chathead/au;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->ab:Lcom/viber/voip/messages/ui/chathead/au;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/registration/cp;)Lcom/viber/voip/registration/cp;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->ad:Lcom/viber/voip/registration/cp;

    return-object p1
.end method

.method private a(JLjava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 871
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->ag:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 872
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->ag:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 873
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->q(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v1

    .line 875
    if-nez v1, :cond_1

    .line 920
    :cond_0
    :goto_0
    return-object v0

    .line 877
    :cond_1
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sticker"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 878
    if-eqz p4, :cond_2

    .line 879
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    const v1, 0x7f0c02d8

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 881
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    const v1, 0x7f0c02df

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 883
    :cond_3
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 884
    if-eqz p4, :cond_4

    .line 885
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    const v1, 0x7f0c02d4

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 887
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    const v1, 0x7f0c02db

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 889
    :cond_5
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "location"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 890
    if-eqz p4, :cond_6

    .line 891
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    const v1, 0x7f0c02d3

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 893
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    const v1, 0x7f0c02da

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 895
    :cond_7
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sound"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 896
    if-eqz p4, :cond_8

    .line 897
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    const v1, 0x7f0c02d7

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 899
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    const v1, 0x7f0c02de

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 901
    :cond_9
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 902
    if-eqz p4, :cond_a

    .line 903
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    const v1, 0x7f0c02d5

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 905
    :cond_a
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    const v1, 0x7f0c02dc

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 907
    :cond_b
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "animated_message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 908
    if-eqz p4, :cond_c

    .line 909
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    const v1, 0x7f0c02d6

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 911
    :cond_c
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    const v1, 0x7f0c02dd

    new-array v2, v4, [Ljava/lang/Object;

    const-string/jumbo v3, ""

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 913
    :cond_d
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "call"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 916
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ag:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 917
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ag:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 918
    if-eqz p4, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private a(FFZZ)Ljava/util/List;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/nineoldandroids/animation/Animator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1332
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1334
    if-eqz p3, :cond_1

    .line 1335
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->t:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    .line 1339
    :goto_0
    const/4 v1, 0x0

    .line 1340
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    .line 1341
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v5

    .line 1342
    invoke-static {v5}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;)I

    move-result v6

    int-to-float v6, v6

    .line 1343
    invoke-static {v5}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;)F

    move-result v5

    .line 1344
    const/4 v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    sub-float v9, p1, v6

    int-to-float v10, v2

    add-float/2addr v9, v10

    aput v9, v7, v8

    invoke-static {v7}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v7

    .line 1345
    const/4 v8, 0x1

    new-array v8, v8, [F

    const/4 v9, 0x0

    sub-float v10, p2, v5

    aput v10, v8, v9

    invoke-static {v8}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v8

    .line 1346
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1347
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1348
    new-instance v9, Lcom/viber/voip/messages/ui/chathead/av;

    const/4 v10, 0x1

    invoke-direct {v9, p0, v0, v6, v10}, Lcom/viber/voip/messages/ui/chathead/av;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;FZ)V

    invoke-virtual {v7, v9}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1349
    new-instance v6, Lcom/viber/voip/messages/ui/chathead/aw;

    const/4 v9, 0x1

    invoke-direct {v6, p0, v0, v5, v9}, Lcom/viber/voip/messages/ui/chathead/aw;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;FZ)V

    invoke-virtual {v8, v6}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1351
    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v1, v0, :cond_2

    .line 1352
    :cond_0
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v5, 0x3f80

    invoke-direct {v0, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v7, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1353
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    const/high16 v5, 0x3f80

    invoke-direct {v0, v5}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v8, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1359
    :goto_2
    if-eqz p3, :cond_3

    .line 1360
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->t:I

    add-int/2addr v2, v0

    .line 1365
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 1366
    goto :goto_1

    .line 1337
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->t:I

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    goto/16 :goto_0

    .line 1355
    :cond_2
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1356
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v8, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_2

    .line 1362
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->t:I

    sub-int/2addr v2, v0

    goto :goto_3

    .line 1367
    :cond_4
    return-object v3
.end method

.method private a(IILcom/viber/voip/messages/ui/chathead/a/a;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/high16 v4, 0x3f80

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2043
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    const-string/jumbo v1, "scaleX"

    new-array v2, v7, [F

    aput v4, v2, v6

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 2044
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    const-string/jumbo v2, "scaleY"

    new-array v3, v7, [F

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 2045
    new-array v2, v8, [I

    .line 2046
    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 2047
    aget v3, v2, v6

    .line 2048
    aget v2, v2, v7

    iget v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->B:I

    sub-int/2addr v2, v4

    .line 2049
    new-instance v4, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v4}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 2050
    new-array v4, v7, [F

    sub-int/2addr v3, p1

    int-to-float v3, v3

    aput v3, v4, v6

    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    .line 2051
    new-array v4, v7, [F

    sub-int/2addr v2, p2

    int-to-float v2, v2

    aput v2, v4, v6

    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v2

    .line 2052
    new-instance v4, Lcom/viber/voip/messages/ui/chathead/av;

    int-to-float v5, p1

    invoke-direct {v4, p0, p3, v5, v6}, Lcom/viber/voip/messages/ui/chathead/av;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;FZ)V

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2053
    new-instance v4, Lcom/viber/voip/messages/ui/chathead/aw;

    int-to-float v5, p2

    invoke-direct {v4, p0, p3, v5, v6}, Lcom/viber/voip/messages/ui/chathead/aw;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;FZ)V

    invoke-virtual {v2, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2055
    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v5, Lcom/viber/voip/messages/ui/chathead/w;

    invoke-direct {v5, p0, p3}, Lcom/viber/voip/messages/ui/chathead/w;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;)V

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 2068
    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/nineoldandroids/animation/Animator;

    aput-object v3, v5, v6

    aput-object v2, v5, v7

    aput-object v0, v5, v8

    const/4 v0, 0x3

    aput-object v1, v5, v0

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 2069
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 2071
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 2072
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const v5, 0x3f4ccccd

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 281
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->an:Z

    if-eqz v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 283
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    .line 284
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->O:Z

    .line 285
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    .line 286
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->R:Z

    .line 287
    invoke-static {p1}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    .line 288
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/gl;->f(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->B:I

    .line 289
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/c;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/ui/chathead/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    .line 290
    invoke-static {}, Lcom/viber/voip/util/fz;->a()Lcom/viber/voip/util/fz;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aa:Lcom/viber/voip/util/fz;

    .line 291
    new-instance v0, Lcom/viber/voip/messages/ui/bb;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/viber/voip/messages/ui/bb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->q:Lcom/viber/voip/messages/ui/bb;

    .line 292
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->q:Lcom/viber/voip/messages/ui/bb;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/bb;->a(Z)V

    .line 293
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->af:Z

    .line 294
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->y:Landroid/util/DisplayMetrics;

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    sget v3, Lcom/viber/voip/messages/ui/chathead/d;->d:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    .line 296
    const/high16 v0, 0x3f80

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->E:I

    .line 297
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->s:Landroid/view/WindowManager;

    .line 298
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->Y:Landroid/os/Vibrator;

    .line 299
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Lcom/viber/voip/ViberApplication;->notifyActivityOnForeground(ZLjava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerPhoneStateListener()Lcom/viber/jni/dialer/DialerPhoneStateListener;

    move-result-object v0

    new-array v3, v1, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->aD:Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;

    aput-object v4, v3, v2

    invoke-virtual {v0, v3}, Lcom/viber/jni/dialer/DialerPhoneStateListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 301
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->b()Lcom/viber/voip/messages/controller/cx;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ae:Lcom/viber/voip/messages/controller/cx;

    .line 302
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 303
    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 304
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/d;->b()V

    .line 305
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/chathead/d;->d(Landroid/content/Context;)V

    .line 306
    new-instance v2, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 307
    new-instance v2, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->aq:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 308
    new-instance v2, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->ao:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 309
    new-instance v2, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->ar:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 310
    new-instance v2, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->as:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 311
    sget-object v2, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v2}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->r:Landroid/os/Handler;

    .line 313
    const v2, 0x7f030069

    invoke-virtual {v0, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->k:Landroid/widget/RelativeLayout;

    .line 314
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->k:Landroid/widget/RelativeLayout;

    const v2, 0x7f0701a8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    .line 315
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->k:Landroid/widget/RelativeLayout;

    const v2, 0x7f0701a7

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->X:Landroid/widget/FrameLayout;

    .line 317
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/ui/chathead/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    .line 318
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/chathead/a/a;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 319
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/chathead/d;->b(Landroid/content/Context;)V

    .line 321
    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->f:Landroid/view/View;

    .line 322
    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->g:Landroid/view/View;

    .line 323
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    .line 324
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->f:Landroid/view/View;

    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 327
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0xd8

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 328
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->f:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setDrawingCacheQuality(I)V

    .line 330
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 332
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    invoke-static {v0, v5}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 334
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 335
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->B:I

    if-lez v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v0, Lcom/viber/voip/messages/ui/chathead/c;->a:I

    iget v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->B:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/viber/voip/messages/ui/chathead/c;->a:I

    .line 338
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->w:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x400

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->s:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->g:Landroid/view/View;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->x:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/viber/voip/messages/ui/chathead/am;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/ui/chathead/am;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 373
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->s:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->k:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->v:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->s:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->f:Landroid/view/View;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->w:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->s:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->t:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 376
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->s:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->u:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->at:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/chathead/a/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 379
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->au:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 380
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->av:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->an:Z

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 287
    goto/16 :goto_1
.end method

.method private a(Landroid/content/Context;JZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x4

    .line 434
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->an:Z

    if-nez v0, :cond_0

    .line 435
    monitor-enter p0

    .line 436
    :try_start_0
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/content/Context;)V

    .line 437
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    .line 444
    :cond_1
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->R:Z

    if-eqz v0, :cond_2

    .line 445
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/messages/ui/chathead/d;->b(Landroid/content/Context;JZZ)V

    .line 451
    :goto_0
    return-void

    .line 437
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 447
    :cond_2
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/ar;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/ui/chathead/ar;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Landroid/content/Context;JZZ)V

    .line 448
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->r:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/ui/chathead/b;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 924
    const/4 v0, 0x0

    .line 925
    invoke-virtual {p3}, Lcom/viber/voip/messages/ui/chathead/b;->b()Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    move-result-object v5

    .line 926
    invoke-interface {v5}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->isConversationGroup()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 927
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 928
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v0, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v0, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    invoke-interface {v5}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getId()J

    move-result-wide v5

    move-object v0, p0

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/content/Context;IIIJLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 933
    :cond_0
    :goto_0
    invoke-virtual {p3}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    .line 934
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_2

    .line 935
    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->e(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 936
    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 940
    :goto_1
    return-void

    .line 930
    :cond_1
    if-eqz p2, :cond_0

    .line 931
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 938
    :cond_2
    const v0, 0x7f0202ca

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->setImageResource(I)V

    goto :goto_1
.end method

.method private a(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0d0123

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1735
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->k()V

    .line 1736
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    .line 1737
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/chathead/a/l;->setWidth(I)V

    .line 1738
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/chathead/a/l;->setHeight(I)V

    .line 1739
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0, v4}, Lcom/viber/voip/messages/ui/chathead/a/l;->setAnimationStyle(I)V

    .line 1740
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/ui/chathead/a/l;->setFocusable(Z)V

    .line 1741
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0, v5}, Lcom/viber/voip/messages/ui/chathead/a/l;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1742
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    new-instance v1, Lcom/viber/voip/messages/ui/chathead/t;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/chathead/t;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 1760
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->setSoftInputMode(I)V

    .line 1761
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0, v3}, Lcom/viber/voip/messages/ui/chathead/a/l;->setInputMethodMode(I)V

    .line 1762
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->update()V

    .line 1764
    const v0, 0x7f0300d3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ag:Landroid/widget/TextView;

    .line 1765
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->ag:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->m:Landroid/widget/PopupWindow;

    .line 1766
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->m:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1767
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->m:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v1, v1, Lcom/viber/voip/messages/ui/chathead/c;->n:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1768
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1769
    return-void
.end method

.method private a(Lcom/viber/voip/messages/ui/chathead/a/a;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1774
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->o:Lcom/viber/voip/messages/ui/chathead/a/a;

    if-ne p1, v0, :cond_0

    .line 1775
    const-string/jumbo v0, "scaleX"

    new-array v1, v6, [F

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->l:F

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v5

    invoke-static {p1, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 1776
    const-string/jumbo v0, "scaleY"

    new-array v2, v6, [F

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->l:F

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v2, v5

    invoke-static {p1, v0, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 1781
    :goto_0
    new-instance v2, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->az:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1782
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->az:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v3, Lcom/viber/voip/messages/ui/chathead/u;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/ui/chathead/u;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 1793
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->az:Lcom/nineoldandroids/animation/AnimatorSet;

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1794
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->az:Lcom/nineoldandroids/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/nineoldandroids/animation/Animator;

    aput-object v1, v3, v5

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 1795
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->az:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 1796
    return-void

    .line 1778
    :cond_0
    const-string/jumbo v0, "scaleX"

    new-array v1, v6, [F

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->k:F

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v5

    invoke-static {p1, v0, v1}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 1779
    const-string/jumbo v0, "scaleY"

    new-array v2, v6, [F

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->k:F

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v2, v5

    invoke-static {p1, v0, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/viber/voip/messages/ui/chathead/a/a;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2156
    add-int/lit8 v0, p2, 0x1

    .line 2157
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2158
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ao:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 2159
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    .line 2161
    :goto_0
    iget-boolean v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    if-eqz v2, :cond_1

    .line 2162
    new-array v2, v4, [F

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(I)F

    move-result v1

    sub-float/2addr v1, v0

    aput v1, v2, v3

    invoke-static {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    .line 2163
    new-instance v2, Lcom/viber/voip/messages/ui/chathead/av;

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/viber/voip/messages/ui/chathead/av;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;FZ)V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v0, v1

    .line 2169
    :goto_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->ao:Lcom/nineoldandroids/animation/AnimatorSet;

    new-array v2, v4, [Lcom/nineoldandroids/animation/Animator;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 2170
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ao:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2171
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ao:Lcom/nineoldandroids/animation/AnimatorSet;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 2172
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ao:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 2173
    return-void

    .line 2159
    :cond_0
    invoke-static {p1}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;)F

    move-result v0

    goto :goto_0

    .line 2165
    :cond_1
    new-array v2, v4, [F

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(I)F

    move-result v1

    sub-float/2addr v1, v0

    aput v1, v2, v3

    invoke-static {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    .line 2166
    new-instance v2, Lcom/viber/voip/messages/ui/chathead/aw;

    invoke-direct {v2, p0, p1, v0, v3}, Lcom/viber/voip/messages/ui/chathead/aw;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;FZ)V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v0, v1

    goto :goto_1
.end method

.method private a(Lcom/viber/voip/messages/ui/chathead/b;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 804
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/b;Landroid/net/Uri;ZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    .line 805
    return-void
.end method

.method private a(Lcom/viber/voip/messages/ui/chathead/b;I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2101
    add-int/lit8 v0, p2, 0x1

    .line 2102
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2103
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v2

    .line 2104
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aq:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 2105
    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;)I

    move-result v0

    int-to-float v3, v0

    .line 2106
    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;)F

    move-result v4

    .line 2109
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    if-eqz v0, :cond_0

    .line 2110
    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(I)F

    move-result v1

    .line 2111
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->c:I

    int-to-float v0, v0

    .line 2121
    :goto_0
    new-array v5, v8, [F

    sub-float/2addr v1, v3

    aput v1, v5, v7

    invoke-static {v5}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    .line 2122
    new-array v5, v8, [F

    sub-float/2addr v0, v4

    aput v0, v5, v7

    invoke-static {v5}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 2123
    new-instance v5, Lcom/viber/voip/messages/ui/chathead/av;

    invoke-direct {v5, p0, v2, v3, v7}, Lcom/viber/voip/messages/ui/chathead/av;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;FZ)V

    invoke-virtual {v1, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2124
    new-instance v3, Lcom/viber/voip/messages/ui/chathead/aw;

    invoke-direct {v3, p0, v2, v4, v7}, Lcom/viber/voip/messages/ui/chathead/aw;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;FZ)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2125
    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->aq:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v4, Lcom/viber/voip/messages/ui/chathead/y;

    invoke-direct {v4, p0, v2}, Lcom/viber/voip/messages/ui/chathead/y;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;)V

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 2149
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->aq:Lcom/nineoldandroids/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/nineoldandroids/animation/Animator;

    aput-object v1, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 2150
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aq:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2151
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aq:Lcom/nineoldandroids/animation/AnimatorSet;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 2152
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aq:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 2153
    return-void

    .line 2113
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->af:Z

    if-eqz v0, :cond_1

    .line 2114
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v6, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v6, v6, Lcom/viber/voip/messages/ui/chathead/c;->w:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v5, v5, Lcom/viber/voip/messages/ui/chathead/c;->a:I

    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v5, v5, Lcom/viber/voip/messages/ui/chathead/c;->e:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v5, v5, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    sub-float/2addr v0, v5

    .line 2119
    :goto_1
    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(I)F

    move-result v1

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_0

    .line 2117
    :cond_1
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v5, v5, Lcom/viber/voip/messages/ui/chathead/c;->e:I

    sub-int/2addr v0, v5

    int-to-float v0, v0

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v5, v5, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    sub-float/2addr v0, v5

    goto :goto_1
.end method

.method private a(Lcom/viber/voip/messages/ui/chathead/b;Landroid/net/Uri;IZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 668
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 669
    invoke-direct {p0, p1, p2, v5, p5}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/b;Landroid/net/Uri;ZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    .line 670
    sget v0, Lcom/viber/voip/messages/ui/chathead/d;->d:I

    if-ge p3, v0, :cond_0

    .line 671
    add-int/lit8 v0, p3, 0x1

    .line 672
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 676
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    if-eqz v0, :cond_1

    .line 677
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->D:F

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;F)V

    .line 678
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v1, v1, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    neg-float v1, v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;F)V

    .line 679
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;)F

    move-result v1

    .line 680
    new-array v0, v6, [F

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->c:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    aput v2, v0, v5

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 681
    new-instance v2, Lcom/viber/voip/messages/ui/chathead/aw;

    invoke-direct {v2, p0, p1, v1, v5}, Lcom/viber/voip/messages/ui/chathead/aw;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;FZ)V

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 695
    :goto_0
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 696
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    const-string/jumbo v2, "alpha"

    new-array v3, v7, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 697
    new-instance v2, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 698
    new-instance v3, Lcom/viber/voip/messages/ui/chathead/ao;

    invoke-direct {v3, p0, p4, p1}, Lcom/viber/voip/messages/ui/chathead/ao;-><init>(Lcom/viber/voip/messages/ui/chathead/d;ZLcom/viber/voip/messages/ui/chathead/b;)V

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 714
    new-array v3, v7, [Lcom/nineoldandroids/animation/Animator;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 715
    const-wide/16 v0, 0xfa

    invoke-virtual {v2, v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 716
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 718
    :cond_0
    return-void

    .line 683
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;F)V

    .line 684
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v1, v1, Lcom/viber/voip/messages/ui/chathead/c;->c:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;F)V

    .line 685
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;)I

    move-result v0

    int-to-float v1, v0

    .line 686
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->af:Z

    if-eqz v0, :cond_2

    .line 687
    new-array v0, v6, [F

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->w:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->a:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->e:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v1

    aput v2, v0, v5

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 692
    :goto_1
    new-instance v2, Lcom/viber/voip/messages/ui/chathead/av;

    invoke-direct {v2, p0, p1, v1, v5}, Lcom/viber/voip/messages/ui/chathead/av;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;FZ)V

    invoke-virtual {v0, v2}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/16 :goto_0

    .line 690
    :cond_2
    new-array v0, v6, [F

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->e:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    sub-float/2addr v2, v3

    sub-float/2addr v2, v1

    aput v2, v0, v5

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    goto :goto_1

    .line 696
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private a(Lcom/viber/voip/messages/ui/chathead/b;Landroid/net/Uri;ZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x4

    .line 808
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    .line 809
    instance-of v0, p1, Lcom/viber/voip/messages/ui/chathead/ax;

    if-eqz v0, :cond_1

    .line 810
    invoke-virtual {v1, v3}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    .line 811
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/chathead/f;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 831
    :goto_0
    if-eqz p3, :cond_2

    .line 832
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->u:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;F)V

    .line 833
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->u:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;F)V

    .line 834
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    :goto_1
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    if-nez v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 840
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 842
    :cond_0
    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x30

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 843
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->V:Z

    if-nez v0, :cond_3

    .line 844
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 845
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 846
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Z)V

    .line 850
    :goto_2
    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 851
    new-instance v2, Lcom/viber/voip/messages/ui/chathead/h;

    invoke-direct {v2, p0, v1}, Lcom/viber/voip/messages/ui/chathead/h;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 868
    return-void

    .line 822
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p1, p4}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/ui/chathead/b;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    .line 823
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/g;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/ui/chathead/g;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;)V

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 836
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 848
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method private a(Lcom/viber/voip/messages/ui/chathead/b;Landroid/net/Uri;ZZZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 630
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 631
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 632
    new-instance v7, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v7}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 633
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    .line 636
    iget-boolean v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->V:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->p:Lcom/viber/voip/messages/ui/chathead/a/a;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v2

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->p:Lcom/viber/voip/messages/ui/chathead/a/a;

    if-ne v2, v4, :cond_0

    .line 637
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 638
    goto :goto_0

    .line 640
    :cond_0
    iget-boolean v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    if-eqz v2, :cond_1

    .line 641
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;)I

    move-result v2

    int-to-float v4, v2

    .line 642
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v5, 0x0

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(I)F

    move-result v8

    sub-float/2addr v8, v4

    aput v8, v2, v5

    invoke-static {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v2

    .line 643
    new-instance v5, Lcom/viber/voip/messages/ui/chathead/av;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v0, v4, v8}, Lcom/viber/voip/messages/ui/chathead/av;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;FZ)V

    invoke-virtual {v2, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v0, v2

    .line 649
    :goto_1
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 651
    goto :goto_0

    .line 645
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;)F

    move-result v4

    .line 646
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v5, 0x0

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(I)F

    move-result v8

    sub-float/2addr v8, v4

    aput v8, v2, v5

    invoke-static {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v2

    .line 647
    new-instance v5, Lcom/viber/voip/messages/ui/chathead/aw;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v0, v4, v8}, Lcom/viber/voip/messages/ui/chathead/aw;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;FZ)V

    invoke-virtual {v2, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v0, v2

    goto :goto_1

    .line 653
    :cond_2
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/an;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/messages/ui/chathead/an;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;Landroid/net/Uri;ZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    invoke-virtual {v7, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 661
    invoke-virtual {v7, v6}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 662
    const-wide/16 v0, 0xfa

    invoke-virtual {v7, v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 663
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 664
    invoke-virtual {v7}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 665
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/d;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/chathead/d;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/d;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/chathead/d;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/d;Landroid/content/Context;JZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/messages/ui/chathead/d;->b(Landroid/content/Context;JZZ)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/d;Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/ui/chathead/b;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/content/Context;Landroid/net/Uri;Lcom/viber/voip/messages/ui/chathead/b;Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/b;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;Landroid/net/Uri;IZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/b;Landroid/net/Uri;IZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    invoke-static {p0}, Lcom/viber/voip/messages/ui/chathead/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1107
    if-nez p1, :cond_0

    .line 1108
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-virtual {v2, v4}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    .line 1110
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->m()V

    .line 1111
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-static {v2, v1}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 1112
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1113
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1118
    :goto_0
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->u:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v5, v5, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    if-ge v2, v4, :cond_4

    move v2, v3

    .line 1119
    :goto_1
    if-eqz v2, :cond_5

    .line 1120
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->t:I

    neg-int v0, v0

    .line 1121
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->v()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1122
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/viber/voip/messages/ui/chathead/a/a;->setTextGravity(I)V

    .line 1135
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->v()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1136
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;)F

    move-result v1

    .line 1140
    :cond_2
    int-to-float v4, v0

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/viber/voip/messages/ui/chathead/d;->a(FFZZ)Ljava/util/List;

    move-result-object v2

    .line 1141
    new-instance v3, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v3}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 1142
    new-instance v4, Lcom/viber/voip/messages/ui/chathead/k;

    invoke-direct {v4, p0, v0, v1}, Lcom/viber/voip/messages/ui/chathead/k;-><init>(Lcom/viber/voip/messages/ui/chathead/d;IF)V

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 1155
    invoke-virtual {v3, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1156
    if-eqz p1, :cond_7

    const-wide/16 v0, 0x32

    :goto_3
    invoke-virtual {v3, v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1157
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 1158
    return-void

    .line 1115
    :cond_3
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v2, v0

    .line 1118
    goto :goto_1

    .line 1125
    :cond_5
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    if-eqz v0, :cond_6

    .line 1126
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->t:I

    add-int/2addr v0, v4

    .line 1130
    :goto_4
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->v()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1131
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/viber/voip/messages/ui/chathead/a/a;->setTextGravity(I)V

    goto :goto_2

    .line 1128
    :cond_6
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    sub-int/2addr v0, v4

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->f()I

    move-result v4

    sub-int/2addr v0, v4

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->t:I

    add-int/2addr v0, v4

    goto :goto_4

    .line 1156
    :cond_7
    const-wide/16 v0, 0x190

    goto :goto_3
.end method

.method private a(ZLcom/viber/voip/messages/ui/chathead/a/a;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1799
    const-string/jumbo v2, "scaleX"

    new-array v3, v6, [F

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    aput v0, v3, v5

    invoke-static {p2, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 1800
    const-string/jumbo v2, "scaleY"

    new-array v3, v6, [F

    if-eqz p1, :cond_1

    :goto_1
    aput v1, v3, v5

    invoke-static {p2, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 1801
    new-instance v2, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 1802
    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1803
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/nineoldandroids/animation/Animator;

    aput-object v0, v3, v5

    aput-object v1, v3, v6

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 1804
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 1805
    return-void

    .line 1799
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->m:F

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    goto :goto_0

    .line 1800
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v1, v1, Lcom/viber/voip/messages/ui/chathead/c;->m:F

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    goto :goto_1
.end method

.method private a(ZZLcom/viber/voip/messages/ui/chathead/a/a;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setPivotX(Landroid/view/View;F)V

    .line 1380
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setPivotY(Landroid/view/View;F)V

    .line 1385
    if-eqz p1, :cond_0

    .line 1386
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->X:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v3, v0

    .line 1387
    const/4 v2, 0x0

    .line 1388
    const/4 v1, 0x0

    .line 1389
    const/high16 v0, 0x3f80

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .line 1397
    :goto_0
    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->X:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    const/4 v0, 0x4

    :goto_1
    invoke-virtual {v5, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1398
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->X:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v5

    .line 1399
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1400
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    if-eqz v0, :cond_3

    .line 1401
    invoke-static {p3}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;)F

    move-result v7

    .line 1402
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    if-eqz v0, :cond_2

    .line 1403
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    .line 1404
    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    iget v11, p0, Lcom/viber/voip/messages/ui/chathead/d;->A:I

    int-to-float v11, v11

    sub-float/2addr v11, v7

    aput v11, v9, v10

    invoke-static {v9}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v9

    .line 1405
    new-instance v10, Lcom/viber/voip/messages/ui/chathead/aw;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    const/4 v11, 0x0

    invoke-direct {v10, p0, v0, v7, v11}, Lcom/viber/voip/messages/ui/chathead/aw;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;FZ)V

    invoke-virtual {v9, v10}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1406
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1391
    :cond_0
    const/4 v3, 0x0

    .line 1392
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->X:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v2, v0

    .line 1393
    const/high16 v1, 0x3f80

    .line 1394
    const/4 v0, 0x0

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 1397
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1409
    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v8, 0x0

    iget v9, p0, Lcom/viber/voip/messages/ui/chathead/d;->A:I

    int-to-float v9, v9

    sub-float/2addr v9, v7

    aput v9, v0, v8

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 1410
    new-instance v8, Lcom/viber/voip/messages/ui/chathead/aw;

    const/4 v9, 0x0

    invoke-direct {v8, p0, p3, v7, v9}, Lcom/viber/voip/messages/ui/chathead/aw;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;FZ)V

    invoke-virtual {v0, v8}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1411
    const-string/jumbo v7, "alpha"

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v2, v8, v9

    const/4 v9, 0x1

    aput v1, v8, v9

    invoke-static {p3, v7, v8}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v7

    .line 1412
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1413
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1416
    :cond_3
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v7, 0x0

    neg-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v0, v7

    invoke-static {v0}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 1417
    new-instance v3, Lcom/viber/voip/messages/ui/chathead/n;

    invoke-direct {v3, p0, v5}, Lcom/viber/voip/messages/ui/chathead/n;-><init>(Lcom/viber/voip/messages/ui/chathead/d;I)V

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1423
    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v7, 0x0

    aput v2, v5, v7

    const/4 v2, 0x1

    aput v1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 1424
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1425
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->as:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1427
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    if-eqz v0, :cond_4

    .line 1428
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->as:Lcom/nineoldandroids/animation/AnimatorSet;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1432
    :goto_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->as:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1433
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->as:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v1, Lcom/viber/voip/messages/ui/chathead/o;

    invoke-direct {v1, p0, p1, p3}, Lcom/viber/voip/messages/ui/chathead/o;-><init>(Lcom/viber/voip/messages/ui/chathead/d;ZLcom/viber/voip/messages/ui/chathead/a/a;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 1464
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->as:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0, v6}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1465
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->as:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 1466
    return-void

    .line 1430
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->as:Lcom/nineoldandroids/animation/AnimatorSet;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    goto :goto_3
.end method

.method private a(FF)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1371
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->u:I

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 1372
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1373
    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1374
    aget v4, v3, v1

    sub-int/2addr v4, v2

    int-to-float v4, v4

    cmpl-float v4, p1, v4

    if-lez v4, :cond_0

    aget v4, v3, v1

    add-int/2addr v4, v2

    int-to-float v4, v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    aget v4, v3, v0

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v5, v5, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v5, v5, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->B:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_0

    aget v3, v3, v0

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter

    .prologue
    const/high16 v6, 0x4040

    const-wide v9, 0x3ff6666666666666L

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 2176
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2177
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2179
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ar:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v5

    .line 2310
    :goto_0
    return v1

    .line 2182
    :cond_1
    iput-boolean v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    .line 2183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2185
    :pswitch_0
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->V:Z

    .line 2186
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->O:Z

    .line 2187
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->r:Landroid/os/Handler;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->aw:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->L:J

    .line 2189
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2190
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2191
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2192
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(ZLcom/viber/voip/messages/ui/chathead/a/a;)V

    .line 2193
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-direct {p0, v5, v1, v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(ZZLcom/viber/voip/messages/ui/chathead/a/a;)V

    .line 2195
    :cond_2
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->o()V

    .line 2196
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->u:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ah:F

    .line 2197
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->u:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ai:F

    .line 2198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aj:F

    .line 2199
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ak:F

    move v1, v5

    .line 2200
    goto :goto_0

    .line 2202
    :pswitch_1
    iput-boolean v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->O:Z

    .line 2203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/viber/voip/messages/ui/chathead/d;->L:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->L:J

    .line 2204
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->v()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2205
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(ZLcom/viber/voip/messages/ui/chathead/a/a;)V

    .line 2207
    :cond_3
    iget-wide v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->L:J

    const-wide/16 v6, 0x12c

    cmp-long v0, v2, v6

    if-gez v0, :cond_6

    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->V:Z

    if-nez v0, :cond_6

    .line 2208
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2209
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-direct {p0, v1, v5, v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(ZZLcom/viber/voip/messages/ui/chathead/a/a;)V

    .line 2211
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->u:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->J:F

    .line 2212
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->u:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->K:F

    .line 2213
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->h()V

    .line 2222
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->V:Z

    move v1, v5

    .line 2223
    goto/16 :goto_0

    .line 2215
    :cond_6
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->v()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2216
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-direct {p0, v1, v1, v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(ZZLcom/viber/voip/messages/ui/chathead/a/a;)V

    .line 2218
    :cond_7
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    if-nez v0, :cond_5

    .line 2219
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->g()V

    goto :goto_1

    .line 2225
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_8

    move v1, v5

    .line 2226
    goto/16 :goto_0

    .line 2228
    :cond_8
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->V:Z

    if-nez v0, :cond_a

    .line 2229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->aj:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->v:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->ak:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->v:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_b

    .line 2230
    :cond_9
    iput-boolean v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->V:Z

    .line 2235
    :cond_a
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->O:Z

    .line 2236
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ah:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->aj:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    .line 2237
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ai:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->ak:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    .line 2238
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->l()V

    .line 2239
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 2240
    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    iget v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->A:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 2241
    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->as:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2242
    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->X:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->q:F

    div-float/2addr v4, v6

    iget-object v6, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v6, v6, Lcom/viber/voip/messages/ui/chathead/c;->q:F

    mul-float/2addr v0, v6

    add-float/2addr v0, v4

    float-to-int v0, v0

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->r:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-virtual {v3, v0, v2, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2246
    :goto_2
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    invoke-direct {p0, v0, v2}, Lcom/viber/voip/messages/ui/chathead/d;->a(FF)Z

    move-result v0

    if-nez v0, :cond_d

    .line 2247
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_d

    .line 2248
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    .line 2249
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    float-to-int v0, v0

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lcom/viber/voip/messages/ui/chathead/d;->c(II)V

    goto/16 :goto_0

    :cond_b
    move v1, v5

    .line 2232
    goto/16 :goto_0

    .line 2244
    :cond_c
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->X:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->q:F

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->q:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->X:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2, v0, v3, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_2

    .line 2253
    :cond_d
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    invoke-direct {p0, v0, v2}, Lcom/viber/voip/messages/ui/chathead/d;->a(FF)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 2254
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2255
    iput-boolean v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    .line 2256
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    float-to-int v0, v0

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    float-to-int v2, v2

    invoke-direct {p0, v0, v2}, Lcom/viber/voip/messages/ui/chathead/d;->b(II)V

    goto/16 :goto_0

    .line 2260
    :cond_e
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    if-nez v0, :cond_17

    .line 2263
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v0, Lcom/viber/voip/messages/ui/chathead/c;->s:I

    move v2, v1

    move v3, v1

    .line 2264
    :goto_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_15

    .line 2265
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v6

    .line 2266
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_f

    .line 2267
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    invoke-static {v6, v0}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;F)V

    .line 2268
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    invoke-static {v6, v0}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;F)V

    .line 2264
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 2271
    :cond_f
    if-nez v3, :cond_14

    if-nez v2, :cond_14

    .line 2272
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->H:F

    sub-float/2addr v0, v2

    float-to-int v2, v0

    .line 2273
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    iget v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->I:F

    sub-float/2addr v0, v3

    float-to-int v0, v0

    .line 2274
    if-le v2, v4, :cond_12

    move v2, v4

    .line 2279
    :cond_10
    :goto_5
    if-le v0, v4, :cond_13

    move v0, v4

    .line 2289
    :cond_11
    :goto_6
    iget v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    int-to-float v7, v2

    sub-float/2addr v3, v7

    invoke-static {v6, v3}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;F)V

    .line 2290
    iget v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    int-to-float v7, v0

    sub-float/2addr v3, v7

    invoke-static {v6, v3}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;F)V

    move v3, v2

    move v2, v0

    goto :goto_4

    .line 2276
    :cond_12
    neg-int v3, v4

    if-ge v2, v3, :cond_10

    .line 2277
    neg-int v2, v4

    goto :goto_5

    .line 2281
    :cond_13
    neg-int v3, v4

    if-ge v0, v3, :cond_11

    .line 2282
    neg-int v0, v4

    goto :goto_6

    .line 2285
    :cond_14
    int-to-double v7, v3

    div-double/2addr v7, v9

    double-to-int v3, v7

    .line 2286
    int-to-double v7, v2

    div-double/2addr v7, v9

    double-to-int v0, v7

    move v2, v3

    goto :goto_6

    .line 2293
    :cond_15
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->u:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2294
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->u:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2305
    :cond_16
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->H:F

    .line 2306
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->I:F

    move v1, v5

    .line 2307
    goto/16 :goto_0

    .line 2296
    :cond_17
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->as:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_16

    .line 2297
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 2298
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 2299
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    .line 2300
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v4

    aget v6, v2, v1

    iget v7, p0, Lcom/viber/voip/messages/ui/chathead/d;->E:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-static {v4, v6}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;F)V

    .line 2301
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    aget v4, v2, v5

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->e()I

    move-result v6

    sub-int/2addr v4, v6

    iget v6, p0, Lcom/viber/voip/messages/ui/chathead/d;->E:I

    add-int/2addr v4, v6

    int-to-float v4, v4

    invoke-static {v0, v4}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;F)V

    goto :goto_7

    .line 2183
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/view/MotionEvent;Lcom/viber/voip/messages/ui/chathead/b;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/high16 v9, 0x4040

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1856
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ar:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v3

    .line 1998
    :cond_0
    :goto_0
    return v2

    .line 1859
    :cond_1
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    if-nez v0, :cond_0

    .line 1862
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 1863
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1865
    invoke-virtual {p2}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v6

    .line 1866
    iput-object v6, p0, Lcom/viber/voip/messages/ui/chathead/d;->p:Lcom/viber/voip/messages/ui/chathead/a/a;

    .line 1867
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    .line 1868
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1870
    :pswitch_0
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->V:Z

    .line 1871
    invoke-direct {p0, v6}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/a/a;)V

    .line 1872
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->L:J

    .line 1873
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1874
    invoke-direct {p0, v3, v2, v6}, Lcom/viber/voip/messages/ui/chathead/d;->a(ZZLcom/viber/voip/messages/ui/chathead/a/a;)V

    .line 1875
    invoke-static {v6}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ah:F

    .line 1876
    invoke-static {v6}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ai:F

    .line 1877
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aj:F

    .line 1878
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ak:F

    .line 1879
    invoke-virtual {v6}, Lcom/viber/voip/messages/ui/chathead/a/a;->bringToFront()V

    move v2, v3

    .line 1880
    goto :goto_0

    .line 1882
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v7, p0, Lcom/viber/voip/messages/ui/chathead/d;->L:J

    sub-long/2addr v0, v7

    iput-wide v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->L:J

    move v1, v2

    .line 1883
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1884
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->bringToFront()V

    .line 1883
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1886
    :cond_2
    iget-wide v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->L:J

    const-wide/16 v7, 0x12c

    cmp-long v0, v0, v7

    if-gez v0, :cond_5

    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->V:Z

    if-nez v0, :cond_5

    .line 1887
    invoke-direct {p0, v2, v3, v6}, Lcom/viber/voip/messages/ui/chathead/d;->a(ZZLcom/viber/voip/messages/ui/chathead/a/a;)V

    .line 1888
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->o:Lcom/viber/voip/messages/ui/chathead/a/a;

    if-ne v6, v0, :cond_4

    .line 1889
    iput-boolean v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    .line 1890
    iput-boolean v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->Q:Z

    .line 1891
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->M:Z

    .line 1892
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->az:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->cancel()V

    .line 1893
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->dismiss()V

    .line 1904
    :cond_3
    :goto_2
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->V:Z

    move v2, v3

    .line 1905
    goto/16 :goto_0

    .line 1895
    :cond_4
    iput-object v6, p0, Lcom/viber/voip/messages/ui/chathead/d;->o:Lcom/viber/voip/messages/ui/chathead/a/a;

    .line 1896
    invoke-direct {p0, p2}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/b;)V

    goto :goto_2

    .line 1899
    :cond_5
    invoke-direct {p0, v2, v2, v6}, Lcom/viber/voip/messages/ui/chathead/d;->a(ZZLcom/viber/voip/messages/ui/chathead/a/a;)V

    .line 1900
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    if-nez v0, :cond_3

    .line 1901
    invoke-direct {p0, p2, v5}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/b;I)V

    goto :goto_2

    .line 1907
    :pswitch_2
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    move v2, v3

    .line 1908
    goto/16 :goto_0

    .line 1910
    :cond_6
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->V:Z

    if-nez v1, :cond_8

    .line 1911
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->aj:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->v:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-gtz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->ak:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->v:I

    int-to-float v4, v4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_b

    .line 1912
    :cond_7
    iput-boolean v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->V:Z

    .line 1917
    :cond_8
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->ah:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    add-float/2addr v1, v4

    iget v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->aj:F

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    .line 1918
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->ai:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    add-float/2addr v1, v4

    iget v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->ak:F

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    .line 1919
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->H:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->I:F

    cmpl-float v1, v1, v7

    if-nez v1, :cond_a

    .line 1920
    :cond_9
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->H:F

    .line 1921
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->I:F

    .line 1923
    :cond_a
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->l()V

    .line 1925
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    iget v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v7, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v7, v7, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    add-int/2addr v4, v7

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 1926
    iget v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    iget v7, p0, Lcom/viber/voip/messages/ui/chathead/d;->A:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    .line 1927
    iget-object v7, p0, Lcom/viber/voip/messages/ui/chathead/d;->as:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v7}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v7

    if-nez v7, :cond_c

    .line 1928
    iget-object v7, p0, Lcom/viber/voip/messages/ui/chathead/d;->X:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v8, v8, Lcom/viber/voip/messages/ui/chathead/c;->q:F

    div-float/2addr v8, v9

    iget-object v9, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v9, v9, Lcom/viber/voip/messages/ui/chathead/c;->q:F

    mul-float/2addr v1, v9

    add-float/2addr v1, v8

    float-to-int v1, v1

    iget-object v8, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v8, v8, Lcom/viber/voip/messages/ui/chathead/c;->r:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v7, v1, v4, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1932
    :goto_3
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    iget v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    invoke-direct {p0, v1, v4}, Lcom/viber/voip/messages/ui/chathead/d;->a(FF)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1933
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1934
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    .line 1935
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    float-to-int v0, v0

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v6}, Lcom/viber/voip/messages/ui/chathead/d;->b(IILcom/viber/voip/messages/ui/chathead/a/a;)V

    goto/16 :goto_0

    :cond_b
    move v2, v3

    .line 1914
    goto/16 :goto_0

    .line 1930
    :cond_c
    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->X:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v7, v7, Lcom/viber/voip/messages/ui/chathead/c;->q:F

    div-float/2addr v7, v9

    iget-object v8, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v8, v8, Lcom/viber/voip/messages/ui/chathead/c;->q:F

    mul-float/2addr v1, v8

    add-float/2addr v1, v7

    float-to-int v1, v1

    iget-object v7, p0, Lcom/viber/voip/messages/ui/chathead/d;->X:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {v4, v1, v7, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_3

    .line 1939
    :cond_d
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    iget v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    invoke-direct {p0, v1, v4}, Lcom/viber/voip/messages/ui/chathead/d;->a(FF)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    .line 1940
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1941
    iput-boolean v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    .line 1942
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    float-to-int v0, v0

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v6}, Lcom/viber/voip/messages/ui/chathead/d;->a(IILcom/viber/voip/messages/ui/chathead/a/a;)V

    goto/16 :goto_0

    .line 1946
    :cond_e
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    if-nez v1, :cond_17

    .line 1947
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    invoke-static {v6, v1}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;F)V

    .line 1948
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    invoke-static {v6, v1}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;F)V

    .line 1950
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    iget v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->H:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_12

    move v4, v3

    .line 1951
    :goto_4
    if-eqz v4, :cond_14

    .line 1952
    add-int/lit8 v0, v0, -0x1

    if-ge v5, v0, :cond_13

    .line 1953
    add-int/lit8 v0, v5, 0x1

    move v1, v0

    move v0, v3

    .line 1965
    :goto_5
    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ao:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1966
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    .line 1967
    if-eqz v4, :cond_16

    .line 1968
    invoke-direct {p0, v6}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/a/a;)F

    move-result v4

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/a/a;)F

    move-result v7

    iget-object v8, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v8, v8, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    cmpg-float v4, v4, v7

    if-gez v4, :cond_f

    .line 1969
    invoke-direct {p0, v0, v5}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/a/a;I)V

    .line 1970
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-static {v0, v5, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 1980
    :cond_f
    :goto_6
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->o:Lcom/viber/voip/messages/ui/chathead/a/a;

    if-ne v6, v0, :cond_10

    .line 1981
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->Q:Z

    .line 1982
    iput-boolean v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->M:Z

    .line 1983
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->dismiss()V

    .line 1985
    :cond_10
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 1994
    :cond_11
    :goto_7
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->H:F

    .line 1995
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->I:F

    move v2, v3

    .line 1996
    goto/16 :goto_0

    :cond_12
    move v4, v2

    .line 1950
    goto :goto_4

    :cond_13
    move v0, v2

    move v1, v2

    .line 1955
    goto :goto_5

    .line 1958
    :cond_14
    if-le v5, v3, :cond_15

    .line 1959
    add-int/lit8 v0, v5, -0x1

    move v1, v0

    move v0, v3

    goto :goto_5

    :cond_15
    move v0, v2

    move v1, v2

    .line 1961
    goto :goto_5

    .line 1973
    :cond_16
    invoke-direct {p0, v6}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/a/a;)F

    move-result v4

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/a/a;)F

    move-result v7

    iget-object v8, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v8, v8, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    sub-float/2addr v7, v8

    cmpl-float v4, v4, v7

    if-lez v4, :cond_f

    .line 1974
    invoke-direct {p0, v0, v5}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/a/a;I)V

    .line 1975
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-static {v0, v5, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    goto :goto_6

    .line 1987
    :cond_17
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->as:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1988
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1989
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1990
    aget v1, v0, v2

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->E:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v6, v1}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;F)V

    .line 1991
    aget v0, v0, v3

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->B:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->E:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v6, v0}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;F)V

    goto :goto_7

    .line 1868
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/d;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/d;Landroid/view/MotionEvent;Lcom/viber/voip/messages/ui/chathead/b;)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/view/MotionEvent;Lcom/viber/voip/messages/ui/chathead/b;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/chathead/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->M:Z

    return p1
.end method

.method static synthetic aa(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/util/fz;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aa:Lcom/viber/voip/util/fz;

    return-object v0
.end method

.method static synthetic ab(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->o:Lcom/viber/voip/messages/ui/chathead/a/a;

    return-object v0
.end method

.method static synthetic ac(Lcom/viber/voip/messages/ui/chathead/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->V:Z

    return v0
.end method

.method private b(Lcom/viber/voip/messages/ui/chathead/a/a;)F
    .locals 1
    .parameter

    .prologue
    .line 2035
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    if-eqz v0, :cond_0

    .line 2036
    invoke-static {p1}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;)I

    move-result v0

    int-to-float v0, v0

    .line 2038
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;)F

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/chathead/d;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->I:F

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;)Lcom/viber/voip/messages/ui/chathead/a/a;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->n:Lcom/viber/voip/messages/ui/chathead/a/a;

    return-object p1
.end method

.method private b(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x1

    const/high16 v5, 0x3f80

    const/4 v2, 0x0

    const/4 v4, 0x4

    .line 1264
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->p()V

    .line 1265
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    .line 1266
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->m()V

    .line 1267
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    .line 1268
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    .line 1269
    invoke-static {v0, v5}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 1270
    invoke-static {v0, v5}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    goto :goto_0

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->n:Lcom/viber/voip/messages/ui/chathead/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->n:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/chathead/a/a;->setBorderVisible(Z)V

    .line 1273
    :cond_1
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->T:Z

    if-eqz v0, :cond_3

    .line 1274
    const-string/jumbo v0, "popupCloseAnimation: mToRestoreAfterCall"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->c(Ljava/lang/String;)V

    .line 1275
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1276
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1277
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-virtual {v0, v4}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    .line 1287
    :goto_1
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->J:F

    iget v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_5

    move v0, v1

    .line 1288
    :goto_2
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1289
    if-eqz v0, :cond_6

    .line 1290
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/viber/voip/messages/ui/chathead/a/a;->setTextGravity(I)V

    .line 1295
    :cond_2
    :goto_3
    if-eqz v0, :cond_7

    .line 1296
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v1, v1, Lcom/viber/voip/messages/ui/chathead/c;->t:I

    neg-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->J:F

    .line 1301
    :goto_4
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->J:F

    iget v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->K:F

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/viber/voip/messages/ui/chathead/d;->a(FFZZ)Ljava/util/List;

    move-result-object v0

    .line 1302
    new-instance v1, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v1}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 1303
    new-instance v2, Lcom/viber/voip/messages/ui/chathead/m;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/ui/chathead/m;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 1326
    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1327
    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1328
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 1329
    return-void

    .line 1279
    :cond_3
    const-string/jumbo v0, "popupCloseAnimation: !mToRestoreAfterCall"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->c(Ljava/lang/String;)V

    .line 1280
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1281
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->r()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    .line 1283
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-virtual {v0, v4}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    .line 1284
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/nineoldandroids/view/ViewHelper;->setAlpha(Landroid/view/View;F)V

    .line 1285
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 1287
    goto :goto_2

    .line 1292
    :cond_6
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/viber/voip/messages/ui/chathead/a/a;->setTextGravity(I)V

    goto :goto_3

    .line 1298
    :cond_7
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->t:I

    add-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->J:F

    goto :goto_4
.end method

.method private b(II)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/high16 v4, 0x3f80

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1045
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    const-string/jumbo v1, "scaleX"

    new-array v2, v7, [F

    aput v4, v2, v6

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 1046
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    const-string/jumbo v2, "scaleY"

    new-array v3, v7, [F

    aput v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 1047
    new-array v2, v8, [I

    .line 1048
    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1049
    aget v3, v2, v6

    .line 1050
    aget v2, v2, v7

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->e()I

    move-result v4

    sub-int/2addr v2, v4

    .line 1052
    new-instance v4, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v4}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1054
    new-array v4, v7, [F

    sub-int/2addr v3, p1

    int-to-float v3, v3

    aput v3, v4, v6

    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    .line 1055
    new-array v4, v7, [F

    sub-int/2addr v2, p2

    int-to-float v2, v2

    aput v2, v4, v6

    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v2

    .line 1056
    new-instance v4, Lcom/viber/voip/messages/ui/chathead/as;

    int-to-float v5, p1

    invoke-direct {v4, p0, v5, v9}, Lcom/viber/voip/messages/ui/chathead/as;-><init>(Lcom/viber/voip/messages/ui/chathead/d;FLcom/viber/voip/messages/ui/chathead/e;)V

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1057
    new-instance v4, Lcom/viber/voip/messages/ui/chathead/at;

    int-to-float v5, p2

    invoke-direct {v4, p0, v5, v9}, Lcom/viber/voip/messages/ui/chathead/at;-><init>(Lcom/viber/voip/messages/ui/chathead/d;FLcom/viber/voip/messages/ui/chathead/e;)V

    invoke-virtual {v2, v4}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1059
    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v5, Lcom/viber/voip/messages/ui/chathead/i;

    invoke-direct {v5, p0}, Lcom/viber/voip/messages/ui/chathead/i;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 1074
    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/nineoldandroids/animation/Animator;

    aput-object v3, v5, v6

    aput-object v2, v5, v7

    aput-object v0, v5, v8

    const/4 v0, 0x3

    aput-object v1, v5, v0

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 1075
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1076
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 1077
    return-void
.end method

.method private b(IILcom/viber/voip/messages/ui/chathead/a/a;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const v6, 0x3f4ccccd

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2075
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/a/a;)V

    .line 2076
    new-array v0, v9, [I

    .line 2077
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 2078
    aget v1, v0, v7

    .line 2079
    aget v0, v0, v8

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->B:I

    sub-int/2addr v0, v2

    .line 2080
    new-instance v2, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 2081
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    const-string/jumbo v3, "scaleX"

    new-array v4, v8, [F

    aput v6, v4, v7

    invoke-static {v2, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    .line 2082
    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v8, [F

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    .line 2083
    new-array v4, v8, [F

    neg-int v5, v1

    add-int/2addr v5, p1

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v4

    .line 2084
    new-array v5, v8, [F

    neg-int v6, v0

    add-int/2addr v6, p2

    int-to-float v6, v6

    aput v6, v5, v7

    invoke-static {v5}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v5

    .line 2085
    new-instance v6, Lcom/viber/voip/messages/ui/chathead/av;

    int-to-float v1, v1

    invoke-direct {v6, p0, p3, v1, v7}, Lcom/viber/voip/messages/ui/chathead/av;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;FZ)V

    invoke-virtual {v4, v6}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2086
    new-instance v1, Lcom/viber/voip/messages/ui/chathead/aw;

    int-to-float v0, v0

    invoke-direct {v1, p0, p3, v0, v7}, Lcom/viber/voip/messages/ui/chathead/aw;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;FZ)V

    invoke-virtual {v5, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2088
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v1, Lcom/viber/voip/messages/ui/chathead/x;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/chathead/x;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 2094
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/nineoldandroids/animation/Animator;

    aput-object v4, v1, v7

    aput-object v5, v1, v8

    aput-object v2, v1, v9

    const/4 v2, 0x3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 2095
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 2096
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2097
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 2098
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 13
    .parameter

    .prologue
    const/16 v4, 0x8

    const/16 v3, 0x7d2

    const/4 v12, 0x0

    const/4 v5, -0x3

    const/4 v7, -0x1

    .line 395
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v1, v1, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->t:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->u:Landroid/view/WindowManager$LayoutParams;

    .line 397
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const v10, 0x20008

    move v8, v7

    move v9, v3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/viber/voip/messages/ui/chathead/d;->t:Landroid/view/WindowManager$LayoutParams;

    .line 400
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    move v1, v7

    move v2, v7

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->w:Landroid/view/WindowManager$LayoutParams;

    .line 402
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    move v2, v7

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->x:Landroid/view/WindowManager$LayoutParams;

    .line 404
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v8, v0, Lcom/viber/voip/messages/ui/chathead/c;->o:I

    const/16 v9, 0x7d6

    const/16 v10, 0x10

    move v11, v5

    invoke-direct/range {v6 .. v11}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/viber/voip/messages/ui/chathead/d;->v:Landroid/view/WindowManager$LayoutParams;

    .line 407
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->t:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 408
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->u:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 409
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->v:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 411
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    .line 412
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->p:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    .line 414
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->t:Landroid/view/WindowManager$LayoutParams;

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 415
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->t:Landroid/view/WindowManager$LayoutParams;

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 416
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->u:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/chathead/c;->p:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->t:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 417
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->u:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/chathead/c;->p:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 418
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->w:Landroid/view/WindowManager$LayoutParams;

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 419
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->w:Landroid/view/WindowManager$LayoutParams;

    iput v12, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 420
    return-void
.end method

.method private b(Landroid/content/Context;JZZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 483
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->R:Z

    .line 484
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v1

    .line 485
    invoke-virtual {v1, p2, p3}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v7

    .line 486
    if-nez v7, :cond_1

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->R:Z

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v3

    .line 492
    const/4 v0, 0x0

    .line 493
    const/4 v2, 0x0

    .line 494
    if-eqz v3, :cond_5

    .line 495
    const-string/jumbo v0, ""

    .line 496
    invoke-virtual {v1, p2, p3}, Lcom/viber/voip/messages/controller/c/as;->q(J)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v2

    .line 497
    if-eqz v2, :cond_4

    .line 498
    invoke-virtual {v2}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getParticipantId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/viber/voip/messages/controller/c/as;->j(J)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v1

    .line 499
    if-eqz v1, :cond_2

    .line 500
    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName()Ljava/lang/String;

    move-result-object v0

    .line 505
    :cond_2
    :goto_1
    const/4 v2, 0x0

    move-object v6, v1

    .line 514
    :cond_3
    :goto_2
    invoke-direct {p0, p2, p3, v0, v3}, Lcom/viber/voip/messages/ui/chathead/d;->a(JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 516
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 517
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/ax;

    invoke-direct {v0, p1}, Lcom/viber/voip/messages/ui/chathead/ax;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/b;)V

    .line 518
    new-instance v0, Lcom/viber/voip/messages/ui/chathead/b;

    invoke-direct {v0, p1, v7}, Lcom/viber/voip/messages/ui/chathead/b;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/orm/entity/ConversationEntity;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1, v6}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/b;Landroid/net/Uri;ZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    .line 519
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aa:Lcom/viber/voip/util/fz;

    invoke-virtual {v0, p0}, Lcom/viber/voip/util/fz;->a(Lcom/viber/voip/util/gf;)V

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->R:Z

    .line 588
    :goto_3
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_10

    .line 589
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->bringToFront()V

    .line 588
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 503
    :cond_4
    invoke-virtual {v1}, Lcom/viber/voip/messages/controller/c/as;->i()Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v1

    goto :goto_1

    .line 507
    :cond_5
    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/viber/voip/messages/controller/c/as;->c(Ljava/lang/String;)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v6

    .line 508
    if-eqz v6, :cond_3

    .line 509
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName(Z)Ljava/lang/String;

    move-result-object v0

    .line 510
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage(Z)Landroid/net/Uri;

    move-result-object v2

    goto :goto_2

    .line 522
    :cond_6
    invoke-direct {p0, p2, p3}, Lcom/viber/voip/messages/ui/chathead/d;->a(J)I

    move-result v0

    .line 524
    if-lez v0, :cond_b

    .line 525
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    .line 526
    invoke-virtual {v0, v7}, Lcom/viber/voip/messages/ui/chathead/b;->a(Lcom/viber/voip/messages/orm/entity/ConversationEntity;)V

    .line 527
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    if-nez v1, :cond_a

    .line 528
    if-eqz p5, :cond_8

    .line 529
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->o:Lcom/viber/voip/messages/ui/chathead/a/a;

    .line 530
    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/b;)V

    .line 551
    :cond_7
    :goto_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->R:Z

    goto :goto_3

    .line 532
    :cond_8
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->o:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v2

    if-ne v1, v2, :cond_9

    .line 533
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/ui/chathead/a/a;->setShowBadge(Z)V

    .line 537
    :goto_6
    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadMessagesCount()I

    move-result v1

    if-eqz v1, :cond_7

    .line 538
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadMessagesCount()I

    move-result v1

    invoke-static {v1}, Lcom/viber/voip/messages/j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setMessagesCount(Ljava/lang/String;)V

    goto :goto_5

    .line 535
    :cond_9
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/ui/chathead/a/a;->setShowBadge(Z)V

    goto :goto_6

    .line 542
    :cond_a
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->j()V

    .line 543
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 544
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 545
    const/4 v1, 0x1

    invoke-direct {p0, v0, v2, v1, v6}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/b;Landroid/net/Uri;ZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    .line 546
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/ui/chathead/a/a;->setShowBadge(Z)V

    .line 547
    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadMessagesCount()I

    move-result v1

    if-eqz v1, :cond_7

    .line 548
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadMessagesCount()I

    move-result v1

    invoke-static {v1}, Lcom/viber/voip/messages/j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setMessagesCount(Ljava/lang/String;)V

    goto :goto_5

    .line 553
    :cond_b
    const/4 v3, 0x0

    .line 554
    const/4 v0, 0x0

    .line 557
    new-instance v1, Lcom/viber/voip/messages/ui/chathead/b;

    invoke-direct {v1, p1, v7}, Lcom/viber/voip/messages/ui/chathead/b;-><init>(Landroid/content/Context;Lcom/viber/voip/messages/orm/entity/ConversationEntity;)V

    .line 558
    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sget v5, Lcom/viber/voip/messages/ui/chathead/d;->d:I

    if-ne v4, v5, :cond_15

    .line 559
    iget-boolean v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    if-nez v3, :cond_d

    .line 560
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->o:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->p()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v3

    if-ne v0, v3, :cond_c

    .line 561
    const/4 v3, 0x1

    .line 562
    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 563
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move v0, v3

    .line 573
    :goto_7
    const/4 v3, 0x1

    move v4, v0

    .line 575
    :goto_8
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    if-nez v0, :cond_e

    move-object v0, p0

    move v5, p5

    .line 576
    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/b;Landroid/net/Uri;ZZZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    goto/16 :goto_3

    .line 565
    :cond_c
    const/4 v0, 0x0

    .line 566
    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->p()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 567
    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 570
    :cond_d
    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->p()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 571
    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_7

    .line 578
    :cond_e
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->j()V

    .line 579
    const/4 v0, 0x1

    invoke-direct {p0, v1, v2, v0, v6}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/b;Landroid/net/Uri;ZLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)V

    .line 580
    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/chathead/a/a;->setShowBadge(Z)V

    .line 581
    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadMessagesCount()I

    move-result v0

    if-eqz v0, :cond_f

    .line 582
    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadMessagesCount()I

    move-result v1

    invoke-static {v1}, Lcom/viber/voip/messages/j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setMessagesCount(Ljava/lang/String;)V

    .line 584
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->R:Z

    goto/16 :goto_3

    .line 591
    :cond_10
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->u:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_13

    const/4 v0, 0x1

    .line 592
    :goto_9
    if-eqz v0, :cond_14

    .line 593
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setTextGravity(I)V

    .line 594
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setTextGravity(I)V

    .line 599
    :goto_a
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    if-eqz v0, :cond_12

    .line 600
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setShowBadge(Z)V

    .line 602
    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadMessagesCount()I

    move-result v0

    if-eqz v0, :cond_11

    .line 603
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadMessagesCount()I

    move-result v1

    invoke-static {v1}, Lcom/viber/voip/messages/j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setMessagesCount(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-virtual {v7}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadMessagesCount()I

    move-result v1

    invoke-static {v1}, Lcom/viber/voip/messages/j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setMessagesCount(Ljava/lang/String;)V

    .line 606
    :cond_11
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->m()V

    .line 608
    :cond_12
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->r()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setShowBadge(Z)V

    .line 609
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aa:Lcom/viber/voip/util/fz;

    invoke-virtual {v0}, Lcom/viber/voip/util/fz;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/chathead/d;->d(I)V

    .line 610
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 611
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    .line 612
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->ax:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 613
    invoke-direct {p0, v8}, Lcom/viber/voip/messages/ui/chathead/d;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 591
    :cond_13
    const/4 v0, 0x0

    goto :goto_9

    .line 596
    :cond_14
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setTextGravity(I)V

    .line 597
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setTextGravity(I)V

    goto :goto_a

    :cond_15
    move v4, v0

    goto/16 :goto_8
.end method

.method private b(Lcom/viber/voip/messages/ui/chathead/b;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1808
    instance-of v0, p1, Lcom/viber/voip/messages/ui/chathead/ax;

    if-eqz v0, :cond_1

    .line 1809
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0, v7}, Lcom/viber/voip/messages/ui/chathead/a/l;->a(Z)V

    .line 1810
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->l()V

    .line 1811
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->k()V

    .line 1812
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->j()V

    .line 1818
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1819
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->n:Lcom/viber/voip/messages/ui/chathead/a/a;

    .line 1820
    if-eqz v1, :cond_0

    .line 1821
    const-string/jumbo v2, "scaleX"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v5, v5, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1822
    const-string/jumbo v2, "scaleY"

    new-array v3, v8, [F

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v5, v5, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1825
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v2

    .line 1827
    iput-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->n:Lcom/viber/voip/messages/ui/chathead/a/a;

    .line 1829
    const-string/jumbo v3, "scaleX"

    new-array v4, v8, [F

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v5, v5, Lcom/viber/voip/messages/ui/chathead/c;->j:F

    iget-object v6, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v6, v6, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1830
    const-string/jumbo v3, "scaleY"

    new-array v4, v8, [F

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v5, v5, Lcom/viber/voip/messages/ui/chathead/c;->j:F

    iget-object v6, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v6, v6, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1831
    new-instance v3, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v3}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 1832
    new-instance v4, Lcom/viber/voip/messages/ui/chathead/v;

    invoke-direct {v4, p0, v2, v1, p1}, Lcom/viber/voip/messages/ui/chathead/v;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;Lcom/viber/voip/messages/ui/chathead/a/a;Lcom/viber/voip/messages/ui/chathead/b;)V

    invoke-virtual {v3, v4}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 1850
    const-wide/16 v1, 0xfa

    invoke-virtual {v3, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1851
    invoke-virtual {v3, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1852
    invoke-virtual {v3}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 1853
    return-void

    .line 1814
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0, v8}, Lcom/viber/voip/messages/ui/chathead/a/l;->a(Z)V

    .line 1815
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->l()V

    .line 1816
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-static {p1}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/b;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, v8, v7}, Lcom/viber/voip/messages/ui/chathead/a/l;->a(Landroid/content/Intent;ZZ)V

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/chathead/d;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/chathead/d;->b(I)V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/chathead/d;Landroid/content/Context;JZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct/range {p0 .. p5}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/content/Context;JZZ)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 721
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->V:Z

    if-eqz v0, :cond_1

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ag:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->r:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/ui/chathead/ap;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/ui/chathead/ap;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 744
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->ax:Ljava/lang/Runnable;

    const-wide/16 v2, 0x157c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 745
    return-void

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ag:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/chathead/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/chathead/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->U:Z

    return p1
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/chathead/d;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->J:F

    return p1
.end method

.method private static c(Lcom/viber/voip/messages/ui/chathead/b;)Landroid/content/Intent;
    .locals 12
    .parameter

    .prologue
    const-wide/16 v6, -0x1

    .line 2428
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/b;->b()Lcom/viber/voip/messages/orm/entity/ConversationEntity;

    move-result-object v5

    .line 2429
    invoke-interface {v5}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->isConversationGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getGroupName()Ljava/lang/String;

    move-result-object v10

    .line 2430
    :goto_0
    invoke-interface {v5}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getId()J

    move-result-wide v0

    invoke-interface {v5}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getGroupId()J

    move-result-wide v2

    invoke-interface {v5}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5}, Lcom/viber/voip/messages/orm/entity/ConversationEntity;->getConversationType()I

    move-result v5

    const/4 v11, 0x1

    move-wide v8, v6

    invoke-static/range {v0 .. v11}, Lcom/viber/voip/messages/j;->a(JJLjava/lang/String;IJJLjava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 2432
    invoke-static {v0}, Lcom/viber/voip/e/u;->a(Landroid/content/Intent;)V

    .line 2433
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2434
    const-string/jumbo v1, "com.viber.voip.action.CONVERSATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2435
    return-object v0

    .line 2429
    :cond_0
    const-string/jumbo v10, ""

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/viber/voip/messages/ui/chathead/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c(I)V
    .locals 10
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1469
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v5, v0, -0x1

    .line 1472
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1473
    new-instance v7, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v7}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    move v2, v3

    move v0, v3

    .line 1474
    :goto_0
    if-ge v2, p1, :cond_1

    .line 1476
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    .line 1479
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    if-eqz v1, :cond_0

    .line 1480
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;)I

    move-result v1

    int-to-float v8, v1

    .line 1481
    sub-int v1, v5, v2

    .line 1482
    new-array v9, v4, [F

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(I)F

    move-result v1

    sub-float/2addr v1, v8

    aput v1, v9, v3

    invoke-static {v9}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    .line 1483
    new-instance v9, Lcom/viber/voip/messages/ui/chathead/av;

    invoke-direct {v9, p0, v0, v8, v3}, Lcom/viber/voip/messages/ui/chathead/av;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;FZ)V

    invoke-virtual {v1, v9}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v0, v1

    .line 1490
    :goto_1
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1474
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v4

    goto :goto_0

    .line 1485
    :cond_0
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;)F

    move-result v8

    .line 1486
    sub-int v1, v5, v2

    .line 1487
    new-array v9, v4, [F

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(I)F

    move-result v1

    sub-float/2addr v1, v8

    aput v1, v9, v3

    invoke-static {v9}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    .line 1488
    new-instance v9, Lcom/viber/voip/messages/ui/chathead/aw;

    invoke-direct {v9, p0, v0, v8, v3}, Lcom/viber/voip/messages/ui/chathead/aw;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;FZ)V

    invoke-virtual {v1, v9}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object v0, v1

    goto :goto_1

    .line 1493
    :cond_1
    new-instance v1, Lcom/viber/voip/messages/ui/chathead/q;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/ui/chathead/q;-><init>(Lcom/viber/voip/messages/ui/chathead/d;I)V

    invoke-virtual {v7, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 1508
    if-nez v0, :cond_3

    .line 1509
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->M:Z

    if-eqz v0, :cond_2

    .line 1510
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->u()V

    .line 1513
    :cond_2
    add-int/lit8 v0, p1, -0x1

    if-lez v0, :cond_4

    .line 1514
    add-int/lit8 v0, p1, -0x1

    .line 1518
    :goto_2
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/b;)V

    .line 1520
    :cond_3
    invoke-virtual {v7, v6}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1521
    const-wide/16 v0, 0xfa

    invoke-virtual {v7, v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1522
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1523
    const-wide/16 v0, 0x64

    invoke-virtual {v7, v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setStartDelay(J)V

    .line 1524
    invoke-virtual {v7}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 1525
    return-void

    .line 1516
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private c(II)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const v6, 0x3f4ccccd

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1080
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-direct {p0, v7, v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(ZLcom/viber/voip/messages/ui/chathead/a/a;)V

    .line 1081
    new-array v0, v9, [I

    .line 1082
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1083
    aget v1, v0, v7

    .line 1084
    aget v0, v0, v8

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->e()I

    move-result v2

    sub-int/2addr v0, v2

    .line 1085
    new-instance v2, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1086
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    const-string/jumbo v3, "scaleX"

    new-array v4, v8, [F

    aput v6, v4, v7

    invoke-static {v2, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    .line 1087
    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    const-string/jumbo v4, "scaleY"

    new-array v5, v8, [F

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v3

    .line 1088
    new-array v4, v8, [F

    neg-int v5, v1

    add-int/2addr v5, p1

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v4}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v4

    .line 1089
    new-array v5, v8, [F

    neg-int v6, v0

    add-int/2addr v6, p2

    int-to-float v6, v6

    aput v6, v5, v7

    invoke-static {v5}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v5

    .line 1090
    new-instance v6, Lcom/viber/voip/messages/ui/chathead/as;

    int-to-float v1, v1

    invoke-direct {v6, p0, v1, v10}, Lcom/viber/voip/messages/ui/chathead/as;-><init>(Lcom/viber/voip/messages/ui/chathead/d;FLcom/viber/voip/messages/ui/chathead/e;)V

    invoke-virtual {v4, v6}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1091
    new-instance v1, Lcom/viber/voip/messages/ui/chathead/at;

    int-to-float v0, v0

    invoke-direct {v1, p0, v0, v10}, Lcom/viber/voip/messages/ui/chathead/at;-><init>(Lcom/viber/voip/messages/ui/chathead/d;FLcom/viber/voip/messages/ui/chathead/e;)V

    invoke-virtual {v5, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1093
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v1, Lcom/viber/voip/messages/ui/chathead/j;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/chathead/j;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 1100
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/nineoldandroids/animation/Animator;

    aput-object v4, v1, v7

    aput-object v5, v1, v8

    aput-object v2, v1, v9

    const/4 v2, 0x3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 1101
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1102
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1103
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 1104
    return-void
.end method

.method private c(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 761
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->an:Z

    if-nez v0, :cond_0

    .line 801
    :goto_0
    return-void

    .line 762
    :cond_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->E:Lcom/viber/voip/a/h;

    invoke-virtual {v1}, Lcom/viber/voip/a/h;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 763
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.CLOSE_POPUP_BACKGROUND_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 764
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 765
    iput-boolean v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->an:Z

    .line 766
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 767
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->p()V

    .line 769
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->h()V

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->m:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 772
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 774
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->f:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 775
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->s:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->f:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 777
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 778
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 779
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->s:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 781
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    if-eqz v0, :cond_5

    .line 782
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->s:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 784
    :cond_5
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->k:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_6

    .line 785
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->s:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->k:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 787
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ap:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->removeAllListeners()V

    .line 788
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ao:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->removeAllListeners()V

    .line 789
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aq:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->removeAllListeners()V

    .line 790
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ar:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->removeAllListeners()V

    .line 791
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->as:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->removeAllListeners()V

    .line 792
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ac:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_7

    .line 793
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ac:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->ab:Lcom/viber/voip/messages/ui/chathead/au;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 795
    :cond_7
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aa:Lcom/viber/voip/util/fz;

    invoke-virtual {v0, p0}, Lcom/viber/voip/util/fz;->b(Lcom/viber/voip/util/gf;)V

    .line 796
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/viber/voip/ViberApplication;->notifyActivityOnForeground(ZLjava/lang/String;)V

    .line 797
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerPhoneStateListener()Lcom/viber/jni/dialer/DialerPhoneStateListener;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->aD:Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;

    invoke-virtual {v0, v1}, Lcom/viber/jni/dialer/DialerPhoneStateListener;->removeDelegate(Ljava/lang/Object;)V

    .line 798
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/chathead/d;->a()V

    .line 799
    iput-boolean v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    .line 800
    iput-boolean v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->M:Z

    goto/16 :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/chathead/d;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/chathead/d;->d(I)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 2439
    const/4 v0, 0x3

    const-string/jumbo v1, "ChatHeadsController"

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 2440
    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/chathead/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->R:Z

    return p1
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/chathead/d;F)F
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->K:F

    return p1
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/chathead/d;)I
    .locals 1
    .parameter

    .prologue
    .line 98
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->B:I

    return v0
.end method

.method private d(I)V
    .locals 2
    .parameter

    .prologue
    .line 2776
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2777
    if-eqz p1, :cond_1

    .line 2778
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->r()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setShowBadge(Z)V

    .line 2779
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->r()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-static {p1}, Lcom/viber/voip/messages/j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setMessagesCount(Ljava/lang/String;)V

    .line 2784
    :cond_0
    :goto_0
    return-void

    .line 2781
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->r()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setShowBadge(Z)V

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 1708
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1709
    const-string/jumbo v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1710
    const-string/jumbo v1, "com.viber.voip.action.POPUP_SERVICE_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1711
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1712
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1713
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1714
    const-string/jumbo v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1715
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1716
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1717
    return-void
.end method

.method private d()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 385
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 386
    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->g:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onGlobalLayout: xPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " yPos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/d;->c(Ljava/lang/String;)V

    .line 388
    aget v3, v2, v1

    if-nez v3, :cond_0

    .line 391
    :goto_0
    return v1

    :cond_0
    aget v2, v2, v0

    if-nez v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/chathead/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->N:Z

    return p1
.end method

.method private e()I
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->s:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->y:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 620
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->y:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/chathead/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->af:Z

    return v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/chathead/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    return p1
.end method

.method private f()I
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->s:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->y:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 625
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->y:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic f(Lcom/viber/voip/messages/ui/chathead/d;)I
    .locals 1
    .parameter

    .prologue
    .line 98
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    return v0
.end method

.method static synthetic f(Lcom/viber/voip/messages/ui/chathead/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->ay:Z

    return p1
.end method

.method private g()V
    .locals 1

    .prologue
    .line 1161
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/chathead/d;->a(Z)V

    .line 1162
    return-void
.end method

.method static synthetic g(Lcom/viber/voip/messages/ui/chathead/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->an:Z

    return v0
.end method

.method static synthetic g(Lcom/viber/voip/messages/ui/chathead/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->W:Z

    return p1
.end method

.method private h()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1165
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->an:Z

    if-nez v0, :cond_0

    .line 1237
    :goto_0
    return-void

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1168
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1171
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    const-class v2, Lcom/viber/voip/messages/ui/chathead/ChatHeadBackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1172
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1173
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1174
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1175
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1176
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/util/gl;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1177
    iput-boolean v11, p0, Lcom/viber/voip/messages/ui/chathead/d;->ay:Z

    goto :goto_0

    .line 1180
    :cond_2
    iput-boolean v11, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    .line 1181
    iput-boolean v10, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    .line 1182
    iput-boolean v10, p0, Lcom/viber/voip/messages/ui/chathead/d;->T:Z

    .line 1183
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->i()V

    .line 1184
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->r()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    .line 1185
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v10}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1186
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->f:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1187
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ar:Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1189
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1190
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    .line 1191
    iget-boolean v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->M:Z

    if-nez v2, :cond_3

    .line 1192
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    iget-object v6, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v6, v6, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    invoke-static {v2, v3}, Lcom/nineoldandroids/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 1193
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    iget-object v6, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v6, v6, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    invoke-static {v2, v3}, Lcom/nineoldandroids/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 1195
    :cond_3
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;)I

    move-result v2

    int-to-float v6, v2

    .line 1196
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;)F

    move-result v7

    .line 1199
    iget-boolean v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    if-eqz v2, :cond_4

    .line 1200
    new-array v2, v11, [F

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(I)F

    move-result v3

    sub-float/2addr v3, v6

    aput v3, v2, v10

    invoke-static {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    .line 1201
    new-array v2, v11, [F

    iget-object v8, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v8, v8, Lcom/viber/voip/messages/ui/chathead/c;->c:I

    int-to-float v8, v8

    sub-float/2addr v8, v7

    aput v8, v2, v10

    invoke-static {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v2

    .line 1211
    :goto_2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1213
    new-instance v8, Lcom/viber/voip/messages/ui/chathead/av;

    invoke-direct {v8, p0, v0, v6, v10}, Lcom/viber/voip/messages/ui/chathead/av;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;FZ)V

    invoke-virtual {v3, v8}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1214
    new-instance v3, Lcom/viber/voip/messages/ui/chathead/aw;

    invoke-direct {v3, p0, v0, v7, v10}, Lcom/viber/voip/messages/ui/chathead/aw;-><init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/b;FZ)V

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1215
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    .line 1216
    goto :goto_1

    .line 1203
    :cond_4
    iget-boolean v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->af:Z

    if-eqz v2, :cond_5

    .line 1204
    new-array v2, v11, [F

    iget v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget v8, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v9, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v9, v9, Lcom/viber/voip/messages/ui/chathead/c;->w:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v3, v8

    iget-object v8, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v8, v8, Lcom/viber/voip/messages/ui/chathead/c;->a:I

    add-int/2addr v3, v8

    iget-object v8, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v8, v8, Lcom/viber/voip/messages/ui/chathead/c;->e:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    iget-object v8, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v8, v8, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    sub-float/2addr v3, v8

    sub-float/2addr v3, v6

    aput v3, v2, v10

    invoke-static {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v2

    .line 1209
    :goto_3
    new-array v3, v11, [F

    invoke-direct {p0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(I)F

    move-result v8

    sub-float/2addr v8, v7

    aput v8, v3, v10

    invoke-static {v3}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v3

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    goto :goto_2

    .line 1207
    :cond_5
    new-array v2, v11, [F

    iget v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v8, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v8, v8, Lcom/viber/voip/messages/ui/chathead/c;->e:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    iget-object v8, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v8, v8, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    sub-float/2addr v3, v8

    sub-float/2addr v3, v6

    aput v3, v2, v10

    invoke-static {v2}, Lcom/nineoldandroids/animation/ValueAnimator;->ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v2

    goto :goto_3

    .line 1217
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ar:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v1, Lcom/viber/voip/messages/ui/chathead/l;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/chathead/l;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 1233
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ar:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0, v4}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1234
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ar:Lcom/nineoldandroids/animation/AnimatorSet;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 1235
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ar:Lcom/nineoldandroids/animation/AnimatorSet;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    const/high16 v2, 0x3f80

    invoke-direct {v1, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1236
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ar:Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method static synthetic h(Lcom/viber/voip/messages/ui/chathead/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->O:Z

    return v0
.end method

.method static synthetic h(Lcom/viber/voip/messages/ui/chathead/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    return p1
.end method

.method static synthetic i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 1244
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    int-to-float v0, v0

    .line 1245
    :goto_0
    const/high16 v1, 0x43a0

    invoke-static {v1}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->S:Z

    .line 1246
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->S:Z

    if-eqz v0, :cond_3

    .line 1247
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->e:I

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->D:F

    .line 1248
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    if-eqz v0, :cond_2

    .line 1249
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->g:I

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->C:F

    .line 1257
    :goto_2
    return-void

    .line 1244
    :cond_0
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->A:I

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->B:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0

    .line 1245
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1251
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->g:I

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->C:F

    goto :goto_2

    .line 1254
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->f:I

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->D:F

    .line 1255
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v0, v0, Lcom/viber/voip/messages/ui/chathead/c;->h:I

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->C:F

    goto :goto_2
.end method

.method static synthetic i(Lcom/viber/voip/messages/ui/chathead/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->Q:Z

    return p1
.end method

.method static synthetic j(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 1260
    const/16 v0, 0x2bc

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/chathead/d;->b(I)V

    .line 1261
    return-void
.end method

.method static synthetic j(Lcom/viber/voip/messages/ui/chathead/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/chathead/d;->T:Z

    return p1
.end method

.method static synthetic k(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->am:Landroid/content/Context;

    return-object v0
.end method

.method private k()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1722
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    .line 1723
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1724
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->s:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1725
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    .line 1726
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->A:I

    .line 1732
    :goto_0
    return-void

    .line 1728
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->s:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1729
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->A:I

    .line 1730
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    goto :goto_0
.end method

.method static synthetic k(Lcom/viber/voip/messages/ui/chathead/d;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Z)V

    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2002
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2003
    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    .line 2005
    :cond_0
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 2006
    iput v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    .line 2009
    :cond_1
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    if-eqz v0, :cond_5

    .line 2010
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->f()I

    move-result v0

    .line 2011
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 2012
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    .line 2014
    :cond_2
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    if-eqz v0, :cond_4

    .line 2015
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->e()I

    move-result v0

    .line 2019
    :goto_0
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->A:I

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 2020
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->A:I

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    .line 2032
    :cond_3
    :goto_1
    return-void

    .line 2017
    :cond_4
    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->B:I

    goto :goto_0

    .line 2023
    :cond_5
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->f()I

    move-result v0

    .line 2024
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    .line 2025
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->F:F

    .line 2027
    :cond_6
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->e()I

    move-result v0

    .line 2028
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    iget v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->A:I

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 2029
    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->A:I

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->G:F

    goto :goto_1
.end method

.method static synthetic l(Lcom/viber/voip/messages/ui/chathead/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->T:Z

    return v0
.end method

.method private m()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2314
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    move v1, v2

    .line 2315
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 2316
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/chathead/a/a;->setShowBadge(Z)V

    .line 2315
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2319
    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/viber/voip/messages/ui/chathead/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->d()Z

    move-result v0

    return v0
.end method

.method private n()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2322
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 2323
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/chathead/a/a;->setShowBadge(Z)V

    .line 2322
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 2325
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->aa:Lcom/viber/voip/util/fz;

    invoke-virtual {v0}, Lcom/viber/voip/util/fz;->g()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/chathead/d;->d(I)V

    .line 2327
    return-void
.end method

.method static synthetic n(Lcom/viber/voip/messages/ui/chathead/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->P:Z

    return v0
.end method

.method static synthetic o(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->f:Landroid/view/View;

    return-object v0
.end method

.method private o()V
    .locals 4

    .prologue
    .line 2331
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    const-string/jumbo v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 2332
    new-instance v1, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v1}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 2333
    new-instance v2, Lcom/viber/voip/messages/ui/chathead/z;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/ui/chathead/z;-><init>(Lcom/viber/voip/messages/ui/chathead/d;)V

    invoke-virtual {v1, v2}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    .line 2341
    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->play(Lcom/nineoldandroids/animation/Animator;)Lcom/nineoldandroids/animation/AnimatorSet$Builder;

    .line 2342
    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 2343
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2344
    invoke-virtual {v1}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    .line 2345
    return-void

    .line 2331
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic p(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ag:Landroid/widget/TextView;

    return-object v0
.end method

.method private p()Lcom/viber/voip/messages/ui/chathead/a/a;
    .locals 2

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    return-object v0
.end method

.method private q()Lcom/viber/voip/messages/ui/chathead/a/a;
    .locals 2

    .prologue
    .line 2352
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic q(Lcom/viber/voip/messages/ui/chathead/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->U:Z

    return v0
.end method

.method private r()Lcom/viber/voip/messages/ui/chathead/a/a;
    .locals 2

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic r(Lcom/viber/voip/messages/ui/chathead/d;)Z
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->R:Z

    return v0
.end method

.method static synthetic s(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->r:Landroid/os/Handler;

    return-object v0
.end method

.method private s()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2360
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2361
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    .line 2363
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2365
    if-eqz v2, :cond_1

    .line 2367
    :try_start_0
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2368
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;)I

    move-result v1

    .line 2369
    if-gez v1, :cond_2

    .line 2370
    :goto_0
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->t:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    invoke-static {v1, v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2372
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2386
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->r:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->aw:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2387
    return-void

    :cond_2
    move v0, v1

    .line 2369
    goto :goto_0

    .line 2375
    :catch_0
    move-exception v0

    .line 2377
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->t()V

    goto :goto_1

    .line 2378
    :catch_1
    move-exception v0

    .line 2380
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->t()V

    goto :goto_1

    .line 2381
    :catch_2
    move-exception v0

    .line 2383
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->t()V

    goto :goto_1
.end method

.method static synthetic t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    return-object v0
.end method

.method private t()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2390
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2391
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->q()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2392
    if-eqz v0, :cond_0

    .line 2393
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v1, v1, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    invoke-static {v0, v3, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2394
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->h:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-virtual {v1, v0}, Lcom/viber/voip/messages/ui/chathead/a/a;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2397
    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->u:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method private u()V
    .locals 12

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 2400
    iput-boolean v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->M:Z

    .line 2401
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    if-eqz v0, :cond_1

    .line 2402
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 2403
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "openPopupWindow: content view parent is not null,view attached type is: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->c(Ljava/lang/String;)V

    .line 2405
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2406
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2407
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v2}, Lcom/viber/voip/messages/ui/chathead/a/l;->b()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/messages/ui/chathead/a/l;->setContentView(Landroid/view/View;)V

    .line 2409
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->f:Landroid/view/View;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->a:I

    invoke-virtual {v0, v2, v1, v4}, Lcom/viber/voip/messages/ui/chathead/a/l;->showAsDropDown(Landroid/view/View;II)V

    .line 2413
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->d()V

    .line 2414
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/a/l;->e()V

    .line 2415
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->Z:Z

    if-eqz v0, :cond_2

    .line 2416
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->a:I

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/ui/chathead/a/l;->update(IIIIZ)V

    .line 2425
    :goto_1
    return-void

    .line 2411
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->f:Landroid/view/View;

    invoke-virtual {v0, v2, v1, v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->showAsDropDown(Landroid/view/View;II)V

    goto :goto_0

    .line 2418
    :cond_2
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->af:Z

    if-eqz v0, :cond_3

    .line 2419
    iget-object v6, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->w:I

    sub-int/2addr v0, v2

    div-int/lit8 v7, v0, 0x2

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v9, v0, Lcom/viber/voip/messages/ui/chathead/c;->w:I

    move v8, v1

    move v10, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/viber/voip/messages/ui/chathead/a/l;->update(IIIIZ)V

    goto :goto_1

    .line 2422
    :cond_3
    iget-object v6, p0, Lcom/viber/voip/messages/ui/chathead/d;->l:Lcom/viber/voip/messages/ui/chathead/a/l;

    iget v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->z:I

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/d;->e:Lcom/viber/voip/messages/ui/chathead/c;

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->a:I

    sub-int v9, v0, v2

    move v7, v1

    move v8, v1

    move v10, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/viber/voip/messages/ui/chathead/a/l;->update(IIIIZ)V

    goto :goto_1
.end method

.method static synthetic v(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->m:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private v()Z
    .locals 1

    .prologue
    .line 2767
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->al:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2768
    const/4 v0, 0x1

    .line 2770
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic w(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/bb;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->q:Lcom/viber/voip/messages/ui/bb;

    return-object v0
.end method

.method static synthetic x(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->r()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic y(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic z(Lcom/viber/voip/messages/ui/chathead/d;)I
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/chathead/d;->e()I

    move-result v0

    return v0
.end method


# virtual methods
.method public varargs a(ILandroid/content/Context;II[Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 963
    array-length v0, p5

    if-ne v0, v1, :cond_0

    .line 964
    const/4 v0, 0x0

    aget-object v0, p5, v0

    const v1, 0x7f0202ca

    invoke-virtual {p0, p2, v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 968
    :goto_0
    return-object v0

    .line 965
    :cond_0
    array-length v0, p5

    if-le v0, v1, :cond_1

    move-object v0, p0

    move-object v1, p2

    move v2, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 966
    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/content/Context;III[Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 968
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;IIIJLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 943
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v1

    .line 945
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 946
    invoke-virtual {v1, p5, p6}, Lcom/viber/voip/messages/controller/c/as;->i(J)Ljava/util/List;

    move-result-object v0

    .line 947
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 948
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;

    .line 949
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantEntityImpl;->getParticipantInfoId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 951
    :cond_0
    const-string/jumbo v0, "participant_type ASC, display_name ASC, number ASC"

    invoke-virtual {v1, v3, v0}, Lcom/viber/voip/messages/controller/c/as;->a(Ljava/util/Set;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 952
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    .line 953
    if-eqz p7, :cond_2

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v3

    invoke-virtual {p7}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 954
    :cond_2
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 958
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/net/Uri;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/net/Uri;

    move-object v0, p0

    move v1, p2

    move-object v2, p1

    move v3, p3

    move v4, p4

    .line 959
    invoke-virtual/range {v0 .. v5}, Lcom/viber/voip/messages/ui/chathead/d;->a(ILandroid/content/Context;II[Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;III[Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 973
    move-object/from16 v0, p5

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 974
    const/4 v1, 0x0

    aget-object v1, p5, v1

    const v2, 0x7f0202c5

    invoke-virtual {p0, p1, v1, v2}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 975
    const/4 v1, 0x1

    aget-object v1, p5, v1

    const v2, 0x7f0202c5

    invoke-virtual {p0, p1, v1, v2}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 976
    const/4 v2, 0x0

    .line 977
    const/4 v1, 0x0

    .line 990
    :goto_0
    const/high16 v5, 0x4000

    invoke-static {v5}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v5

    .line 991
    const/high16 v6, 0x3f80

    invoke-static {v6}, Lcom/viber/voip/messages/extras/image/h;->a(F)I

    move-result v6

    .line 992
    add-int v7, p3, v5

    add-int v8, p4, v5

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 993
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 994
    if-eqz p2, :cond_0

    .line 995
    invoke-virtual {v8, p2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 998
    :cond_0
    if-nez v2, :cond_3

    if-nez v1, :cond_3

    .line 999
    const/4 v9, 0x1

    move/from16 v0, p4

    invoke-static {v4, p3, v0, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1000
    div-int/lit8 v9, p3, 0x4

    add-int/2addr v9, v6

    const/4 v10, 0x0

    div-int/lit8 v11, p3, 0x2

    add-int/2addr v11, v6

    move/from16 v0, p4

    invoke-static {v4, v9, v10, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1001
    const/4 v9, 0x1

    move/from16 v0, p4

    invoke-static {v3, p3, v0, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1002
    div-int/lit8 v9, p3, 0x4

    add-int/2addr v9, v6

    const/4 v10, 0x0

    div-int/lit8 v11, p3, 0x2

    add-int/2addr v6, v11

    move/from16 v0, p4

    invoke-static {v3, v9, v10, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1015
    :goto_1
    if-nez v2, :cond_5

    if-nez v1, :cond_5

    .line 1016
    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v6, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v4, v1, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1017
    div-int/lit8 v1, p3, 0x2

    add-int/2addr v1, v5

    int-to-float v1, v1

    const/4 v2, 0x0

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v3, v1, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1028
    :goto_2
    return-object v7

    .line 978
    :cond_1
    move-object/from16 v0, p5

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 979
    const/4 v1, 0x0

    aget-object v1, p5, v1

    const v2, 0x7f0202c5

    invoke-virtual {p0, p1, v1, v2}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 980
    const/4 v1, 0x1

    aget-object v1, p5, v1

    const v2, 0x7f0202c9

    invoke-virtual {p0, p1, v1, v2}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 981
    const/4 v1, 0x2

    aget-object v1, p5, v1

    const v2, 0x7f0202c8

    invoke-virtual {p0, p1, v1, v2}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 982
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 984
    :cond_2
    const/4 v1, 0x0

    aget-object v1, p5, v1

    const v2, 0x7f0202c7

    invoke-virtual {p0, p1, v1, v2}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 985
    const/4 v1, 0x1

    aget-object v1, p5, v1

    const v2, 0x7f0202c6

    invoke-virtual {p0, p1, v1, v2}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 986
    const/4 v1, 0x2

    aget-object v1, p5, v1

    const v2, 0x7f0202c9

    invoke-virtual {p0, p1, v1, v2}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 987
    const/4 v1, 0x3

    aget-object v1, p5, v1

    const v5, 0x7f0202c8

    invoke-virtual {p0, p1, v1, v5}, Lcom/viber/voip/messages/ui/chathead/d;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    .line 1003
    :cond_3
    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    .line 1004
    const/4 v9, 0x1

    move/from16 v0, p4

    invoke-static {v4, p3, v0, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1005
    div-int/lit8 v9, p3, 0x4

    add-int/2addr v9, v6

    const/4 v10, 0x0

    div-int/lit8 v11, p3, 0x2

    add-int/2addr v11, v6

    move/from16 v0, p4

    invoke-static {v4, v9, v10, v11, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1006
    div-int/lit8 v9, p3, 0x2

    add-int/2addr v9, v6

    div-int/lit8 v10, p4, 0x2

    add-int/2addr v10, v6

    const/4 v11, 0x1

    invoke-static {v3, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1007
    div-int/lit8 v9, p3, 0x2

    add-int/2addr v9, v6

    div-int/lit8 v10, p4, 0x2

    add-int/2addr v6, v10

    const/4 v10, 0x1

    invoke-static {v2, v9, v6, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_1

    .line 1009
    :cond_4
    div-int/lit8 v9, p3, 0x2

    add-int/2addr v9, v6

    div-int/lit8 v10, p4, 0x2

    add-int/2addr v10, v6

    const/4 v11, 0x1

    invoke-static {v4, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1010
    div-int/lit8 v9, p3, 0x2

    add-int/2addr v9, v6

    div-int/lit8 v10, p4, 0x2

    add-int/2addr v10, v6

    const/4 v11, 0x1

    invoke-static {v3, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1011
    div-int/lit8 v9, p3, 0x2

    add-int/2addr v9, v6

    div-int/lit8 v10, p4, 0x2

    add-int/2addr v10, v6

    const/4 v11, 0x1

    invoke-static {v2, v9, v10, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1012
    div-int/lit8 v9, p3, 0x2

    add-int/2addr v9, v6

    div-int/lit8 v10, p4, 0x2

    add-int/2addr v6, v10

    const/4 v10, 0x1

    invoke-static {v1, v9, v6, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_1

    .line 1018
    :cond_5
    if-eqz v2, :cond_6

    if-nez v1, :cond_6

    .line 1019
    const/4 v1, 0x0

    const/4 v6, 0x0

    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v4, v1, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1020
    div-int/lit8 v1, p3, 0x2

    add-int/2addr v1, v5

    int-to-float v1, v1

    const/4 v4, 0x0

    new-instance v6, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v3, v1, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1021
    div-int/lit8 v1, p3, 0x2

    add-int/2addr v1, v5

    int-to-float v1, v1

    div-int/lit8 v3, p4, 0x2

    add-int/2addr v3, v5

    int-to-float v3, v3

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 1023
    :cond_6
    const/4 v6, 0x0

    const/4 v9, 0x0

    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v4, v6, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1024
    div-int/lit8 v4, p3, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v6, 0x0

    new-instance v9, Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v3, v4, v6, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1025
    const/4 v3, 0x0

    div-int/lit8 v4, p4, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    new-instance v6, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v6, v9}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v2, v3, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1026
    div-int/lit8 v2, p3, 0x2

    add-int/2addr v2, v5

    int-to-float v2, v2

    div-int/lit8 v3, p4, 0x2

    add-int/2addr v3, v5

    int-to-float v3, v3

    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v8, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_2
.end method

.method public a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getBitmapFromUri photoUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->c(Ljava/lang/String;)V

    .line 1034
    if-nez p2, :cond_1

    if-gtz p3, :cond_1

    .line 1035
    const/4 v0, 0x0

    .line 1041
    :cond_0
    :goto_0
    return-object v0

    .line 1038
    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 1040
    :cond_2
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1041
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 2598
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ae:Lcom/viber/voip/messages/controller/cx;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->aB:Lcom/viber/voip/messages/controller/df;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->b(Lcom/viber/voip/messages/controller/de;)V

    .line 2599
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ae:Lcom/viber/voip/messages/controller/cx;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->aA:Lcom/viber/voip/messages/controller/db;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->b(Lcom/viber/voip/messages/controller/da;)V

    .line 2600
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ae:Lcom/viber/voip/messages/controller/cx;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->aC:Lcom/viber/voip/messages/controller/dh;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->b(Lcom/viber/voip/messages/controller/dg;)V

    .line 2601
    return-void
.end method

.method public a(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2753
    sget-object v0, Lcom/viber/voip/messages/ui/chathead/d;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBadgeValueChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    if-nez p1, :cond_0

    .line 2755
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->r:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/ui/chathead/ak;

    invoke-direct {v1, p0, p2}, Lcom/viber/voip/messages/ui/chathead/ak;-><init>(Lcom/viber/voip/messages/ui/chathead/d;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2764
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 2604
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ae:Lcom/viber/voip/messages/controller/cx;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->aB:Lcom/viber/voip/messages/controller/df;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->a(Lcom/viber/voip/messages/controller/de;)V

    .line 2605
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ae:Lcom/viber/voip/messages/controller/cx;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->aC:Lcom/viber/voip/messages/controller/dh;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->a(Lcom/viber/voip/messages/controller/dg;)V

    .line 2606
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/d;->ae:Lcom/viber/voip/messages/controller/cx;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/d;->aA:Lcom/viber/voip/messages/controller/db;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/cx;->a(Lcom/viber/voip/messages/controller/da;)V

    .line 2607
    return-void
.end method
