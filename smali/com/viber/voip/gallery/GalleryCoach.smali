.class public Lcom/viber/voip/gallery/GalleryCoach;
.super Lcom/viber/voip/app/ViberFragmentActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/viber/voip/app/ViberFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f0300b2

    invoke-virtual {p0, v0}, Lcom/viber/voip/gallery/GalleryCoach;->setContentView(I)V

    .line 23
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/viber/voip/gallery/GalleryCoach;->finish()V

    .line 30
    :cond_0
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberFragmentActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
