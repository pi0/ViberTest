.class Lcom/viber/voip/billing/bs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/viber/voip/billing/bq;

.field b:J

.field final synthetic c:Lcom/viber/voip/billing/br;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/br;Lcom/viber/voip/billing/bq;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    iput-object p1, p0, Lcom/viber/voip/billing/bs;->c:Lcom/viber/voip/billing/br;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/viber/voip/billing/bs;->a:Lcom/viber/voip/billing/bq;

    .line 14
    iput-wide p3, p0, Lcom/viber/voip/billing/bs;->b:J

    .line 15
    return-void
.end method
