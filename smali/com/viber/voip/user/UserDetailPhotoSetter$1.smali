.class Lcom/viber/voip/user/UserDetailPhotoSetter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;


# direct methods
.method constructor <init>(Lcom/viber/voip/user/UserDetailPhotoSetter;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;->this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/high16 v1, -0x4080

    .line 120
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 147
    :cond_0
    :goto_0
    return v2

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;->this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;

    #calls: Lcom/viber/voip/user/UserDetailPhotoSetter;->updateEventStates(Landroid/view/MotionEvent;)V
    invoke-static {v0, p2}, Lcom/viber/voip/user/UserDetailPhotoSetter;->access$100(Lcom/viber/voip/user/UserDetailPhotoSetter;Landroid/view/MotionEvent;)V

    .line 123
    check-cast p1, Landroid/widget/ListView;

    .line 125
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;->this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;

    #calls: Lcom/viber/voip/user/UserDetailPhotoSetter;->isFirstVisible(Landroid/widget/ListView;)Z
    invoke-static {v0, p1}, Lcom/viber/voip/user/UserDetailPhotoSetter;->access$200(Lcom/viber/voip/user/UserDetailPhotoSetter;Landroid/widget/ListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;->this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;

    #getter for: Lcom/viber/voip/user/UserDetailPhotoSetter;->startY:F
    invoke-static {v0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->access$300(Lcom/viber/voip/user/UserDetailPhotoSetter;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;->this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;

    #getter for: Lcom/viber/voip/user/UserDetailPhotoSetter;->mParentTarget:Landroid/view/View;
    invoke-static {v0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->access$400(Lcom/viber/voip/user/UserDetailPhotoSetter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;->this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    #setter for: Lcom/viber/voip/user/UserDetailPhotoSetter;->startY:F
    invoke-static {v0, v1}, Lcom/viber/voip/user/UserDetailPhotoSetter;->access$302(Lcom/viber/voip/user/UserDetailPhotoSetter;F)F

    .line 127
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;->this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;

    #getter for: Lcom/viber/voip/user/UserDetailPhotoSetter;->photoViewHeight:I
    invoke-static {v0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->access$500(Lcom/viber/voip/user/UserDetailPhotoSetter;)I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 128
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;->this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;

    iget-object v1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;->this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;

    #getter for: Lcom/viber/voip/user/UserDetailPhotoSetter;->mParentTarget:Landroid/view/View;
    invoke-static {v1}, Lcom/viber/voip/user/UserDetailPhotoSetter;->access$400(Lcom/viber/voip/user/UserDetailPhotoSetter;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    #setter for: Lcom/viber/voip/user/UserDetailPhotoSetter;->photoViewHeight:I
    invoke-static {v0, v1}, Lcom/viber/voip/user/UserDetailPhotoSetter;->access$502(Lcom/viber/voip/user/UserDetailPhotoSetter;I)I

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;->this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;

    #getter for: Lcom/viber/voip/user/UserDetailPhotoSetter;->startY:F
    invoke-static {v0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->access$300(Lcom/viber/voip/user/UserDetailPhotoSetter;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/ListView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;->this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;

    iget-object v1, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;->this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;

    #getter for: Lcom/viber/voip/user/UserDetailPhotoSetter;->startY:F
    invoke-static {v1}, Lcom/viber/voip/user/UserDetailPhotoSetter;->access$300(Lcom/viber/voip/user/UserDetailPhotoSetter;)F

    move-result v1

    #calls: Lcom/viber/voip/user/UserDetailPhotoSetter;->pullDown(F)V
    invoke-static {v0, v1}, Lcom/viber/voip/user/UserDetailPhotoSetter;->access$600(Lcom/viber/voip/user/UserDetailPhotoSetter;F)V

    goto :goto_0

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;->this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;

    #getter for: Lcom/viber/voip/user/UserDetailPhotoSetter;->photoViewHeight:I
    invoke-static {v0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->access$500(Lcom/viber/voip/user/UserDetailPhotoSetter;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 140
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;->this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;

    #calls: Lcom/viber/voip/user/UserDetailPhotoSetter;->initializeYsHistory()V
    invoke-static {v0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->access$700(Lcom/viber/voip/user/UserDetailPhotoSetter;)V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;->this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;

    #setter for: Lcom/viber/voip/user/UserDetailPhotoSetter;->startY:F
    invoke-static {v0, v1}, Lcom/viber/voip/user/UserDetailPhotoSetter;->access$302(Lcom/viber/voip/user/UserDetailPhotoSetter;F)F

    .line 143
    iget-object v0, p0, Lcom/viber/voip/user/UserDetailPhotoSetter$1;->this$0:Lcom/viber/voip/user/UserDetailPhotoSetter;

    #calls: Lcom/viber/voip/user/UserDetailPhotoSetter;->ensureHeaderPosition()V
    invoke-static {v0}, Lcom/viber/voip/user/UserDetailPhotoSetter;->access$800(Lcom/viber/voip/user/UserDetailPhotoSetter;)V

    goto :goto_0

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
