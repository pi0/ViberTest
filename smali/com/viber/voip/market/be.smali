.class Lcom/viber/voip/market/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/market/s;


# instance fields
.field final synthetic a:Lcom/viber/voip/market/bd;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/bd;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/viber/voip/market/be;->a:Lcom/viber/voip/market/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/viber/voip/market/be;->a:Lcom/viber/voip/market/bd;

    iget-object v0, v0, Lcom/viber/voip/market/bd;->a:Lcom/viber/voip/market/am;

    iget-object v0, v0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    invoke-static {v0, p1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;[Lcom/viber/voip/market/MarketApi$UserPublicGroupInfo;)V

    .line 329
    return-void
.end method
