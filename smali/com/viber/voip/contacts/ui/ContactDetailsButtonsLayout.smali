.class public Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:F

.field private e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method private a(I)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 96
    .line 97
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    if-eqz v0, :cond_3

    .line 100
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    .line 101
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    move v1, v0

    .line 104
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 105
    if-eqz v0, :cond_0

    .line 106
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    .line 107
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    sub-int/2addr v0, v1

    div-int/lit8 v1, v0, 0x2

    .line 111
    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->d:F

    .line 113
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    iget-object v4, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 116
    iget-object v5, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    sub-int v5, v1, v5

    iget-object v6, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 118
    iget-object v6, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v1, v6

    iget-object v6, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v1, v6

    .line 121
    :goto_1
    iget v6, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->e:F

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_2

    .line 122
    iget-object v6, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v6, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 123
    iget-object v6, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a:Landroid/widget/TextView;

    invoke-static {v6, v3}, Lcom/viber/voip/util/gj;->a(Landroid/widget/TextView;Ljava/lang/String;)I

    move-result v6

    .line 125
    iget-object v7, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 126
    iget-object v7, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->b:Landroid/widget/TextView;

    invoke-static {v7, v4}, Lcom/viber/voip/util/gj;->a(Landroid/widget/TextView;Ljava/lang/String;)I

    move-result v7

    .line 128
    if-ge v6, v5, :cond_1

    if-lt v7, v1, :cond_2

    .line 130
    :cond_1
    const/high16 v6, 0x3f80

    sub-float/2addr v0, v6

    .line 134
    goto :goto_1

    .line 135
    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0197

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->d:F

    .line 70
    iget v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->d:F

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->e:F

    .line 72
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 73
    const v1, 0x7f030078

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 75
    const v0, 0x7f0701d3

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0701d4

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->b:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0701d6

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->c:Landroid/widget/TextView;

    .line 78
    return-void
.end method


# virtual methods
.method public a(IIII)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 59
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a:Landroid/widget/TextView;

    if-ne p1, v4, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->b:Landroid/widget/TextView;

    if-ne p1, v4, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->c:Landroid/widget/TextView;

    const/4 v3, 0x1

    if-ne p1, v3, :cond_5

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 64
    :cond_0
    if-lez p3, :cond_1

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    .line 65
    :cond_1
    if-lez p4, :cond_2

    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 66
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 59
    goto :goto_0

    :cond_4
    move v0, v2

    .line 60
    goto :goto_1

    :cond_5
    move v1, v2

    .line 61
    goto :goto_2
.end method

.method public a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method public getLeftTextButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method public getMiddleTextButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRightTextButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 83
    if-eq p1, p3, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/ui/ContactDetailsButtonsLayout;->a(I)V

    .line 86
    :cond_0
    return-void
.end method
