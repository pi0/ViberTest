.class public Lcom/viber/voip/widget/TextViewWithDescription;
.super Lcom/viber/voip/widget/am;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Lcom/viber/voip/widget/aa;

.field private b:Landroid/widget/ProgressBar;

.field private c:Z

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/RelativeLayout$LayoutParams;

.field private i:Landroid/widget/RelativeLayout$LayoutParams;

.field private j:Landroid/view/View$OnClickListener;

.field private k:Landroid/graphics/Rect;

.field private l:I

.field private m:Lcom/viber/voip/widget/ag;

.field private n:Landroid/view/View$OnFocusChangeListener;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/am;-><init>(Landroid/content/Context;)V

    .line 269
    new-instance v0, Lcom/viber/voip/widget/af;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/af;-><init>(Lcom/viber/voip/widget/TextViewWithDescription;)V

    iput-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->r:Landroid/view/View$OnClickListener;

    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/am;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 269
    new-instance v0, Lcom/viber/voip/widget/af;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/af;-><init>(Lcom/viber/voip/widget/TextViewWithDescription;)V

    iput-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->r:Landroid/view/View$OnClickListener;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/TextViewWithDescription;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/widget/am;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 269
    new-instance v0, Lcom/viber/voip/widget/af;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/af;-><init>(Lcom/viber/voip/widget/TextViewWithDescription;)V

    iput-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->r:Landroid/view/View$OnClickListener;

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/TextViewWithDescription;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method private a(I)V
    .locals 1
    .parameter

    .prologue
    .line 335
    iput p1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->l:I

    .line 336
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->e:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 342
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 345
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->k:Landroid/graphics/Rect;

    .line 354
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 355
    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->getLocationOnScreen([I)V

    .line 356
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/viber/voip/widget/TextViewWithDescription;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/viber/voip/widget/TextViewWithDescription;->k:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    aget v4, v1, v0

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/viber/voip/widget/TextViewWithDescription;->getWidth()I

    move-result v3

    aget v1, v1, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_0

    .line 357
    const/4 v0, 0x1

    goto :goto_0

    .line 354
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x4200

    const/high16 v5, 0x4130

    const/16 v4, 0x8

    const/4 v2, -0x2

    const/high16 v3, 0x40a0

    .line 134
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->h:Landroid/widget/RelativeLayout$LayoutParams;

    .line 135
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->h:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 136
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->h:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 137
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->h:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1, v5}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 138
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->h:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1, v5}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 140
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->i:Landroid/widget/RelativeLayout$LayoutParams;

    .line 141
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->i:Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->i:Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 143
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1, v3}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 144
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1, v3}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 146
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {p1, v6}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p1, v6}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 147
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    iget-object v1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getId()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 149
    invoke-static {p1, v3}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 150
    invoke-static {p1, v3}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 152
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-direct {v1, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->b:Landroid/widget/ProgressBar;

    .line 153
    iget-object v1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 155
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/viber/voip/widget/TextViewWithDescription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020421

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->b:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->addView(Landroid/view/View;)V

    .line 159
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 90
    sget-object v0, Lcom/viber/voip/bb;->TextViewWithDescription:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 96
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 98
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 99
    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 100
    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 101
    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 102
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 103
    const/4 v8, 0x7

    const v9, 0x7f020057

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/viber/voip/widget/TextViewWithDescription;->p:I

    .line 104
    const/4 v8, 0x7

    const v9, 0x7f020112

    invoke-virtual {v1, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/viber/voip/widget/TextViewWithDescription;->q:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    new-instance v1, Lcom/viber/voip/widget/aa;

    invoke-direct {v1, p1}, Lcom/viber/voip/widget/aa;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    .line 111
    if-lez v3, :cond_0

    .line 112
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->a(Landroid/text/InputFilter;)V

    .line 115
    :cond_0
    if-eqz v4, :cond_1

    .line 116
    iget-object v1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    or-int/lit8 v3, v4, 0x1

    invoke-virtual {v1, v3}, Lcom/viber/voip/widget/aa;->setInputType(I)V

    .line 119
    :cond_1
    invoke-virtual {p0, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->setEditable(Z)V

    .line 120
    iget-object v1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v1, v0}, Lcom/viber/voip/widget/aa;->setHint(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0, v7}, Lcom/viber/voip/widget/aa;->setMaxLines(I)V

    .line 122
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0, v6}, Lcom/viber/voip/widget/aa;->setSingleLine(Z)V

    .line 123
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/aa;->setGravity(I)V

    .line 124
    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0, v5}, Lcom/viber/voip/widget/aa;->setImeOptions(I)V

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/aa;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 127
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0, p0}, Lcom/viber/voip/widget/aa;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 128
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    const-string/jumbo v1, "sans-serif"

    invoke-static {v1, v10}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/aa;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    return-object v0

    .line 106
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/viber/voip/widget/TextViewWithDescription;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iput-object p1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->d:Landroid/graphics/drawable/Drawable;

    .line 237
    iput-object p2, p0, Lcom/viber/voip/widget/TextViewWithDescription;->e:Landroid/graphics/drawable/Drawable;

    .line 238
    return-void
.end method

.method public a(Landroid/text/InputFilter;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 318
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    .line 319
    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 321
    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 322
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    aput-object p1, v1, v0

    .line 324
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/aa;->setFilters([Landroid/text/InputFilter;)V

    .line 325
    return-void
.end method

.method public a(Landroid/text/TextWatcher;)V
    .locals 1
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/aa;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 196
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->c:Z

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->setRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 243
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 281
    iput-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->j:Landroid/view/View$OnClickListener;

    .line 282
    iput-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->d:Landroid/graphics/drawable/Drawable;

    .line 283
    iput-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->e:Landroid/graphics/drawable/Drawable;

    .line 284
    return-void
.end method

.method public getEditText()Lcom/viber/voip/widget/aa;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    return-object v0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 372
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcom/viber/voip/widget/TextViewWithDescription;->getBodyViewId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 373
    if-eqz p2, :cond_2

    .line 374
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->o:Ljava/lang/String;

    .line 380
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->n:Landroid/view/View$OnFocusChangeListener;

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->n:Landroid/view/View$OnFocusChangeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 384
    :cond_1
    return-void

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->m:Lcom/viber/voip/widget/ag;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->o:Ljava/lang/String;

    iget-object v1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v1}, Lcom/viber/voip/widget/aa;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->m:Lcom/viber/voip/widget/ag;

    invoke-interface {v0}, Lcom/viber/voip/widget/ag;->a()V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p0, p2}, Lcom/viber/voip/widget/TextViewWithDescription;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 295
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->j:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 296
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/TextViewWithDescription;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 306
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 314
    :cond_0
    :goto_1
    invoke-super {p0, p1}, Lcom/viber/voip/widget/am;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 299
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/viber/voip/widget/TextViewWithDescription;->a(I)V

    goto :goto_0

    .line 302
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->j:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 303
    invoke-direct {p0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->a(I)V

    goto :goto_0

    .line 308
    :cond_1
    iget v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->l:I

    if-ne v0, v2, :cond_0

    .line 309
    invoke-direct {p0, v1}, Lcom/viber/voip/widget/TextViewWithDescription;->a(I)V

    goto :goto_1

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEditable(Z)V
    .locals 2
    .parameter

    .prologue
    .line 203
    iput-boolean p1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->c:Z

    .line 204
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/aa;->setFocusableInTouchMode(Z)V

    .line 205
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/aa;->setFocusable(Z)V

    .line 206
    iget-object v1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->p:I

    :goto_0
    invoke-virtual {v1, v0}, Lcom/viber/voip/widget/aa;->setBackgroundResource(I)V

    .line 207
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/aa;->setLongClickable(Z)V

    .line 208
    return-void

    .line 206
    :cond_0
    iget v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->q:I

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter

    .prologue
    .line 216
    invoke-super {p0, p1}, Lcom/viber/voip/widget/am;->setEnabled(Z)V

    .line 217
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/widget/TextViewWithDescription;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 218
    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/aa;->setImeOptions(I)V

    .line 176
    return-void
.end method

.method public setLeftDrawable(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter

    .prologue
    .line 256
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/viber/voip/widget/TextViewWithDescription;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 257
    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->setLeftDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    return-void
.end method

.method public setLeftDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 246
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->f:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/viber/voip/widget/TextViewWithDescription;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->f:Landroid/widget/ImageView;

    .line 248
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->f:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->h:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->f:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->addView(Landroid/view/View;)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/aa;->setMaxLines(I)V

    .line 188
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0}, Lcom/viber/voip/widget/aa;->isFocusableInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/aa;->setFocusableInTouchMode(Z)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    iget-object v1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/viber/voip/widget/aa;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    invoke-super {p0, p1}, Lcom/viber/voip/widget/am;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/aa;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 172
    return-void
.end method

.method public setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->n:Landroid/view/View$OnFocusChangeListener;

    .line 289
    return-void
.end method

.method public setOnTextChangedListener(Lcom/viber/voip/widget/ag;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->m:Lcom/viber/voip/widget/ag;

    .line 364
    return-void
.end method

.method public setRightDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter

    .prologue
    .line 223
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->g:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/viber/voip/widget/TextViewWithDescription;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->g:Landroid/widget/ImageView;

    .line 227
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->i:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->g:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/TextViewWithDescription;->addView(Landroid/view/View;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    return-void
.end method

.method public setRightDrawableClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->j:Landroid/view/View$OnClickListener;

    .line 278
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 1
    .parameter

    .prologue
    .line 183
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/aa;->setSingleLine(Z)V

    .line 184
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/viber/voip/widget/TextViewWithDescription;->a:Lcom/viber/voip/widget/aa;

    invoke-virtual {v0, p1}, Lcom/viber/voip/widget/aa;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iput-object p1, p0, Lcom/viber/voip/widget/TextViewWithDescription;->o:Ljava/lang/String;

    .line 164
    return-void
.end method
