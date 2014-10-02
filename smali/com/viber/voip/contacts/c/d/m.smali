.class public abstract Lcom/viber/voip/contacts/c/d/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/a/m;
.implements Lcom/viber/voip/contacts/c/d/b;
.implements Lcom/viber/voip/contacts/c/d/c;
.implements Lcom/viber/voip/contacts/c/d/g;
.implements Lcom/viber/voip/contacts/c/f/b/q;


# instance fields
.field protected a:Landroid/os/Handler;

.field protected b:Lcom/viber/voip/contacts/c/a/a;

.field protected c:Lcom/viber/voip/ViberApplication;

.field protected d:Lcom/viber/service/contacts/a/a;

.field protected e:Lcom/viber/voip/contacts/c/d/aa;

.field protected f:Lcom/viber/voip/contacts/c/f/b;

.field protected g:Lcom/viber/voip/contacts/a/a;

.field protected h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/c/d/e;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/c/d/f;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/viber/voip/contacts/c/b/a;

.field private final k:Lcom/viber/voip/contacts/c/b/e;


# direct methods
.method protected constructor <init>(Lcom/viber/voip/ViberApplication;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->h:Ljava/util/Set;

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->i:Ljava/util/Set;

    .line 65
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/m;->c:Lcom/viber/voip/ViberApplication;

    .line 67
    sget-object v0, Lcom/viber/voip/dk;->c:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->a:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/viber/voip/contacts/c/a/b;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/m;->a:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/contacts/c/a/h;

    iget-object v3, p0, Lcom/viber/voip/contacts/c/d/m;->c:Lcom/viber/voip/ViberApplication;

    new-instance v4, Lcom/viber/voip/contacts/c/c/a/a;

    invoke-direct {v4}, Lcom/viber/voip/contacts/c/c/a/a;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/viber/voip/contacts/c/a/h;-><init>(Landroid/content/Context;Lcom/viber/voip/contacts/c/c/a;)V

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/contacts/c/a/b;-><init>(Landroid/os/Handler;Lcom/viber/voip/contacts/c/a/a;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->b:Lcom/viber/voip/contacts/c/a/a;

    .line 71
    new-instance v0, Lcom/viber/voip/contacts/c/b/a;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/m;->c:Lcom/viber/voip/ViberApplication;

    invoke-direct {v0, v1}, Lcom/viber/voip/contacts/c/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->j:Lcom/viber/voip/contacts/c/b/a;

    .line 72
    new-instance v0, Lcom/viber/voip/contacts/c/b/e;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/m;->a:Landroid/os/Handler;

    new-array v2, v6, [Lcom/viber/voip/contacts/c/b/d;

    iget-object v3, p0, Lcom/viber/voip/contacts/c/d/m;->j:Lcom/viber/voip/contacts/c/b/a;

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/contacts/c/b/e;-><init>(Landroid/os/Handler;[Lcom/viber/voip/contacts/c/b/d;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->k:Lcom/viber/voip/contacts/c/b/e;

    .line 74
    new-instance v0, Lcom/viber/service/contacts/a/a;

    invoke-direct {v0}, Lcom/viber/service/contacts/a/a;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->d:Lcom/viber/service/contacts/a/a;

    .line 75
    new-instance v0, Lcom/viber/voip/contacts/c/d/aa;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/m;->c:Lcom/viber/voip/ViberApplication;

    invoke-direct {v0, v1}, Lcom/viber/voip/contacts/c/d/aa;-><init>(Lcom/viber/voip/ViberApplication;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    .line 76
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->c:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->f:Lcom/viber/voip/contacts/c/f/b;

    .line 77
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->f:Lcom/viber/voip/contacts/c/f/b;

    invoke-virtual {v0, p0}, Lcom/viber/voip/contacts/c/f/b;->a(Lcom/viber/voip/contacts/c/d/g;)V

    .line 79
    new-instance v0, Lcom/viber/voip/contacts/a/a;

    invoke-direct {v0}, Lcom/viber/voip/contacts/a/a;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->g:Lcom/viber/voip/contacts/a/a;

    .line 80
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/m;->p()V

    .line 82
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/m;->k:Lcom/viber/voip/contacts/c/b/e;

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 83
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getConnectionListener()Lcom/viber/jni/connection/ConnectionListener;

    move-result-object v0

    new-array v1, v6, [Lcom/viber/jni/connection/ConnectionDelegate;

    iget-object v2, p0, Lcom/viber/voip/contacts/c/d/m;->k:Lcom/viber/voip/contacts/c/b/e;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/viber/jni/connection/ConnectionListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 84
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->k:Lcom/viber/voip/contacts/c/b/e;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/b/e;->a(Lcom/viber/jni/PhoneControllerWrapper;)V

    .line 86
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/d/m;->d()Lcom/viber/voip/contacts/c/d/at;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/contacts/c/d/n;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/c/d/n;-><init>(Lcom/viber/voip/contacts/c/d/m;)V

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/d/at;->a(Lcom/viber/voip/contacts/c/d/au;)V

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/d/m;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/m;->p()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/d/m;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/c/d/m;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    new-instance v1, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Lcom/viber/voip/contacts/c/d/p;

    invoke-direct {v2, p0, p1}, Lcom/viber/voip/contacts/c/d/p;-><init>(Lcom/viber/voip/contacts/c/d/m;Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/contacts/c/d/aa;->b(Ljava/util/Set;Lcom/viber/voip/contacts/c/d/ap;)V

    .line 400
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/contacts/c/d/m;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/m;->q()V

    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    new-instance v1, Lcom/viber/voip/contacts/c/d/u;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/c/d/u;-><init>(Lcom/viber/voip/contacts/c/d/m;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/d/aa;->a(Lcom/viber/voip/contacts/c/d/ar;)V

    .line 158
    return-void
.end method

.method private q()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->h:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/c/d/m;->a(Ljava/util/Set;)V

    .line 198
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/c/d/aa;->b(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->f:Lcom/viber/voip/contacts/c/f/b;

    invoke-virtual {v0, p0}, Lcom/viber/voip/contacts/c/f/b;->b(Lcom/viber/voip/contacts/c/d/g;)V

    .line 163
    return-void
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 183
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->i:Ljava/util/Set;

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/viber/voip/contacts/c/d/m;->a(IZZLjava/util/Set;)V

    .line 184
    return-void
.end method

.method public a(ILjava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    invoke-static {}, Lcom/viber/voip/util/fz;->a()Lcom/viber/voip/util/fz;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/util/fz;->a(ILjava/util/Set;)V

    .line 352
    return-void
.end method

.method public a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/m;->i:Ljava/util/Set;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/viber/voip/contacts/c/d/m;->a(IZZLjava/util/Set;)V

    .line 194
    return-void
.end method

.method protected a(IZZLjava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/c/d/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    monitor-enter p4

    .line 489
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 490
    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/d/f;

    .line 492
    if-eqz p3, :cond_0

    .line 493
    invoke-interface {v0, p1, p2}, Lcom/viber/voip/contacts/c/d/f;->b(IZ)V

    goto :goto_0

    .line 490
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 494
    :cond_0
    if-eqz p2, :cond_1

    .line 495
    invoke-interface {v0, p1}, Lcom/viber/voip/contacts/c/d/f;->b(I)V

    goto :goto_0

    .line 497
    :cond_1
    invoke-interface {v0, p1}, Lcom/viber/voip/contacts/c/d/f;->b_(I)V

    goto :goto_0

    .line 500
    :cond_2
    return-void
.end method

.method public a(JJLjava/lang/String;Z)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 301
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    new-instance v7, Lcom/viber/voip/contacts/c/d/x;

    invoke-direct {v7, p0}, Lcom/viber/voip/contacts/c/d/x;-><init>(Lcom/viber/voip/contacts/c/d/m;)V

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/contacts/c/d/aa;->a(JJLjava/lang/String;ZLcom/viber/voip/contacts/c/d/ap;)V

    .line 308
    return-void
.end method

.method public a(JJLjava/lang/String;ZLcom/viber/voip/contacts/c/d/d;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 468
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/d/m;->j()Lcom/viber/voip/contacts/c/d/a;

    move-result-object v0

    move-wide v1, p1

    move-object v3, p5

    move v4, p6

    move-object v5, p7

    invoke-interface/range {v0 .. v5}, Lcom/viber/voip/contacts/c/d/a;->a(JLjava/lang/String;ZLcom/viber/voip/contacts/c/d/d;)V

    .line 469
    return-void
.end method

.method public a(JLcom/viber/voip/contacts/c/d/h;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    invoke-virtual {v0, p1, p2, p3}, Lcom/viber/voip/contacts/c/d/aa;->a(JLcom/viber/voip/contacts/c/d/h;)V

    .line 297
    return-void
.end method

.method public a(JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 312
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    new-instance v1, Lcom/viber/voip/contacts/c/d/y;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/contacts/c/d/y;-><init>(Lcom/viber/voip/contacts/c/d/m;J)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/viber/voip/contacts/c/d/aa;->a(JLjava/lang/String;Lcom/viber/voip/contacts/c/d/ap;)V

    .line 326
    return-void
.end method

.method public a(JLjava/lang/String;ILcom/viber/voip/contacts/c/d/ap;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 421
    iget-object v6, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    new-instance v0, Lcom/viber/voip/contacts/c/d/s;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/contacts/c/d/s;-><init>(Lcom/viber/voip/contacts/c/d/m;JLjava/lang/String;Lcom/viber/voip/contacts/c/d/ap;)V

    invoke-virtual {v6, p1, p2, p4, v0}, Lcom/viber/voip/contacts/c/d/aa;->a(JILcom/viber/voip/contacts/c/d/ap;)V

    .line 432
    return-void
.end method

.method public a(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 363
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    new-instance v1, Lcom/viber/voip/contacts/c/d/z;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/viber/voip/contacts/c/d/z;-><init>(Lcom/viber/voip/contacts/c/d/m;ZJ)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/viber/voip/contacts/c/d/aa;->a(JLcom/viber/voip/contacts/c/d/ap;)V

    .line 373
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/c/d/d;)V
    .locals 1
    .parameter

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/d/m;->j()Lcom/viber/voip/contacts/c/d/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/contacts/c/d/a;->a(Lcom/viber/voip/contacts/c/d/d;)V

    .line 479
    return-void
.end method

.method public a(Lcom/viber/voip/contacts/c/d/e;)V
    .locals 2
    .parameter

    .prologue
    .line 201
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/m;->h:Ljava/util/Set;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    monitor-exit v1

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/viber/voip/contacts/c/d/f;)V
    .locals 2
    .parameter

    .prologue
    .line 214
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/m;->i:Ljava/util/Set;

    monitor-enter v1

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    monitor-exit v1

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/Character;)V
    .locals 1
    .parameter

    .prologue
    .line 356
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->g:Lcom/viber/voip/contacts/a/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/a/a;->a(Ljava/lang/Character;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/viber/voip/contacts/c/d/i;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/contacts/c/d/aa;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/d/i;)V

    .line 267
    return-void
.end method

.method public a(Ljava/lang/String;ZLcom/viber/voip/contacts/c/d/d;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/d/m;->j()Lcom/viber/voip/contacts/c/d/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/contacts/c/d/a;->a(Ljava/lang/String;ZLcom/viber/voip/contacts/c/d/d;)V

    .line 474
    return-void
.end method

.method public a(Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    invoke-interface {p2, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 234
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    new-instance v1, Lcom/viber/voip/contacts/c/d/v;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/contacts/c/d/v;-><init>(Lcom/viber/voip/contacts/c/d/m;Ljava/util/Map;)V

    invoke-virtual {v0, p2, v1}, Lcom/viber/voip/contacts/c/d/aa;->a(Ljava/util/Set;Lcom/viber/voip/contacts/c/d/ap;)V

    .line 247
    return-void
.end method

.method protected a(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/c/d/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    monitor-enter p1

    .line 505
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 506
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/c/d/e;

    .line 508
    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/e;->a()V

    goto :goto_0

    .line 506
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 510
    :cond_0
    return-void
.end method

.method public a(Ljava/util/Set;Lcom/viber/voip/contacts/c/d/j;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/viber/voip/contacts/c/d/j;",
            ")V"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/contacts/c/d/aa;->a(Ljava/util/Set;Lcom/viber/voip/contacts/c/d/j;)V

    .line 277
    return-void
.end method

.method public a(Ljava/util/Set;Lcom/viber/voip/contacts/c/d/k;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/viber/voip/contacts/c/d/k;",
            ")V"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/contacts/c/d/aa;->a(Ljava/util/Set;Lcom/viber/voip/contacts/c/d/k;)V

    .line 262
    return-void
.end method

.method public a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/d/m;->j()Lcom/viber/voip/contacts/c/d/a;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/voip/contacts/c/d/a;->a(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    .line 463
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->h:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/c/d/m;->a(Ljava/util/Set;)V

    .line 464
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/viber/voip/contacts/b/b;
    .locals 1
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/c/d/aa;->a(Ljava/lang/String;)Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    return-object v0
.end method

.method public b(I)V
    .locals 3
    .parameter

    .prologue
    .line 188
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/contacts/c/d/m;->i:Ljava/util/Set;

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/viber/voip/contacts/c/d/m;->a(IZZLjava/util/Set;)V

    .line 189
    return-void
.end method

.method public b(Lcom/viber/voip/contacts/c/d/e;)V
    .locals 2
    .parameter

    .prologue
    .line 207
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/m;->h:Ljava/util/Set;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 209
    monitor-exit v1

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/viber/voip/contacts/c/d/f;)V
    .locals 2
    .parameter

    .prologue
    .line 221
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/m;->i:Ljava/util/Set;

    monitor-enter v1

    .line 222
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->i:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 223
    monitor-exit v1

    .line 224
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Z)V
    .locals 4
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->c:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 123
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v1

    const-string/jumbo v2, "PREF_CURRENT_LOCALE"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    if-nez p1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/contacts/c/d/m;->a:Landroid/os/Handler;

    new-instance v2, Lcom/viber/voip/contacts/c/d/t;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/contacts/c/d/t;-><init>(Lcom/viber/voip/contacts/c/d/m;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 144
    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/viber/voip/contacts/c/d/l;
    .locals 1
    .parameter

    .prologue
    .line 341
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    invoke-virtual {v0, p1}, Lcom/viber/voip/contacts/c/d/aa;->c(Ljava/lang/String;)Lcom/viber/voip/contacts/c/d/l;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/viber/voip/contacts/c/d/at;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->c:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/a;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/viber/voip/contacts/c/a/a;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->b:Lcom/viber/voip/contacts/c/a/a;

    return-object v0
.end method

.method public f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 451
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/d/aa;->a()V

    .line 452
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->c:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/a;->a(Lcom/viber/voip/ViberApplication;)Lcom/viber/voip/contacts/c/f/a;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/viber/voip/contacts/c/f/a;->a(IZ)V

    .line 453
    return-void
.end method

.method public g()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->e:Lcom/viber/voip/contacts/c/d/aa;

    new-instance v1, Lcom/viber/voip/contacts/c/d/q;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/c/d/q;-><init>(Lcom/viber/voip/contacts/c/d/m;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/d/aa;->a(Lcom/viber/voip/contacts/c/d/aq;)V

    .line 417
    return-void
.end method

.method public h()Lcom/viber/voip/contacts/a/a;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/m;->g:Lcom/viber/voip/contacts/a/a;

    return-object v0
.end method

.method protected abstract i()V
.end method

.method protected abstract j()Lcom/viber/voip/contacts/c/d/a;
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public l()V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/m;->q()V

    .line 173
    return-void
.end method

.method public m()V
    .locals 1

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/d/m;->j()Lcom/viber/voip/contacts/c/d/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/a;->a()V

    .line 178
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/m;->q()V

    .line 179
    return-void
.end method

.method public n()V
    .locals 0

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/d/m;->f()V

    .line 447
    return-void
.end method
