.class Lcom/viber/voip/messages/ui/chathead/w;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/a/a;

.field final synthetic b:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;Lcom/viber/voip/messages/ui/chathead/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2055
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/w;->b:Lcom/viber/voip/messages/ui/chathead/d;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/chathead/w;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 2058
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2059
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/w;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->y(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 2060
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 2061
    aget v0, v0, v3

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/w;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->d(Lcom/viber/voip/messages/ui/chathead/d;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 2062
    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/w;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    int-to-float v1, v1

    invoke-static {v2, v1}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;F)V

    .line 2063
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/w;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;F)V

    .line 2064
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/w;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0, v3}, Lcom/viber/voip/messages/ui/chathead/d;->d(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 2065
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/w;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->A(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 2066
    return-void
.end method
