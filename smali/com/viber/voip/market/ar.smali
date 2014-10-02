.class Lcom/viber/voip/market/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/market/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/ap;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/viber/voip/market/ar;->a:Lcom/viber/voip/market/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/viber/voip/market/ar;->a:Lcom/viber/voip/market/ap;

    iget-object v0, v0, Lcom/viber/voip/market/ap;->c:Lcom/viber/voip/market/am;

    iget-object v0, v0, Lcom/viber/voip/market/am;->a:Lcom/viber/voip/market/ak;

    iget-object v1, p0, Lcom/viber/voip/market/ar;->a:Lcom/viber/voip/market/ap;

    iget-object v1, v1, Lcom/viber/voip/market/ap;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/viber/voip/market/ak;->a(Lcom/viber/voip/market/ak;Ljava/lang/String;I)V

    .line 372
    return-void
.end method
