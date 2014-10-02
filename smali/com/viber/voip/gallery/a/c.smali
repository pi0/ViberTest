.class public abstract Lcom/viber/voip/gallery/a/c;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<TD;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TD;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method


# virtual methods
.method public deliverResult(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/viber/voip/gallery/a/c;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    :goto_0
    return-void

    .line 21
    :cond_1
    iput-object p1, p0, Lcom/viber/voip/gallery/a/c;->a:Ljava/lang/Object;

    .line 23
    invoke-virtual {p0}, Lcom/viber/voip/gallery/a/c;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 52
    invoke-virtual {p0}, Lcom/viber/voip/gallery/a/c;->onStopLoading()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/gallery/a/c;->a:Ljava/lang/Object;

    .line 55
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onStartLoading()V

    .line 32
    iget-object v0, p0, Lcom/viber/voip/gallery/a/c;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/viber/voip/gallery/a/c;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/a/c;->deliverResult(Ljava/lang/Object;)V

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/gallery/a/c;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/gallery/a/c;->a:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/gallery/a/c;->forceLoad()V

    .line 39
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onStopLoading()V

    .line 45
    invoke-virtual {p0}, Lcom/viber/voip/gallery/a/c;->cancelLoad()Z

    .line 46
    return-void
.end method
