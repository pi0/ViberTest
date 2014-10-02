.class Lcom/viber/voip/billing/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/bi;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/bv;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/viber/voip/billing/cb;->a:Lcom/viber/voip/billing/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bo;)V
    .locals 1
    .parameter

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/viber/voip/billing/bo;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v0, "onIabSetupFinished returned failure"

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/viber/voip/billing/cb;->a:Lcom/viber/voip/billing/bv;

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->b(Lcom/viber/voip/billing/bv;)V

    .line 157
    :cond_0
    return-void
.end method
