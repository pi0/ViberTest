.class Lcom/viber/voip/billing/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/v;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/v;

.field final synthetic b:Lcom/viber/voip/billing/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 700
    iput-object p1, p0, Lcom/viber/voip/billing/d;->b:Lcom/viber/voip/billing/a;

    iput-object p2, p0, Lcom/viber/voip/billing/d;->a:Lcom/viber/voip/billing/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/r;)V
    .locals 2
    .parameter

    .prologue
    .line 703
    invoke-virtual {p1}, Lcom/viber/voip/billing/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/viber/voip/billing/d;->b:Lcom/viber/voip/billing/a;

    new-instance v1, Lcom/viber/voip/billing/e;

    invoke-direct {v1, p0}, Lcom/viber/voip/billing/e;-><init>(Lcom/viber/voip/billing/d;)V

    invoke-static {v0, p1, v1}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/r;Lcom/viber/voip/billing/v;)V

    .line 716
    :goto_0
    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/d;->a:Lcom/viber/voip/billing/v;

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/v;->a(Lcom/viber/voip/billing/r;)V

    goto :goto_0
.end method
