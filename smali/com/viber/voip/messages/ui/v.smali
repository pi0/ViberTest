.class Lcom/viber/voip/messages/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/k;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/ui/k;Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/viber/voip/messages/ui/v;->a:Lcom/viber/voip/messages/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p2, p0, Lcom/viber/voip/messages/ui/v;->b:Landroid/view/View;

    .line 459
    iput-object p3, p0, Lcom/viber/voip/messages/ui/v;->c:Landroid/view/View;

    .line 460
    iget-object v0, p0, Lcom/viber/voip/messages/ui/v;->c:Landroid/view/View;

    const v1, 0x7f0703c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/v;->d:Landroid/widget/TextView;

    .line 461
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/v;->a()V

    .line 462
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 465
    invoke-static {}, Lcom/viber/voip/messages/extras/image/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/v;->b()V

    .line 470
    :goto_0
    return-void

    .line 468
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/v;->c()V

    goto :goto_0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 473
    iget-object v0, p0, Lcom/viber/voip/messages/ui/v;->a:Lcom/viber/voip/messages/ui/k;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/k;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/viber/voip/messages/ui/v;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/viber/voip/messages/ui/v;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 477
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/viber/voip/messages/ui/v;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lcom/viber/voip/messages/ui/v;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/viber/voip/messages/ui/v;->d:Landroid/widget/TextView;

    const v1, 0x7f0c05c9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 483
    return-void
.end method
