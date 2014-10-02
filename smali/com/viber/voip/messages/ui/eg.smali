.class Lcom/viber/voip/messages/ui/eg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/viber/voip/messages/ui/TabListIndicator;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/TabListIndicator;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/viber/voip/messages/ui/eg;->b:Lcom/viber/voip/messages/ui/TabListIndicator;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/eg;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viber/voip/messages/ui/eg;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/eg;->b:Lcom/viber/voip/messages/ui/TabListIndicator;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/TabListIndicator;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/viber/voip/messages/ui/eg;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 90
    iget-object v1, p0, Lcom/viber/voip/messages/ui/eg;->b:Lcom/viber/voip/messages/ui/TabListIndicator;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/viber/voip/messages/ui/TabListIndicator;->smoothScrollTo(II)V

    .line 91
    iget-object v0, p0, Lcom/viber/voip/messages/ui/eg;->b:Lcom/viber/voip/messages/ui/TabListIndicator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/TabListIndicator;->a(Lcom/viber/voip/messages/ui/TabListIndicator;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 92
    return-void
.end method
