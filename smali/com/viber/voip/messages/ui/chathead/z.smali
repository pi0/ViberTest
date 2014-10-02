.class Lcom/viber/voip/messages/ui/chathead/z;
.super Lcom/nineoldandroids/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/chathead/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/chathead/d;)V
    .locals 0
    .parameter

    .prologue
    .line 2333
    iput-object p1, p0, Lcom/viber/voip/messages/ui/chathead/z;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-direct {p0}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V
    .locals 2
    .parameter

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/z;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setVisibility(I)V

    .line 2337
    iget-object v0, p0, Lcom/viber/voip/messages/ui/chathead/z;->a:Lcom/viber/voip/messages/ui/chathead/d;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/chathead/d;->i(Lcom/viber/voip/messages/ui/chathead/d;)Lcom/viber/voip/messages/ui/chathead/a/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/ui/chathead/a/a;->setShowBadge(Z)V

    .line 2338
    invoke-super {p0, p1}, Lcom/nineoldandroids/animation/AnimatorListenerAdapter;->onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V

    .line 2339
    return-void
.end method
