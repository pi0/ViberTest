.class public Lcom/viber/voip/phone/VideoCallTitleChronometer;
.super Lcom/viber/voip/widget/PausableChronometer;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/phone/VideoCallTitleChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/PausableChronometer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    sget-object v0, Lcom/viber/voip/bb;->VideoCall:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 23
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    int-to-float v0, v0

    invoke-static {p0, v0}, Lcom/nineoldandroids/view/ViewHelper;->setRotation(Landroid/view/View;F)V

    .line 27
    :cond_0
    return-void
.end method
