.class public Lcom/viber/voip/registration/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/viber/voip/registration/bj;

.field private final b:Ljava/lang/String;

.field private c:Lcom/viber/voip/registration/au;

.field private d:Lcom/viber/voip/registration/CountryCode;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/viber/voip/registration/bj;Ljava/lang/String;Lcom/viber/voip/registration/au;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/viber/voip/registration/ar;->a:Lcom/viber/voip/registration/bj;

    .line 39
    iput-object p2, p0, Lcom/viber/voip/registration/ar;->b:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/viber/voip/registration/ar;->c:Lcom/viber/voip/registration/au;

    .line 41
    return-void
.end method

.method private a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .parameter

    .prologue
    .line 139
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/viber/voip/util/t;)Lcom/viber/voip/registration/CountryCode;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 52
    iget-boolean v0, p0, Lcom/viber/voip/registration/ar;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/ar;->d:Lcom/viber/voip/registration/CountryCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/ar;->d:Lcom/viber/voip/registration/CountryCode;

    .line 129
    :goto_0
    return-object v0

    .line 53
    :cond_0
    new-array v0, v4, [Lcom/viber/voip/registration/CountryCode;

    .line 54
    new-array v1, v4, [Ljava/lang/Exception;

    .line 55
    new-instance v2, Lcom/viber/voip/d/b;

    invoke-direct {v2}, Lcom/viber/voip/d/b;-><init>()V

    .line 57
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 59
    iget-object v4, p0, Lcom/viber/voip/registration/ar;->b:Ljava/lang/String;

    new-instance v5, Lcom/viber/voip/registration/as;

    invoke-direct {v5, p0, v0, v1, v3}, Lcom/viber/voip/registration/as;-><init>(Lcom/viber/voip/registration/ar;[Lcom/viber/voip/registration/CountryCode;[Ljava/lang/Exception;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v4, v7, v5}, Lcom/viber/voip/d/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/d/d;)Lcom/viber/voip/d/c;

    move-result-object v2

    .line 109
    new-instance v4, Lcom/viber/voip/registration/at;

    invoke-direct {v4, p0, p1, v2}, Lcom/viber/voip/registration/at;-><init>(Lcom/viber/voip/registration/ar;Lcom/viber/voip/util/t;Lcom/viber/voip/util/fw;)V

    .line 116
    invoke-direct {p0, v3}, Lcom/viber/voip/registration/ar;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 118
    aget-object v2, v1, v6

    if-eqz v2, :cond_2

    .line 119
    invoke-virtual {p0, v7}, Lcom/viber/voip/registration/ar;->a(Lcom/viber/voip/registration/CountryCode;)V

    .line 120
    iget-object v0, p0, Lcom/viber/voip/registration/ar;->c:Lcom/viber/voip/registration/au;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/registration/ar;->c:Lcom/viber/voip/registration/au;

    invoke-interface {v0, v7}, Lcom/viber/voip/registration/au;->a(Lcom/viber/voip/registration/CountryCode;)V

    .line 121
    :cond_1
    aget-object v0, v1, v6

    throw v0

    .line 124
    :cond_2
    aget-object v1, v0, v6

    invoke-virtual {p0, v1}, Lcom/viber/voip/registration/ar;->a(Lcom/viber/voip/registration/CountryCode;)V

    .line 127
    iget-object v1, p0, Lcom/viber/voip/registration/ar;->c:Lcom/viber/voip/registration/au;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/viber/voip/registration/ar;->c:Lcom/viber/voip/registration/au;

    aget-object v2, v0, v6

    invoke-interface {v1, v2}, Lcom/viber/voip/registration/au;->a(Lcom/viber/voip/registration/CountryCode;)V

    .line 129
    :cond_3
    aget-object v0, v0, v6

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/registration/CountryCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/viber/voip/registration/ar;->a:Lcom/viber/voip/registration/bj;

    invoke-interface {v0}, Lcom/viber/voip/registration/bj;->a()Ljava/io/InputStream;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/viber/voip/registration/bo;

    invoke-direct {v1, v0}, Lcom/viber/voip/registration/bo;-><init>(Ljava/io/InputStream;)V

    .line 149
    new-instance v0, Lcom/viber/voip/registration/av;

    iget-object v2, p0, Lcom/viber/voip/registration/ar;->a:Lcom/viber/voip/registration/bj;

    invoke-direct {v0, v2}, Lcom/viber/voip/registration/av;-><init>(Lcom/viber/voip/registration/bj;)V

    .line 150
    invoke-virtual {v1, v0}, Lcom/viber/voip/registration/bo;->a(Lcom/viber/voip/registration/bp;)V

    .line 151
    invoke-virtual {v1}, Lcom/viber/voip/registration/bo;->a()V

    .line 152
    invoke-virtual {v1}, Lcom/viber/voip/registration/bo;->c()V

    .line 153
    invoke-static {v0}, Lcom/viber/voip/registration/av;->a(Lcom/viber/voip/registration/av;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 154
    invoke-static {v0}, Lcom/viber/voip/registration/av;->a(Lcom/viber/voip/registration/av;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/viber/voip/registration/CountryCode;)V
    .locals 1
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/viber/voip/registration/ar;->d:Lcom/viber/voip/registration/CountryCode;

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/registration/ar;->e:Z

    .line 135
    return-void
.end method

.method public declared-synchronized a(Lcom/viber/voip/registration/au;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/viber/voip/registration/ar;->c:Lcom/viber/voip/registration/au;

    .line 46
    iget-boolean v0, p0, Lcom/viber/voip/registration/ar;->e:Z

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/viber/voip/registration/ar;->d:Lcom/viber/voip/registration/CountryCode;

    invoke-interface {p1, v0}, Lcom/viber/voip/registration/au;->a(Lcom/viber/voip/registration/CountryCode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_0
    monitor-exit p0

    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
