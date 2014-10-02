.class public Lcom/viber/voip/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/graphics/Bitmap;

.field public b:Z

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    iput-object p1, p0, Lcom/viber/voip/aw;->a:Landroid/graphics/Bitmap;

    .line 369
    iput-boolean p2, p0, Lcom/viber/voip/aw;->b:Z

    .line 370
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/aw;->c:I

    .line 372
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/viber/voip/aw;->d:I

    .line 374
    :cond_0
    return-void
.end method
