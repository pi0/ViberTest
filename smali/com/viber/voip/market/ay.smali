.class Lcom/viber/voip/market/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/market/u;


# instance fields
.field final synthetic a:Lcom/viber/voip/market/ax;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/ax;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/viber/voip/market/ay;->a:Lcom/viber/voip/market/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lcom/viber/voip/market/MarketApi$ProductInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 263
    iget-object v0, p0, Lcom/viber/voip/market/ay;->a:Lcom/viber/voip/market/ax;

    iget-object v0, v0, Lcom/viber/voip/market/ax;->b:Lcom/viber/voip/market/am;

    iget-object v0, v0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    invoke-static {v0, p1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;[Lcom/viber/voip/market/MarketApi$ProductInfo;)V

    .line 264
    return-void
.end method
