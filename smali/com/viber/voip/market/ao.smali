.class Lcom/viber/voip/market/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/market/w;


# instance fields
.field final synthetic a:Lcom/viber/voip/market/an;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/an;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/viber/voip/market/ao;->a:Lcom/viber/voip/market/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/v;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/viber/voip/market/ao;->a:Lcom/viber/voip/market/an;

    iget-object v0, v0, Lcom/viber/voip/market/an;->b:Lcom/viber/voip/market/am;

    iget-object v0, v0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    invoke-virtual {p2}, Lcom/viber/voip/market/v;->ordinal()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;Lcom/viber/voip/billing/bt;I)V

    .line 172
    return-void
.end method
