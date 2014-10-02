.class public Lcom/viber/voip/phone/b/ag;
.super Lcom/viber/voip/phone/b/c;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/viber/voip/phone/b/a/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/viber/voip/phone/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/phone/b/a/e;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/viber/voip/phone/b/ag;->b:Lcom/viber/voip/phone/b/a/e;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/viber/voip/phone/b/a/e;

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/ag;->e()Lcom/viber/voip/sound/ISoundService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/phone/b/a/e;-><init>(Lcom/viber/voip/sound/ISoundService;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/ag;->b:Lcom/viber/voip/phone/b/a/e;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/ag;->b:Lcom/viber/voip/phone/b/a/e;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    const v0, 0x7f0300f4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/ag;->a:Landroid/view/View;

    .line 32
    iget-object v0, p0, Lcom/viber/voip/phone/b/ag;->b:Lcom/viber/voip/phone/b/a/e;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/viber/voip/phone/b/a/e;

    iget-object v1, p0, Lcom/viber/voip/phone/b/ag;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/ag;->e()Lcom/viber/voip/sound/ISoundService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/viber/voip/phone/b/a/e;-><init>(Landroid/view/View;Lcom/viber/voip/sound/ISoundService;)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/ag;->b:Lcom/viber/voip/phone/b/a/e;

    .line 37
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/ag;->a:Landroid/view/View;

    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/b/ag;->b:Lcom/viber/voip/phone/b/a/e;

    iget-object v1, p0, Lcom/viber/voip/phone/b/ag;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/b/a/e;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0}, Lcom/viber/voip/phone/b/c;->onResume()V

    .line 43
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/ag;->c()Lcom/viber/voip/phone/call/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/a;->b()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->k()Lcom/viber/voip/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/a/g;->l()Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 47
    :cond_0
    return-void
.end method
