.class public abstract Lcom/viber/voip/widget/am;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/RelativeLayout$LayoutParams;

.field private g:Landroid/widget/RelativeLayout$LayoutParams;

.field private h:Landroid/widget/RelativeLayout$LayoutParams;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    const v0, 0x20202

    iput v0, p0, Lcom/viber/voip/widget/am;->a:I

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/widget/am;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const v0, 0x20202

    iput v0, p0, Lcom/viber/voip/widget/am;->a:I

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/am;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const v0, 0x20202

    iput v0, p0, Lcom/viber/voip/widget/am;->a:I

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/am;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/high16 v5, 0x4140

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 51
    sget-object v0, Lcom/viber/voip/bb;->ViewWithDescription:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 53
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/am;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/am;->setDescendantFocusability(I)V

    .line 61
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/viber/voip/widget/am;->f:Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    iget v0, p0, Lcom/viber/voip/widget/am;->a:I

    invoke-virtual {p0}, Lcom/viber/voip/widget/am;->getId()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/viber/voip/widget/am;->b:I

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/widget/am;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/am;->c:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/viber/voip/widget/am;->c:Landroid/view/View;

    iget v1, p0, Lcom/viber/voip/widget/am;->b:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 66
    iget-object v0, p0, Lcom/viber/voip/widget/am;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/viber/voip/widget/am;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a023d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 67
    iget-object v0, p0, Lcom/viber/voip/widget/am;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/viber/voip/widget/am;->f:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/viber/voip/widget/am;->g:Landroid/widget/RelativeLayout$LayoutParams;

    .line 70
    iget-object v0, p0, Lcom/viber/voip/widget/am;->g:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/viber/voip/widget/am;->b:I

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 71
    iget-object v0, p0, Lcom/viber/voip/widget/am;->g:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x5

    iget v2, p0, Lcom/viber/voip/widget/am;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 73
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/viber/voip/widget/am;->h:Landroid/widget/RelativeLayout$LayoutParams;

    .line 74
    iget-object v0, p0, Lcom/viber/voip/widget/am;->h:Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/viber/voip/widget/am;->b:I

    invoke-virtual {v0, v7, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 75
    iget-object v0, p0, Lcom/viber/voip/widget/am;->h:Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x7

    iget v2, p0, Lcom/viber/voip/widget/am;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 77
    new-instance v0, Lcom/viber/voip/ui/ViberTextView;

    invoke-virtual {p0}, Lcom/viber/voip/widget/am;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/ui/ViberTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/widget/am;->d:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/viber/voip/widget/am;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/widget/am;->g:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v0, p0, Lcom/viber/voip/widget/am;->d:Landroid/widget/TextView;

    const/high16 v1, 0x4120

    invoke-static {p1, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 80
    iget-object v0, p0, Lcom/viber/voip/widget/am;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 82
    new-instance v0, Lcom/viber/voip/ui/ViberTextView;

    invoke-virtual {p0}, Lcom/viber/voip/widget/am;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/ui/ViberTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/widget/am;->e:Landroid/widget/TextView;

    .line 83
    iget-object v0, p0, Lcom/viber/voip/widget/am;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/widget/am;->h:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v0, p0, Lcom/viber/voip/widget/am;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 85
    iget-object v0, p0, Lcom/viber/voip/widget/am;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/viber/voip/widget/am;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    iget-object v0, p0, Lcom/viber/voip/widget/am;->e:Landroid/widget/TextView;

    const/high16 v1, 0x4040

    invoke-static {p1, v1}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 87
    iget-object v0, p0, Lcom/viber/voip/widget/am;->i:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/am;->setDescription(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/viber/voip/widget/am;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/am;->addView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/viber/voip/widget/am;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/am;->addView(Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lcom/viber/voip/widget/am;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/am;->addView(Landroid/view/View;)V

    .line 92
    return-void

    .line 55
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 100
    iget-object v0, p0, Lcom/viber/voip/widget/am;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    packed-switch p2, :pswitch_data_0

    .line 111
    :goto_0
    return-void

    .line 103
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/widget/am;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/viber/voip/widget/am;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 106
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/widget/am;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/viber/voip/widget/am;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 101
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBodyViewId()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/viber/voip/widget/am;->b:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/viber/voip/widget/am;->i:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/viber/voip/widget/am;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-void
.end method

.method public setDescriptionColor(I)V
    .locals 1
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/viber/voip/widget/am;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 116
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/widget/am;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 117
    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/am;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method
