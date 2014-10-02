.class final Lcom/viber/voip/billing/b;
.super Lcom/viber/voip/process/a/a;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .parameter

    .prologue
    .line 573
    iput-object p1, p0, Lcom/viber/voip/billing/b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/viber/voip/process/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 576
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 577
    new-instance v0, Lcom/viber/voip/billing/an;

    invoke-direct {v0, p1, p2, p3}, Lcom/viber/voip/billing/an;-><init>(JLjava/lang/String;)V

    invoke-static {v0}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/an;)Lcom/viber/voip/billing/an;

    .line 583
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/billing/b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 584
    return-void

    .line 580
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/an;)Lcom/viber/voip/billing/an;

    goto :goto_0
.end method
