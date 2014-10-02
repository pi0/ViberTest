.class public Lcom/viber/voip/billing/u;
.super Lcom/viber/voip/billing/l;
.source "SourceFile"


# instance fields
.field a:Lcom/viber/voip/billing/t;


# direct methods
.method public constructor <init>(Lcom/viber/voip/billing/t;)V
    .locals 1
    .parameter

    .prologue
    .line 605
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/l;-><init>(Z)V

    .line 606
    iput-object p1, p0, Lcom/viber/voip/billing/u;->a:Lcom/viber/voip/billing/t;

    .line 607
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 617
    const/16 v0, 0x7530

    return v0
.end method

.method protected a(Lcom/viber/voip/billing/m;)V
    .locals 2
    .parameter

    .prologue
    .line 611
    new-instance v0, Lcom/viber/voip/billing/j;

    invoke-direct {v0, p1}, Lcom/viber/voip/billing/j;-><init>(Lcom/viber/voip/billing/m;)V

    .line 612
    iget-object v1, p0, Lcom/viber/voip/billing/u;->a:Lcom/viber/voip/billing/t;

    invoke-interface {v1, p0, v0}, Lcom/viber/voip/billing/t;->a(Lcom/viber/voip/billing/u;Lcom/viber/voip/billing/j;)V

    .line 613
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 601
    check-cast p1, Lcom/viber/voip/billing/m;

    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/u;->a(Lcom/viber/voip/billing/m;)V

    return-void
.end method
