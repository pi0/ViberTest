.class Lcom/viber/voip/messages/ui/chathead/k;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:I

.field final synthetic b:F

.field final synthetic c:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;IF)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/k;->c:Lcom/viber/voip/messages/ui/chathead/d;

    iput p2, p0, Lcom/viber/voip/messages/ui/chathead/k;->a:I

    iput p3, p0, Lcom/viber/voip/messages/ui/chathead/k;->b:F

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 3
    .parameter

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/k;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->g(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1153
    :goto_0
    return-void

    .line 1146
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/k;->c:Lcom/viber/voip/messages/ui/chathead/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 1147
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/k;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/k;->a:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1148
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/k;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/k;->b:F

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1149
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/k;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->B(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/k;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/k;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->u(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1150
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/k;->c:Lcom/viber/voip/messages/ui/chathead/d;

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/k;->a:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;F)F

    .line 1151
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/k;->c:Lcom/viber/voip/messages/ui/chathead/d;

    iget v1, p0, Lcom/viber/voip/messages/ui/chathead/k;->b:F

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/chathead/d;->b(Lcom/viber/voip/messages/ui/chathead/d;F)F

    .line 1152
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/k;->c:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->C(Lcom/viber/voip/messages/ui/chathead/d;)V

    goto :goto_0
.end method
