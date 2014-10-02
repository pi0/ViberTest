.class Lcom/viber/voip/widget/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/widget/MessageBar;


# direct methods
.method constructor <init>(Lcom/viber/voip/widget/MessageBar;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/viber/voip/widget/i;->a:Lcom/viber/voip/widget/MessageBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/viber/voip/widget/i;->a:Lcom/viber/voip/widget/MessageBar;

    invoke-static {v0}, Lcom/viber/voip/widget/MessageBar;->b(Lcom/viber/voip/widget/MessageBar;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/widget/i;->a:Lcom/viber/voip/widget/MessageBar;

    invoke-static {v1}, Lcom/viber/voip/widget/MessageBar;->g(Lcom/viber/voip/widget/MessageBar;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 216
    return-void
.end method
