.class public Lcom/viber/voip/widget/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/high16 v0, 0x40a0

    iput v0, p0, Lcom/viber/voip/widget/b;->a:F

    .line 14
    iput p1, p0, Lcom/viber/voip/widget/b;->b:F

    .line 15
    return-void
.end method


# virtual methods
.method protected a(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 18
    if-lez p3, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p3, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    sub-int v1, v0, v1

    .line 20
    iget v0, p0, Lcom/viber/voip/widget/b;->b:F

    .line 21
    invoke-virtual {p1, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 23
    :goto_0
    iget v2, p0, Lcom/viber/voip/widget/b;->a:F

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 24
    const/high16 v2, 0x3f80

    sub-float/2addr v0, v2

    .line 25
    iget v2, p0, Lcom/viber/voip/widget/b;->a:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_2

    .line 26
    iget v0, p0, Lcom/viber/voip/widget/b;->a:F

    .line 31
    :cond_0
    invoke-virtual {p1, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 33
    :cond_1
    return-void

    .line 29
    :cond_2
    invoke-virtual {p1, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0
.end method
