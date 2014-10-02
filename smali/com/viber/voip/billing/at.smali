.class Lcom/viber/voip/billing/at;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/bh;

.field final synthetic b:Lcom/viber/voip/billing/bo;

.field final synthetic c:Lcom/viber/voip/billing/ap;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/ap;Lcom/viber/voip/billing/bh;Lcom/viber/voip/billing/bo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/viber/voip/billing/at;->c:Lcom/viber/voip/billing/ap;

    iput-object p2, p0, Lcom/viber/voip/billing/at;->a:Lcom/viber/voip/billing/bh;

    iput-object p3, p0, Lcom/viber/voip/billing/at;->b:Lcom/viber/voip/billing/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 499
    iget-object v0, p0, Lcom/viber/voip/billing/at;->a:Lcom/viber/voip/billing/bh;

    iget-object v1, p0, Lcom/viber/voip/billing/at;->b:Lcom/viber/voip/billing/bo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/billing/bh;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bu;)V

    .line 500
    iget-object v0, p0, Lcom/viber/voip/billing/at;->c:Lcom/viber/voip/billing/ap;

    invoke-static {v0}, Lcom/viber/voip/billing/ap;->d(Lcom/viber/voip/billing/ap;)V

    .line 501
    return-void
.end method
