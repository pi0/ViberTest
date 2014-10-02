.class Lcom/viber/voip/billing/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/bo;

.field final synthetic b:Lcom/viber/voip/billing/bm;

.field final synthetic c:Lcom/viber/voip/billing/ax;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/ax;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bm;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 760
    iput-object p1, p0, Lcom/viber/voip/billing/az;->c:Lcom/viber/voip/billing/ax;

    iput-object p2, p0, Lcom/viber/voip/billing/az;->a:Lcom/viber/voip/billing/bo;

    iput-object p3, p0, Lcom/viber/voip/billing/az;->b:Lcom/viber/voip/billing/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 762
    iget-object v0, p0, Lcom/viber/voip/billing/az;->c:Lcom/viber/voip/billing/ax;

    iget-object v0, v0, Lcom/viber/voip/billing/ax;->b:Lcom/viber/voip/billing/bk;

    iget-object v1, p0, Lcom/viber/voip/billing/az;->a:Lcom/viber/voip/billing/bo;

    iget-object v2, p0, Lcom/viber/voip/billing/az;->b:Lcom/viber/voip/billing/bm;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/billing/bk;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bm;)V

    .line 763
    iget-object v0, p0, Lcom/viber/voip/billing/az;->c:Lcom/viber/voip/billing/ax;

    iget-object v0, v0, Lcom/viber/voip/billing/ax;->c:Lcom/viber/voip/billing/ap;

    invoke-static {v0}, Lcom/viber/voip/billing/ap;->d(Lcom/viber/voip/billing/ap;)V

    .line 764
    return-void
.end method
