.class public Lcom/viber/voip/stickers/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/stickers/c/d;


# instance fields
.field private final a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:F

.field private f:I

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/viber/voip/stickers/c/e;->a:I

    .line 30
    invoke-virtual {p0, p2}, Lcom/viber/voip/stickers/c/e;->a(Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/c/e;->a(Ljava/util/ArrayList;)V

    .line 32
    return-void
.end method

.method public static d(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/w;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "icon.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/viber/voip/w;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "color_icon.png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/viber/voip/stickers/c/e;->f:I

    return v0
.end method

.method public a(F)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput p1, p0, Lcom/viber/voip/stickers/c/e;->e:F

    .line 115
    return-void
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput p1, p0, Lcom/viber/voip/stickers/c/e;->d:I

    .line 95
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/viber/voip/stickers/c/e;->b:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/stickers/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lcom/viber/voip/stickers/c/e;->c:Ljava/util/ArrayList;

    .line 64
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 182
    iget v0, p0, Lcom/viber/voip/stickers/c/e;->d:I

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/viber/voip/util/bk;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/stickers/c/e;->d:I

    .line 183
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/viber/voip/stickers/c/e;->g:I

    return v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput p1, p0, Lcom/viber/voip/stickers/c/e;->f:I

    .line 107
    return-void
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 186
    iget v0, p0, Lcom/viber/voip/stickers/c/e;->d:I

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/viber/voip/util/bk;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/stickers/c/e;->d:I

    .line 187
    return-void
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput p1, p0, Lcom/viber/voip/stickers/c/e;->g:I

    .line 127
    return-void
.end method

.method public c(Z)V
    .locals 2
    .parameter

    .prologue
    .line 190
    iget v0, p0, Lcom/viber/voip/stickers/c/e;->d:I

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/viber/voip/util/bk;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/stickers/c/e;->d:I

    .line 191
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/viber/voip/stickers/c/e;->g:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Z)V
    .locals 2
    .parameter

    .prologue
    .line 194
    iget v0, p0, Lcom/viber/voip/stickers/c/e;->d:I

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/viber/voip/util/bk;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/stickers/c/e;->d:I

    .line 195
    return-void
.end method

.method public d()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 142
    iget v2, p0, Lcom/viber/voip/stickers/c/e;->d:I

    new-array v3, v0, [I

    aput v0, v3, v1

    invoke-static {v2, v3}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->i()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/viber/voip/stickers/c/e;->a:I

    return v0
.end method

.method public e(Z)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-boolean p1, p0, Lcom/viber/voip/stickers/c/e;->h:Z

    .line 206
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 226
    if-ne p0, p1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 229
    :cond_3
    check-cast p1, Lcom/viber/voip/stickers/c/e;

    .line 230
    iget v2, p0, Lcom/viber/voip/stickers/c/e;->a:I

    iget v3, p1, Lcom/viber/voip/stickers/c/e;->a:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/viber/voip/stickers/c/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 4

    .prologue
    .line 158
    iget v0, p0, Lcom/viber/voip/stickers/c/e;->d:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 218
    .line 220
    iget v0, p0, Lcom/viber/voip/stickers/c/e;->a:I

    add-int/lit8 v0, v0, 0x1f

    .line 221
    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v0

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 4

    .prologue
    .line 174
    iget v0, p0, Lcom/viber/voip/stickers/c/e;->d:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public k()Z
    .locals 4

    .prologue
    .line 178
    iget v0, p0, Lcom/viber/voip/stickers/c/e;->d:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    invoke-static {v0, v1}, Lcom/viber/voip/util/bk;->a(I[I)Z

    move-result v0

    return v0
.end method

.method public l()F
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/viber/voip/stickers/c/e;->e:F

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/viber/voip/stickers/c/e;->d:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "StickerPackage [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/stickers/c/e;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thumbFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/stickers/c/e;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", menuPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/stickers/c/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", visibility="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/stickers/c/e;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isInDatabase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/stickers/c/e;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isVisible()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isNewPackage()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isCanBeOrdered()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isDeployed()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isOnBoard()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isPromo()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/stickers/c/e;->j()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
