.class public Lpager/f;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:I

.field public c:F

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 2580
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2571
    const/4 v0, 0x0

    iput v0, p0, Lpager/f;->c:F

    .line 2581
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2584
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2571
    const/4 v0, 0x0

    iput v0, p0, Lpager/f;->c:F

    .line 2586
    invoke-static {}, Lpager/ViewPager;->e()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2587
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lpager/f;->b:I

    .line 2588
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2589
    return-void
.end method
