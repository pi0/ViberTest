.class public Lcom/viber/voip/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Z
    .locals 2
    .parameter

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/viber/voip/ui/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 25
    :goto_0
    return v0

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/viber/voip/ui/e;->a:Landroid/view/View;

    .line 21
    const v0, 0x7f0700d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/ui/e;->b:Landroid/widget/ProgressBar;

    .line 22
    iget-object v0, p0, Lcom/viber/voip/ui/e;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/viber/voip/ui/e;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 25
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Z)V
    .locals 2
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/ui/e;->b:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 32
    :cond_0
    if-eqz p1, :cond_1

    .line 33
    iget-object v0, p0, Lcom/viber/voip/ui/e;->b:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/ui/e;->b:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/viber/voip/ui/e;->b:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/ui/e;->b:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/viber/voip/ui/e;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
