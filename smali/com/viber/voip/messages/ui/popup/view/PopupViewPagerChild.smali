.class public Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerChild;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerChild;->a()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerChild;->a()V

    .line 23
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerChild;->setOffscreenPageLimit(I)V

    .line 36
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerChild;->setHorizontalFadingEdgeEnabled(Z)V

    .line 37
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/popup/view/PopupViewPagerChild;->setFadingEdgeLength(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method
