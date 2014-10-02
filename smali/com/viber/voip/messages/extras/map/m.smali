.class public Lcom/viber/voip/messages/extras/map/m;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/messages/extras/map/n;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 12
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/m;->a:Lcom/viber/voip/messages/extras/map/n;

    if-nez v0, :cond_0

    .line 18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 28
    :goto_0
    return v0

    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 28
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/m;->a:Lcom/viber/voip/messages/extras/map/n;

    invoke-interface {v0}, Lcom/viber/voip/messages/extras/map/n;->a()V

    goto :goto_1

    .line 25
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/m;->a:Lcom/viber/voip/messages/extras/map/n;

    invoke-interface {v0}, Lcom/viber/voip/messages/extras/map/n;->b()V

    goto :goto_1

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMapTouchCallback()Lcom/viber/voip/messages/extras/map/n;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/m;->a:Lcom/viber/voip/messages/extras/map/n;

    return-object v0
.end method

.method public setMapTouchCallback(Lcom/viber/voip/messages/extras/map/n;)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/m;->a:Lcom/viber/voip/messages/extras/map/n;

    .line 39
    return-void
.end method
