.class public Lcom/viber/voip/contacts/c/d/a/i;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Landroid/net/Uri;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private d:Lcom/viber/voip/ViberApplication;

.field private e:Z

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Lcom/viber/voip/contacts/c/e/b;

.field private i:Lcom/viber/voip/contacts/c/d/a/m;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 33
    const-class v0, Lcom/viber/voip/contacts/c/d/a/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/d/a/i;->a:Ljava/lang/String;

    .line 44
    const-string/jumbo v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/d/a/i;->b:Landroid/net/Uri;

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "COUNT(*) as total"

    aput-object v2, v0, v1

    sput-object v0, Lcom/viber/voip/contacts/c/d/a/i;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/contacts/c/d/a/m;Landroid/os/Handler;Lcom/viber/voip/ViberApplication;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 65
    iput-object p3, p0, Lcom/viber/voip/contacts/c/d/a/i;->d:Lcom/viber/voip/ViberApplication;

    .line 66
    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/a/i;->g:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/a/i;->i:Lcom/viber/voip/contacts/c/d/a/m;

    .line 68
    invoke-static {p3}, Lcom/viber/voip/contacts/c/e/b;->a(Landroid/content/Context;)Lcom/viber/voip/contacts/c/e/b;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/d/a/i;->h:Lcom/viber/voip/contacts/c/e/b;

    .line 70
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/a/i;->c()V

    .line 71
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/a/i;->g()V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/c/d/a/i;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/a/i;->e()V

    return-void
.end method

.method static synthetic b(Lcom/viber/voip/contacts/c/d/a/i;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/a/i;->f()V

    return-void
.end method

.method static synthetic c(Lcom/viber/voip/contacts/c/d/a/i;)Lcom/viber/voip/contacts/c/d/a/m;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/i;->i:Lcom/viber/voip/contacts/c/d/a/m;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/i;->d:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/contacts/c/d/a/i;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    return-void
.end method

.method static synthetic d(Lcom/viber/voip/contacts/c/d/a/i;)Lcom/viber/voip/contacts/c/e/b;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/i;->h:Lcom/viber/voip/contacts/c/e/b;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/i;->d:Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 95
    return-void
.end method

.method private declared-synchronized e()V
    .locals 1

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/d/a/i;->e:Z

    if-eqz v0, :cond_0

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/d/a/i;->e:Z

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/d/a/i;->f:Z

    .line 118
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/d/a/i;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :goto_0
    monitor-exit p0

    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/d/a/i;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/i;->g:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/contacts/c/d/a/j;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/c/d/a/j;-><init>(Lcom/viber/voip/contacts/c/d/a/i;)V

    const-wide/32 v2, 0x124f80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    return-void
.end method

.method private g()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 139
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/i;->h:Lcom/viber/voip/contacts/c/e/b;

    const/16 v1, 0x63d

    sget-object v3, Lcom/viber/voip/contacts/c/d/a/i;->b:Landroid/net/Uri;

    sget-object v4, Lcom/viber/voip/contacts/c/d/a/i;->c:[Ljava/lang/String;

    const-string/jumbo v5, "date> ?) Group By (address"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/32 v10, 0x48190800

    sub-long/2addr v7, v10

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    new-instance v8, Lcom/viber/voip/contacts/c/d/a/k;

    invoke-direct {v8, p0}, Lcom/viber/voip/contacts/c/d/a/k;-><init>(Lcom/viber/voip/contacts/c/d/a/i;)V

    move-object v7, v2

    move v10, v9

    invoke-virtual/range {v0 .. v10}, Lcom/viber/voip/contacts/c/e/b;->a(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/util/fl;ZZ)V

    .line 195
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/a/i;->d()V

    .line 85
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/a/i;->c()V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/a/i;->d()V

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/viber/voip/contacts/c/d/a/i;->f:Z

    if-eqz v0, :cond_0

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/d/a/i;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/viber/voip/contacts/c/d/a/i;->f:Z

    .line 103
    invoke-direct {p0}, Lcom/viber/voip/contacts/c/d/a/i;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onChange(Z)V
    .locals 0
    .parameter

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/viber/voip/contacts/c/d/a/i;->b()V

    .line 111
    return-void
.end method
