.class public Lcom/viber/voip/billing/dt;
.super Lcom/viber/voip/billing/co;
.source "SourceFile"


# static fields
.field private static a:Lcom/viber/voip/billing/ae;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 158
    const-class v0, Lcom/viber/voip/billing/dt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/billing/dt;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/billing/cr;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/co;-><init>(Lcom/viber/voip/billing/cr;)V

    .line 21
    return-void
.end method

.method public static a(Lcom/viber/voip/billing/ae;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    sput-object p0, Lcom/viber/voip/billing/dt;->a:Lcom/viber/voip/billing/ae;

    .line 16
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/dt;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/dt;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/billing/ae;)Lcom/viber/voip/billing/ae;
    .locals 0
    .parameter

    .prologue
    .line 11
    sput-object p0, Lcom/viber/voip/billing/dt;->a:Lcom/viber/voip/billing/ae;

    return-object p0
.end method

.method static synthetic d()Lcom/viber/voip/billing/ae;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/viber/voip/billing/dt;->a:Lcom/viber/voip/billing/ae;

    return-object v0
.end method

.method private e(Lcom/viber/voip/billing/bu;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processCommerceAnalyticsForOrder(), productId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fetching product info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/dt;->a(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/viber/voip/billing/a;->a()Lcom/viber/voip/billing/a;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/billing/dx;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/billing/dx;-><init>(Lcom/viber/voip/billing/dt;Lcom/viber/voip/billing/bu;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/v;)V

    .line 151
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/viber/voip/billing/dt;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    const v1, 0x7f0c0588

    const v2, 0x7f0c0589

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "619"

    invoke-interface {v0, v1, v2, v3}, Lcom/viber/voip/billing/cr;->a(IILjava/lang/String;)V

    .line 129
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bu;)V
    .locals 3
    .parameter

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPurchaseSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/dt;->a(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/viber/voip/billing/dt;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/cr;->b(Lcom/viber/voip/billing/bu;)V

    .line 32
    invoke-virtual {p0}, Lcom/viber/voip/billing/dt;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/billing/dt;->c()Lcom/viber/voip/billing/cr;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/billing/cr;->d()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0581

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/billing/cr;->a(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/viber/voip/billing/dt;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/billing/cr;->a(Lcom/viber/voip/billing/bu;Z)V

    .line 34
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/cq;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->c()Lcom/viber/voip/billing/ap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/billing/dv;

    invoke-direct {v2, p0, p1, p2}, Lcom/viber/voip/billing/dv;-><init>(Lcom/viber/voip/billing/dt;Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/cq;)V

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bn;Lcom/viber/voip/billing/bk;)V

    .line 123
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/ds;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 38
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

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/dt;->a(Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1, p2}, Lcom/viber/voip/billing/co;->a(Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/ds;)V

    .line 41
    sget-object v0, Lcom/viber/voip/billing/ds;->a:Lcom/viber/voip/billing/ds;

    if-ne p2, v0, :cond_1

    .line 42
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->c()Lcom/viber/voip/billing/ap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/billing/du;

    invoke-direct {v2, p0, p1}, Lcom/viber/voip/billing/du;-><init>(Lcom/viber/voip/billing/dt;Lcom/viber/voip/billing/bu;)V

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/billing/ap;->a(Lcom/viber/voip/billing/bn;Lcom/viber/voip/billing/bk;)V

    .line 68
    :cond_0
    invoke-static {}, Lcom/viber/voip/viberout/ui/ViberOutActivity;->a()V

    .line 70
    invoke-direct {p0, p1}, Lcom/viber/voip/billing/dt;->e(Lcom/viber/voip/billing/bu;)V

    .line 72
    :cond_1
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bn;)Z
    .locals 2
    .parameter

    .prologue
    .line 25
    invoke-virtual {p1}, Lcom/viber/voip/billing/bn;->a()Lcom/viber/voip/billing/bt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bt;->a()Lcom/viber/voip/billing/bp;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/billing/bp;->a:Lcom/viber/voip/billing/bp;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/viber/voip/billing/bu;)V
    .locals 2
    .parameter

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPurchaseRetry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/billing/dt;->a(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/viber/voip/billing/dt;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/viber/voip/billing/cr;->a(Lcom/viber/voip/billing/bu;Z)V

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/viber/voip/billing/bu;->l()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/viber/voip/billing/dt;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/cr;->a(Lcom/viber/voip/billing/bu;)V

    goto :goto_0

    .line 82
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/viber/voip/billing/bu;->c(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/viber/voip/billing/dt;->c()Lcom/viber/voip/billing/cr;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/cr;->b(Lcom/viber/voip/billing/bu;)V

    goto :goto_0
.end method
