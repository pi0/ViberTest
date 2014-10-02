.class Lcom/viber/voip/messages/ui/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/adapters/u;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/messages/adapters/u;

.field final synthetic c:Lcom/viber/voip/messages/ui/a/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/a/c;ILcom/viber/voip/messages/adapters/u;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/viber/voip/messages/ui/a/g;->c:Lcom/viber/voip/messages/ui/a/c;

    iput p2, p0, Lcom/viber/voip/messages/ui/a/g;->a:I

    iput-object p3, p0, Lcom/viber/voip/messages/ui/a/g;->b:Lcom/viber/voip/messages/adapters/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/high16 v2, -0x8000

    .line 191
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/g;->c:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/a/c;->h(Lcom/viber/voip/messages/ui/a/c;)I

    move-result v0

    iget v1, p0, Lcom/viber/voip/messages/ui/a/g;->a:I

    if-eq v0, v1, :cond_2

    .line 192
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/g;->c:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/a/c;->d(Lcom/viber/voip/messages/ui/a/c;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/g;->c:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/a/c;->d(Lcom/viber/voip/messages/ui/a/c;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/g;->c:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/a/c;->d(Lcom/viber/voip/messages/ui/a/c;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 194
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/g;->c:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/a/c;->d(Lcom/viber/voip/messages/ui/a/c;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearAnimation()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/g;->c:Lcom/viber/voip/messages/ui/a/c;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/a/c;->e()V

    .line 197
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/g;->c:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v0}, Lcom/viber/voip/messages/ui/a/c;->d(Lcom/viber/voip/messages/ui/a/c;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/a/g;->c:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/a/c;->i(Lcom/viber/voip/messages/ui/a/c;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 201
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/g;->b:Lcom/viber/voip/messages/adapters/u;

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/g;->b:Lcom/viber/voip/messages/adapters/u;

    invoke-interface {v0}, Lcom/viber/voip/messages/adapters/u;->a()V

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/g;->c:Lcom/viber/voip/messages/ui/a/c;

    iget v1, p0, Lcom/viber/voip/messages/ui/a/g;->a:I

    invoke-static {v0, v1}, Lcom/viber/voip/messages/ui/a/c;->d(Lcom/viber/voip/messages/ui/a/c;I)I

    .line 205
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/g;->c:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/a/c;->a(Lcom/viber/voip/messages/ui/a/c;I)I

    .line 206
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/g;->c:Lcom/viber/voip/messages/ui/a/c;

    invoke-static {v0, v2}, Lcom/viber/voip/messages/ui/a/c;->b(Lcom/viber/voip/messages/ui/a/c;I)I

    .line 207
    return-void

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/a/g;->c:Lcom/viber/voip/messages/ui/a/c;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/a/c;->b()V

    goto :goto_0
.end method
