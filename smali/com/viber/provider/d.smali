.class Lcom/viber/provider/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/provider/b;


# direct methods
.method constructor <init>(Lcom/viber/provider/b;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/viber/provider/d;->a:Lcom/viber/provider/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/viber/provider/d;->a:Lcom/viber/provider/b;

    invoke-static {v0}, Lcom/viber/provider/b;->i(Lcom/viber/provider/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/viber/provider/d;->a:Lcom/viber/provider/b;

    iget-object v0, v0, Lcom/viber/provider/b;->b:Landroid/support/v4/app/LoaderManager;

    iget-object v1, p0, Lcom/viber/provider/d;->a:Lcom/viber/provider/b;

    iget v1, v1, Lcom/viber/provider/b;->g:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/viber/provider/d;->a:Lcom/viber/provider/b;

    invoke-static {v3}, Lcom/viber/provider/b;->j(Lcom/viber/provider/b;)Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 225
    :goto_0
    return-void

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/viber/provider/d;->a:Lcom/viber/provider/b;

    invoke-static {v0}, Lcom/viber/provider/b;->k(Lcom/viber/provider/b;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    goto :goto_0
.end method
