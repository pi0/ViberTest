.class public Lcom/viber/voip/stickers/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Landroid/graphics/Bitmap;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 534
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 535
    iput-object p2, p0, Lcom/viber/voip/stickers/h;->c:Ljava/lang/String;

    .line 536
    iput-object p1, p0, Lcom/viber/voip/stickers/h;->b:Landroid/graphics/Bitmap;

    .line 537
    invoke-static {p1}, Lcom/viber/voip/messages/extras/image/h;->d(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/stickers/h;->d:I

    .line 538
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/viber/voip/stickers/h;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/viber/voip/stickers/h;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/viber/voip/stickers/h;->a:I

    .line 547
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 550
    iget v0, p0, Lcom/viber/voip/stickers/h;->d:I

    return v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 554
    iget v0, p0, Lcom/viber/voip/stickers/h;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/viber/voip/stickers/h;->a:I

    .line 556
    iget-object v0, p0, Lcom/viber/voip/stickers/h;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/viber/voip/stickers/h;->a:I

    if-gtz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/viber/voip/stickers/h;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/graphics/Bitmap;)V

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/stickers/h;->b:Landroid/graphics/Bitmap;

    .line 561
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/viber/voip/stickers/h;->c:Ljava/lang/String;

    return-object v0
.end method
