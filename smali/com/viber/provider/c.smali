.class Lcom/viber/provider/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/provider/b;


# direct methods
.method constructor <init>(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 86
    iget-object v0, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    invoke-static {v0}, Lcom/viber/provider/b;->f(Lcom/viber/provider/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    invoke-static {v0, v1}, Lcom/viber/provider/b;->a(Lcom/viber/provider/b;Z)Z

    .line 92
    :goto_0
    iget-object v1, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    monitor-enter v1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    invoke-static {v0}, Lcom/viber/provider/b;->g(Lcom/viber/provider/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/viber/provider/b;->b(Lcom/viber/provider/b;Z)Z

    .line 95
    iget-object v0, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    invoke-virtual {v0}, Lcom/viber/provider/b;->g()V

    .line 97
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    invoke-static {v0, p2}, Lcom/viber/provider/b;->a(Lcom/viber/provider/b;Landroid/database/Cursor;)V

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v7, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    monitor-enter v7

    .line 79
    :try_start_0
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    iget-object v1, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    iget-object v1, v1, Lcom/viber/provider/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    iget-object v2, v2, Lcom/viber/provider/b;->d:Landroid/net/Uri;

    iget-object v3, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    invoke-static {v3}, Lcom/viber/provider/b;->a(Lcom/viber/provider/b;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    invoke-static {v4}, Lcom/viber/provider/b;->b(Lcom/viber/provider/b;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    invoke-static {v5}, Lcom/viber/provider/b;->c(Lcom/viber/provider/b;)[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    invoke-static {v6}, Lcom/viber/provider/b;->d(Lcom/viber/provider/b;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    invoke-static {v8}, Lcom/viber/provider/b;->e(Lcom/viber/provider/b;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " LIMIT "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    invoke-static {v8}, Lcom/viber/provider/b;->d(Lcom/viber/provider/b;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_0
    invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v7

    return-object v0

    :cond_0
    iget-object v6, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    invoke-static {v6}, Lcom/viber/provider/b;->e(Lcom/viber/provider/b;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/viber/provider/c;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/viber/provider/c;->a:Lcom/viber/provider/b;

    invoke-static {v0}, Lcom/viber/provider/b;->h(Lcom/viber/provider/b;)V

    .line 103
    return-void
.end method
