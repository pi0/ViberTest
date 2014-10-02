.class Lcom/viber/voip/messages/conversation/bj;
.super Landroid/text/style/ImageSpan;
.source "SourceFile"


# instance fields
.field a:Z

.field final synthetic b:Lcom/viber/voip/messages/conversation/ax;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/conversation/ax;Landroid/content/Context;Ljava/lang/CharSequence;IFZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/bj;->b:Lcom/viber/voip/messages/conversation/ax;

    .line 399
    invoke-static/range {p1 .. p6}, Lcom/viber/voip/messages/conversation/ax;->a(Lcom/viber/voip/messages/conversation/ax;Landroid/content/Context;Ljava/lang/CharSequence;IFZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 400
    iput-boolean p6, p0, Lcom/viber/voip/messages/conversation/bj;->a:Z

    .line 401
    return-void
.end method


# virtual methods
.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/viber/voip/messages/conversation/bj;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 408
    if-eqz p5, :cond_0

    .line 418
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    neg-int v1, v1

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 419
    const/4 v1, 0x0

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 420
    iget v1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 423
    :cond_0
    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method
