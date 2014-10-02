.class public Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final a:[Ljava/lang/Integer;

.field private static final b:[Ljava/lang/Integer;

.field private static final d:Lcom/viber/voip/stickers/ba;


# instance fields
.field private c:Lcom/viber/voip/messages/ui/popup/view/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x1b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x197

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->a:[Ljava/lang/Integer;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x1b5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const/16 v1, 0x1a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    const/16 v1, 0x1a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    const/16 v1, 0x197

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    sput-object v0, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->b:[Ljava/lang/Integer;

    .line 36
    sget-object v0, Lcom/viber/voip/stickers/ba;->a:Lcom/viber/voip/stickers/ba;

    sput-object v0, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->d:Lcom/viber/voip/stickers/ba;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->a()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->a()V

    .line 46
    return-void
.end method

.method private a(IILcom/viber/voip/stickers/r;Lcom/viber/voip/stickers/b;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const v3, 0x7f0a0191

    const/4 v10, 0x0

    const/4 v4, -0x2

    const/4 v9, 0x1

    .line 68
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f03012b

    invoke-static {v0, v1, v6}, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 69
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const/high16 v3, 0x3f80

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 73
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 75
    const v1, 0x7f0703bd

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 76
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    const v1, 0x7f0703be

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 80
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 83
    const v0, 0x7f0703bc

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 85
    invoke-virtual {p3, p1, v10}, Lcom/viber/voip/stickers/r;->a(IZ)Lcom/viber/voip/stickers/c/a;

    move-result-object v1

    .line 87
    new-instance v5, Lcom/viber/voip/stickers/ui/b;

    invoke-direct {v5, p4, v3, v4}, Lcom/viber/voip/stickers/ui/b;-><init>(Lcom/viber/voip/stickers/b;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 88
    invoke-virtual {v5, v1}, Lcom/viber/voip/stickers/ui/b;->a(Lcom/viber/voip/stickers/c/a;)V

    .line 90
    sget-object v0, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->d:Lcom/viber/voip/stickers/ba;

    invoke-virtual {v5, v9, v9, v0}, Lcom/viber/voip/stickers/ui/b;->a(ZZLcom/viber/voip/stickers/ba;)Z

    .line 91
    sget-object v0, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->d:Lcom/viber/voip/stickers/ba;

    invoke-virtual {v5, v10, v9, v0}, Lcom/viber/voip/stickers/ui/b;->a(ZZLcom/viber/voip/stickers/ba;)Z

    .line 93
    new-instance v0, Lcom/viber/voip/messages/ui/popup/view/b;

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/messages/ui/popup/view/b;-><init>(Lcom/viber/voip/stickers/c/a;ILandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/viber/voip/stickers/ui/b;Lcom/viber/voip/messages/ui/popup/view/a;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 97
    return-object v7
.end method

.method private a()V
    .locals 5

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    return-void

    .line 55
    :cond_1
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/viber/voip/stickers/r;->d()Lcom/viber/voip/stickers/b;

    move-result-object v2

    .line 58
    sget-object v0, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->a:[Ljava/lang/Integer;

    array-length v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->setWeightSum(F)V

    .line 60
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->a:[Ljava/lang/Integer;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 61
    sget-object v3, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->a:[Ljava/lang/Integer;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->b:[Ljava/lang/Integer;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v3, v4, v1, v2}, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->a(IILcom/viber/voip/stickers/r;Lcom/viber/voip/stickers/b;)Landroid/view/View;

    move-result-object v3

    .line 62
    invoke-virtual {p0, v3}, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->addView(Landroid/view/View;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->c:Lcom/viber/voip/messages/ui/popup/view/c;

    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->c:Lcom/viber/voip/messages/ui/popup/view/c;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/popup/view/b;

    iget v0, v0, Lcom/viber/voip/messages/ui/popup/view/b;->b:I

    invoke-interface {v1, v0}, Lcom/viber/voip/messages/ui/popup/view/c;->a(I)V

    .line 135
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/popup/view/b;

    .line 109
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 127
    :goto_0
    :pswitch_0
    return v4

    .line 111
    :pswitch_1
    iget-object v1, v0, Lcom/viber/voip/messages/ui/popup/view/b;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 112
    iget-object v1, v0, Lcom/viber/voip/messages/ui/popup/view/b;->e:Lcom/viber/voip/stickers/ui/b;

    sget-object v2, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->d:Lcom/viber/voip/stickers/ba;

    new-instance v3, Lcom/viber/voip/messages/ui/popup/view/a;

    invoke-direct {v3, p0, v0}, Lcom/viber/voip/messages/ui/popup/view/a;-><init>(Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;Lcom/viber/voip/messages/ui/popup/view/b;)V

    invoke-virtual {v1, v5, v5, v2, v3}, Lcom/viber/voip/stickers/ui/b;->a(ZZLcom/viber/voip/stickers/ba;Lcom/viber/voip/stickers/ui/c;)Z

    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v1, v0, Lcom/viber/voip/messages/ui/popup/view/b;->d:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v0, v0, Lcom/viber/voip/messages/ui/popup/view/b;->e:Lcom/viber/voip/stickers/ui/b;

    invoke-virtual {v0, v5}, Lcom/viber/voip/stickers/ui/b;->a(Z)V

    goto :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setStickerSelectListener(Lcom/viber/voip/messages/ui/popup/view/c;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/viber/voip/messages/ui/popup/view/PopupStickerQuickReply;->c:Lcom/viber/voip/messages/ui/popup/view/c;

    .line 102
    return-void
.end method
