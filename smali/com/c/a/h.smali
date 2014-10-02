.class public Lcom/c/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field final b:Lcom/c/a/i;

.field c:[Lcom/c/a/g;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/c/a/b;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Lcom/c/a/g;ZI)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 118
    iget-object v1, p0, Lcom/c/a/h;->c:[Lcom/c/a/g;

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/c/a/h;->c:[Lcom/c/a/g;

    array-length v2, v0

    .line 121
    if-ge v2, p3, :cond_1

    .line 123
    add-int/lit8 v0, v2, 0x1

    new-array v0, v0, [Lcom/c/a/g;

    .line 124
    iget-object v3, p0, Lcom/c/a/h;->c:[Lcom/c/a/g;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    aput-object p1, v0, v2

    .line 134
    :goto_0
    iput-object v0, p0, Lcom/c/a/h;->c:[Lcom/c/a/g;

    .line 118
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v0, p0, Lcom/c/a/h;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    return-void

    .line 129
    :cond_1
    :try_start_1
    new-array v0, p3, [Lcom/c/a/g;

    .line 130
    iget-object v3, p0, Lcom/c/a/h;->c:[Lcom/c/a/g;

    const/4 v4, 0x1

    const/4 v5, 0x0

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    add-int/lit8 v2, p3, -0x1

    aput-object p1, v0, v2

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 138
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/c/a/b;

    .line 139
    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/c/a/b;->d()V

    goto :goto_1
.end method
