.class public Lcom/viber/voip/messages/LocationEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/Rect;

.field private c:Lcom/viber/voip/messages/b;

.field private d:Lcom/viber/voip/messages/c;

.field private e:Z

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/LocationEditText;->e:Z

    .line 101
    new-instance v0, Lcom/viber/voip/messages/a;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/a;-><init>(Lcom/viber/voip/messages/LocationEditText;)V

    iput-object v0, p0, Lcom/viber/voip/messages/LocationEditText;->f:Ljava/lang/Runnable;

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/LocationEditText;->e:Z

    .line 101
    new-instance v0, Lcom/viber/voip/messages/a;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/a;-><init>(Lcom/viber/voip/messages/LocationEditText;)V

    iput-object v0, p0, Lcom/viber/voip/messages/LocationEditText;->f:Ljava/lang/Runnable;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/LocationEditText;->e:Z

    .line 101
    new-instance v0, Lcom/viber/voip/messages/a;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/a;-><init>(Lcom/viber/voip/messages/LocationEditText;)V

    iput-object v0, p0, Lcom/viber/voip/messages/LocationEditText;->f:Ljava/lang/Runnable;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/LocationEditText;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/LocationEditText;->setLayoutHeight(I)V

    return-void
.end method

.method private setLayoutHeight(I)V
    .locals 1
    .parameter

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/viber/voip/messages/LocationEditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 119
    if-eqz v0, :cond_0

    .line 120
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 121
    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/LocationEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lcom/viber/voip/messages/LocationEditText;->a:Landroid/graphics/drawable/Drawable;

    .line 128
    iput-object v0, p0, Lcom/viber/voip/messages/LocationEditText;->b:Landroid/graphics/Rect;

    .line 129
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 130
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 98
    iget-object v0, p0, Lcom/viber/voip/messages/LocationEditText;->f:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/LocationEditText;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    .line 65
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/LocationEditText;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/viber/voip/messages/LocationEditText;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/LocationEditText;->b:Landroid/graphics/Rect;

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 70
    invoke-virtual {p0}, Lcom/viber/voip/messages/LocationEditText;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/LocationEditText;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/viber/voip/messages/LocationEditText;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/messages/LocationEditText;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/viber/voip/messages/LocationEditText;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/messages/LocationEditText;->getPaddingTop()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/viber/voip/messages/LocationEditText;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/viber/voip/messages/LocationEditText;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_1

    .line 73
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 78
    iget-object v0, p0, Lcom/viber/voip/messages/LocationEditText;->c:Lcom/viber/voip/messages/b;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/viber/voip/messages/LocationEditText;->e:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/viber/voip/messages/LocationEditText;->c:Lcom/viber/voip/messages/b;

    invoke-interface {v0}, Lcom/viber/voip/messages/b;->a()V

    .line 89
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/messages/LocationEditText;->getWidth()I

    move-result v2

    if-gt v0, v2, :cond_2

    if-ltz v0, :cond_2

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Lcom/viber/voip/messages/LocationEditText;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_3

    .line 82
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/LocationEditText;->d:Lcom/viber/voip/messages/c;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/viber/voip/messages/LocationEditText;->d:Lcom/viber/voip/messages/c;

    invoke-interface {v0}, Lcom/viber/voip/messages/c;->a()V

    goto :goto_0
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    if-eqz p3, :cond_0

    .line 53
    iput-object p3, p0, Lcom/viber/voip/messages/LocationEditText;->a:Landroid/graphics/drawable/Drawable;

    .line 55
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 56
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/viber/voip/messages/LocationEditText;->e:Z

    .line 135
    invoke-super {p0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 136
    return-void
.end method

.method public setOnEventListener(Lcom/viber/voip/messages/c;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/viber/voip/messages/LocationEditText;->d:Lcom/viber/voip/messages/c;

    .line 47
    return-void
.end method

.method public setOnInterfaceLocationClickListener(Lcom/viber/voip/messages/b;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/viber/voip/messages/LocationEditText;->c:Lcom/viber/voip/messages/b;

    .line 43
    return-void
.end method

.method public setRightImageResource(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/viber/voip/messages/LocationEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/viber/voip/messages/LocationEditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 61
    return-void
.end method
