.class public Lcom/viber/voip/stickers/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/viber/voip/stickers/b;

.field private final c:Lcom/viber/voip/stickers/a/a;

.field private final d:Lcom/viber/voip/stickers/d/c;

.field private final e:Lcom/viber/voip/stickers/b/h;

.field private final f:Lcom/viber/voip/stickers/ar;

.field private final g:Lcom/viber/voip/stickers/ao;

.field private final h:Lcom/viber/voip/stickers/as;

.field private final i:Lcom/viber/voip/stickers/ay;

.field private final j:Lcom/viber/voip/stickers/am;

.field private final k:Landroid/os/Handler;

.field private final l:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Lcom/viber/voip/stickers/q;

.field private final s:Lcom/viber/voip/stickers/bb;

.field private t:J

.field private u:Lcom/viber/jni/PhoneControllerDelegateAdapter;

.field private v:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/viber/voip/stickers/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/stickers/r;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/stickers/r;->l:Landroid/util/SparseArray;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/stickers/r;->q:I

    .line 925
    new-instance v0, Lcom/viber/voip/stickers/y;

    invoke-direct {v0, p0}, Lcom/viber/voip/stickers/y;-><init>(Lcom/viber/voip/stickers/r;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/r;->u:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    .line 949
    new-instance v0, Lcom/viber/voip/stickers/z;

    invoke-direct {v0, p0}, Lcom/viber/voip/stickers/z;-><init>(Lcom/viber/voip/stickers/r;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/r;->v:Ljava/util/Comparator;

    .line 95
    sget-object v0, Lcom/viber/voip/w;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/bj;->e(Ljava/lang/String;)Z

    .line 97
    sget-object v0, Lcom/viber/voip/w;->w:Ljava/lang/String;

    invoke-static {v0}, Lcom/viber/voip/util/bj;->f(Ljava/lang/String;)Z

    .line 99
    invoke-static {}, Lcom/viber/voip/stickers/d/c;->a()Lcom/viber/voip/stickers/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/r;->d:Lcom/viber/voip/stickers/d/c;

    .line 100
    new-instance v0, Lcom/viber/voip/stickers/bb;

    invoke-direct {v0}, Lcom/viber/voip/stickers/bb;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/stickers/r;->s:Lcom/viber/voip/stickers/bb;

    .line 101
    new-instance v0, Lcom/viber/voip/stickers/ar;

    invoke-direct {v0, p0}, Lcom/viber/voip/stickers/ar;-><init>(Lcom/viber/voip/stickers/r;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/r;->f:Lcom/viber/voip/stickers/ar;

    .line 102
    new-instance v0, Lcom/viber/voip/stickers/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/stickers/b;-><init>(Lcom/viber/voip/stickers/r;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/r;->b:Lcom/viber/voip/stickers/b;

    .line 103
    new-instance v0, Lcom/viber/voip/stickers/a/a;

    invoke-direct {v0}, Lcom/viber/voip/stickers/a/a;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/stickers/r;->c:Lcom/viber/voip/stickers/a/a;

    .line 104
    new-instance v0, Lcom/viber/voip/stickers/ao;

    iget-object v1, p0, Lcom/viber/voip/stickers/r;->c:Lcom/viber/voip/stickers/a/a;

    invoke-direct {v0, v1}, Lcom/viber/voip/stickers/ao;-><init>(Lcom/viber/voip/stickers/a/a;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/r;->g:Lcom/viber/voip/stickers/ao;

    .line 105
    new-instance v0, Lcom/viber/voip/stickers/as;

    invoke-direct {v0, p0}, Lcom/viber/voip/stickers/as;-><init>(Lcom/viber/voip/stickers/r;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/r;->h:Lcom/viber/voip/stickers/as;

    .line 106
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/r;->k:Landroid/os/Handler;

    .line 107
    new-instance v0, Lcom/viber/voip/stickers/s;

    iget-object v1, p0, Lcom/viber/voip/stickers/r;->k:Landroid/os/Handler;

    iget-object v2, p0, Lcom/viber/voip/stickers/r;->c:Lcom/viber/voip/stickers/a/a;

    invoke-direct {v0, p0, v1, v2}, Lcom/viber/voip/stickers/s;-><init>(Lcom/viber/voip/stickers/r;Landroid/os/Handler;Lcom/viber/voip/stickers/a/a;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/r;->i:Lcom/viber/voip/stickers/ay;

    .line 115
    invoke-direct {p0}, Lcom/viber/voip/stickers/r;->w()V

    .line 116
    invoke-direct {p0}, Lcom/viber/voip/stickers/r;->y()V

    .line 118
    new-instance v0, Lcom/viber/voip/stickers/ab;

    invoke-direct {v0, p0}, Lcom/viber/voip/stickers/ab;-><init>(Lcom/viber/voip/stickers/r;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/r;->j:Lcom/viber/voip/stickers/am;

    .line 142
    new-instance v0, Lcom/viber/voip/stickers/b/h;

    iget-object v1, p0, Lcom/viber/voip/stickers/r;->b:Lcom/viber/voip/stickers/b;

    iget-object v2, p0, Lcom/viber/voip/stickers/r;->j:Lcom/viber/voip/stickers/am;

    invoke-direct {v0, p0, v1, v2}, Lcom/viber/voip/stickers/b/h;-><init>(Lcom/viber/voip/stickers/r;Lcom/viber/voip/stickers/b;Lcom/viber/voip/stickers/d/b;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/r;->e:Lcom/viber/voip/stickers/b/h;

    .line 143
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->d:Lcom/viber/voip/stickers/d/c;

    new-instance v1, Lcom/viber/voip/stickers/ac;

    invoke-direct {v1, p0}, Lcom/viber/voip/stickers/ac;-><init>(Lcom/viber/voip/stickers/r;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/d/c;->a(Lcom/viber/voip/stickers/d/g;)V

    .line 150
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->j:Lcom/viber/voip/stickers/am;

    invoke-static {}, Lcom/viber/voip/process/e;->a()Lcom/viber/voip/process/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/am;->a(Lcom/viber/voip/stickers/d/b;)V

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/stickers/s;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/viber/voip/stickers/r;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/r;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput p1, p0, Lcom/viber/voip/stickers/r;->q:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/a/a;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->c:Lcom/viber/voip/stickers/a/a;

    return-object v0
.end method

.method public static a()Lcom/viber/voip/stickers/r;
    .locals 1

    .prologue
    .line 91
    invoke-static {}, Lcom/viber/voip/stickers/aj;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/viber/voip/stickers/c/d;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/stickers/c/d;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 903
    :goto_0
    return-object p2

    .line 901
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 902
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-object p2, v0

    .line 903
    goto :goto_0
.end method

.method private a(Lcom/viber/voip/stickers/c/e;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/viber/voip/stickers/c/e;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 894
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    :goto_0
    return-object p2

    .line 895
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 896
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p2, v0

    .line 897
    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/stickers/r;Lcom/viber/voip/stickers/c/e;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/c/e;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/stickers/r;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/viber/voip/stickers/r;->p:Ljava/util/List;

    return-object p1
.end method

.method private a(Lcom/viber/voip/stickers/p;ZJ)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 718
    iget-object v2, p1, Lcom/viber/voip/stickers/p;->a:[Lcom/viber/voip/stickers/c/a;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 719
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, p3

    const-wide/16 v7, 0xc8

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 724
    :cond_0
    return-void

    .line 722
    :cond_1
    iget-object v5, p0, Lcom/viber/voip/stickers/r;->b:Lcom/viber/voip/stickers/b;

    sget-object v6, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    invoke-virtual {v5, v4, v1, p2, v6}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)Lcom/viber/voip/stickers/h;

    .line 718
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/stickers/r;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/stickers/r;->b(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/r;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/r;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/r;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/viber/voip/stickers/r;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 660
    return-void
.end method

.method private a(Z)V
    .locals 11
    .parameter

    .prologue
    .line 326
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/viber/voip/stickers/r;->c:Lcom/viber/voip/stickers/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/a/a;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 327
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 328
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 329
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 330
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 331
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 333
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->i:Lcom/viber/voip/stickers/ay;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/ay;->a()Z

    move-result v7

    .line 335
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/d;

    .line 337
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->g()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 339
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->i()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 340
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_1
    :goto_1
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->c()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 346
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_2
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->h()Z

    move-result v9

    if-nez v9, :cond_8

    .line 352
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->j()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->k()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 353
    :cond_3
    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/c/d;)V

    .line 357
    :cond_4
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->i()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 358
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    :cond_5
    :goto_2
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v9

    const/16 v10, 0x190

    if-eq v9, v10, :cond_0

    if-nez v7, :cond_6

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->f()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 366
    :cond_6
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 341
    :cond_7
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->j()Z

    move-result v9

    if-nez v9, :cond_1

    .line 342
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 361
    :cond_8
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 370
    :cond_9
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->v:Ljava/util/Comparator;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 371
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->v:Ljava/util/Comparator;

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 372
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->v:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 374
    monitor-enter p0

    .line 375
    :try_start_0
    iput-object v1, p0, Lcom/viber/voip/stickers/r;->p:Ljava/util/List;

    .line 376
    iput-object v3, p0, Lcom/viber/voip/stickers/r;->m:Ljava/util/List;

    .line 377
    iput-object v4, p0, Lcom/viber/voip/stickers/r;->o:Ljava/util/List;

    .line 378
    iput-object v5, p0, Lcom/viber/voip/stickers/r;->n:Ljava/util/List;

    .line 379
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->i:Lcom/viber/voip/stickers/ay;

    invoke-virtual {v0, v6}, Lcom/viber/voip/stickers/ay;->b(Ljava/util/List;)V

    .line 381
    invoke-static {v2}, Lcom/viber/voip/stickers/an;->a(Ljava/util/List;)V

    .line 383
    if-eqz p1, :cond_a

    .line 384
    invoke-virtual {p0}, Lcom/viber/voip/stickers/r;->c()V

    .line 386
    :cond_a
    return-void

    .line 379
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/as;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->h:Lcom/viber/voip/stickers/as;

    return-object v0
.end method

.method private b(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 879
    new-instance v0, Lcom/viber/voip/stickers/v;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/stickers/v;-><init>(Lcom/viber/voip/stickers/r;I)V

    .line 886
    if-eqz p2, :cond_0

    .line 887
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 891
    :goto_0
    return-void

    .line 889
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/stickers/r;->k:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/b;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->b:Lcom/viber/voip/stickers/b;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/am;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->j:Lcom/viber/voip/stickers/am;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/voip/stickers/r;)I
    .locals 1
    .parameter

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/viber/voip/stickers/r;->x()I

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/viber/voip/stickers/r;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/b/h;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->e:Lcom/viber/voip/stickers/b/h;

    return-object v0
.end method

.method static synthetic h(Lcom/viber/voip/stickers/r;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->l:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic i(Lcom/viber/voip/stickers/r;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->k:Landroid/os/Handler;

    return-object v0
.end method

.method private n(I)V
    .locals 2
    .parameter

    .prologue
    .line 299
    new-instance v0, Lcom/viber/voip/stickers/c/e;

    const-string/jumbo v1, "Sticker package"

    invoke-direct {v0, p1, v1}, Lcom/viber/voip/stickers/c/e;-><init>(ILjava/lang/String;)V

    .line 300
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/c/e;->c(Z)V

    .line 302
    invoke-direct {p0}, Lcom/viber/voip/stickers/r;->x()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/c/e;->b(I)V

    .line 303
    iget-object v1, p0, Lcom/viber/voip/stickers/r;->c:Lcom/viber/voip/stickers/a/a;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/a/a;->a(Lcom/viber/voip/stickers/c/e;)V

    .line 304
    iget-object v1, p0, Lcom/viber/voip/stickers/r;->p:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/c/e;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/r;->p:Ljava/util/List;

    .line 305
    return-void
.end method

.method private o(I)V
    .locals 2
    .parameter

    .prologue
    .line 309
    invoke-virtual {p0, p1}, Lcom/viber/voip/stickers/r;->b(I)Lcom/viber/voip/stickers/c/d;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/viber/voip/stickers/r;->p:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/c/d;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/stickers/r;->p:Ljava/util/List;

    .line 311
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->c:Lcom/viber/voip/stickers/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/a/a;->d(I)I

    .line 312
    return-void
.end method

.method private w()V
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/r;->u:Lcom/viber/jni/PhoneControllerDelegateAdapter;

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 207
    return-void
.end method

.method private x()I
    .locals 4

    .prologue
    .line 316
    const/4 v0, 0x0

    .line 317
    iget-object v1, p0, Lcom/viber/voip/stickers/r;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/d;

    .line 318
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->a()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 319
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->a()I

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    .line 322
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private y()V
    .locals 2

    .prologue
    .line 907
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/stickers/w;

    invoke-direct {v1, p0}, Lcom/viber/voip/stickers/w;-><init>(Lcom/viber/voip/stickers/r;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->registerMediaMountListener(Lcom/viber/voip/du;)V

    .line 923
    return-void
.end method


# virtual methods
.method public a(IIZ)Lcom/viber/voip/stickers/c/a;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 760
    const/4 v1, 0x0

    .line 761
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->l:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/a;

    .line 762
    if-nez v0, :cond_1

    .line 763
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->c:Lcom/viber/voip/stickers/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/a/a;->a(I)Lcom/viber/voip/stickers/c/a;

    move-result-object v0

    .line 764
    if-nez v0, :cond_0

    .line 765
    new-instance v0, Lcom/viber/voip/stickers/c/a;

    invoke-direct {v0, p1, p2}, Lcom/viber/voip/stickers/c/a;-><init>(II)V

    .line 766
    if-eqz p3, :cond_0

    .line 767
    const/4 v1, 0x1

    .line 768
    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 771
    :cond_0
    iget-object v2, p0, Lcom/viber/voip/stickers/r;->l:Landroid/util/SparseArray;

    iget v3, v0, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 775
    :cond_1
    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->g()Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    .line 776
    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 778
    :cond_2
    return-object v0
.end method

.method public a(IZ)Lcom/viber/voip/stickers/c/a;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 756
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/viber/voip/stickers/r;->a(IIZ)Lcom/viber/voip/stickers/c/a;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->d:Lcom/viber/voip/stickers/d/c;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/d/c;->a(I)V

    .line 189
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/viber/voip/stickers/r;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->e:Lcom/viber/voip/stickers/b/h;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/b/h;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 496
    :cond_0
    return-void
.end method

.method a(Lcom/viber/voip/stickers/c/d;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 437
    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v2

    .line 438
    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 440
    :goto_0
    new-instance v3, Lcom/viber/voip/stickers/ae;

    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v2, v4}, Lcom/viber/voip/stickers/ae;-><init>(Lcom/viber/voip/stickers/r;ILjava/lang/String;)V

    .line 451
    invoke-virtual {p0}, Lcom/viber/voip/stickers/r;->q()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 452
    sget v1, Lcom/viber/voip/stickers/an;->j:I

    invoke-static {v2, v1}, Lcom/viber/voip/stickers/b/h;->a(II)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/viber/voip/ViberApplication;->getDownloadValve()Lcom/viber/voip/util/bb;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/viber/voip/util/bb;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/viber/voip/stickers/r;->e:Lcom/viber/voip/stickers/b/h;

    invoke-virtual {v1, p1}, Lcom/viber/voip/stickers/b/h;->a(Lcom/viber/voip/stickers/c/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    if-eqz v0, :cond_1

    .line 457
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->j:Lcom/viber/voip/stickers/am;

    invoke-virtual {v0, v3}, Lcom/viber/voip/stickers/am;->a(Lcom/viber/voip/stickers/d/b;)V

    .line 458
    invoke-virtual {v3}, Lcom/viber/voip/stickers/a;->a()V

    .line 471
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 438
    goto :goto_0

    .line 468
    :cond_3
    if-eqz v0, :cond_1

    invoke-virtual {v3, v1, p1}, Lcom/viber/voip/stickers/a;->a(ZLcom/viber/voip/stickers/c/d;)V

    goto :goto_1
.end method

.method public a(Lcom/viber/voip/stickers/c/e;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 737
    iget v0, p0, Lcom/viber/voip/stickers/r;->q:I

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 738
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/viber/voip/stickers/r;->b(IZ)V

    .line 742
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/r;->k(I)Ljava/util/List;

    move-result-object v0

    .line 743
    if-eqz p1, :cond_2

    invoke-static {p1, v0}, Lcom/viber/voip/stickers/an;->a(Lcom/viber/voip/stickers/c/e;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 744
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->c:Lcom/viber/voip/stickers/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/a/a;->a(Lcom/viber/voip/stickers/c/e;)V

    .line 748
    :cond_2
    invoke-direct {p0, v2}, Lcom/viber/voip/stickers/r;->a(Z)V

    .line 749
    return-void
.end method

.method public declared-synchronized a(Lcom/viber/voip/stickers/d/a;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->d:Lcom/viber/voip/stickers/d/c;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/d/c;->a(Lcom/viber/voip/stickers/d/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/viber/voip/stickers/d/b;)V
    .locals 1
    .parameter

    .prologue
    .line 222
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->j:Lcom/viber/voip/stickers/am;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/am;->a(Lcom/viber/voip/stickers/d/b;)V

    .line 223
    return-void
.end method

.method a(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    const-string/jumbo v0, "updatePromoStickerPackages"

    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/r;->a(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/viber/voip/stickers/r;->j()Ljava/util/List;

    move-result-object v2

    .line 271
    const/4 v0, 0x0

    .line 274
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 275
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 276
    add-int/lit8 v0, v1, 0x1

    .line 277
    invoke-direct {p0, v4}, Lcom/viber/voip/stickers/r;->o(I)V

    :goto_1
    move v1, v0

    goto :goto_0

    .line 282
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 283
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 284
    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/r;->b(I)Lcom/viber/voip/stickers/c/d;

    move-result-object v4

    .line 285
    if-nez v4, :cond_1

    .line 286
    add-int/lit8 v1, v1, 0x1

    .line 287
    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/r;->n(I)V

    goto :goto_2

    .line 292
    :cond_2
    if-lez v1, :cond_3

    .line 293
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/r;->a(Z)V

    .line 295
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public a(ZLjava/lang/Runnable;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 602
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->k:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/stickers/t;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/viber/voip/stickers/t;-><init>(Lcom/viber/voip/stickers/r;ZZLjava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 635
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "PREF_MARKET_CONSUME_ON_DELETE_STICKER_PACKAGES"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/Runnable;)V

    .line 639
    :cond_0
    return-void
.end method

.method public a(IIZZ)[Lcom/viber/voip/stickers/p;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 668
    iget v0, p0, Lcom/viber/voip/stickers/r;->q:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/stickers/r;->r:Lcom/viber/voip/stickers/q;

    if-nez v0, :cond_5

    .line 669
    :cond_0
    invoke-virtual {p0, p1}, Lcom/viber/voip/stickers/r;->k(I)Ljava/util/List;

    move-result-object v0

    .line 670
    iget-object v2, p0, Lcom/viber/voip/stickers/r;->s:Lcom/viber/voip/stickers/bb;

    invoke-virtual {v2}, Lcom/viber/voip/stickers/bb;->a()V

    .line 671
    iget-object v2, p0, Lcom/viber/voip/stickers/r;->b:Lcom/viber/voip/stickers/b;

    invoke-virtual {v2, p1}, Lcom/viber/voip/stickers/b;->a(I)V

    .line 672
    iget-object v2, p0, Lcom/viber/voip/stickers/r;->k:Landroid/os/Handler;

    new-instance v3, Lcom/viber/voip/stickers/u;

    invoke-direct {v3, p0, v0}, Lcom/viber/voip/stickers/u;-><init>(Lcom/viber/voip/stickers/r;Ljava/lang/Iterable;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 680
    new-instance v2, Lcom/viber/voip/stickers/q;

    invoke-direct {v2, v0, p1}, Lcom/viber/voip/stickers/q;-><init>(Ljava/lang/Iterable;I)V

    iput-object v2, p0, Lcom/viber/voip/stickers/r;->r:Lcom/viber/voip/stickers/q;

    .line 682
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->r:Lcom/viber/voip/stickers/q;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/q;->b()[Lcom/viber/voip/stickers/p;

    move-result-object v3

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v0, v3, v2

    .line 683
    iget-object v5, v0, Lcom/viber/voip/stickers/p;->a:[Lcom/viber/voip/stickers/c/a;

    array-length v6, v5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_2

    aget-object v7, v5, v0

    .line 684
    iget-object v8, p0, Lcom/viber/voip/stickers/r;->l:Landroid/util/SparseArray;

    iget v9, v7, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {v8, v9, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 685
    invoke-virtual {v7}, Lcom/viber/voip/stickers/c/a;->g()Z

    move-result v8

    if-nez v8, :cond_1

    .line 686
    iget-object v8, p0, Lcom/viber/voip/stickers/r;->f:Lcom/viber/voip/stickers/ar;

    invoke-virtual {v8, v7}, Lcom/viber/voip/stickers/ar;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 683
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 682
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 691
    :cond_3
    if-eqz p4, :cond_4

    .line 692
    iget v0, p0, Lcom/viber/voip/stickers/r;->q:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/r;->j(I)V

    .line 695
    :cond_4
    iput p1, p0, Lcom/viber/voip/stickers/r;->q:I

    .line 697
    if-eqz p3, :cond_6

    iget-object v0, p0, Lcom/viber/voip/stickers/r;->r:Lcom/viber/voip/stickers/q;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/q;->a()[Lcom/viber/voip/stickers/p;

    move-result-object v0

    .line 701
    :goto_2
    if-ltz p2, :cond_5

    .line 702
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 703
    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    if-gt v3, p2, :cond_7

    .line 704
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    .line 706
    aget-object v4, v0, v3

    invoke-direct {p0, v4, p3, v1, v2}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/p;ZJ)V

    .line 707
    add-int/lit8 v4, v3, -0x1

    if-lez v4, :cond_5

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    invoke-direct {p0, v0, p3, v1, v2}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/p;ZJ)V

    .line 714
    :cond_5
    :goto_3
    if-eqz p3, :cond_8

    iget-object v0, p0, Lcom/viber/voip/stickers/r;->r:Lcom/viber/voip/stickers/q;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/q;->a()[Lcom/viber/voip/stickers/p;

    move-result-object v0

    :goto_4
    return-object v0

    .line 697
    :cond_6
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->r:Lcom/viber/voip/stickers/q;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/q;->b()[Lcom/viber/voip/stickers/p;

    move-result-object v0

    goto :goto_2

    .line 709
    :cond_7
    aget-object v3, v0, p2

    invoke-direct {p0, v3, p3, v1, v2}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/p;ZJ)V

    .line 710
    array-length v3, v0

    add-int/lit8 v4, p2, 0x1

    if-le v3, v4, :cond_5

    add-int/lit8 v3, p2, 0x1

    aget-object v0, v0, v3

    invoke-direct {p0, v0, p3, v1, v2}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/p;ZJ)V

    goto :goto_3

    .line 714
    :cond_8
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->r:Lcom/viber/voip/stickers/q;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/q;->b()[Lcom/viber/voip/stickers/p;

    move-result-object v0

    goto :goto_4
.end method

.method public a(IZZ)[Lcom/viber/voip/stickers/p;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 663
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/viber/voip/stickers/r;->a(IIZZ)[Lcom/viber/voip/stickers/p;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/viber/voip/stickers/c/d;
    .locals 3
    .parameter

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/viber/voip/stickers/r;->g()Ljava/util/List;

    move-result-object v0

    .line 390
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/d;

    .line 391
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 395
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->k:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/stickers/ad;

    invoke-direct {v1, p0}, Lcom/viber/voip/stickers/ad;-><init>(Lcom/viber/voip/stickers/r;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 169
    return-void
.end method

.method public b(Lcom/viber/voip/stickers/c/a;)V
    .locals 2
    .parameter

    .prologue
    .line 731
    iget v0, p1, Lcom/viber/voip/stickers/c/a;->b:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/stickers/r;->a(IZ)Lcom/viber/voip/stickers/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/c/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->c:Lcom/viber/voip/stickers/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/a/a;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 734
    :cond_0
    return-void
.end method

.method public b(Lcom/viber/voip/stickers/c/e;)V
    .locals 1
    .parameter

    .prologue
    .line 785
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->c:Lcom/viber/voip/stickers/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/a/a;->a(Lcom/viber/voip/stickers/c/e;)V

    .line 786
    return-void
.end method

.method public declared-synchronized b(Lcom/viber/voip/stickers/d/a;)V
    .locals 1
    .parameter

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->d:Lcom/viber/voip/stickers/d/c;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/d/c;->b(Lcom/viber/voip/stickers/d/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/viber/voip/stickers/d/b;)V
    .locals 1
    .parameter

    .prologue
    .line 226
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->j:Lcom/viber/voip/stickers/am;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/am;->b(Lcom/viber/voip/stickers/d/b;)V

    .line 227
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/viber/voip/stickers/c/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 548
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->k:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/stickers/ag;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/stickers/ag;-><init>(Lcom/viber/voip/stickers/r;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 563
    return-void
.end method

.method public c()V
    .locals 4

    .prologue
    .line 196
    monitor-enter p0

    .line 197
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/viber/voip/stickers/r;->f()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/viber/voip/stickers/r;->h()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/viber/voip/stickers/r;->i()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    iget-object v3, p0, Lcom/viber/voip/stickers/r;->d:Lcom/viber/voip/stickers/d/c;

    invoke-virtual {v3, v0, v2, v1}, Lcom/viber/voip/stickers/d/c;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 203
    return-void

    .line 200
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c(Lcom/viber/voip/stickers/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 782
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->c:Lcom/viber/voip/stickers/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/a/a;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 783
    return-void
.end method

.method public c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 399
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->e:Lcom/viber/voip/stickers/b/h;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/b/h;->b(I)Z

    move-result v0

    return v0
.end method

.method public d()Lcom/viber/voip/stickers/b;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->b:Lcom/viber/voip/stickers/b;

    return-object v0
.end method

.method public d(I)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 403
    iget-object v2, p0, Lcom/viber/voip/stickers/r;->e:Lcom/viber/voip/stickers/b/h;

    invoke-virtual {v2, p1}, Lcom/viber/voip/stickers/b/h;->c(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 408
    :cond_0
    :goto_0
    return v0

    .line 404
    :cond_1
    invoke-virtual {p0, p1}, Lcom/viber/voip/stickers/r;->b(I)Lcom/viber/voip/stickers/c/d;

    move-result-object v2

    .line 405
    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 406
    :cond_2
    invoke-interface {v2}, Lcom/viber/voip/stickers/c/d;->h()Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 407
    :cond_3
    invoke-interface {v2}, Lcom/viber/voip/stickers/c/d;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public e()Lcom/viber/voip/stickers/bb;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->s:Lcom/viber/voip/stickers/bb;

    return-object v0
.end method

.method public e(I)Z
    .locals 1
    .parameter

    .prologue
    .line 416
    invoke-virtual {p0, p1}, Lcom/viber/voip/stickers/r;->b(I)Lcom/viber/voip/stickers/c/d;

    move-result-object v0

    .line 417
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->m:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/r;->a(Z)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->m:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f(I)Z
    .locals 2
    .parameter

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/viber/voip/stickers/r;->b(I)Lcom/viber/voip/stickers/c/d;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->p:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/r;->a(Z)V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->p:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public g(I)V
    .locals 1
    .parameter

    .prologue
    .line 474
    invoke-virtual {p0, p1}, Lcom/viber/voip/stickers/r;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {p0, p1}, Lcom/viber/voip/stickers/r;->b(I)Lcom/viber/voip/stickers/c/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/c/d;)V

    .line 477
    :cond_0
    return-void
.end method

.method public declared-synchronized h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->o:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/r;->a(Z)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->o:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public h(I)V
    .locals 1
    .parameter

    .prologue
    .line 480
    invoke-virtual {p0}, Lcom/viber/voip/stickers/r;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->e:Lcom/viber/voip/stickers/b/h;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/b/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    :cond_0
    return-void
.end method

.method public declared-synchronized i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->n:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/stickers/r;->a(Z)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->n:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i(I)V
    .locals 2
    .parameter

    .prologue
    .line 499
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->k:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/stickers/af;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/stickers/af;-><init>(Lcom/viber/voip/stickers/r;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 545
    return-void
.end method

.method public declared-synchronized j()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/viber/voip/stickers/r;->g()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 259
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/d;

    .line 262
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 259
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 264
    :cond_1
    monitor-exit p0

    return-object v1
.end method

.method public j(I)V
    .locals 2
    .parameter

    .prologue
    .line 567
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->k:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/stickers/ah;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/stickers/ah;-><init>(Lcom/viber/voip/stickers/r;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 581
    return-void
.end method

.method public k()Lcom/viber/voip/stickers/b/m;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->e:Lcom/viber/voip/stickers/b/h;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/b/h;->b()Lcom/viber/voip/stickers/b/m;

    move-result-object v0

    return-object v0
.end method

.method k(I)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->c:Lcom/viber/voip/stickers/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/stickers/a/a;->b(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public l()I
    .locals 3

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/viber/voip/stickers/r;->f()Ljava/util/List;

    move-result-object v0

    .line 427
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/stickers/c/d;

    .line 428
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->j()Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    invoke-interface {v0}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v0

    .line 432
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l(I)Lcom/viber/voip/stickers/c/a;
    .locals 2
    .parameter

    .prologue
    .line 752
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/viber/voip/stickers/r;->a(IIZ)Lcom/viber/voip/stickers/c/a;

    move-result-object v0

    return-object v0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->k:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/stickers/ai;

    invoke-direct {v1, p0}, Lcom/viber/voip/stickers/ai;-><init>(Lcom/viber/voip/stickers/r;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 599
    return-void
.end method

.method public m(I)Z
    .locals 1
    .parameter

    .prologue
    .line 864
    invoke-static {p1}, Lcom/viber/voip/stickers/b/h;->e(I)Z

    move-result v0

    return v0
.end method

.method public n()V
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->b:Lcom/viber/voip/stickers/b;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/b;->a()V

    .line 646
    return-void
.end method

.method public o()V
    .locals 3

    .prologue
    .line 654
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "pref_package"

    iget v2, p0, Lcom/viber/voip/stickers/r;->q:I

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 655
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->b:Lcom/viber/voip/stickers/b;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/b;->b()V

    .line 656
    return-void
.end method

.method public p()Lcom/viber/voip/stickers/ar;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->f:Lcom/viber/voip/stickers/ar;

    return-object v0
.end method

.method public q()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 798
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 819
    :cond_0
    :goto_0
    return v0

    .line 802
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/stickers/r;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    sget-object v1, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    const-string/jumbo v2, "temp"

    invoke-static {v1, v2}, Lcom/viber/voip/messages/extras/image/h;->b(Lcom/viber/voip/messages/extras/image/l;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 807
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 809
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 810
    const-string/jumbo v1, "test"

    invoke-virtual {v2, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 812
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 813
    const/4 v0, 0x1

    goto :goto_0

    .line 814
    :catch_0
    move-exception v1

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "canBeDownloaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/stickers/r;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public r()V
    .locals 0

    .prologue
    .line 827
    return-void
.end method

.method public s()V
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->e:Lcom/viber/voip/stickers/b/h;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/b/h;->a()V

    .line 834
    return-void
.end method

.method public t()V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/viber/voip/stickers/r;->g:Lcom/viber/voip/stickers/ao;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/ao;->a()V

    .line 838
    return-void
.end method

.method u()Z
    .locals 6

    .prologue
    .line 847
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 848
    iget-wide v2, p0, Lcom/viber/voip/stickers/r;->t:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 849
    iput-wide v0, p0, Lcom/viber/voip/stickers/r;->t:J

    .line 850
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(Z)Z

    move-result v0

    .line 852
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public v()I
    .locals 3

    .prologue
    .line 868
    iget v0, p0, Lcom/viber/voip/stickers/r;->q:I

    .line 869
    iget v1, p0, Lcom/viber/voip/stickers/r;->q:I

    if-nez v1, :cond_0

    .line 870
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "pref_package"

    const/16 v2, 0x190

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    .line 872
    :cond_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/r;->f(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 873
    invoke-virtual {p0}, Lcom/viber/voip/stickers/r;->l()I

    move-result v0

    .line 875
    :cond_1
    return v0
.end method
