.class public Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;
.super Landroid/support/v4/view/ViewPager;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Lcom/viber/voip/messages/ui/view/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->a:Z

    .line 27
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->a:Z

    if-eqz v0, :cond_0

    .line 48
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 54
    :goto_0
    return v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 54
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/view/ViewPager;->onSizeChanged(IIII)V

    .line 68
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->b:Lcom/viber/voip/messages/ui/view/i;

    if-eqz v0, :cond_1

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 69
    :cond_0
    const-string/jumbo v0, "ViewPagerWithPagingEnable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->b:Lcom/viber/voip/messages/ui/view/i;

    invoke-interface {v0, p1, p2}, Lcom/viber/voip/messages/ui/view/i;->a(II)V

    .line 72
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->a:Z

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 41
    :goto_0
    return v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/ViberApplication;->log(Ljava/lang/String;)V

    .line 41
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnSizeChangeListener(Lcom/viber/voip/messages/ui/view/i;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->b:Lcom/viber/voip/messages/ui/view/i;

    .line 63
    return-void
.end method

.method public setPagingEnabled(Z)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/viber/voip/messages/ui/view/ViewPagerWithPagingEnable;->a:Z

    .line 59
    return-void
.end method
