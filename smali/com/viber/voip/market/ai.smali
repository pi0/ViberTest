.class Lcom/viber/voip/market/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/market/ae;


# direct methods
.method constructor <init>(Lcom/viber/voip/market/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/viber/voip/market/ai;->a:Lcom/viber/voip/market/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/viber/voip/market/ai;->a:Lcom/viber/voip/market/ae;

    invoke-static {v0}, Lcom/viber/voip/market/ae;->b(Lcom/viber/voip/market/ae;)V

    .line 226
    iget-object v0, p0, Lcom/viber/voip/market/ai;->a:Lcom/viber/voip/market/ae;

    invoke-static {v0}, Lcom/viber/voip/market/ae;->a(Lcom/viber/voip/market/ae;)Lcom/viber/voip/market/aj;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/market/aj;->a(Lcom/viber/voip/market/aj;Z)V

    .line 227
    return-void
.end method
