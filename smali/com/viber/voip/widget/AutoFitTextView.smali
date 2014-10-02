.class public Lcom/viber/voip/widget/AutoFitTextView;
.super Lcom/viber/voip/ui/ViberTextView;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/widget/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/widget/AutoFitTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/ui/ViberTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Lcom/viber/voip/widget/b;

    invoke-virtual {p0}, Lcom/viber/voip/widget/AutoFitTextView;->getTextSize()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/viber/voip/widget/b;-><init>(F)V

    iput-object v0, p0, Lcom/viber/voip/widget/AutoFitTextView;->a:Lcom/viber/voip/widget/b;

    .line 18
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 37
    invoke-super {p0, p1, p2}, Lcom/viber/voip/ui/ViberTextView;->onMeasure(II)V

    .line 38
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 39
    iget-object v1, p0, Lcom/viber/voip/widget/AutoFitTextView;->a:Lcom/viber/voip/widget/b;

    invoke-virtual {p0}, Lcom/viber/voip/widget/AutoFitTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Lcom/viber/voip/widget/b;->a(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 40
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    if-eq p1, p3, :cond_0

    .line 31
    iget-object v0, p0, Lcom/viber/voip/widget/AutoFitTextView;->a:Lcom/viber/voip/widget/b;

    invoke-virtual {p0}, Lcom/viber/voip/widget/AutoFitTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/viber/voip/widget/b;->a(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 33
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    iget-object v0, p0, Lcom/viber/voip/widget/AutoFitTextView;->a:Lcom/viber/voip/widget/b;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/viber/voip/widget/AutoFitTextView;->a:Lcom/viber/voip/widget/b;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/widget/AutoFitTextView;->getWidth()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/viber/voip/widget/b;->a(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 26
    :cond_0
    return-void
.end method
