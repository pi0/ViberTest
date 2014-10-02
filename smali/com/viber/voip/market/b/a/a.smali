.class public Lcom/viber/voip/market/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/stickers/c/f;


# instance fields
.field private a:Lcom/viber/voip/stickers/c/f;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/viber/voip/stickers/c/f;)V
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/viber/voip/market/b/a/a;->a:Lcom/viber/voip/stickers/c/f;

    .line 15
    iget-object v0, p0, Lcom/viber/voip/market/b/a/a;->a:Lcom/viber/voip/stickers/c/f;

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/f;->b()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/market/b/a/a;->b:I

    .line 16
    iget-object v0, p0, Lcom/viber/voip/market/b/a/a;->a:Lcom/viber/voip/stickers/c/f;

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/f;->a()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/market/b/a/a;->c:I

    .line 17
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/viber/voip/market/b/a/a;->c:I

    return v0
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/viber/voip/market/b/a/a;->c:I

    .line 30
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/f;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/viber/voip/market/b/a/a;->a:Lcom/viber/voip/stickers/c/f;

    .line 21
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 38
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/viber/voip/market/b/a/a;->b:I

    .line 39
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/viber/voip/market/b/a/a;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/viber/voip/market/b/a/a;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/viber/voip/market/b/a/a;->a:Lcom/viber/voip/stickers/c/f;

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/f;->a()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/market/b/a/a;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/market/b/a/a;->a:Lcom/viber/voip/stickers/c/f;

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/f;->b()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/market/b/a/a;->b:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/viber/voip/market/b/a/a;->a:Lcom/viber/voip/stickers/c/f;

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/f;->e()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    if-ne p0, p1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return v0

    .line 93
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 96
    :cond_3
    check-cast p1, Lcom/viber/voip/market/b/a/a;

    .line 97
    iget-object v2, p0, Lcom/viber/voip/market/b/a/a;->a:Lcom/viber/voip/stickers/c/f;

    if-nez v2, :cond_4

    .line 98
    iget-object v2, p1, Lcom/viber/voip/market/b/a/a;->a:Lcom/viber/voip/stickers/c/f;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 99
    :cond_4
    iget-object v2, p0, Lcom/viber/voip/market/b/a/a;->a:Lcom/viber/voip/stickers/c/f;

    iget-object v3, p1, Lcom/viber/voip/market/b/a/a;->a:Lcom/viber/voip/stickers/c/f;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 100
    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/viber/voip/market/b/a/a;->a:Lcom/viber/voip/stickers/c/f;

    invoke-interface {v0}, Lcom/viber/voip/stickers/c/f;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 84
    .line 86
    iget-object v0, p0, Lcom/viber/voip/market/b/a/a;->a:Lcom/viber/voip/stickers/c/f;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 87
    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/market/b/a/a;->a:Lcom/viber/voip/stickers/c/f;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StickerPackageSortable [getId()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/market/b/a/a;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", getPackageName()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/market/b/a/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mVisibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/market/b/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/b/a/a;->a:Lcom/viber/voip/stickers/c/f;

    invoke-interface {v1}, Lcom/viber/voip/stickers/c/f;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "], mMenuPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/market/b/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/market/b/a/a;->a:Lcom/viber/voip/stickers/c/f;

    invoke-interface {v1}, Lcom/viber/voip/stickers/c/f;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
