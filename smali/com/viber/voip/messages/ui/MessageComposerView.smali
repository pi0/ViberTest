.class public Lcom/viber/voip/messages/ui/MessageComposerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/bj;
.implements Lcom/viber/voip/messages/ui/p;
.implements Lcom/viber/voip/messages/ui/u;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Lcom/viber/voip/messages/i;

.field private B:Lcom/viber/voip/a/m;

.field private C:I

.field private D:Ljava/lang/String;

.field private E:Lcom/viber/voip/messages/conversation/h;

.field private F:Lcom/viber/voip/messages/conversation/ai;

.field private G:Lcom/viber/voip/messages/conversation/ao;

.field private H:Lcom/viber/voip/sound/ISoundService;

.field private I:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

.field private J:Landroid/view/inputmethod/InputMethodManager;

.field private K:Landroid/text/TextWatcher;

.field private final L:Ljava/lang/Runnable;

.field private M:Lcom/viber/voip/messages/ui/cz;

.field private N:Lcom/viber/voip/messages/ui/cy;

.field private O:Lcom/viber/voip/messages/ui/da;

.field private P:Lcom/viber/voip/messages/ui/cv;

.field private final b:[I

.field private c:Lcom/viber/voip/messages/ui/cw;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Lcom/viber/voip/messages/d;

.field private i:Landroid/os/Handler;

.field private j:Ljava/lang/String;

.field private k:Landroid/location/LocationManager;

.field private l:Z

.field private m:Landroid/view/View;

.field private n:Lcom/viber/voip/messages/LocationEditText;

.field private o:Lcom/viber/voip/widget/RadioButton;

.field private p:Lcom/viber/voip/widget/RadioButton;

.field private q:Lcom/viber/voip/widget/RadioButton;

.field private r:Landroid/widget/ImageButton;

.field private s:Landroid/widget/TextView;

.field private t:Ljava/lang/Runnable;

.field private u:Lcom/viber/voip/messages/ui/bb;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Landroid/graphics/drawable/AnimationDrawable;

.field private z:Lcom/viber/voip/ViberApplication;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const-class v0, Lcom/viber/voip/messages/ui/MessageComposerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/ui/MessageComposerView;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 111
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f060019

    aput v1, v0, v2

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->b:[I

    .line 128
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->l:Z

    .line 145
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->v:Z

    .line 173
    sget-object v0, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->B:Lcom/viber/voip/a/m;

    .line 568
    new-instance v0, Lcom/viber/voip/messages/ui/bw;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/bw;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->K:Landroid/text/TextWatcher;

    .line 649
    new-instance v0, Lcom/viber/voip/messages/ui/bx;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/bx;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->L:Ljava/lang/Runnable;

    .line 156
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Landroid/content/Context;)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 166
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 111
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f060019

    aput v1, v0, v2

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->b:[I

    .line 128
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->l:Z

    .line 145
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->v:Z

    .line 173
    sget-object v0, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->B:Lcom/viber/voip/a/m;

    .line 568
    new-instance v0, Lcom/viber/voip/messages/ui/bw;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/bw;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->K:Landroid/text/TextWatcher;

    .line 649
    new-instance v0, Lcom/viber/voip/messages/ui/bx;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/bx;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->L:Ljava/lang/Runnable;

    .line 167
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 111
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f060019

    aput v1, v0, v2

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->b:[I

    .line 128
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->l:Z

    .line 145
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->v:Z

    .line 173
    sget-object v0, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->B:Lcom/viber/voip/a/m;

    .line 568
    new-instance v0, Lcom/viber/voip/messages/ui/bw;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/bw;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->K:Landroid/text/TextWatcher;

    .line 649
    new-instance v0, Lcom/viber/voip/messages/ui/bx;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/bx;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->L:Ljava/lang/Runnable;

    .line 162
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Landroid/content/Context;)V

    .line 163
    return-void
.end method

.method static synthetic A(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/conversation/ao;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->G:Lcom/viber/voip/messages/conversation/ao;

    return-object v0
.end method

.method static synthetic B(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/i;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->A:Lcom/viber/voip/messages/i;

    return-object v0
.end method

.method static synthetic C(Lcom/viber/voip/messages/ui/MessageComposerView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic D(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic E(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->o:Lcom/viber/voip/widget/RadioButton;

    return-object v0
.end method

.method static synthetic F(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/ui/da;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->O:Lcom/viber/voip/messages/ui/da;

    return-object v0
.end method

.method static synthetic G(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->J:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic H(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/ui/cz;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->M:Lcom/viber/voip/messages/ui/cz;

    return-object v0
.end method

.method static synthetic I(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/ui/cy;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->N:Lcom/viber/voip/messages/ui/cy;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/MessageComposerView;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->y:Landroid/graphics/drawable/AnimationDrawable;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/MessageComposerView;Lcom/viber/voip/sound/ISoundService;)Lcom/viber/voip/sound/ISoundService;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->H:Lcom/viber/voip/sound/ISoundService;

    return-object p1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/MessageComposerView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 549
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->at()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->au()Z

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 552
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->H:Lcom/viber/voip/sound/ISoundService;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->H:Lcom/viber/voip/sound/ISoundService;

    move v1, p1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/sound/ISoundService;->playSample(IFFIIF)V

    .line 554
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 267
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->g:Landroid/content/Context;

    .line 268
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->J:Landroid/view/inputmethod/InputMethodManager;

    .line 270
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->C:I

    .line 272
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 273
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->z:Lcom/viber/voip/ViberApplication;

    .line 274
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->z:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->A:Lcom/viber/voip/messages/i;

    .line 276
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->z:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/cg;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/cg;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->addReadyListener(Lcom/viber/jni/PhoneControllerReadyListener;)V

    .line 286
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->i:Landroid/os/Handler;

    .line 287
    invoke-virtual {p0, v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->setOrientation(I)V

    .line 288
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 289
    const v1, 0x7f0300d4

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->m:Landroid/view/View;

    .line 291
    const v0, 0x7f0702dd

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->r:Landroid/widget/ImageButton;

    .line 292
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->r:Landroid/widget/ImageButton;

    new-instance v1, Lcom/viber/voip/messages/ui/cm;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/cm;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    const v0, 0x7f0702d9

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/RadioButton;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->o:Lcom/viber/voip/widget/RadioButton;

    .line 304
    const v0, 0x7f0702da

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/RadioButton;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->p:Lcom/viber/voip/widget/RadioButton;

    .line 305
    const v0, 0x7f0702de

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/RadioButton;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->q:Lcom/viber/voip/widget/RadioButton;

    .line 307
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->q:Lcom/viber/voip/widget/RadioButton;

    invoke-virtual {v0, v2}, Lcom/viber/voip/widget/RadioButton;->setEnabled(Z)V

    .line 309
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->q:Lcom/viber/voip/widget/RadioButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/RadioButton;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->r:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 313
    :cond_1
    new-instance v0, Lcom/viber/voip/messages/ui/cv;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/messages/ui/cv;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;Lcom/viber/voip/messages/ui/bs;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->P:Lcom/viber/voip/messages/ui/cv;

    .line 314
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->o:Lcom/viber/voip/widget/RadioButton;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->P:Lcom/viber/voip/messages/ui/cv;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->p:Lcom/viber/voip/widget/RadioButton;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->P:Lcom/viber/voip/messages/ui/cv;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->q:Lcom/viber/voip/widget/RadioButton;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->P:Lcom/viber/voip/messages/ui/cv;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    const v0, 0x7f0702db

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/LocationEditText;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    .line 319
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    new-instance v1, Lcom/viber/voip/messages/ui/bg;

    invoke-static {}, Lcom/viber/voip/messages/ui/bd;->a()Lcom/viber/voip/messages/ui/bd;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->B:Lcom/viber/voip/a/m;

    invoke-direct {v1, v2, v3, v4}, Lcom/viber/voip/messages/ui/bg;-><init>(Lcom/viber/voip/messages/ui/bd;Landroid/widget/EditText;Lcom/viber/voip/a/m;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/LocationEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 321
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 322
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->L:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 324
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    new-instance v1, Lcom/viber/voip/messages/ui/cn;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/cn;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/LocationEditText;->setOnInterfaceLocationClickListener(Lcom/viber/voip/messages/b;)V

    .line 330
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->K:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/LocationEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 332
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    new-instance v1, Landroid/text/method/TextKeyListener;

    sget-object v2, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/text/method/TextKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/LocationEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 333
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    new-instance v1, Lcom/viber/voip/messages/ui/co;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/co;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/LocationEditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/LocationEditText;->setRightImageResource(I)V

    .line 340
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 341
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->k:Landroid/location/LocationManager;

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "swiftkey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->v:Z

    .line 344
    new-instance v0, Lcom/viber/voip/messages/ui/bb;

    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->v:Z

    invoke-direct {v0, p1, v1}, Lcom/viber/voip/messages/ui/bb;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->u:Lcom/viber/voip/messages/ui/bb;

    .line 346
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/MessageComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->k()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/MessageComposerView;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/MessageComposerView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->d:Z

    return p1
.end method

.method private b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 2
    .parameter

    .prologue
    .line 797
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->G:Lcom/viber/voip/messages/conversation/ao;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->i:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/ui/cc;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/ui/cc;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 808
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/MessageComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->q()V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/MessageComposerView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/ViberApplication;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->z:Lcom/viber/voip/ViberApplication;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-static {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/MessageComposerView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->e:Z

    return p1
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 732
    .line 733
    sget-object v0, Lcom/viber/voip/messages/ui/bb;->a:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 734
    invoke-static {}, Lcom/viber/voip/messages/ui/bd;->a()Lcom/viber/voip/messages/ui/bd;

    move-result-object v1

    .line 735
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 736
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 737
    invoke-virtual {v1, v2}, Lcom/viber/voip/messages/ui/bd;->b(Ljava/lang/String;)Lcom/viber/voip/messages/ui/bf;

    move-result-object v3

    .line 738
    if-eqz v2, :cond_0

    .line 739
    invoke-virtual {v3}, Lcom/viber/voip/messages/ui/bf;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 742
    :cond_1
    return-object p1
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/MessageComposerView;)[I
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->b:[I

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/sound/ISoundService;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->H:Lcom/viber/voip/sound/ISoundService;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 1077
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/messages/ui/MessageComposerView;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 1078
    return-void
.end method

.method static synthetic f(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/a/m;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->B:Lcom/viber/voip/a/m;

    return-object v0
.end method

.method static synthetic g(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/LocationEditText;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    return-object v0
.end method

.method public static h()V
    .locals 3

    .prologue
    .line 1165
    const-string/jumbo v0, "setShowStickerMenuAnimation"

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->e(Ljava/lang/String;)V

    .line 1166
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->az()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 1167
    return-void
.end method

.method static synthetic h(Lcom/viber/voip/messages/ui/MessageComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->n()V

    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 349
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/settings/j;->az()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStickerButtonAnimation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->e(Ljava/lang/String;)V

    .line 351
    if-ge v0, v3, :cond_0

    .line 352
    add-int/lit8 v0, v0, 0x1

    .line 353
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/settings/j;->az()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 355
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->p:Lcom/viber/voip/widget/RadioButton;

    new-instance v1, Lcom/viber/voip/messages/ui/cp;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/cp;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    invoke-static {v0, v1}, Lcom/viber/voip/user/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->p:Lcom/viber/voip/widget/RadioButton;

    const v1, 0x7f02022b

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/RadioButton;->setButtonDrawable(I)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/viber/voip/messages/ui/MessageComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->p()V

    return-void
.end method

.method static synthetic j(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/ui/cw;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->c:Lcom/viber/voip/messages/ui/cw;

    return-object v0
.end method

.method private j()Z
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v0}, Lcom/viber/voip/messages/LocationEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic k(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->p:Lcom/viber/voip/widget/RadioButton;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->k()Ljava/lang/String;

    move-result-object v0

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->D:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 425
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->D:Ljava/lang/String;

    .line 426
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->D:Ljava/lang/String;

    .line 429
    :cond_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->setMessageDraft(Ljava/lang/String;)V

    .line 431
    :cond_1
    return-void

    .line 423
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method static synthetic l(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->y:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private l()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 557
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->H:Lcom/viber/voip/sound/ISoundService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->H:Lcom/viber/voip/sound/ISoundService;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->H:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v2}, Lcom/viber/voip/sound/ISoundService;->stream_Notification()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/viber/voip/sound/ISoundService;->getStreamVolume(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic m(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/d;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->h:Lcom/viber/voip/messages/d;

    return-object v0
.end method

.method private m()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 665
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    if-nez v0, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    .line 669
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->j:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->x:Z

    if-nez v1, :cond_2

    .line 671
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/viber/jni/PhoneControllerWrapper;->handleUserIsTyping(Ljava/lang/String;Z)Z

    goto :goto_0

    .line 672
    :cond_2
    if-eqz v0, :cond_0

    .line 674
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/jni/PhoneControllerWrapper;->handleGroupUserIsTyping(JZ)Z

    goto :goto_0
.end method

.method static synthetic n(Lcom/viber/voip/messages/ui/MessageComposerView;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->v:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v0}, Lcom/viber/voip/messages/LocationEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 688
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    .line 693
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 694
    new-instance v1, Lcom/viber/voip/messages/ui/by;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/messages/ui/by;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Ljava/lang/Runnable;)V

    .line 712
    :cond_0
    return-void

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v0}, Lcom/viber/voip/messages/LocationEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic o(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->g:Landroid/content/Context;

    return-object v0
.end method

.method private o()V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v0}, Lcom/viber/voip/messages/LocationEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 891
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 892
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->setMessageEditText(Ljava/lang/String;)V

    .line 894
    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private p()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 969
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    .line 970
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 971
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->B:Lcom/viber/voip/a/m;

    invoke-virtual {v1, v3}, Lcom/viber/voip/a/m;->a(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 972
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->k:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    invoke-direct {p0, v3}, Lcom/viber/voip/messages/ui/MessageComposerView;->setShareLocationOption(Z)V

    .line 983
    :cond_0
    :goto_0
    return-void

    .line 976
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->f()V

    goto :goto_0

    .line 979
    :cond_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->B:Lcom/viber/voip/a/m;

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/m;->a(Z)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 980
    invoke-direct {p0, v2}, Lcom/viber/voip/messages/ui/MessageComposerView;->setShareLocationOption(Z)V

    goto :goto_0
.end method

.method static synthetic q(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/ui/bb;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->u:Lcom/viber/voip/messages/ui/bb;

    return-object v0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->k:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 989
    iget-boolean v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->w:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 990
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->w:Z

    .line 992
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->w:Z

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->setShareLocationOption(Z)V

    .line 994
    :cond_1
    return-void
.end method

.method private r()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    .line 1048
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1049
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1050
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1051
    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1053
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->i:Landroid/os/Handler;

    new-instance v3, Lcom/viber/voip/messages/ui/ck;

    invoke-direct {v3, p0, v0}, Lcom/viber/voip/messages/ui/ck;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1061
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->i:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/messages/ui/cl;

    invoke-direct {v2, p0, v1}, Lcom/viber/voip/messages/ui/cl;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;Landroid/view/animation/Animation;)V

    const-wide/16 v3, 0x640

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1068
    return-void
.end method

.method static synthetic r(Lcom/viber/voip/messages/ui/MessageComposerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->f:Z

    return v0
.end method

.method static synthetic s(Lcom/viber/voip/messages/ui/MessageComposerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->j()Z

    move-result v0

    return v0
.end method

.method private setShareLocationOption(Z)V
    .locals 4
    .parameter

    .prologue
    .line 997
    if-eqz p1, :cond_1

    .line 999
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/LocationEditText;->setRightImageResource(I)V

    .line 1000
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->s:Landroid/widget/TextView;

    const v1, 0x7f0c041d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1001
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->s:Landroid/widget/TextView;

    const v1, 0x7f0201d5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1013
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->a()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1014
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->w:Z

    .line 1015
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Z)V

    .line 1017
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    .line 1018
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->w:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/x;->a(JZ)V

    .line 1021
    :cond_0
    return-void

    .line 1004
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    const v1, 0x7f02007e

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/LocationEditText;->setRightImageResource(I)V

    .line 1005
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->s:Landroid/widget/TextView;

    const v1, 0x7f0c041e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1006
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->s:Landroid/widget/TextView;

    const v1, 0x7f0201d4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic t(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/messages/conversation/h;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    return-object v0
.end method

.method static synthetic u(Lcom/viber/voip/messages/ui/MessageComposerView;)Landroid/widget/ImageButton;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->r:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic v(Lcom/viber/voip/messages/ui/MessageComposerView;)Lcom/viber/voip/widget/RadioButton;
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->q:Lcom/viber/voip/widget/RadioButton;

    return-object v0
.end method

.method static synthetic w(Lcom/viber/voip/messages/ui/MessageComposerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->e:Z

    return v0
.end method

.method static synthetic x(Lcom/viber/voip/messages/ui/MessageComposerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->d:Z

    return v0
.end method

.method static synthetic y(Lcom/viber/voip/messages/ui/MessageComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->m()V

    return-void
.end method

.method static synthetic z(Lcom/viber/voip/messages/ui/MessageComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->o()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 871
    new-instance v0, Lcom/viber/voip/messages/ui/cf;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/ui/cf;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;II)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    .line 881
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->h:Lcom/viber/voip/messages/d;

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 883
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    .line 885
    :cond_0
    return-void
.end method

.method public a(IILandroid/view/View;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 233
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->g()V

    .line 234
    if-ne p1, v4, :cond_2

    move v2, v1

    .line 235
    :goto_0
    const v3, 0x7f070201

    if-ne p2, v3, :cond_3

    .line 236
    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->q:Lcom/viber/voip/widget/RadioButton;

    if-ne p1, v4, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v3, v0}, Lcom/viber/voip/widget/RadioButton;->setChecked(Z)V

    .line 237
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_1

    .line 238
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v0

    new-instance v3, Lcom/viber/voip/h/d;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/viber/voip/h/d;-><init>(J)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/viber/voip/h/b;->a(ZLcom/viber/voip/h/d;Z)Lcom/viber/voip/h/b;

    .line 245
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v0

    .line 234
    goto :goto_0

    .line 240
    :cond_3
    const v0, 0x7f0702da

    if-ne p2, v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->p:Lcom/viber/voip/widget/RadioButton;

    invoke-virtual {v0, v2}, Lcom/viber/voip/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 242
    :cond_4
    const v0, 0x7f0702d9

    if-ne p2, v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->o:Lcom/viber/voip/widget/RadioButton;

    invoke-virtual {v0, v2}, Lcom/viber/voip/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public a(IILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 853
    new-instance v0, Lcom/viber/voip/messages/ui/ce;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/viber/voip/messages/ui/ce;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;IILjava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    .line 861
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->h:Lcom/viber/voip/messages/d;

    if-eqz v0, :cond_0

    .line 862
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 863
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    .line 866
    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 1
    .parameter

    .prologue
    .line 391
    new-instance v0, Lcom/viber/voip/messages/ui/cr;

    invoke-direct {v0, p0, p1, p2}, Lcom/viber/voip/messages/ui/cr;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;J)V

    .line 410
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Ljava/lang/Runnable;)V

    .line 411
    return-void
.end method

.method public a(Lcom/viber/voip/messages/conversation/h;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 187
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    :cond_0
    move v0, v1

    .line 188
    :goto_0
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    .line 192
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/viber/voip/a/a;->o:Lcom/viber/voip/a/m;

    :goto_1
    iput-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->B:Lcom/viber/voip/a/m;

    .line 195
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->A:Lcom/viber/voip/messages/i;

    .line 196
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v2

    if-nez v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->j:Ljava/lang/String;

    .line 198
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->j:Ljava/lang/String;

    invoke-static {v2}, Lcom/viber/voip/block/i;->a(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->x:Z

    .line 204
    :cond_1
    new-instance v2, Lcom/viber/voip/messages/controller/b/b;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v3}, Lcom/viber/voip/messages/conversation/h;->d()J

    move-result-wide v3

    iget-object v5, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v5}, Lcom/viber/voip/messages/conversation/h;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v6}, Lcom/viber/voip/messages/conversation/h;->b()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/viber/voip/messages/controller/b/b;-><init>(JLjava/lang/String;I)V

    iput-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->h:Lcom/viber/voip/messages/d;

    .line 206
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v2

    if-nez v2, :cond_2

    .line 209
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    if-eqz v2, :cond_3

    .line 210
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->i:Landroid/os/Handler;

    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    .line 214
    :cond_3
    if-eqz v0, :cond_4

    .line 215
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->i:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/messages/ui/bs;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/ui/bs;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 223
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->r()Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->w:Z

    .line 226
    :cond_4
    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/h/b;->d()Lcom/viber/voip/h/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/h/b;->b()Z

    move-result v2

    new-instance v3, Lcom/viber/voip/h/d;

    iget-object v4, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/viber/voip/h/d;-><init>(J)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/viber/voip/h/b;->a(ZLcom/viber/voip/h/d;Z)Lcom/viber/voip/h/b;

    .line 227
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 228
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->i()V

    .line 229
    :cond_5
    return-void

    .line 187
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 192
    :cond_7
    sget-object v2, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    goto/16 :goto_1
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V
    .locals 1
    .parameter

    .prologue
    .line 897
    new-instance v0, Lcom/viber/voip/messages/ui/ch;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/ui/ch;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    .line 940
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->h:Lcom/viber/voip/messages/d;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 942
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    .line 944
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 747
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    if-nez v0, :cond_1

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->a()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setConversationId(J)V

    .line 750
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setConversationType(I)V

    .line 751
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->d()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setGroupId(J)V

    .line 752
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setRecipientNumber(Ljava/lang/String;)V

    .line 753
    const-wide/16 v2, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setParticipantId(J)V

    .line 755
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getLocationManager()Lcom/viber/voip/messages/extras/a/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/messages/extras/a/a;->b()V

    .line 758
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->F:Lcom/viber/voip/messages/conversation/ai;

    if-eqz v0, :cond_6

    .line 759
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->F:Lcom/viber/voip/messages/conversation/ai;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ai;->getCount()I

    move-result v0

    .line 760
    if-lez v0, :cond_6

    .line 761
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->F:Lcom/viber/voip/messages/conversation/ai;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/conversation/ai;->e(I)Lcom/viber/voip/messages/conversation/an;

    move-result-object v0

    .line 762
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/an;->S()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/viber/voip/sms/s;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 763
    const/4 v0, 0x1

    .line 768
    :goto_1
    if-eqz p2, :cond_2

    .line 769
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->A:Lcom/viber/voip/messages/i;

    invoke-interface {v2}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/viber/voip/messages/controller/x;->b()V

    .line 775
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLat()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getLng()I

    move-result v2

    if-nez v2, :cond_4

    .line 776
    :cond_3
    invoke-virtual {p1, v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->setExtraStatus(I)V

    .line 779
    :cond_4
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/MessageComposerView;->b(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;)V

    .line 782
    invoke-virtual {p1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 783
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->i:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/messages/ui/cb;

    invoke-direct {v2, p0}, Lcom/viber/voip/messages/ui/cb;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 791
    :cond_5
    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/viber/voip/sms/s;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public a(Lcom/viber/voip/messages/ui/bf;)V
    .locals 4
    .parameter

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->v:Z

    if-nez v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v0}, Lcom/viber/voip/messages/LocationEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 630
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/bf;->a()Ljava/lang/String;

    move-result-object v1

    .line 632
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->B:Lcom/viber/voip/a/m;

    iget-object v3, v3, Lcom/viber/voip/a/m;->b:Lcom/viber/voip/a/ac;

    invoke-virtual {v3, v1}, Lcom/viber/voip/a/ac;->c(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 634
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->C:I

    if-ge v0, v2, :cond_0

    .line 635
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v0}, Lcom/viber/voip/messages/LocationEditText;->getSelectionStart()I

    move-result v0

    .line 638
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v2}, Lcom/viber/voip/messages/LocationEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v3}, Lcom/viber/voip/messages/LocationEditText;->getSelectionEnd()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 639
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/viber/voip/messages/LocationEditText;->setSelection(I)V

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/messages/ui/bf;->b()Ljava/lang/Character;

    move-result-object v0

    .line 643
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v1}, Lcom/viber/voip/messages/LocationEditText;->getSelectionStart()I

    move-result v1

    .line 644
    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v2}, Lcom/viber/voip/messages/LocationEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v3}, Lcom/viber/voip/messages/LocationEditText;->getSelectionEnd()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 645
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/LocationEditText;->setSelection(I)V

    goto :goto_0
.end method

.method public a(Lcom/zoobe/sdk/helper/ZoobeResult;)V
    .locals 2
    .parameter

    .prologue
    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendAnimatedMessage result.success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/zoobe/sdk/helper/ZoobeResult;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/ui/MessageComposerView;->e(Ljava/lang/String;)V

    .line 452
    iget-boolean v0, p1, Lcom/zoobe/sdk/helper/ZoobeResult;->success:Z

    if-eqz v0, :cond_0

    .line 453
    new-instance v0, Lcom/viber/voip/messages/ui/ct;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/ui/ct;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;Lcom/zoobe/sdk/helper/ZoobeResult;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    .line 484
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->h:Lcom/viber/voip/messages/d;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 486
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    .line 490
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 6
    .parameter

    .prologue
    .line 442
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v1}, Lcom/viber/voip/messages/conversation/h;->p()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/h;->q()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->I:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    invoke-virtual {v4}, Lcom/viber/voip/messages/conversation/ui/ConversationFragment;->h()Landroid/os/IBinder;

    move-result-object v4

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/block/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/IBinder;Ljava/lang/Runnable;)V

    .line 448
    :goto_0
    return-void

    .line 446
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 715
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->h:Lcom/viber/voip/messages/d;

    if-nez v0, :cond_1

    .line 717
    new-instance v0, Lcom/viber/voip/messages/ui/ca;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/ui/ca;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 725
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->h:Lcom/viber/voip/messages/d;

    const-string/jumbo v1, "text"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/viber/voip/messages/d;->a(Ljava/lang/String;Ljava/lang/String;I)Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    move-result-object v0

    .line 726
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/ui/MessageComposerView;->a(Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;Z)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 814
    new-instance v0, Lcom/viber/voip/messages/ui/cd;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/messages/ui/cd;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    .line 843
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->h:Lcom/viber/voip/messages/d;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 845
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->t:Ljava/lang/Runnable;

    .line 847
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1024
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->s:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    if-nez v0, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->s:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1028
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1029
    if-eqz p1, :cond_2

    .line 1030
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->r()V

    .line 1031
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->l:Z

    goto :goto_0

    .line 1033
    :cond_2
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "show_location_tooltip"

    invoke-interface {v0, v1, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    .line 1034
    if-eq v0, v2, :cond_0

    .line 1035
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "show_location_tooltip"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 1036
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->r()V

    .line 1037
    iput-boolean v2, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->l:Z

    goto :goto_0

    .line 1040
    :cond_3
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->l:Z

    if-eqz v0, :cond_0

    .line 1041
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->r()V

    .line 1042
    iput-boolean v3, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->l:Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->w:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    .line 261
    iput-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->h:Lcom/viber/voip/messages/d;

    .line 262
    return-void
.end method

.method public b(J)V
    .locals 2
    .parameter

    .prologue
    .line 948
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getMessagesManager()Lcom/viber/voip/messages/i;

    move-result-object v0

    .line 949
    invoke-interface {v0}, Lcom/viber/voip/messages/i;->c()Lcom/viber/voip/messages/controller/x;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/ci;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/ci;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/viber/voip/messages/controller/x;->a(JLcom/viber/voip/messages/controller/ae;)V

    .line 963
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1211
    const-string/jumbo v0, "ptt"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1212
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->O:Lcom/viber/voip/messages/ui/da;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/da;->c(Z)V

    .line 1221
    :cond_0
    :goto_0
    return-void

    .line 1213
    :cond_1
    const-string/jumbo v0, "menu"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1214
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->M:Lcom/viber/voip/messages/ui/cz;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/cz;->a(Z)V

    goto :goto_0

    .line 1215
    :cond_2
    const-string/jumbo v0, "keyboard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1216
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v0}, Lcom/viber/voip/messages/LocationEditText;->requestFocus()Z

    .line 1217
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->J:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 1218
    :cond_3
    const-string/jumbo v0, "stickers"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->N:Lcom/viber/voip/messages/ui/cy;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/cy;->b(Z)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->J:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/MessageComposerView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 419
    return-void
.end method

.method public d()V
    .locals 7

    .prologue
    .line 493
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->g:Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 494
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->g:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 495
    const v2, 0x7f030133

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 496
    const v0, 0x7f0703d8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 498
    const-string/jumbo v3, "Send custom stiker"

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 499
    const-string/jumbo v3, "Enter stiker id"

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 500
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 501
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/text/InputFilter;

    const/4 v4, 0x0

    new-instance v5, Landroid/text/InputFilter$LengthFilter;

    const/16 v6, 0x8

    invoke-direct {v5, v6}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 503
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 504
    const v2, 0x7f0c02b6

    new-instance v3, Lcom/viber/voip/messages/ui/cu;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/ui/cu;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 510
    const v2, 0x7f0c02b5

    new-instance v3, Lcom/viber/voip/messages/ui/bt;

    invoke-direct {v3, p0, v0}, Lcom/viber/voip/messages/ui/bt;-><init>(Lcom/viber/voip/messages/ui/MessageComposerView;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 544
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 545
    return-void
.end method

.method public e()V
    .locals 2

    .prologue
    .line 679
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->L:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 680
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 1071
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.viber.voip.action.CHANGE_LOCATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1072
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1073
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->g:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1074
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->P:Lcom/viber/voip/messages/ui/cv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/cv;->a(Landroid/widget/CompoundButton;)V

    .line 1144
    return-void
.end method

.method public getMessageDraft()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v0}, Lcom/viber/voip/messages/LocationEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptionsButton()Landroid/view/View;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->o:Lcom/viber/voip/widget/RadioButton;

    return-object v0
.end method

.method public setBlocked(Z)V
    .locals 0
    .parameter

    .prologue
    .line 1111
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->x:Z

    .line 1112
    return-void
.end method

.method public setConversationMessageLoader(Lcom/viber/voip/messages/conversation/v;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->F:Lcom/viber/voip/messages/conversation/ai;

    .line 257
    return-void
.end method

.method public setDraft(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1107
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->D:Ljava/lang/String;

    .line 1108
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .parameter

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/LocationEditText;->setEnabled(Z)V

    .line 1083
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->o:Lcom/viber/voip/widget/RadioButton;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/RadioButton;->setClickable(Z)V

    .line 1084
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->E:Lcom/viber/voip/messages/conversation/h;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/h;->t()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->q:Lcom/viber/voip/widget/RadioButton;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/RadioButton;->setEnabled(Z)V

    .line 1089
    :goto_0
    return-void

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->r:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setExternalControls(Landroid/widget/TextView;)V
    .locals 0
    .parameter

    .prologue
    .line 386
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->s:Landroid/widget/TextView;

    .line 387
    return-void
.end method

.method public setFragment(Lcom/viber/voip/messages/conversation/ui/ConversationFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->I:Lcom/viber/voip/messages/conversation/ui/ConversationFragment;

    .line 383
    return-void
.end method

.method public setHost(Lcom/viber/voip/messages/ui/cw;)V
    .locals 0
    .parameter

    .prologue
    .line 378
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->c:Lcom/viber/voip/messages/ui/cw;

    .line 379
    return-void
.end method

.method public setMessageDraft(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 434
    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/ui/MessageComposerView;->setMessageEditText(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->u:Lcom/viber/voip/messages/ui/bb;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    sget v2, Lcom/viber/voip/messages/ui/bd;->b:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/messages/ui/bb;->a(Landroid/widget/TextView;IZ)V

    .line 436
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/LocationEditText;->setSelection(I)V

    .line 439
    :cond_0
    return-void
.end method

.method public setMessageEditText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 1100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->f:Z

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->n:Lcom/viber/voip/messages/LocationEditText;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/LocationEditText;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    return-void
.end method

.method public setMessageSender(Lcom/viber/voip/messages/conversation/ao;)V
    .locals 0
    .parameter

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->G:Lcom/viber/voip/messages/conversation/ao;

    .line 1097
    return-void
.end method

.method public setOnButtonsListener(Lcom/viber/voip/messages/ui/cx;)V
    .locals 0
    .parameter

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->M:Lcom/viber/voip/messages/ui/cz;

    .line 1138
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->N:Lcom/viber/voip/messages/ui/cy;

    .line 1139
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->O:Lcom/viber/voip/messages/ui/da;

    .line 1140
    return-void
.end method

.method public setOnEmotionsButtonListener(Lcom/viber/voip/messages/ui/cy;)V
    .locals 0
    .parameter

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->N:Lcom/viber/voip/messages/ui/cy;

    .line 1130
    return-void
.end method

.method public setOnOptionsButtonListener(Lcom/viber/voip/messages/ui/cz;)V
    .locals 0
    .parameter

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->M:Lcom/viber/voip/messages/ui/cz;

    .line 1126
    return-void
.end method

.method public setOnPttButtonListener(Lcom/viber/voip/messages/ui/da;)V
    .locals 0
    .parameter

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->O:Lcom/viber/voip/messages/ui/da;

    .line 1134
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1092
    iget-object v1, p0, Lcom/viber/voip/messages/ui/MessageComposerView;->m:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1093
    return-void

    .line 1092
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
