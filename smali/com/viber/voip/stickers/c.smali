.class Lcom/viber/voip/stickers/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/b;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    iput-object p1, p0, Lcom/viber/voip/stickers/c;->a:Lcom/viber/voip/stickers/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .parameter

    .prologue
    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/stickers/c;->a:Lcom/viber/voip/stickers/b;

    invoke-virtual {v0}, Lcom/viber/voip/stickers/b;->d()V

    .line 576
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Lcom/viber/voip/stickers/ak; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 583
    :goto_0
    return-object v0

    .line 577
    :catch_0
    move-exception v0

    .line 583
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 2
    .parameter

    .prologue
    .line 587
    iget-object v0, p0, Lcom/viber/voip/stickers/c;->a:Lcom/viber/voip/stickers/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/b;->a(Lcom/viber/voip/stickers/b;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 588
    if-eqz p1, :cond_0

    .line 589
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/viber/voip/stickers/b;->b(Z)Z

    .line 592
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 593
    return-void
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 571
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/stickers/c;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 571
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/viber/voip/stickers/c;->a(Ljava/lang/Integer;)V

    return-void
.end method
