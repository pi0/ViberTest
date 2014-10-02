.class Lcom/viber/voip/messages/conversation/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/a/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/a/g;)V
    .locals 0
    .parameter

    .prologue
    .line 315
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/h;->a:Lcom/viber/voip/messages/conversation/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 322
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/h;->a:Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/g;->e()V

    .line 323
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    return-void
.end method
