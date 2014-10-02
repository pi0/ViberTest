.class public Lcom/viber/voip/billing/co;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/billing/cr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/viber/voip/billing/co;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/billing/co;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/billing/cr;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/viber/voip/billing/co;->b:Lcom/viber/voip/billing/cr;

    .line 18
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/viber/voip/billing/co;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/billing/cr;->b()V

    .line 130
    return-void
.end method

.method a(Lcom/viber/voip/billing/bo;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/billing/bv;->a(Lcom/viber/voip/billing/bo;)V

    .line 71
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bn;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPurchaseError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/co;->a(Lcom/viber/voip/billing/bo;)V

    .line 67
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bu;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPurchaseError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/viber/voip/billing/co;->a(Lcom/viber/voip/billing/bo;)V

    .line 58
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bu;)V
    .locals 2
    .parameter

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPurchaseSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/viber/voip/billing/co;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/billing/cr;->a()V

    .line 48
    invoke-virtual {p0}, Lcom/viber/voip/billing/co;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/cr;->b(Lcom/viber/voip/billing/bu;)V

    .line 49
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/cq;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 145
    sget-object v0, Lcom/viber/voip/billing/ds;->c:Lcom/viber/voip/billing/ds;

    invoke-interface {p2, v0}, Lcom/viber/voip/billing/cq;->a(Lcom/viber/voip/billing/ds;)V

    .line 146
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/ds;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPurchaseVerificationCompleted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/viber/voip/billing/cp;->a:[I

    invoke-virtual {p2}, Lcom/viber/voip/billing/ds;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 101
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/viber/voip/billing/bu;->a(Z)V

    .line 102
    invoke-virtual {p0}, Lcom/viber/voip/billing/co;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/cr;->b(Lcom/viber/voip/billing/bu;)V

    .line 103
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->d()Lcom/viber/voip/billing/cs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/billing/cs;->b(Lcom/viber/voip/billing/bu;)V

    goto :goto_0

    .line 109
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/viber/voip/billing/bu;->c(Z)V

    .line 110
    invoke-virtual {p0}, Lcom/viber/voip/billing/co;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/cr;->b(Lcom/viber/voip/billing/bu;)V

    .line 111
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->o()Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/viber/voip/billing/co;->b()V

    .line 114
    :cond_1
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->d()Lcom/viber/voip/billing/cs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/billing/cs;->b(Lcom/viber/voip/billing/bu;)V

    goto :goto_0

    .line 120
    :pswitch_2
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->o()Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/viber/voip/billing/co;->a()V

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/viber/voip/billing/co;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/cr;->c(Lcom/viber/voip/billing/bu;)V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Lcom/viber/voip/billing/bu;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 182
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->b()Ljava/lang/String;

    move-result-object v0

    .line 184
    const-string/jumbo v1, "transactionId.android.test.purchased"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_0
    const-string/jumbo v1, "ANALYTICS TRANSACTION BEGIN ==========="

    invoke-direct {p0, v1}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Transaction id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Product price (micros): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 191
    const-string/jumbo v1, "Affiliation: In-App Store"

    invoke-direct {p0, v1}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 192
    const-string/jumbo v1, "TotalTaxInMicros: 0"

    invoke-direct {p0, v1}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 193
    const-string/jumbo v1, "ShippingCostInMicros: 0"

    invoke-direct {p0, v1}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CurrencyCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v1, "ITEM"

    invoke-direct {p0, v1}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Product id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Product name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Product price (micros): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v1, "  Product quantity: 1"

    invoke-direct {p0, v1}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Product category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 201
    const-string/jumbo v1, "ANALYTICS TRANSACTION END ============="

    invoke-direct {p0, v1}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 204
    new-instance v1, Lcom/google/analytics/tracking/android/Transaction$Builder;

    invoke-direct {v1, v0, p4, p5}, Lcom/google/analytics/tracking/android/Transaction$Builder;-><init>(Ljava/lang/String;J)V

    const-string/jumbo v0, "In-App Store"

    invoke-virtual {v1, v0}, Lcom/google/analytics/tracking/android/Transaction$Builder;->setAffiliation(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Transaction$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/google/analytics/tracking/android/Transaction$Builder;->setTotalTaxInMicros(J)Lcom/google/analytics/tracking/android/Transaction$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/google/analytics/tracking/android/Transaction$Builder;->setShippingCostInMicros(J)Lcom/google/analytics/tracking/android/Transaction$Builder;

    move-result-object v0

    invoke-virtual {v0, p6}, Lcom/google/analytics/tracking/android/Transaction$Builder;->setCurrencyCode(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Transaction$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Transaction$Builder;->build()Lcom/google/analytics/tracking/android/Transaction;

    move-result-object v7

    .line 213
    new-instance v0, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/billing/bn;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v5, 0x1

    move-object v2, p2

    move-wide v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-virtual {v0, p3}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->setProductCategory(Ljava/lang/String;)Lcom/google/analytics/tracking/android/Transaction$Item$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/Transaction$Item$Builder;->build()Lcom/google/analytics/tracking/android/Transaction$Item;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/google/analytics/tracking/android/Transaction;->addItem(Lcom/google/analytics/tracking/android/Transaction$Item;)V

    .line 221
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/viber/voip/a/bc;->a(Lcom/google/analytics/tracking/android/Transaction;)V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Analytics Transaction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/viber/voip/a/bc;->a(Lcom/google/analytics/tracking/android/Transaction;)V

    .line 226
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bn;)Z
    .locals 1
    .parameter

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/viber/voip/billing/co;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/billing/cr;->b()V

    .line 134
    return-void
.end method

.method public b(Lcom/viber/voip/billing/bn;)V
    .locals 2
    .parameter

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPurchaseCancelled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/viber/voip/billing/co;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/billing/cr;->c()V

    .line 39
    return-void
.end method

.method public b(Lcom/viber/voip/billing/bu;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPurchaseRetry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method protected c()Lcom/viber/voip/billing/cr;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/viber/voip/billing/co;->b:Lcom/viber/voip/billing/cr;

    return-object v0
.end method

.method public c(Lcom/viber/voip/billing/bn;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    return-void
.end method

.method public c(Lcom/viber/voip/billing/bu;)V
    .locals 2
    .parameter

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPurchaseConsumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/viber/voip/billing/bu;->b(Z)V

    .line 93
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/viber/voip/billing/bu;->c(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/viber/voip/billing/co;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/cr;->b(Lcom/viber/voip/billing/bu;)V

    .line 95
    return-void
.end method

.method public d(Lcom/viber/voip/billing/bu;)Lcom/viber/voip/billing/ds;
    .locals 2
    .parameter

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "performPurchaseVerification: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/co;->a(Ljava/lang/String;)V

    .line 141
    sget-object v0, Lcom/viber/voip/billing/ds;->c:Lcom/viber/voip/billing/ds;

    return-object v0
.end method
