.class public Lcom/viber/voip/messages/ui/TabListIndicator;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Z

.field private final c:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

.field private d:[Lcom/viber/voip/messages/ui/ei;

.field private e:I

.field private f:I

.field private g:Lcom/viber/voip/messages/ui/eh;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/messages/ui/TabListIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->b:Z

    .line 34
    new-array v0, v1, [Lcom/viber/voip/messages/ui/ei;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->d:[Lcom/viber/voip/messages/ui/ei;

    .line 48
    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/ui/TabListIndicator;->setHorizontalScrollBarEnabled(Z)V

    .line 50
    new-instance v0, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->c:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    .line 51
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->c:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->setGravity(I)V

    .line 52
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->c:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/ui/TabListIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/TabListIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->a:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->c:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-virtual {v0, p1}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/viber/voip/messages/ui/TabListIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 87
    :cond_0
    new-instance v1, Lcom/viber/voip/messages/ui/eg;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/messages/ui/eg;-><init>(Lcom/viber/voip/messages/ui/TabListIndicator;Landroid/view/View;)V

    iput-object v1, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->a:Ljava/lang/Runnable;

    .line 94
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/TabListIndicator;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void
.end method


# virtual methods
.method public a([Lcom/viber/voip/messages/ui/ei;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->c:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->removeAllViews()V

    .line 133
    array-length v1, p1

    .line 134
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 135
    aget-object v2, p1, v0

    .line 138
    invoke-static {v2, v0}, Lcom/viber/voip/messages/ui/ei;->a(Lcom/viber/voip/messages/ui/ei;I)I

    .line 139
    iget v3, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->e:I

    invoke-static {v2, v3}, Lcom/viber/voip/messages/ui/ei;->b(Lcom/viber/voip/messages/ui/ei;I)I

    .line 140
    invoke-virtual {v2, p0}, Lcom/viber/voip/messages/ui/ei;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v2, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->c:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    aget-object v3, p1, v0

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->d:[Lcom/viber/voip/messages/ui/ei;

    .line 146
    iput p2, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->f:I

    .line 148
    iget v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->f:I

    if-le v0, v1, :cond_1

    .line 149
    add-int/lit8 v0, v1, -0x1

    iput v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->f:I

    .line 151
    :cond_1
    iget v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->f:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/TabListIndicator;->setCurrentItem(I)V

    .line 152
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/TabListIndicator;->requestLayout()V

    .line 153
    return-void
.end method

.method public getAnimateToTab()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->b:Z

    return v0
.end method

.method public getTabItemView()[Lcom/viber/voip/messages/ui/ei;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->d:[Lcom/viber/voip/messages/ui/ei;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 100
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/TabListIndicator;->post(Ljava/lang/Runnable;)Z

    .line 104
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 116
    check-cast p1, Lcom/viber/voip/messages/ui/ei;

    .line 117
    iget v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->f:I

    invoke-static {p1}, Lcom/viber/voip/messages/ui/ei;->a(Lcom/viber/voip/messages/ui/ei;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 119
    invoke-static {p1}, Lcom/viber/voip/messages/ui/ei;->b(Lcom/viber/voip/messages/ui/ei;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/viber/voip/messages/ui/ei;->a(Lcom/viber/voip/messages/ui/ei;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/TabListIndicator;->setCurrentItem(I)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->g:Lcom/viber/voip/messages/ui/eh;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->g:Lcom/viber/voip/messages/ui/eh;

    invoke-static {p1}, Lcom/viber/voip/messages/ui/ei;->c(Lcom/viber/voip/messages/ui/ei;)I

    move-result v1

    invoke-static {p1}, Lcom/viber/voip/messages/ui/ei;->d(Lcom/viber/voip/messages/ui/ei;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/messages/ui/eh;->a(IZ)V

    .line 125
    :cond_1
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 109
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/TabListIndicator;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 112
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/high16 v4, 0x4000

    const/4 v1, 0x1

    .line 57
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 58
    if-ne v2, v4, :cond_2

    move v0, v1

    .line 59
    :goto_0
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/TabListIndicator;->setFillViewport(Z)V

    .line 61
    iget-object v3, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->c:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-virtual {v3}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v3

    .line 62
    if-le v3, v1, :cond_4

    if-eq v2, v4, :cond_0

    const/high16 v1, -0x8000

    if-ne v2, v1, :cond_4

    .line 63
    :cond_0
    const/4 v1, 0x2

    if-le v3, v1, :cond_3

    .line 64
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ecccccd

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->e:I

    .line 72
    :goto_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/TabListIndicator;->getMeasuredWidth()I

    move-result v1

    .line 73
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 74
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/TabListIndicator;->getMeasuredWidth()I

    move-result v2

    .line 76
    if-eqz v0, :cond_1

    if-eq v1, v2, :cond_1

    .line 78
    iget v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->f:I

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/TabListIndicator;->setCurrentItem(I)V

    .line 80
    :cond_1
    return-void

    .line 58
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 66
    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->e:I

    goto :goto_1

    .line 69
    :cond_4
    const/4 v1, -0x1

    iput v1, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->e:I

    goto :goto_1
.end method

.method public setAnimateToTab(Z)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->b:Z

    .line 171
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 156
    iput p1, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->f:I

    .line 158
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->c:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-virtual {v0}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildCount()I

    move-result v3

    move v2, v1

    .line 159
    :goto_0
    if-ge v2, v3, :cond_2

    .line 160
    iget-object v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->c:Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;

    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/internal/widget/IcsLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 161
    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    .line 162
    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    .line 163
    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->b:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/TabListIndicator;->a(I)V

    .line 159
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 161
    goto :goto_1

    .line 167
    :cond_2
    return-void
.end method

.method public setTabClickListener(Lcom/viber/voip/messages/ui/eh;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/viber/voip/messages/ui/TabListIndicator;->g:Lcom/viber/voip/messages/ui/eh;

    .line 179
    return-void
.end method
