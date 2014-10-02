.class public Lcom/viber/voip/billing/ao;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field a:Lcom/viber/voip/billing/bo;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 33
    new-instance v0, Lcom/viber/voip/billing/bo;

    invoke-direct {v0, p1, p2}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/ao;-><init>(Lcom/viber/voip/billing/bo;)V

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    new-instance v0, Lcom/viber/voip/billing/bo;

    invoke-direct {v0, p1, p2}, Lcom/viber/voip/billing/bo;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/viber/voip/billing/ao;-><init>(Lcom/viber/voip/billing/bo;Ljava/lang/Exception;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/billing/bo;)V
    .locals 1
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/billing/ao;-><init>(Lcom/viber/voip/billing/bo;Ljava/lang/Exception;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/billing/bo;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/viber/voip/billing/bo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    iput-object p1, p0, Lcom/viber/voip/billing/ao;->a:Lcom/viber/voip/billing/bo;

    .line 38
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/billing/bo;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/viber/voip/billing/ao;->a:Lcom/viber/voip/billing/bo;

    return-object v0
.end method
