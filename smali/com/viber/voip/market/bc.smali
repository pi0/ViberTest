.class Lcom/viber/voip/market/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/market/q;


# instance fields
.field final synthetic a:Lcom/viber/voip/market/bb;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/bb;)V
    .locals 0
    .parameter

    .prologue
    .line 302
    iput-object p1, p0, Lcom/viber/voip/market/bc;->a:Lcom/viber/voip/market/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 1
    .parameter

    .prologue
    .line 305
    iget-object v0, p0, Lcom/viber/voip/market/bc;->a:Lcom/viber/voip/market/bb;

    iget-object v0, v0, Lcom/viber/voip/market/bb;->a:Lcom/viber/voip/market/am;

    iget-object v0, v0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    invoke-static {v0, p1}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;Lorg/json/JSONObject;)V

    .line 306
    return-void
.end method
