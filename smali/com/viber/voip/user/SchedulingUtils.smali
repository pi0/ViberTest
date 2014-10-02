.class public Lcom/viber/voip/user/SchedulingUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doAfterDraw(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 39
    new-instance v0, Lcom/viber/voip/user/SchedulingUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/user/SchedulingUtils$2;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 58
    :goto_0
    return-void

    .line 48
    :cond_0
    new-instance v0, Lcom/viber/voip/user/SchedulingUtils$3;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/user/SchedulingUtils$3;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method

.method public static doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 19
    new-instance v0, Lcom/viber/voip/user/SchedulingUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/user/SchedulingUtils$1;-><init>(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 32
    return-void
.end method
