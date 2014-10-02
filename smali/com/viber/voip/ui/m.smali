.class Lcom/viber/voip/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/actionbarsherlock/widget/SearchView$OnQueryTextListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/ui/k;


# direct methods
.method constructor <init>(Lcom/viber/voip/ui/k;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/viber/voip/ui/m;->a:Lcom/viber/voip/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    iget-object v2, p0, Lcom/viber/voip/ui/m;->a:Lcom/viber/voip/ui/k;

    iget-boolean v2, v2, Lcom/viber/voip/ui/k;->a:Z

    if-eqz v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/viber/voip/ui/m;->a:Lcom/viber/voip/ui/k;

    iput-boolean v1, v2, Lcom/viber/voip/ui/k;->a:Z

    .line 73
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/viber/voip/ui/m;->a:Lcom/viber/voip/ui/k;

    iget-object v2, v2, Lcom/viber/voip/ui/k;->b:Lcom/viber/voip/ui/ab;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/viber/voip/ui/m;->a:Lcom/viber/voip/ui/k;

    iget-object v2, v2, Lcom/viber/voip/ui/k;->b:Lcom/viber/voip/ui/ab;

    invoke-interface {v2, p1}, Lcom/viber/voip/ui/ab;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method
