.class public Lcom/viber/voip/calls/ui/KeypadButton;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:[C


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/calls/ui/KeypadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/calls/ui/KeypadButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/calls/ui/KeypadButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/calls/ui/KeypadButton;->setClickable(Z)V

    .line 41
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter
    .parameter

    .prologue
    const v12, 0x7f070070

    const/16 v11, 0x8

    const/4 v0, 0x0

    const/4 v10, -0x2

    const/4 v9, 0x1

    .line 48
    if-nez p2, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/KeypadButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0150

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/calls/ui/KeypadButton;->a:I

    .line 51
    invoke-virtual {p0}, Lcom/viber/voip/calls/ui/KeypadButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0151

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/calls/ui/KeypadButton;->b:I

    .line 53
    sget-object v1, Lcom/viber/voip/bb;->KeypadButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 54
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 55
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 56
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 57
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 58
    const/4 v6, 0x4

    const/4 v7, -0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 59
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setId(I)V

    .line 63
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    .line 64
    invoke-virtual {p0, v1}, Lcom/viber/voip/calls/ui/KeypadButton;->addView(Landroid/view/View;)V

    .line 66
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 67
    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setDuplicateParentStateEnabled(Z)V

    .line 74
    invoke-virtual {p0, v1}, Lcom/viber/voip/calls/ui/KeypadButton;->addView(Landroid/view/View;)V

    .line 76
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    const/4 v7, 0x5

    invoke-virtual {v5, v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 78
    invoke-virtual {v5, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 79
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 81
    iget v5, p0, Lcom/viber/voip/calls/ui/KeypadButton;->a:I

    iget v7, p0, Lcom/viber/voip/calls/ui/KeypadButton;->b:I

    invoke-virtual {v1, v5, v0, v0, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 83
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 85
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 88
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    if-eqz v2, :cond_2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 91
    :cond_3
    const/high16 v7, 0x4150

    invoke-virtual {v5, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 93
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    :cond_4
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 97
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 100
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    if-eqz v3, :cond_5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 103
    :cond_6
    const/high16 v1, 0x4150

    invoke-virtual {v5, v9, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :cond_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 108
    invoke-direct {p0, v6}, Lcom/viber/voip/calls/ui/KeypadButton;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    new-array v1, v9, [C

    iput-object v1, p0, Lcom/viber/voip/calls/ui/KeypadButton;->c:[C

    .line 110
    iget-object v1, p0, Lcom/viber/voip/calls/ui/KeypadButton;->c:[C

    const/16 v2, 0xa

    invoke-static {v6, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    aput-char v2, v1, v0

    goto/16 :goto_0

    .line 113
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 114
    invoke-direct {p0, v6}, Lcom/viber/voip/calls/ui/KeypadButton;->a(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 115
    iput-object v1, p0, Lcom/viber/voip/calls/ui/KeypadButton;->c:[C

    goto/16 :goto_0

    .line 117
    :cond_9
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [C

    iput-object v2, p0, Lcom/viber/voip/calls/ui/KeypadButton;->c:[C

    .line 118
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_a

    .line 119
    iget-object v2, p0, Lcom/viber/voip/calls/ui/KeypadButton;->c:[C

    aget-char v3, v1, v0

    aput-char v3, v2, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 121
    :cond_a
    iget-object v0, p0, Lcom/viber/voip/calls/ui/KeypadButton;->c:[C

    iget-object v1, p0, Lcom/viber/voip/calls/ui/KeypadButton;->c:[C

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0xa

    invoke-static {v6, v2}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    aput-char v2, v0, v1

    goto/16 :goto_0
.end method

.method private a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 127
    if-ltz p1, :cond_0

    const/16 v0, 0x9

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getChars()[C
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/viber/voip/calls/ui/KeypadButton;->c:[C

    return-object v0
.end method
