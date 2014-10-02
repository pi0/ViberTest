.class Lcom/viber/voip/widget/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/LongSummaryCheckbBoxPreference;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/LongSummaryCheckbBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/viber/voip/widget/f;->a:Lcom/viber/voip/widget/LongSummaryCheckbBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 56
    move-object v0, p1

    .line 57
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 58
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 59
    check-cast p1, Landroid/widget/TextView;

    .line 60
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 62
    if-eq v3, v2, :cond_0

    if-nez v3, :cond_2

    .line 64
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 67
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v6

    sub-int/2addr v4, v6

    .line 68
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    .line 70
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v6

    add-int/2addr v4, v6

    .line 71
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    .line 73
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    .line 74
    invoke-virtual {v6, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    .line 75
    int-to-float v4, v4

    invoke-virtual {v6, v5, v4}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 77
    const-class v5, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, v4, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ClickableSpan;

    .line 79
    array-length v4, v0

    if-eqz v4, :cond_2

    .line 80
    if-ne v3, v2, :cond_1

    .line 81
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    :cond_1
    move v0, v2

    .line 86
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
