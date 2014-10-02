.class Lcom/viber/voip/gallery/preview/ab;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 266
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/viber/voip/gallery/preview/aa;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/viber/voip/gallery/preview/ab;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .parameter

    .prologue
    .line 270
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 271
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/preview/ab;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 272
    return-void
.end method
