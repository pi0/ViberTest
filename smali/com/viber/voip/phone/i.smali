.class public Lcom/viber/voip/phone/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Lcom/viber/voip/phone/i;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/view/WindowManager;

.field private e:Landroid/app/ActivityManager;

.field private f:Lcom/viber/voip/phone/call/a;

.field private g:Ljava/lang/Object;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/viber/voip/widget/PausableChronometer;

.field private l:Z

.field private m:Lcom/viber/voip/e/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "MinimizedCallManager"

    sput-object v0, Lcom/viber/voip/phone/i;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/phone/i;->g:Ljava/lang/Object;

    .line 72
    new-instance v0, Lcom/viber/voip/phone/j;

    invoke-direct {v0, p0}, Lcom/viber/voip/phone/j;-><init>(Lcom/viber/voip/phone/i;)V

    iput-object v0, p0, Lcom/viber/voip/phone/i;->m:Lcom/viber/voip/e/q;

    .line 62
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/i;->c:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/viber/voip/phone/i;->c:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/viber/voip/phone/i;->d:Landroid/view/WindowManager;

    .line 64
    iget-object v0, p0, Lcom/viber/voip/phone/i;->c:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/viber/voip/phone/i;->e:Landroid/app/ActivityManager;

    .line 65
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCallHandler()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/i;->f:Lcom/viber/voip/phone/call/a;

    .line 66
    return-void
.end method

.method public static a()Lcom/viber/voip/phone/i;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/viber/voip/phone/i;->b:Lcom/viber/voip/phone/i;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/viber/voip/phone/i;

    invoke-direct {v0}, Lcom/viber/voip/phone/i;-><init>()V

    sput-object v0, Lcom/viber/voip/phone/i;->b:Lcom/viber/voip/phone/i;

    .line 58
    :cond_0
    sget-object v0, Lcom/viber/voip/phone/i;->b:Lcom/viber/voip/phone/i;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/phone/i;)Lcom/viber/voip/widget/PausableChronometer;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/phone/i;->k:Lcom/viber/voip/widget/PausableChronometer;

    return-object v0
.end method

.method private a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/viber/voip/phone/i;->h()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/a/g;->m()Lcom/viber/voip/a/x;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 249
    :cond_0
    return-void

    .line 247
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/a/g;->n()Lcom/viber/voip/a/x;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/phone/i;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/viber/voip/phone/i;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/phone/i;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/viber/voip/phone/i;->d()V

    return-void
.end method

.method static synthetic c(Lcom/viber/voip/phone/i;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/phone/i;->c:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/viber/voip/phone/i;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 171
    const v1, 0x7f03002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    new-instance v1, Lcom/viber/voip/phone/l;

    invoke-direct {v1, p0}, Lcom/viber/voip/phone/l;-><init>(Lcom/viber/voip/phone/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    const v1, 0x7f0700d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/phone/i;->j:Landroid/widget/ImageView;

    .line 182
    iget-object v0, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    const v1, 0x7f0700d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/i;->i:Landroid/widget/TextView;

    .line 183
    iget-object v0, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    const v1, 0x7f07010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/widget/PausableChronometer;

    iput-object v0, p0, Lcom/viber/voip/phone/i;->k:Lcom/viber/voip/widget/PausableChronometer;

    .line 184
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/phone/i;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/phone/i;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 189
    invoke-direct {p0}, Lcom/viber/voip/phone/i;->c()V

    .line 191
    iget-object v0, p0, Lcom/viber/voip/phone/i;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 192
    const/high16 v1, 0x4248

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 193
    const/high16 v1, 0x42dc

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 194
    const/high16 v3, 0x4288

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v4, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    .line 197
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    float-to-int v1, v1

    float-to-int v2, v2

    const/16 v3, 0x7d7

    const v4, 0x40028

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 203
    float-to-int v1, v6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 204
    const/16 v1, 0x35

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 206
    iget-object v1, p0, Lcom/viber/voip/phone/i;->d:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    return-void
.end method

.method static synthetic e(Lcom/viber/voip/phone/i;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/viber/voip/phone/i;->d:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    .line 216
    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/phone/i;->c:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 223
    iget-object v0, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/i;->a(Z)V

    .line 227
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/viber/voip/phone/i;)Z
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/viber/voip/phone/i;->l:Z

    return v0
.end method

.method private g()V
    .locals 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/phone/i;->l:Z

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/phone/i;->c:Landroid/content/Context;

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 234
    iget-object v0, p0, Lcom/viber/voip/phone/i;->h:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 236
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/phone/i;->a(Z)V

    .line 238
    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/viber/voip/phone/i;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/viber/voip/phone/i;->e()V

    return-void
.end method

.method static synthetic h(Lcom/viber/voip/phone/i;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/phone/i;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method private h()Lcom/viber/voip/phone/call/k;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/viber/voip/phone/i;->f:Lcom/viber/voip/phone/call/a;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    return-object v0
.end method

.method private i()Lcom/viber/voip/g/a;
    .locals 1

    .prologue
    .line 252
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPhoneApp()Lcom/viber/voip/phone/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/v;->f()Lcom/viber/voip/g/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/viber/voip/phone/i;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/phone/i;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic j(Lcom/viber/voip/phone/i;)Landroid/app/ActivityManager;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/phone/i;->e:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic k(Lcom/viber/voip/phone/i;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/viber/voip/phone/i;->g()V

    return-void
.end method

.method static synthetic l(Lcom/viber/voip/phone/i;)Lcom/viber/voip/g/a;
    .locals 1
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/viber/voip/phone/i;->i()Lcom/viber/voip/g/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(ZZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 256
    iget-object v1, p0, Lcom/viber/voip/phone/i;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 257
    if-eqz p1, :cond_1

    .line 258
    :try_start_0
    invoke-direct {p0}, Lcom/viber/voip/phone/i;->f()V

    .line 259
    invoke-direct {p0}, Lcom/viber/voip/phone/i;->i()Lcom/viber/voip/g/a;

    move-result-object v2

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/viber/voip/g/a;->a(Z)V

    .line 263
    :goto_1
    monitor-exit v1

    .line 264
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 261
    :cond_1
    new-instance v0, Lcom/viber/voip/phone/m;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/viber/voip/phone/m;-><init>(Lcom/viber/voip/phone/i;Lcom/viber/voip/phone/j;)V

    invoke-virtual {v0}, Lcom/viber/voip/phone/m;->a()V

    goto :goto_1

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 69
    invoke-static {}, Lcom/viber/voip/e/a;->a()Lcom/viber/voip/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/phone/i;->m:Lcom/viber/voip/e/q;

    invoke-virtual {v0, v1}, Lcom/viber/voip/e/a;->a(Lcom/viber/voip/e/r;)V

    .line 70
    return-void
.end method
