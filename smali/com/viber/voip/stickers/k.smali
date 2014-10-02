.class Lcom/viber/voip/stickers/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/stickers/i;
.implements Lcom/viber/voip/stickers/j;
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:I

.field public final b:I

.field final synthetic c:Lcom/viber/voip/stickers/b;

.field private final d:Lcom/viber/voip/stickers/c/a;

.field private final e:Z

.field private final f:Z

.field private final g:Z

.field private final h:Lcom/viber/voip/stickers/ba;

.field private final i:Lcom/viber/voip/stickers/o;

.field private volatile j:Z

.field private k:Lcom/viber/voip/stickers/h;

.field private l:I

.field private m:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/viber/voip/stickers/b;Lcom/viber/voip/stickers/c/a;ZZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/o;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v1, 0x4000

    .line 228
    iput-object p1, p0, Lcom/viber/voip/stickers/k;->c:Lcom/viber/voip/stickers/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Lcom/viber/voip/stickers/l;

    invoke-direct {v0, p0}, Lcom/viber/voip/stickers/l;-><init>(Lcom/viber/voip/stickers/k;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/k;->m:Ljava/lang/Runnable;

    .line 229
    iput-object p2, p0, Lcom/viber/voip/stickers/k;->d:Lcom/viber/voip/stickers/c/a;

    .line 230
    iput-boolean p4, p0, Lcom/viber/voip/stickers/k;->e:Z

    .line 231
    iput-boolean p5, p0, Lcom/viber/voip/stickers/k;->g:Z

    .line 232
    iput-object p6, p0, Lcom/viber/voip/stickers/k;->h:Lcom/viber/voip/stickers/ba;

    .line 233
    iput-boolean p3, p0, Lcom/viber/voip/stickers/k;->f:Z

    .line 234
    iput-object p7, p0, Lcom/viber/voip/stickers/k;->i:Lcom/viber/voip/stickers/o;

    .line 235
    invoke-static {p1}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/b;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/stickers/k;->b:I

    .line 236
    sget v0, Lcom/viber/voip/stickers/b;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/viber/voip/stickers/b;->a:I

    iput v0, p0, Lcom/viber/voip/stickers/k;->l:I

    .line 237
    iget v0, p0, Lcom/viber/voip/stickers/k;->l:I

    if-ne v0, v1, :cond_0

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/stickers/k;->l:I

    .line 246
    :cond_0
    iget v0, p0, Lcom/viber/voip/stickers/k;->l:I

    sub-int v0, v1, v0

    .line 249
    if-eqz p4, :cond_1

    .line 250
    or-int/2addr v0, v1

    .line 253
    :cond_1
    iput v0, p0, Lcom/viber/voip/stickers/k;->a:I

    .line 254
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/stickers/k;)Z
    .locals 1
    .parameter

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/viber/voip/stickers/k;->d()Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/stickers/k;)Z
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/viber/voip/stickers/k;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/viber/voip/stickers/k;)Lcom/viber/voip/stickers/c/a;
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/viber/voip/stickers/k;->d:Lcom/viber/voip/stickers/c/a;

    return-object v0
.end method

.method private d()Z
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/viber/voip/stickers/k;->j:Z

    return v0
.end method

.method static synthetic d(Lcom/viber/voip/stickers/k;)Z
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/viber/voip/stickers/k;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/viber/voip/stickers/k;)Z
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/viber/voip/stickers/k;->g:Z

    return v0
.end method

.method static synthetic f(Lcom/viber/voip/stickers/k;)Lcom/viber/voip/stickers/ba;
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/viber/voip/stickers/k;->h:Lcom/viber/voip/stickers/ba;

    return-object v0
.end method

.method static synthetic g(Lcom/viber/voip/stickers/k;)Lcom/viber/voip/stickers/h;
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/viber/voip/stickers/k;->k:Lcom/viber/voip/stickers/h;

    return-object v0
.end method

.method static synthetic h(Lcom/viber/voip/stickers/k;)Lcom/viber/voip/stickers/o;
    .locals 1
    .parameter

    .prologue
    .line 213
    iget-object v0, p0, Lcom/viber/voip/stickers/k;->i:Lcom/viber/voip/stickers/o;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/viber/voip/stickers/k;->a:I

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/stickers/k;->j:Z

    .line 320
    iget-object v0, p0, Lcom/viber/voip/stickers/k;->c:Lcom/viber/voip/stickers/b;

    iget-object v0, v0, Lcom/viber/voip/stickers/b;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/voip/stickers/k;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 321
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/stickers/k;->j:Z

    .line 315
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x14

    const-wide/16 v2, 0x0

    .line 263
    invoke-direct {p0}, Lcom/viber/voip/stickers/k;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/viber/voip/stickers/k;->c:Lcom/viber/voip/stickers/b;

    iget-wide v6, v6, Lcom/viber/voip/stickers/b;->b:J

    sub-long v6, v4, v6

    .line 268
    iget-boolean v4, p0, Lcom/viber/voip/stickers/k;->f:Z

    if-eqz v4, :cond_2

    move-wide v4, v0

    :goto_1
    sub-long/2addr v4, v6

    .line 269
    cmp-long v6, v4, v2

    if-lez v6, :cond_3

    .line 271
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_2
    invoke-direct {p0}, Lcom/viber/voip/stickers/k;->d()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 268
    :cond_2
    const-wide/16 v4, 0xfa

    goto :goto_1

    .line 281
    :cond_3
    iget-object v4, p0, Lcom/viber/voip/stickers/k;->c:Lcom/viber/voip/stickers/b;

    iget-object v5, p0, Lcom/viber/voip/stickers/k;->d:Lcom/viber/voip/stickers/c/a;

    iget-boolean v6, p0, Lcom/viber/voip/stickers/k;->e:Z

    iget-boolean v7, p0, Lcom/viber/voip/stickers/k;->g:Z

    iget-object v8, p0, Lcom/viber/voip/stickers/k;->h:Lcom/viber/voip/stickers/ba;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/c/a;ZZLcom/viber/voip/stickers/ba;)Lcom/viber/voip/stickers/h;

    move-result-object v4

    .line 282
    iput-object v4, p0, Lcom/viber/voip/stickers/k;->k:Lcom/viber/voip/stickers/h;

    .line 284
    if-eqz v4, :cond_0

    .line 285
    invoke-direct {p0}, Lcom/viber/voip/stickers/k;->d()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/viber/voip/stickers/k;->c:Lcom/viber/voip/stickers/b;

    invoke-static {v4}, Lcom/viber/voip/stickers/b;->b(Lcom/viber/voip/stickers/b;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/viber/voip/stickers/k;->f:Z

    if-nez v4, :cond_0

    .line 289
    :cond_4
    iget-object v4, p0, Lcom/viber/voip/stickers/k;->c:Lcom/viber/voip/stickers/b;

    iget-object v4, v4, Lcom/viber/voip/stickers/b;->c:Landroid/os/Handler;

    iget-object v5, p0, Lcom/viber/voip/stickers/k;->m:Ljava/lang/Runnable;

    iget-boolean v6, p0, Lcom/viber/voip/stickers/k;->f:Z

    if-eqz v6, :cond_5

    :goto_3
    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    move-wide v0, v2

    goto :goto_3

    .line 272
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "L"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/stickers/k;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
