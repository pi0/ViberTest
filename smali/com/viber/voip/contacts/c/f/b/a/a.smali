.class public Lcom/viber/voip/contacts/c/f/b/a/a;
.super Lcom/viber/voip/contacts/c/f/b/r;
.source "SourceFile"


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field private final A:Ljava/lang/Runnable;

.field private final B:Ljava/lang/Runnable;

.field private final C:Ljava/lang/Runnable;

.field private final D:Ljava/lang/Runnable;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Ljava/lang/String;

.field private final x:Lcom/viber/voip/contacts/c/e/b;

.field private final y:Landroid/os/Handler;

.field private final z:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/f/b/a/a;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/contacts/c/f/b/q;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 131
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/contacts/c/f/b/r;-><init>(Lcom/viber/voip/ViberApplication;Lcom/viber/voip/contacts/c/f/b/q;)V

    .line 59
    iput-boolean v3, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->p:Z

    .line 67
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->w:Ljava/lang/String;

    .line 72
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/a/b;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/c/f/b/a/b;-><init>(Lcom/viber/voip/contacts/c/f/b/a/a;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->z:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/a/e;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/c/f/b/a/e;-><init>(Lcom/viber/voip/contacts/c/f/b/a/a;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->A:Ljava/lang/Runnable;

    .line 98
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/a/f;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/c/f/b/a/f;-><init>(Lcom/viber/voip/contacts/c/f/b/a/a;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->B:Ljava/lang/Runnable;

    .line 107
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/a/g;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/c/f/b/a/g;-><init>(Lcom/viber/voip/contacts/c/f/b/a/a;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->C:Ljava/lang/Runnable;

    .line 116
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/a/h;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/c/f/b/a/h;-><init>(Lcom/viber/voip/contacts/c/f/b/a/a;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->D:Ljava/lang/Runnable;

    .line 136
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->b:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "sync_vertion"

    invoke-interface {v0, v1, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 140
    :cond_0
    invoke-static {p1}, Lcom/viber/voip/contacts/c/e/b;->a(Landroid/content/Context;)Lcom/viber/voip/contacts/c/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->x:Lcom/viber/voip/contacts/c/e/b;

    .line 141
    sget-object v0, Lcom/viber/voip/dk;->h:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->y:Landroid/os/Handler;

    .line 143
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->i:Lcom/viber/voip/contacts/c/f/a;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/a;->b()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->u:I

    .line 144
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->g:Lcom/viber/voip/contacts/c/f/b/u;

    const/4 v1, 0x0

    new-instance v2, Lcom/viber/voip/contacts/c/f/b/a/i;

    invoke-direct {v2, p0}, Lcom/viber/voip/contacts/c/f/b/a/i;-><init>(Lcom/viber/voip/contacts/c/f/b/a/a;)V

    invoke-virtual {v0, v3, v1, v2}, Lcom/viber/voip/contacts/c/f/b/u;->a(ZLjava/lang/String;Lcom/viber/voip/contacts/c/f/b/af;)V

    .line 154
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/b/a/a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->t:I

    return p1
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/b/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->w:Ljava/lang/String;

    return-object p1
.end method

.method private a(JZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 273
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->x:Lcom/viber/voip/contacts/c/e/b;

    new-instance v1, Lcom/viber/voip/contacts/c/f/b/a/k;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/c/f/b/a/k;-><init>(Lcom/viber/voip/contacts/c/f/b/a/a;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/viber/voip/contacts/c/e/b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 280
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/b/a/a;JZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(JZ)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/b/a/a;Lcom/viber/voip/contacts/c/f/b/a/m;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/m;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/b/a/a;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private declared-synchronized a(Lcom/viber/voip/contacts/c/f/b/a/m;)V
    .locals 4
    .parameter

    .prologue
    .line 221
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->j:Lcom/viber/jni/controller/PhoneController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->o:Z

    if-nez v0, :cond_2

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/b/a/a;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 227
    :cond_2
    :try_start_1
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->a:Lcom/viber/voip/contacts/c/f/b/a/m;

    if-ne p1, v0, :cond_3

    .line 229
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/b/a/a;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->C:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 233
    :cond_3
    :try_start_2
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->b:Lcom/viber/voip/contacts/c/f/b/a/m;

    if-ne p1, v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 236
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/b/a/a;->i()V

    goto :goto_0

    .line 237
    :cond_4
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->c:Lcom/viber/voip/contacts/c/f/b/a/m;

    if-ne p1, v0, :cond_6

    .line 238
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->b:Z

    if-eqz v0, :cond_5

    .line 239
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->i:Lcom/viber/voip/contacts/c/f/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/a;->a(I)V

    .line 242
    :cond_5
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/b/a/a;->k()V

    goto :goto_0

    .line 243
    :cond_6
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->d:Lcom/viber/voip/contacts/c/f/b/a/m;

    if-ne p1, v0, :cond_7

    .line 245
    const-wide/16 v0, 0x3e8

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(JZ)V

    goto :goto_0

    .line 246
    :cond_7
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->g:Lcom/viber/voip/contacts/c/f/b/a/m;

    if-ne p1, v0, :cond_8

    .line 248
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->f:Lcom/viber/voip/contacts/c/f/b/q;

    iget v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->v:I

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/f/b/q;->b(I)V

    .line 249
    const-wide/16 v0, 0x2710

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(JZ)V

    goto :goto_0

    .line 250
    :cond_8
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->e:Lcom/viber/voip/contacts/c/f/b/a/m;

    if-ne p1, v0, :cond_a

    .line 251
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->b:Z

    if-eqz v0, :cond_9

    .line 252
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->i:Lcom/viber/voip/contacts/c/f/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/f/a;->a(I)V

    .line 255
    :cond_9
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->f:Lcom/viber/voip/contacts/c/f/b/q;

    iget v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->u:I

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/f/b/q;->a(I)V

    .line 256
    const-wide/16 v0, 0x2710

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(JZ)V

    goto :goto_0

    .line 257
    :cond_a
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->f:Lcom/viber/voip/contacts/c/f/b/a/m;

    if-ne p1, v0, :cond_1

    .line 259
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->n:Z

    if-nez v0, :cond_1

    .line 263
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->n:Z

    .line 264
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->b:Z

    if-eqz v0, :cond_b

    .line 265
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->x:Lcom/viber/voip/contacts/c/e/b;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->A:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/e/b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    :cond_b
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->f:Lcom/viber/voip/contacts/c/f/b/q;

    iget v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->u:I

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/f/b/q;->a(I)V

    .line 268
    const-wide/16 v0, 0x2710

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private a(ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 378
    monitor-enter p0

    .line 379
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->m:Z

    .line 380
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->g:Lcom/viber/voip/contacts/c/f/b/u;

    new-instance v1, Lcom/viber/voip/contacts/c/f/b/a/d;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/contacts/c/f/b/a/d;-><init>(Lcom/viber/voip/contacts/c/f/b/a/a;Z)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/viber/voip/contacts/c/f/b/u;->a(ZLjava/lang/String;Lcom/viber/voip/contacts/c/f/b/ad;)V

    .line 445
    return-void

    .line 380
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/b/a/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/f/b/a/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/c/f/b/a/a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->u:I

    return p1
.end method

.method static synthetic b(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/voip/contacts/c/f/a;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->i:Lcom/viber/voip/contacts/c/f/a;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/contacts/c/f/b/a/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->p:Z

    return p1
.end method

.method static synthetic c(Lcom/viber/voip/contacts/c/f/b/a/a;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput p1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->s:I

    return p1
.end method

.method static synthetic c(Lcom/viber/voip/contacts/c/f/b/a/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/viber/voip/contacts/c/f/b/a/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->q:Z

    return p1
.end method

.method static synthetic d(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/voip/contacts/c/f/a;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->i:Lcom/viber/voip/contacts/c/f/a;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/voip/contacts/c/f/b/a/a;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->n:Z

    return p1
.end method

.method static synthetic e(Lcom/viber/voip/contacts/c/f/b/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->u:I

    return v0
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 157
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "sync_vertion"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 161
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "sync_vertion"

    invoke-interface {v0, v1, v3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(ZLjava/lang/String;)V

    .line 164
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/viber/voip/contacts/c/f/b/a/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->p:Z

    return v0
.end method

.method static synthetic g(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/voip/contacts/c/f/b/q;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->f:Lcom/viber/voip/contacts/c/f/b/q;

    return-object v0
.end method

.method private g()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 187
    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->n:Z

    .line 188
    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->l:Z

    .line 189
    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->m:Z

    .line 190
    iput v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->s:I

    .line 191
    return-void
.end method

.method private declared-synchronized h()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 283
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->l:Z

    if-eqz v1, :cond_0

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    const/4 v0, 0x0

    .line 292
    :goto_0
    monitor-exit p0

    return v0

    .line 288
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->y:Landroid/os/Handler;

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->B:Ljava/lang/Runnable;

    const-wide/32 v3, 0x1d4c0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 290
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->l:Z

    .line 291
    sget-object v1, Lcom/viber/voip/contacts/c/f/b/a/m;->b:Lcom/viber/voip/contacts/c/f/b/a/m;

    invoke-direct {p0, v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/m;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic h(Lcom/viber/voip/contacts/c/f/b/a/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->r:Z

    return v0
.end method

.method static synthetic i(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/voip/contacts/c/f/a;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->i:Lcom/viber/voip/contacts/c/f/a;

    return-object v0
.end method

.method private declared-synchronized i()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 297
    monitor-enter p0

    .line 298
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->d:Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/f/b/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->s:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->s:I

    move v0, v1

    .line 303
    :cond_0
    iget-boolean v2, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->c:Z

    if-nez v2, :cond_1

    .line 305
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->f:Lcom/viber/voip/contacts/c/f/b/a/m;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :goto_0
    monitor-exit p0

    return-void

    .line 306
    :cond_1
    if-eqz v0, :cond_2

    :try_start_1
    iget v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->s:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->s:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    .line 308
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->e:Lcom/viber/voip/contacts/c/f/b/a/m;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/m;)V

    .line 309
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->a:Lcom/viber/voip/contacts/c/f/b/a/m;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/m;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 311
    :cond_2
    :try_start_2
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->c:Lcom/viber/voip/contacts/c/f/b/a/m;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/m;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized j()V
    .locals 4

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->B:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 317
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->m:Z

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->m:Z

    .line 320
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->y:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->B:Ljava/lang/Runnable;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 321
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->b:Lcom/viber/voip/contacts/c/f/b/a/m;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    :goto_0
    monitor-exit p0

    return-void

    .line 324
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->s:I

    .line 325
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->l:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic j(Lcom/viber/voip/contacts/c/f/b/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/b/a/a;->j()V

    return-void
.end method

.method static synthetic k(Lcom/viber/voip/contacts/c/f/b/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->t:I

    return v0
.end method

.method private k()V
    .locals 4

    .prologue
    .line 330
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->g:Lcom/viber/voip/contacts/c/f/b/u;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "contact_hash IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/contacts/c/f/b/a/l;

    invoke-direct {v3, p0}, Lcom/viber/voip/contacts/c/f/b/a/l;-><init>(Lcom/viber/voip/contacts/c/f/b/a/a;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/f/b/u;->a(ZLjava/lang/String;Lcom/viber/voip/contacts/c/f/b/af;)V

    .line 344
    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 347
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->g:Lcom/viber/voip/contacts/c/f/b/u;

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "contact_hash NOT IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->w:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/contacts/c/f/b/a/c;

    invoke-direct {v3, p0}, Lcom/viber/voip/contacts/c/f/b/a/c;-><init>(Lcom/viber/voip/contacts/c/f/b/a/a;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/f/b/u;->a(ZLjava/lang/String;Lcom/viber/voip/contacts/c/f/b/af;)V

    .line 369
    return-void
.end method

.method static synthetic l(Lcom/viber/voip/contacts/c/f/b/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/b/a/a;->l()V

    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 372
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(ZLjava/lang/String;)V

    .line 373
    return-void
.end method

.method static synthetic m(Lcom/viber/voip/contacts/c/f/b/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/b/a/a;->m()V

    return-void
.end method

.method static synthetic n(Lcom/viber/voip/contacts/c/f/b/a/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->b:Z

    return v0
.end method

.method static synthetic o(Lcom/viber/voip/contacts/c/f/b/a/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->c:Z

    return v0
.end method

.method static synthetic p(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/jni/controller/PhoneController;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->j:Lcom/viber/jni/controller/PhoneController;

    return-object v0
.end method

.method static synthetic q(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/voip/contacts/c/f/a;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->i:Lcom/viber/voip/contacts/c/f/a;

    return-object v0
.end method

.method static synthetic r(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/voip/contacts/c/f/a;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->i:Lcom/viber/voip/contacts/c/f/a;

    return-object v0
.end method

.method static synthetic s(Lcom/viber/voip/contacts/c/f/b/a/a;)I
    .locals 1
    .parameter

    .prologue
    .line 27
    iget v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->s:I

    return v0
.end method

.method static synthetic t(Lcom/viber/voip/contacts/c/f/b/a/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->b:Z

    return v0
.end method

.method static synthetic u(Lcom/viber/voip/contacts/c/f/b/a/a;)Z
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->b:Z

    return v0
.end method

.method static synthetic v(Lcom/viber/voip/contacts/c/f/b/a/a;)Ljava/lang/Runnable;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->z:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic w(Lcom/viber/voip/contacts/c/f/b/a/a;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->y:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic x(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/jni/controller/PhoneController;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->j:Lcom/viber/jni/controller/PhoneController;

    return-object v0
.end method

.method static synthetic y(Lcom/viber/voip/contacts/c/f/b/a/a;)Lcom/viber/jni/controller/PhoneController;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->j:Lcom/viber/jni/controller/PhoneController;

    return-object v0
.end method

.method static synthetic z(Lcom/viber/voip/contacts/c/f/b/a/a;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->w:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 525
    return-void
.end method

.method public declared-synchronized a(Z)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 170
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->o:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 172
    :goto_0
    iput-boolean p1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->o:Z

    .line 173
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->i:Lcom/viber/voip/contacts/c/f/a;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/a;->d()I

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->n:Z

    .line 175
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->x:Lcom/viber/voip/contacts/c/e/b;

    new-instance v1, Lcom/viber/voip/contacts/c/f/b/a/j;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/c/f/b/a/j;-><init>(Lcom/viber/voip/contacts/c/f/b/a/a;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/e/b;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :cond_0
    monitor-exit p0

    return-void

    .line 170
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .locals 4

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->q:Z

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->r:Z

    .line 203
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->x:Lcom/viber/voip/contacts/c/e/b;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/e/b;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 204
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->x:Lcom/viber/voip/contacts/c/e/b;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->C:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/e/b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 217
    :goto_0
    iget v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->u:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 207
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->t:I

    .line 208
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->w:Ljava/lang/String;

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->r:Z

    .line 211
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->q:Z

    .line 212
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->x:Lcom/viber/voip/contacts/c/e/b;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->D:Ljava/lang/Runnable;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/contacts/c/e/b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/f/b/a/a;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 500
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->j:Lcom/viber/jni/controller/PhoneController;

    invoke-interface {v0}, Lcom/viber/jni/controller/PhoneController;->generateSequence()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->u:I

    .line 501
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getAddressBookVersion()I

    move-result v0

    .line 502
    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->j:Lcom/viber/jni/controller/PhoneController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->j:Lcom/viber/jni/controller/PhoneController;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/viber/jni/CAddressBookInfo;

    iget v3, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->u:I

    invoke-interface {v1, v2, v3, v0}, Lcom/viber/jni/controller/PhoneController;->shareAddressBookList([Lcom/viber/jni/CAddressBookInfo;II)Z

    .line 503
    :cond_0
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->c:Z

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->x:Lcom/viber/voip/contacts/c/e/b;

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/viber/voip/contacts/c/e/b;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 485
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->n:Z

    if-eqz v0, :cond_0

    .line 488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->n:Z

    .line 489
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->a:Lcom/viber/voip/contacts/c/f/b/a/m;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/m;)V

    .line 492
    :cond_0
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->b:Z

    if-nez v0, :cond_1

    .line 493
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/f/b/a/a;->f()V

    .line 496
    :cond_1
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->a:Lcom/viber/voip/contacts/c/f/b/a/m;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/m;)V

    .line 196
    return-void
.end method

.method public onRegisteredNumbers(ZZLjava/util/Map;IZLjava/lang/String;Ljava/lang/String;II)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 508
    invoke-super/range {p0 .. p9}, Lcom/viber/voip/contacts/c/f/b/r;->onRegisteredNumbers(ZZLjava/util/Map;IZLjava/lang/String;Ljava/lang/String;II)Z

    .line 510
    if-nez p4, :cond_1

    move v0, v1

    .line 511
    :goto_0
    iput p4, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->v:I

    .line 512
    iput-boolean v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->p:Z

    .line 513
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 514
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->g:Lcom/viber/voip/contacts/c/f/b/a/m;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/m;)V

    .line 515
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->y:Landroid/os/Handler;

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 517
    :cond_0
    return v1

    .line 510
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onShareAddressBook()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->f:Lcom/viber/voip/contacts/c/f/b/q;

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/f/b/q;->k()Z

    move-result v0

    .line 452
    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/f/b/a/a;->e()V

    .line 455
    :cond_0
    return-void
.end method

.method public onShareAddressBookReply(ZII)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 460
    if-nez p1, :cond_0

    .line 461
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->w:Ljava/lang/String;

    .line 462
    iput v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->t:I

    .line 464
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->e:Lcom/viber/voip/contacts/c/f/b/a/m;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/m;)V

    .line 465
    sget-object v0, Lcom/viber/voip/contacts/c/f/b/a/m;->a:Lcom/viber/voip/contacts/c/f/b/a/m;

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->a(Lcom/viber/voip/contacts/c/f/b/a/m;)V

    .line 470
    :goto_0
    return-void

    .line 467
    :cond_0
    iput-boolean v1, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->p:Z

    .line 468
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/a;->i:Lcom/viber/voip/contacts/c/f/a;

    invoke-virtual {v0, p2}, Lcom/viber/voip/contacts/c/f/a;->b(I)V

    goto :goto_0
.end method
