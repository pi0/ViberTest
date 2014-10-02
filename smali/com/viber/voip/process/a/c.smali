.class public Lcom/viber/voip/process/a/c;
.super Lcom/viber/voip/process/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/viber/voip/process/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 24
    const-class v0, Lcom/viber/voip/process/a/c;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/viber/voip/process/a/c;->execute(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 25
    return-void
.end method

.method protected a(Lcom/viber/voip/process/j;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    return-void
.end method

.method public doInTargetProcess(Landroid/os/Bundle;Lcom/viber/voip/process/b;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/stickers/r;->k()Lcom/viber/voip/stickers/b/m;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/viber/voip/stickers/b/m;->a:Lcom/viber/voip/stickers/c/d;

    invoke-interface {v1}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v1

    const/16 v2, 0x190

    if-eq v1, v2, :cond_0

    .line 31
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string/jumbo v2, "package_id"

    iget-object v3, v0, Lcom/viber/voip/stickers/b/m;->a:Lcom/viber/voip/stickers/c/d;

    invoke-interface {v3}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    const-string/jumbo v2, "package_name"

    iget-object v3, v0, Lcom/viber/voip/stickers/b/m;->a:Lcom/viber/voip/stickers/c/d;

    invoke-interface {v3}, Lcom/viber/voip/stickers/c/d;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v2, "percents"

    iget v0, v0, Lcom/viber/voip/stickers/b/m;->b:I

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    invoke-interface {p2, v1}, Lcom/viber/voip/process/b;->a(Landroid/os/Bundle;)V

    .line 37
    :cond_0
    return-void
.end method

.method public processResult(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 41
    const-string/jumbo v0, "package_id"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    const-string/jumbo v1, "package_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 44
    new-instance v2, Lcom/viber/voip/process/j;

    invoke-direct {v2, v0, v1}, Lcom/viber/voip/process/j;-><init>(ILjava/lang/String;)V

    .line 45
    const-string/jumbo v0, "percents"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 46
    invoke-virtual {p0, v2, v0}, Lcom/viber/voip/process/a/c;->a(Lcom/viber/voip/process/j;I)V

    .line 50
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/viber/voip/process/a/c;->a(Lcom/viber/voip/process/j;I)V

    goto :goto_0
.end method
