.class Lcom/viber/voip/messages/ui/chathead/y;
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
    .line 2125
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/y;->b:Lcom/viber/voip/messages/ui/chathead/d;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/chathead/y;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2128
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/y;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->g(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2147
    :goto_0
    return-void

    .line 2130
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/y;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->N(Lcom/viber/voip/messages/ui/chathead/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2131
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/y;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0, v6}, Lcom/viber/voip/messages/ui/chathead/d;->a(Lcom/viber/voip/messages/ui/chathead/d;Z)Z

    .line 2132
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/y;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->G(Lcom/viber/voip/messages/ui/chathead/d;)V

    .line 2136
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/y;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/chathead/y;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/chathead/d;->ab(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 2137
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/y;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    const-string/jumbo v1, "scaleX"

    new-array v2, v7, [F

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/y;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v3

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->j:F

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/y;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v4}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v4

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 2138
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/y;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    const-string/jumbo v2, "scaleY"

    new-array v3, v7, [F

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/y;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v4}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v4

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->j:F

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/y;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v5}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v5

    iget v5, v5, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    .line 2143
    :goto_1
    new-instance v2, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v2}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    .line 2144
    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    .line 2145
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/nineoldandroids/animation/Animator;

    aput-object v1, v3, v6

    aput-object v0, v3, v7

    invoke-virtual {v2, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    .line 2146
    invoke-virtual {v2}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 2140
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/y;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    const-string/jumbo v1, "scaleX"

    new-array v2, v7, [F

    iget-object v3, p0, Lcom/viber/voip/messages/ui/chathead/y;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v3}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v3

    iget v3, v3, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/y;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v4}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v4

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    aput v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    .line 2141
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/y;->a:Lcom/viber/voip/messages/ui/chathead/a/a;

    const-string/jumbo v2, "scaleY"

    new-array v3, v7, [F

    iget-object v4, p0, Lcom/viber/voip/messages/ui/chathead/y;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v4}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v4

    iget v4, v4, Lcom/viber/voip/messages/ui/chathead/c;->i:F

    iget-object v5, p0, Lcom/viber/voip/messages/ui/chathead/y;->b:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v5}, Lcom/viber/voip/messages/ui/chathead/d;->c(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/c;

    move-result-object v5

    iget v5, v5, Lcom/viber/voip/messages/ui/chathead/c;->b:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    aput v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_1
.end method
