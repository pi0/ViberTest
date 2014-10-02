.class Lcom/viber/voip/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/actionbarsherlock/view/MenuItem$OnActionExpandListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/ui/k;


# direct methods
.method constructor <init>(Lcom/viber/voip/ui/k;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/viber/voip/ui/l;->a:Lcom/viber/voip/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x1

    .line 44
    iget-object v1, p0, Lcom/viber/voip/ui/l;->a:Lcom/viber/voip/ui/k;

    iget-object v1, v1, Lcom/viber/voip/ui/k;->b:Lcom/viber/voip/ui/ab;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/ui/l;->a:Lcom/viber/voip/ui/k;

    invoke-virtual {v1}, Lcom/viber/voip/ui/k;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/viber/voip/ui/l;->a:Lcom/viber/voip/ui/k;

    iget-object v0, v0, Lcom/viber/voip/ui/k;->b:Lcom/viber/voip/ui/ab;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/voip/ui/ab;->a(Z)Z

    move-result v0

    .line 47
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/viber/voip/ui/l;->a:Lcom/viber/voip/ui/k;

    invoke-virtual {v1}, Lcom/viber/voip/ui/k;->b()V

    .line 48
    :cond_1
    return v0
.end method

.method public onMenuItemActionExpand(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 35
    iget-object v1, p0, Lcom/viber/voip/ui/l;->a:Lcom/viber/voip/ui/k;

    iget-object v1, v1, Lcom/viber/voip/ui/k;->b:Lcom/viber/voip/ui/ab;

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/viber/voip/ui/l;->a:Lcom/viber/voip/ui/k;

    iget-object v1, v1, Lcom/viber/voip/ui/k;->b:Lcom/viber/voip/ui/ab;

    invoke-interface {v1, v0}, Lcom/viber/voip/ui/ab;->a(Z)Z

    move-result v0

    .line 38
    :cond_0
    return v0
.end method
