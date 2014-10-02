.class Lcom/viber/voip/messages/ui/chathead/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 219
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 220
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v2

    iget v2, v2, Lcom/viber/voip/messages/ui/chathead/c;->a:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 222
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 223
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v3

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->a:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/d;->d(Lcom/viber/voip/messages/ui/chathead/d;)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 227
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 246
    :goto_1
    return v0

    .line 225
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v3

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->a:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    .line 231
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->e(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 232
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->f(Lcom/viber/voip/messages/ui/chathead/d;)I

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v3

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->w:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->f(Lcom/viber/voip/messages/ui/chathead/d;)I

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v3

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->w:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v3

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->w:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 234
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->f(Lcom/viber/voip/messages/ui/chathead/d;)I

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v3

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->w:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 235
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1

    .line 239
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->f(Lcom/viber/voip/messages/ui/chathead/d;)I

    move-result v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v3

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->a:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 240
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/p;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/chathead/a/l;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_1

    .line 246
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1
.end method
