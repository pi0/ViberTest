.class Lcom/viber/voip/messages/ui/chathead/i;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 1059
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/i;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 1062
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1063
    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/i;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->y(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 1064
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 1065
    aget v0, v0, v6

    iget-object v2, p0, Lcom/viber/voip/messages/ui/chathead/i;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v2}, Lcom/viber/voip/messages/ui/chathead/d;->z(Lcom/viber/voip/messages/ui/chathead/d;)I

    move-result v2

    sub-int v2, v0, v2

    .line 1066
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/i;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->t(Lcom/viber/voip/messages/ui/chathead/d;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/chathead/b;

    .line 1067
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v4

    int-to-float v5, v1

    invoke-static {v4, v5}, Lcom/viber/voip/messages/ui/chathead/ay;->a(Landroid/view/View;F)V

    .line 1068
    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/chathead/b;->a()Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    int-to-float v4, v2

    invoke-static {v0, v4}, Lcom/viber/voip/messages/ui/chathead/ay;->b(Landroid/view/View;F)V

    goto :goto_0

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/i;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0, v6}, Lcom/viber/voip/messages/ui/chathead/d;->d(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 1071
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/i;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->A(Lcom/viber/voip/messages/ui/chathead/d;)Landroid/os/Vibrator;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 1072
    return-void
.end method
