.class Lcom/viber/voip/market/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/market/u;


# instance fields
.field final synthetic a:Lcom/viber/voip/process/b;

.field final synthetic b:Lcom/viber/voip/market/a/i;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/a/i;Lcom/viber/voip/process/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/viber/voip/market/a/j;->b:Lcom/viber/voip/market/a/i;

    iput-object p2, p0, Lcom/viber/voip/market/a/j;->a:Lcom/viber/voip/process/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lcom/viber/voip/market/MarketApi$ProductInfo;)V
    .locals 2
    .parameter

    .prologue
    .line 44
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 45
    const-string/jumbo v1, "products_info"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 46
    iget-object v1, p0, Lcom/viber/voip/market/a/j;->a:Lcom/viber/voip/process/b;

    invoke-interface {v1, v0}, Lcom/viber/voip/process/b;->a(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method
