.class public Lcom/viber/voip/billing/dp;
.super Lcom/viber/voip/billing/co;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    const-class v0, Lcom/viber/voip/billing/dp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/billing/dp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/billing/cr;)V
    .locals 0
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/co;-><init>(Lcom/viber/voip/billing/cr;)V

    .line 11
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/dp;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/dp;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    return-void
.end method

.method private b(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bn;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-virtual {p1}, Lcom/viber/voip/billing/bo;->a()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 125
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 118
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleError: already owned package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", starting full product sync..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/dp;->a(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p2}, Lcom/viber/voip/billing/dp;->c(Lcom/viber/voip/billing/bn;)V

    .line 120
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Lcom/viber/voip/billing/cj;)V

    .line 122
    invoke-virtual {p0}, Lcom/viber/voip/billing/dp;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/billing/cr;->c()V

    .line 123
    const/4 v0, 0x1

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bn;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPurchaseError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/dp;->a(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/billing/dp;->b(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bn;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-super {p0, p1, p2}, Lcom/viber/voip/billing/co;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bn;)V

    .line 113
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bu;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPurchaseError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/dp;->a(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/viber/voip/billing/dp;->b(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bn;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-super {p0, p1, p2}, Lcom/viber/voip/billing/co;->a(Lcom/viber/voip/billing/bo;Lcom/viber/voip/billing/bu;)V

    .line 107
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bu;)V
    .locals 2
    .parameter

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPurchaseSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/dp;->a(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0}, Lcom/viber/voip/billing/dp;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/cr;->b(Lcom/viber/voip/billing/bu;)V

    .line 22
    invoke-virtual {p0}, Lcom/viber/voip/billing/dp;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/billing/cr;->a()V

    .line 23
    invoke-virtual {p0}, Lcom/viber/voip/billing/dp;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/billing/cr;->a(Lcom/viber/voip/billing/bu;Z)V

    .line 24
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/cq;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "performPurchaseVerificationAsync purchase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/dp;->a(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "performPurchaseVerificationAsync signature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/dp;->a(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->c()Lcom/viber/voip/billing/ap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/billing/dq;

    invoke-direct {v2, p0, p1, p2}, Lcom/viber/voip/billing/dq;-><init>(Lcom/viber/voip/billing/dp;Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/cq;)V

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bn;Lcom/viber/voip/billing/bk;)V

    .line 99
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/ds;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPurchaseVerificationCompleted "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", result:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/dp;->a(Ljava/lang/String;)V

    .line 29
    invoke-super {p0, p1, p2}, Lcom/viber/voip/billing/co;->a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/ds;)V

    .line 31
    sget-object v0, Lcom/viber/voip/billing/ds;->a:Lcom/viber/voip/billing/ds;

    if-ne p2, v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/viber/voip/billing/dp;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/billing/cr;->c()V

    .line 33
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bn;->a()Lcom/viber/voip/billing/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bt;->b()I

    move-result v0

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "downloading package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/billing/dp;->a(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->i(I)V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/viber/voip/billing/bu;->c(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/viber/voip/billing/dp;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/cr;->b(Lcom/viber/voip/billing/bu;)V

    .line 39
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bn;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Stickers"

    const-wide/32 v4, 0x1e5d70

    const-string/jumbo v6, "USD"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/billing/dp;->a(Lcom/viber/voip/billing/bu;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bn;)Z
    .locals 2
    .parameter

    .prologue
    .line 15
    invoke-virtual {p1}, Lcom/viber/voip/billing/bn;->a()Lcom/viber/voip/billing/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bt;->a()Lcom/viber/voip/billing/bp;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/billing/bp;->b:Lcom/viber/voip/billing/bp;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/viber/voip/billing/dp;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0c055d

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/billing/cr;->a(IILjava/lang/String;)V

    .line 47
    return-void
.end method

.method public b(Lcom/viber/voip/billing/bu;)V
    .locals 2
    .parameter

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPurchaseRetry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/dp;->a(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const-string/jumbo v0, "purchase not verified, verifying"

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/dp;->a(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/viber/voip/billing/dp;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/billing/cr;->a(Lcom/viber/voip/billing/bu;Z)V

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/viber/voip/billing/bu;->c(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/viber/voip/billing/dp;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/cr;->b(Lcom/viber/voip/billing/bu;)V

    goto :goto_0
.end method

.method public c(Lcom/viber/voip/billing/bn;)V
    .locals 3
    .parameter

    .prologue
    .line 131
    invoke-virtual {p1}, Lcom/viber/voip/billing/bn;->a()Lcom/viber/voip/billing/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bt;->b()I

    move-result v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "synchronizePurchasedProduct "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " downloading package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/viber/voip/billing/dp;->a(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->i(I)V

    .line 134
    return-void
.end method
