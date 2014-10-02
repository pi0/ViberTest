.class Lcom/viber/voip/billing/dx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/v;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/bu;

.field final synthetic b:Lcom/viber/voip/billing/dt;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/dt;Lcom/viber/voip/billing/bu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/viber/voip/billing/dx;->b:Lcom/viber/voip/billing/dt;

    iput-object p2, p0, Lcom/viber/voip/billing/dx;->a:Lcom/viber/voip/billing/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/r;)V
    .locals 9
    .parameter

    .prologue
    .line 136
    invoke-virtual {p1}, Lcom/viber/voip/billing/r;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/viber/voip/billing/a;->a()Lcom/viber/voip/billing/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/billing/dx;->a:Lcom/viber/voip/billing/bu;

    invoke-virtual {v1}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/bn;)Lcom/viber/voip/billing/q;

    move-result-object v6

    .line 138
    if-eqz v6, :cond_1

    .line 139
    iget-object v0, p0, Lcom/viber/voip/billing/dx;->b:Lcom/viber/voip/billing/dt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processCommerceAnalyticsForOrder(), product fetched, name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/viber/voip/billing/q;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/billing/dt;->a(Lcom/viber/voip/billing/dt;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/viber/voip/billing/dx;->b:Lcom/viber/voip/billing/dt;

    iget-object v1, p0, Lcom/viber/voip/billing/dx;->a:Lcom/viber/voip/billing/bu;

    invoke-virtual {v6}, Lcom/viber/voip/billing/q;->c()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Viber Out credits"

    invoke-virtual {v6}, Lcom/viber/voip/billing/q;->e()D

    move-result-wide v4

    const-wide v7, 0x412e848000000000L

    mul-double/2addr v4, v7

    double-to-long v4, v4

    invoke-virtual {v6}, Lcom/viber/voip/billing/q;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/billing/dt;->a(Lcom/viber/voip/billing/bu;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/billing/dx;->b:Lcom/viber/voip/billing/dt;

    const-string/jumbo v1, "processCommerceAnalyticsForOrder(), prod is null"

    invoke-static {v0, v1}, Lcom/viber/voip/billing/dt;->a(Lcom/viber/voip/billing/dt;Ljava/lang/String;)V

    goto :goto_0
.end method
