.class Lcom/viber/voip/billing/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/bo;

.field final synthetic b:Lcom/viber/voip/billing/bm;

.field final synthetic c:Lcom/viber/voip/billing/au;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/au;Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bm;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 703
    iput-object p1, p0, Lcom/viber/voip/billing/av;->c:Lcom/viber/voip/billing/au;

    iput-object p2, p0, Lcom/viber/voip/billing/av;->a:Lcom/viber/voip/billing/bo;

    iput-object p3, p0, Lcom/viber/voip/billing/av;->b:Lcom/viber/voip/billing/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 705
    iget-object v0, p0, Lcom/viber/voip/billing/av;->c:Lcom/viber/voip/billing/au;

    iget-object v0, v0, Lcom/viber/voip/billing/au;->c:Lcom/viber/voip/billing/bj;

    iget-object v1, p0, Lcom/viber/voip/billing/av;->a:Lcom/viber/voip/billing/bo;

    iget-object v2, p0, Lcom/viber/voip/billing/av;->b:Lcom/viber/voip/billing/bm;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/billing/bj;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bm;)V

    .line 706
    iget-object v0, p0, Lcom/viber/voip/billing/av;->c:Lcom/viber/voip/billing/au;

    iget-object v0, v0, Lcom/viber/voip/billing/au;->d:Lcom/viber/voip/billing/ap;

    invoke-static {v0}, Lcom/viber/voip/billing/ap;->d(Lcom/viber/voip/billing/ap;)V

    .line 707
    return-void
.end method
