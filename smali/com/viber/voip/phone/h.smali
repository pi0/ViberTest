.class public Lcom/viber/voip/phone/h;
.super Landroid/widget/CompoundButton;
.source "SourceFile"


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Landroid/widget/CompoundButton;->onFinishInflate()V

    .line 34
    invoke-virtual {p0}, Lcom/viber/voip/phone/h;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    :cond_0
    return-void
.end method
