.class public abstract Lcom/viber/provider/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/provider/a;


# instance fields
.field protected final a:Lcom/viber/provider/e;

.field protected final b:Landroid/support/v4/app/LoaderManager;

.field protected final c:Landroid/content/Context;

.field protected final d:Landroid/net/Uri;

.field protected e:Landroid/database/Cursor;

.field protected f:I

.field protected g:I

.field private h:[Ljava/lang/Integer;

.field private i:Z

.field private j:[Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:[Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/os/Handler;

.field private final t:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILandroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/viber/provider/b;->h:[Ljava/lang/Integer;

    .line 74
    new-instance v0, Lcom/viber/provider/c;

    invoke-direct {v0, p0}, Lcom/viber/provider/c;-><init>(Lcom/viber/provider/b;)V

    iput-object v0, p0, Lcom/viber/provider/b;->t:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 212
    new-instance v0, Lcom/viber/provider/d;

    invoke-direct {v0, p0}, Lcom/viber/provider/d;-><init>(Lcom/viber/provider/b;)V

    iput-object v0, p0, Lcom/viber/provider/b;->u:Ljava/lang/Runnable;

    .line 109
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/provider/b;->s:Landroid/os/Handler;

    .line 111
    iput-object p2, p0, Lcom/viber/provider/b;->d:Landroid/net/Uri;

    .line 112
    iput p1, p0, Lcom/viber/provider/b;->g:I

    .line 113
    invoke-direct {p0, p1}, Lcom/viber/provider/b;->e(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/viber/provider/b;->i:Z

    .line 114
    iput-object p3, p0, Lcom/viber/provider/b;->c:Landroid/content/Context;

    .line 115
    iput-object p5, p0, Lcom/viber/provider/b;->a:Lcom/viber/provider/e;

    .line 116
    iput-object p4, p0, Lcom/viber/provider/b;->b:Landroid/support/v4/app/LoaderManager;

    .line 117
    iput p6, p0, Lcom/viber/provider/b;->f:I

    .line 118
    return-void
.end method

.method private declared-synchronized a(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 138
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/viber/provider/b;->e:Landroid/database/Cursor;

    .line 139
    invoke-virtual {p0}, Lcom/viber/provider/b;->k()V

    .line 140
    invoke-virtual {p0}, Lcom/viber/provider/b;->d()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/provider/b;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/viber/provider/b;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/viber/provider/b;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/provider/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/viber/provider/b;->p:Z

    return p1
.end method

.method static synthetic a(Lcom/viber/provider/b;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/provider/b;->j:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/provider/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/provider/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/provider/b;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/viber/provider/b;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/viber/provider/b;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/provider/b;->l:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/viber/provider/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/provider/b;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/viber/provider/b;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/provider/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized e(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 326
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/viber/provider/b;->h:[Ljava/lang/Integer;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 327
    if-ne v4, p1, :cond_1

    const/4 v0, 0x1

    .line 329
    :cond_0
    monitor-exit p0

    return v0

    .line 326
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/viber/provider/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/viber/provider/b;->p:Z

    return v0
.end method

.method static synthetic g(Lcom/viber/provider/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/viber/provider/b;->q:Z

    return v0
.end method

.method static synthetic h(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/viber/provider/b;->m()V

    return-void
.end method

.method static synthetic i(Lcom/viber/provider/b;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/viber/provider/b;->i:Z

    return v0
.end method

.method static synthetic j(Lcom/viber/provider/b;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/provider/b;->t:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic k(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/viber/provider/b;->n()V

    return-void
.end method

.method private declared-synchronized m()V
    .locals 1

    .prologue
    .line 145
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/viber/provider/b;->e:Landroid/database/Cursor;

    .line 146
    invoke-virtual {p0}, Lcom/viber/provider/b;->c()V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/provider/b;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private n()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 185
    iget-object v0, p0, Lcom/viber/provider/b;->e:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V

    .line 186
    iget-object v0, p0, Lcom/viber/provider/b;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/provider/b;->d:Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/provider/b;->j:[Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/provider/b;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/viber/provider/b;->l:[Ljava/lang/String;

    iget-object v5, p0, Lcom/viber/provider/b;->n:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/viber/provider/b;->m:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " LIMIT "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/viber/provider/b;->n:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 189
    iget-boolean v1, p0, Lcom/viber/provider/b;->p:Z

    if-eqz v1, :cond_2

    .line 190
    iput-boolean v7, p0, Lcom/viber/provider/b;->p:Z

    .line 195
    :goto_1
    monitor-enter p0

    .line 196
    :try_start_0
    iget-boolean v0, p0, Lcom/viber/provider/b;->q:Z

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/provider/b;->q:Z

    .line 198
    invoke-virtual {p0}, Lcom/viber/provider/b;->g()V

    .line 200
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    return-void

    .line 186
    :cond_1
    iget-object v5, p0, Lcom/viber/provider/b;->m:Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_2
    invoke-direct {p0, v0}, Lcom/viber/provider/b;->a(Landroid/database/Cursor;)V

    goto :goto_1

    .line 200
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/viber/provider/b;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    monitor-exit p0

    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a([Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 278
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/viber/provider/b;->j:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/viber/provider/b;->o:Z

    return v0
.end method

.method public a_(I)J
    .locals 2
    .parameter

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/viber/provider/b;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/viber/provider/b;->e:Landroid/database/Cursor;

    iget v1, p0, Lcom/viber/provider/b;->f:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 249
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 290
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/viber/provider/b;->m:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    monitor-exit p0

    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b([Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/viber/provider/b;->l:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/viber/provider/b;->r:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized c()V
    .locals 1

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/provider/b;->a:Lcom/viber/provider/e;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/viber/provider/b;->a:Lcom/viber/provider/e;

    invoke-interface {v0, p0}, Lcom/viber/provider/e;->a(Lcom/viber/provider/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 298
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/viber/provider/b;->n:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    monitor-exit p0

    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected c(I)Z
    .locals 1
    .parameter

    .prologue
    .line 267
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/viber/provider/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/provider/b;->e:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected declared-synchronized d()V
    .locals 2

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/viber/provider/b;->a:Lcom/viber/provider/e;

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/viber/provider/b;->a:Lcom/viber/provider/e;

    iget-boolean v0, p0, Lcom/viber/provider/b;->r:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, p0, v0}, Lcom/viber/provider/e;->a(Lcom/viber/provider/b;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :cond_0
    monitor-exit p0

    return-void

    .line 158
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d(I)V
    .locals 1
    .parameter

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/provider/b;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .locals 4

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/provider/b;->o:Z

    if-nez v0, :cond_1

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/provider/b;->o:Z

    .line 165
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/provider/b;->r:Z

    .line 166
    iget-boolean v0, p0, Lcom/viber/provider/b;->i:Z

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/viber/provider/b;->b:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lcom/viber/provider/b;->g:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/viber/provider/b;->t:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :goto_0
    monitor-exit p0

    return-void

    .line 169
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/viber/provider/b;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 171
    :cond_1
    :try_start_2
    iget-boolean v0, p0, Lcom/viber/provider/b;->r:Z

    if-eqz v0, :cond_3

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/provider/b;->r:Z

    .line 173
    iget-boolean v0, p0, Lcom/viber/provider/b;->i:Z

    if-nez v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/viber/provider/b;->b:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lcom/viber/provider/b;->g:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/viber/provider/b;->t:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_0

    .line 177
    :cond_2
    invoke-direct {p0}, Lcom/viber/provider/b;->n()V

    goto :goto_0

    .line 180
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/provider/b;->q:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized f()V
    .locals 2

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/provider/b;->i:Z

    if-nez v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/viber/provider/b;->b:Landroid/support/v4/app/LoaderManager;

    iget v1, p0, Lcom/viber/provider/b;->g:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->destroyLoader(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :goto_0
    monitor-exit p0

    return-void

    .line 208
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/viber/provider/b;->e:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/viber/voip/util/al;->a(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()V
    .locals 4

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/provider/b;->r:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/viber/provider/b;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/provider/b;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    iget-object v0, p0, Lcom/viber/provider/b;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/provider/b;->u:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :goto_0
    monitor-exit p0

    return-void

    .line 233
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/viber/provider/b;->q:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/viber/provider/b;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/provider/b;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/provider/b;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized h()V
    .locals 1

    .prologue
    .line 238
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/viber/provider/b;->e:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public i()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/viber/provider/b;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/viber/provider/b;->e:Landroid/database/Cursor;

    iget v2, p0, Lcom/viber/provider/b;->f:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v1, p0, Lcom/viber/provider/b;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 259
    :cond_1
    return-object v0
.end method

.method protected j()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/viber/provider/b;->e:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/provider/b;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected k()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/viber/provider/b;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/viber/provider/b;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 323
    return-void
.end method
