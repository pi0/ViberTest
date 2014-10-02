.class public abstract Lcom/viber/voip/stickers/a;
.super Lcom/viber/voip/stickers/al;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private c:Lcom/viber/voip/stickers/e/h;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/viber/voip/stickers/al;-><init>()V

    .line 23
    iput p1, p0, Lcom/viber/voip/stickers/a;->a:I

    .line 24
    iput-object p2, p0, Lcom/viber/voip/stickers/a;->b:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/viber/voip/stickers/e/h;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/stickers/e/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/a;->c:Lcom/viber/voip/stickers/e/h;

    .line 26
    return-void
.end method

.method private b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/viber/voip/stickers/a;->a:I

    invoke-static {v0}, Lcom/viber/voip/stickers/c/e;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/stickers/a;->c:Lcom/viber/voip/stickers/e/h;

    iget v1, p0, Lcom/viber/voip/stickers/a;->a:I

    iget-object v2, p0, Lcom/viber/voip/stickers/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/stickers/e/h;->a(ILjava/lang/String;)V

    .line 30
    return-void
.end method

.method protected abstract a(I)V
.end method

.method public a(Lcom/viber/voip/stickers/c/d;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/stickers/a;->a:I

    if-eq v0, v1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 44
    :cond_0
    const/16 v0, 0x64

    if-ge p2, v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/viber/voip/stickers/a;->c:Lcom/viber/voip/stickers/e/h;

    iget v1, p0, Lcom/viber/voip/stickers/a;->a:I

    iget-object v2, p0, Lcom/viber/voip/stickers/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/viber/voip/stickers/a;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/viber/voip/stickers/e/h;->a(IILjava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/stickers/a;->c:Lcom/viber/voip/stickers/e/h;

    iget v1, p0, Lcom/viber/voip/stickers/a;->a:I

    iget-object v2, p0, Lcom/viber/voip/stickers/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/viber/voip/stickers/a;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/stickers/e/h;->c(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public a(ZLcom/viber/voip/stickers/c/d;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-interface {p2}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/stickers/a;->a:I

    if-eq v0, v1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/a;->c:Lcom/viber/voip/stickers/e/h;

    iget v1, p0, Lcom/viber/voip/stickers/a;->a:I

    iget-object v2, p0, Lcom/viber/voip/stickers/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/viber/voip/stickers/a;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/stickers/e/h;->b(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 57
    iget v0, p0, Lcom/viber/voip/stickers/a;->a:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/a;->b(I)V

    goto :goto_0
.end method

.method protected abstract b(I)V
.end method

.method public c(Lcom/viber/voip/stickers/c/d;)V
    .locals 4
    .parameter

    .prologue
    .line 34
    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v0

    iget v1, p0, Lcom/viber/voip/stickers/a;->a:I

    if-eq v0, v1, :cond_0

    .line 39
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/a;->c:Lcom/viber/voip/stickers/e/h;

    invoke-interface {p1}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/stickers/a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/viber/voip/stickers/a;->b()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/stickers/e/h;->a(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    .line 38
    iget v0, p0, Lcom/viber/voip/stickers/a;->a:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/stickers/a;->a(I)V

    goto :goto_0
.end method
