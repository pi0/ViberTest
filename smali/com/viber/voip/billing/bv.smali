.class public Lcom/viber/voip/billing/bv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/viber/voip/billing/bv;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/viber/voip/billing/ap;

.field private e:Lcom/viber/voip/billing/cm;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/billing/co;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;

.field private h:Z

.field private i:Lcom/viber/voip/billing/cs;

.field private j:Lcom/viber/voip/billing/co;

.field private k:Ljava/lang/Runnable;

.field private l:Lcom/viber/voip/billing/cr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/viber/voip/billing/bv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/billing/bv;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/billing/bv;->f:Ljava/util/ArrayList;

    .line 44
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/billing/bv;->g:Landroid/os/Handler;

    .line 189
    new-instance v0, Lcom/viber/voip/billing/cc;

    invoke-direct {v0, p0}, Lcom/viber/voip/billing/cc;-><init>(Lcom/viber/voip/billing/bv;)V

    iput-object v0, p0, Lcom/viber/voip/billing/bv;->k:Ljava/lang/Runnable;

    .line 354
    new-instance v0, Lcom/viber/voip/billing/cf;

    invoke-direct {v0, p0}, Lcom/viber/voip/billing/cf;-><init>(Lcom/viber/voip/billing/bv;)V

    iput-object v0, p0, Lcom/viber/voip/billing/bv;->l:Lcom/viber/voip/billing/cr;

    .line 51
    iput-object p1, p0, Lcom/viber/voip/billing/bv;->c:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/viber/voip/billing/co;

    iget-object v1, p0, Lcom/viber/voip/billing/bv;->l:Lcom/viber/voip/billing/cr;

    invoke-direct {v0, v1}, Lcom/viber/voip/billing/co;-><init>(Lcom/viber/voip/billing/cr;)V

    iput-object v0, p0, Lcom/viber/voip/billing/bv;->j:Lcom/viber/voip/billing/co;

    .line 53
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/viber/voip/billing/dt;

    iget-object v2, p0, Lcom/viber/voip/billing/bv;->l:Lcom/viber/voip/billing/cr;

    invoke-direct {v1, v2}, Lcom/viber/voip/billing/dt;-><init>(Lcom/viber/voip/billing/cr;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/viber/voip/billing/dp;

    iget-object v2, p0, Lcom/viber/voip/billing/bv;->l:Lcom/viber/voip/billing/cr;

    invoke-direct {v1, v2}, Lcom/viber/voip/billing/dp;-><init>(Lcom/viber/voip/billing/cr;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v0, Lcom/viber/voip/billing/cn;

    invoke-direct {v0}, Lcom/viber/voip/billing/cn;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/billing/bv;->e:Lcom/viber/voip/billing/cm;

    .line 56
    new-instance v0, Lcom/viber/voip/billing/cs;

    invoke-direct {v0, p0}, Lcom/viber/voip/billing/cs;-><init>(Lcom/viber/voip/billing/bv;)V

    iput-object v0, p0, Lcom/viber/voip/billing/bv;->i:Lcom/viber/voip/billing/cs;

    .line 57
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->i:Lcom/viber/voip/billing/cs;

    new-instance v1, Lcom/viber/voip/billing/bw;

    invoke-direct {v1, p0}, Lcom/viber/voip/billing/bw;-><init>(Lcom/viber/voip/billing/bv;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/cs;->a(Lcom/viber/voip/billing/cw;)V

    .line 63
    return-void
.end method

.method public static a()Lcom/viber/voip/billing/bv;
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 37
    :goto_0
    return-object v0

    .line 34
    :cond_0
    sget-object v0, Lcom/viber/voip/billing/bv;->b:Lcom/viber/voip/billing/bv;

    if-nez v0, :cond_1

    .line 35
    new-instance v0, Lcom/viber/voip/billing/bv;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/billing/bv;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/viber/voip/billing/bv;->b:Lcom/viber/voip/billing/bv;

    .line 37
    :cond_1
    sget-object v0, Lcom/viber/voip/billing/bv;->b:Lcom/viber/voip/billing/bv;

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/billing/bv;Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/co;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/bv;->c(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/co;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/billing/bv;Lcom/viber/voip/billing/bu;)Lcom/viber/voip/billing/co;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/bv;->b(Lcom/viber/voip/billing/bu;)Lcom/viber/voip/billing/co;

    move-result-object v0

    return-object v0
.end method

.method private a(IILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/viber/voip/billing/bv;->e()Lcom/viber/voip/billing/dl;

    move-result-object v0

    .line 346
    if-eqz p1, :cond_0

    .line 347
    iget-object v1, p0, Lcom/viber/voip/billing/bv;->c:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/dl;->a(Ljava/lang/String;)Lcom/viber/voip/billing/dl;

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/billing/bv;->c:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/dl;->b(Ljava/lang/String;)Lcom/viber/voip/billing/dl;

    .line 350
    invoke-virtual {v0, p3}, Lcom/viber/voip/billing/dl;->c(Ljava/lang/String;)Lcom/viber/voip/billing/dl;

    .line 351
    invoke-virtual {v0}, Lcom/viber/voip/billing/dl;->a()V

    .line 352
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/viber/voip/billing/bv;->k()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/bv;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/billing/bv;->a(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/bv;Lcom/viber/voip/billing/cj;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/bv;->b(Lcom/viber/voip/billing/cj;)V

    return-void
.end method

.method public static a(Lcom/viber/voip/billing/cj;)V
    .locals 1
    .parameter

    .prologue
    .line 215
    const-string/jumbo v0, "synchronizePurchasedProducts"

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->b(Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/viber/voip/billing/ck;

    invoke-direct {v0}, Lcom/viber/voip/billing/ck;-><init>()V

    invoke-virtual {v0, p0}, Lcom/viber/voip/billing/ck;->a(Lcom/viber/voip/billing/cj;)V

    .line 217
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-static {p0}, Lcom/viber/voip/billing/bv;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 481
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 483
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    :goto_0
    return v0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lcom/viber/voip/billing/bu;)Lcom/viber/voip/billing/co;
    .locals 1
    .parameter

    .prologue
    .line 302
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/bv;->c(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/co;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/billing/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/viber/voip/billing/bv;->l()V

    return-void
.end method

.method private b(Lcom/viber/voip/billing/cj;)V
    .locals 4
    .parameter

    .prologue
    .line 220
    const-string/jumbo v0, "doSynchronizePurchasedProducts"

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->b(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->c()Lcom/viber/voip/billing/ap;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/viber/voip/billing/cd;

    invoke-direct {v3, p0, p1}, Lcom/viber/voip/billing/cd;-><init>(Lcom/viber/voip/billing/bv;Lcom/viber/voip/billing/cj;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/billing/ap;->a(ZLjava/util/List;Lcom/viber/voip/billing/bj;)V

    .line 237
    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 494
    return-void
.end method

.method private c(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/co;
    .locals 3
    .parameter

    .prologue
    .line 306
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/billing/co;

    .line 307
    invoke-virtual {v0, p1}, Lcom/viber/voip/billing/co;->a(Lcom/viber/voip/billing/bn;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->j:Lcom/viber/voip/billing/co;

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/billing/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/viber/voip/billing/bv;->j()V

    return-void
.end method

.method static synthetic d(Lcom/viber/voip/billing/bv;)Lcom/viber/voip/billing/cm;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->e:Lcom/viber/voip/billing/cm;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/billing/bv;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->c:Landroid/content/Context;

    return-object v0
.end method

.method private i()V
    .locals 2

    .prologue
    .line 165
    const-string/jumbo v0, "blockCheckHelper()"

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->b(Ljava/lang/String;)V

    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/billing/bv;->h:Z

    .line 167
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/billing/bv;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    return-void
.end method

.method private j()V
    .locals 1

    .prologue
    .line 170
    const-string/jumbo v0, "unblockCheckHelper()"

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->b(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/billing/bv;->h:Z

    .line 172
    invoke-direct {p0}, Lcom/viber/voip/billing/bv;->k()V

    .line 173
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 176
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/billing/bv;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    iget-boolean v0, p0, Lcom/viber/voip/billing/bv;->h:Z

    if-nez v0, :cond_0

    .line 178
    const-string/jumbo v0, "checkHelper() checking in 30000ms"

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->b(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->g:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/billing/bv;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    const-string/jumbo v0, "checkHelper() blocked"

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized l()V
    .locals 2

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "destroyIabHelper()"

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->b(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->d:Lcom/viber/voip/billing/ap;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->d:Lcom/viber/voip/billing/ap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/be;)V

    .line 203
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->d:Lcom/viber/voip/billing/ap;

    invoke-virtual {v0}, Lcom/viber/voip/billing/ap;->a()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/billing/bv;->d:Lcom/viber/voip/billing/ap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :cond_0
    monitor-exit p0

    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bn;)V
    .locals 1
    .parameter

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/viber/voip/billing/bv;->a(Lcom/viber/voip/billing/bn;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bn;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/viber/voip/billing/bv;->i()V

    .line 95
    invoke-static {p1, p2}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a(Lcom/viber/voip/billing/bn;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bo;)V
    .locals 3
    .parameter

    .prologue
    .line 326
    const/4 v2, 0x0

    .line 328
    const/4 v0, 0x0

    .line 330
    invoke-virtual {p1}, Lcom/viber/voip/billing/bo;->a()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 338
    const v1, 0x7f0c055d

    .line 341
    :goto_0
    invoke-direct {p0, v2, v1, v0}, Lcom/viber/voip/billing/bv;->a(IILjava/lang/String;)V

    .line 342
    return-void

    .line 333
    :pswitch_0
    const v2, 0x7f0c055b

    .line 334
    const v1, 0x7f0c055c

    .line 335
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "618"

    goto :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/viber/voip/billing/bu;)V
    .locals 1
    .parameter

    .prologue
    .line 465
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/viber/voip/billing/bu;->e(Z)V

    .line 466
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/bv;->b(Lcom/viber/voip/billing/bu;)Lcom/viber/voip/billing/co;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/billing/co;->b(Lcom/viber/voip/billing/bu;)V

    .line 467
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->m()Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/viber/voip/billing/bv;->d()Lcom/viber/voip/billing/cs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/billing/cs;->b(Lcom/viber/voip/billing/bu;)V

    .line 470
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 4
    .parameter

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "consumeAllStuff, runnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->b(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/viber/voip/billing/bv;->c()Lcom/viber/voip/billing/ap;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/viber/voip/billing/by;

    invoke-direct {v3, p0, p1}, Lcom/viber/voip/billing/by;-><init>(Lcom/viber/voip/billing/bv;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/billing/ap;->a(ZLjava/util/List;Lcom/viber/voip/billing/bj;)V

    .line 134
    return-void
.end method

.method b(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/bh;
    .locals 2
    .parameter

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/bv;->c(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/co;

    move-result-object v0

    .line 274
    new-instance v1, Lcom/viber/voip/billing/ce;

    invoke-direct {v1, p0, v0, p1}, Lcom/viber/voip/billing/ce;-><init>(Lcom/viber/voip/billing/bv;Lcom/viber/voip/billing/co;Lcom/viber/voip/billing/bn;)V

    return-object v1
.end method

.method public b()V
    .locals 3

    .prologue
    .line 66
    const-string/jumbo v0, "prepareOnAppInit"

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->b(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/viber/voip/billing/bv;->d()Lcom/viber/voip/billing/cs;

    .line 69
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_MARKET_PRODUCTS_SYNCED"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->d()Lcom/viber/voip/contacts/c/d/at;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/billing/bx;

    invoke-direct {v1, p0}, Lcom/viber/voip/billing/bx;-><init>(Lcom/viber/voip/billing/bv;)V

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/d/at;->a(Lcom/viber/voip/contacts/c/d/au;)V

    .line 87
    :cond_0
    return-void
.end method

.method public declared-synchronized c()Lcom/viber/voip/billing/ap;
    .locals 2

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->d:Lcom/viber/voip/billing/ap;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/process/k;->a:Lcom/viber/voip/process/k;

    if-ne v0, v1, :cond_0

    .line 142
    new-instance v0, Lcom/viber/voip/billing/ap;

    iget-object v1, p0, Lcom/viber/voip/billing/bv;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/viber/voip/billing/ap;-><init>(Landroid/content/Context;)V

    .line 143
    iput-object v0, p0, Lcom/viber/voip/billing/bv;->d:Lcom/viber/voip/billing/ap;

    .line 144
    new-instance v1, Lcom/viber/voip/billing/ca;

    invoke-direct {v1, p0}, Lcom/viber/voip/billing/ca;-><init>(Lcom/viber/voip/billing/bv;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/be;)V

    .line 150
    new-instance v1, Lcom/viber/voip/billing/cb;

    invoke-direct {v1, p0}, Lcom/viber/voip/billing/cb;-><init>(Lcom/viber/voip/billing/bv;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bi;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->d:Lcom/viber/voip/billing/ap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lcom/viber/voip/billing/cs;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->i:Lcom/viber/voip/billing/cs;

    return-object v0
.end method

.method e()Lcom/viber/voip/billing/dl;
    .locals 1

    .prologue
    .line 315
    invoke-static {}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a()Lcom/viber/voip/billing/dl;

    move-result-object v0

    return-object v0
.end method

.method public f()V
    .locals 3

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/viber/voip/billing/bv;->e()Lcom/viber/voip/billing/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/billing/bv;->c:Landroid/content/Context;

    const v2, 0x7f0c0559

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/dl;->a(Ljava/lang/String;)Lcom/viber/voip/billing/dl;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/billing/bv;->c:Landroid/content/Context;

    const v2, 0x7f0c055a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/dl;->b(Ljava/lang/String;)Lcom/viber/voip/billing/dl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/dl;->a()V

    .line 323
    return-void
.end method

.method g()[Lcom/viber/voip/billing/bu;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/viber/voip/billing/bv;->e:Lcom/viber/voip/billing/cm;

    invoke-interface {v0}, Lcom/viber/voip/billing/cm;->a()[Lcom/viber/voip/billing/bu;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 473
    sget-object v2, Lcom/viber/voip/dx;->c:[Ljava/lang/String;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 474
    iget-object v5, p0, Lcom/viber/voip/billing/bv;->c:Landroid/content/Context;

    invoke-direct {p0, v4, v5}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 478
    :goto_1
    return v0

    .line 473
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method
