.class Lcom/viber/voip/market/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/market/w;


# instance fields
.field final synthetic a:Lcom/viber/voip/process/b;

.field final synthetic b:Lcom/viber/voip/market/a/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/a/g;Lcom/viber/voip/process/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/viber/voip/market/a/h;->b:Lcom/viber/voip/market/a/g;

    iput-object p2, p0, Lcom/viber/voip/market/a/h;->a:Lcom/viber/voip/process/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/v;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string/jumbo v1, "product_id"

    invoke-virtual {p1}, Lcom/viber/voip/billing/bt;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v1, "product_status"

    invoke-virtual {p2}, Lcom/viber/voip/market/v;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 40
    iget-object v1, p0, Lcom/viber/voip/market/a/h;->a:Lcom/viber/voip/process/b;

    invoke-interface {v1, v0}, Lcom/viber/voip/process/b;->a(Landroid/os/Bundle;)V

    .line 41
    return-void
.end method
