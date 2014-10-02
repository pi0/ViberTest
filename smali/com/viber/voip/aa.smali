.class Lcom/viber/voip/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/z;


# direct methods
.method constructor <init>(Lcom/viber/voip/z;)V
    .locals 0
    .parameter

    .prologue
    .line 511
    iput-object p1, p0, Lcom/viber/voip/aa;->a:Lcom/viber/voip/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter

    .prologue
    .line 518
    iget-object v0, p0, Lcom/viber/voip/aa;->a:Lcom/viber/voip/z;

    iget-object v0, v0, Lcom/viber/voip/z;->a:Lcom/viber/voip/ConversationListView;

    invoke-virtual {v0}, Lcom/viber/voip/ConversationListView;->h()V

    .line 519
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 523
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 514
    return-void
.end method
