.class Lcom/viber/voip/billing/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/v;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/d;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/d;)V
    .locals 0
    .parameter

    .prologue
    .line 704
    iput-object p1, p0, Lcom/viber/voip/billing/e;->a:Lcom/viber/voip/billing/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/r;)V
    .locals 3
    .parameter

    .prologue
    .line 707
    iget-object v0, p0, Lcom/viber/voip/billing/e;->a:Lcom/viber/voip/billing/d;

    iget-object v0, v0, Lcom/viber/voip/billing/d;->b:Lcom/viber/voip/billing/a;

    invoke-static {v0, p1}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/r;)Lcom/viber/voip/billing/r;

    .line 708
    iget-object v0, p0, Lcom/viber/voip/billing/e;->a:Lcom/viber/voip/billing/d;

    iget-object v0, v0, Lcom/viber/voip/billing/d;->b:Lcom/viber/voip/billing/a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/a;J)J

    .line 709
    iget-object v0, p0, Lcom/viber/voip/billing/e;->a:Lcom/viber/voip/billing/d;

    iget-object v0, v0, Lcom/viber/voip/billing/d;->a:Lcom/viber/voip/billing/v;

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/v;->a(Lcom/viber/voip/billing/r;)V

    .line 710
    return-void
.end method
