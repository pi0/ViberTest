.class Lcom/viber/voip/market/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/market/as;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/as;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/viber/voip/market/au;->a:Lcom/viber/voip/market/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/viber/voip/market/au;->a:Lcom/viber/voip/market/as;

    iget-object v0, v0, Lcom/viber/voip/market/as;->c:Lcom/viber/voip/market/am;

    iget-object v0, v0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    iget-object v1, p0, Lcom/viber/voip/market/au;->a:Lcom/viber/voip/market/as;

    iget-object v1, v1, Lcom/viber/voip/market/as;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/viber/voip/market/ak;->b(Lcom/viber/voip/market/ak;Ljava/lang/String;I)V

    .line 401
    return-void
.end method
