.class Lcom/viber/voip/messages/ui/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/a/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/viber/voip/messages/ui/a/d;->a:Lcom/viber/voip/messages/ui/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/d;->a:Lcom/viber/voip/messages/ui/a/c;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/a/c;->b()V

    .line 82
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 77
    return-void
.end method
