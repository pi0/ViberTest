.class Lcom/viber/voip/stickers/ab;
.super Lcom/viber/voip/stickers/am;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/stickers/r;


# direct methods
.method constructor <init>(Lcom/viber/voip/stickers/r;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/viber/voip/stickers/ab;->a:Lcom/viber/voip/stickers/r;

    invoke-direct {p0}, Lcom/viber/voip/stickers/am;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/stickers/c/a;)V
    .locals 3
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/voip/stickers/ab;->a:Lcom/viber/voip/stickers/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStickerDeployed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/viber/voip/stickers/c/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;Ljava/lang/String;)V

    .line 128
    invoke-super {p0, p1}, Lcom/viber/voip/stickers/am;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 129
    return-void
.end method

.method public a(ZLcom/viber/voip/stickers/c/d;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 133
    invoke-super {p0, p1, p2}, Lcom/viber/voip/stickers/am;->a(ZLcom/viber/voip/stickers/c/d;)V

    .line 134
    if-eqz p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/viber/voip/stickers/ab;->a:Lcom/viber/voip/stickers/r;

    invoke-static {v0}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;)Lcom/viber/voip/stickers/a/a;

    move-result-object v0

    invoke-interface {p2}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/stickers/a/a;->d(I)I

    .line 136
    iget-object v0, p0, Lcom/viber/voip/stickers/ab;->a:Lcom/viber/voip/stickers/r;

    const-string/jumbo v1, "CRITICAL ERROR WHILE PACKAGE WAS DOWNLOADED. DELETE IT FROM DB."

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/viber/voip/stickers/ab;->a:Lcom/viber/voip/stickers/r;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;Z)V

    .line 139
    :cond_0
    return-void
.end method

.method public c(Lcom/viber/voip/stickers/c/d;)V
    .locals 3
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/stickers/ab;->a:Lcom/viber/voip/stickers/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStickerPackageDeployed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/stickers/r;->a(Lcom/viber/voip/stickers/r;Ljava/lang/String;)V

    .line 122
    invoke-super {p0, p1}, Lcom/viber/voip/stickers/am;->c(Lcom/viber/voip/stickers/c/d;)V

    .line 123
    return-void
.end method
