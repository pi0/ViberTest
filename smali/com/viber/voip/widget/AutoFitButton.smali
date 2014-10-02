.class public Lcom/viber/voip/widget/AutoFitButton;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/widget/b;

.field private b:Z

.field private c:Lcom/viber/voip/widget/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/widget/AutoFitButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/widget/AutoFitButton;->b:Z

    .line 22
    new-instance v0, Lcom/viber/voip/widget/b;

    invoke-virtual {p0}, Lcom/viber/voip/widget/AutoFitButton;->getTextSize()F

    move-result v1

    invoke-direct {v0, v1}, Lcom/viber/voip/widget/b;-><init>(F)V

    iput-object v0, p0, Lcom/viber/voip/widget/AutoFitButton;->a:Lcom/viber/voip/widget/b;

    .line 23
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onMeasure(II)V

    .line 44
    iget-boolean v0, p0, Lcom/viber/voip/widget/AutoFitButton;->b:Z

    if-nez v0, :cond_0

    .line 45
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/viber/voip/widget/AutoFitButton;->a:Lcom/viber/voip/widget/b;

    invoke-virtual {p0}, Lcom/viber/voip/widget/AutoFitButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2, v0}, Lcom/viber/voip/widget/b;->a(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 48
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    if-eq p1, p3, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/widget/AutoFitButton;->b:Z

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/viber/voip/widget/AutoFitButton;->a:Lcom/viber/voip/widget/b;

    invoke-virtual {p0}, Lcom/viber/voip/widget/AutoFitButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lcom/viber/voip/widget/b;->a(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 37
    iget-object v0, p0, Lcom/viber/voip/widget/AutoFitButton;->c:Lcom/viber/voip/widget/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/widget/AutoFitButton;->c:Lcom/viber/voip/widget/a;

    invoke-interface {v0}, Lcom/viber/voip/widget/a;->a()V

    .line 39
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
    .line 28
    iget-object v0, p0, Lcom/viber/voip/widget/AutoFitButton;->a:Lcom/viber/voip/widget/b;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/viber/voip/widget/AutoFitButton;->a:Lcom/viber/voip/widget/b;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/viber/voip/widget/AutoFitButton;->getWidth()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/viber/voip/widget/b;->a(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 31
    :cond_0
    return-void
.end method

.method public setDisableOnSizeChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/viber/voip/widget/AutoFitButton;->b:Z

    .line 52
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/viber/voip/widget/a;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/viber/voip/widget/AutoFitButton;->c:Lcom/viber/voip/widget/a;

    .line 56
    return-void
.end method
