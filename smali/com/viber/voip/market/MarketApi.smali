.class public Lcom/viber/voip/market/MarketApi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lcom/viber/voip/market/MarketApi;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/viber/voip/market/bj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/viber/voip/market/MarketApi;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/market/MarketApi;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/market/MarketApi;->b:Ljava/util/ArrayList;

    .line 153
    iget-object v0, p0, Lcom/viber/voip/market/MarketApi;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/viber/voip/market/bn;

    invoke-direct {v1, p0}, Lcom/viber/voip/market/bn;-><init>(Lcom/viber/voip/market/MarketApi;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public static declared-synchronized a()Lcom/viber/voip/market/MarketApi;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/viber/voip/market/MarketApi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/viber/voip/market/MarketApi;->c:Lcom/viber/voip/market/MarketApi;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/viber/voip/market/MarketApi;

    invoke-direct {v0}, Lcom/viber/voip/market/MarketApi;-><init>()V

    sput-object v0, Lcom/viber/voip/market/MarketApi;->c:Lcom/viber/voip/market/MarketApi;

    .line 35
    :cond_0
    sget-object v0, Lcom/viber/voip/market/MarketApi;->c:Lcom/viber/voip/market/MarketApi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-static {p0}, Lcom/viber/voip/market/MarketApi;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/viber/voip/billing/bt;Ljava/lang/String;)Lcom/viber/voip/market/y;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 255
    .line 256
    if-eqz p2, :cond_0

    .line 257
    invoke-static {p2}, Lcom/viber/voip/market/y;->a(Ljava/lang/String;)Lcom/viber/voip/market/y;

    move-result-object v0

    .line 261
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseExtraInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/market/MarketApi;->b(Ljava/lang/String;)V

    .line 262
    return-object v0

    .line 259
    :cond_0
    invoke-static {p1}, Lcom/viber/voip/market/y;->a(Lcom/viber/voip/billing/bt;)Lcom/viber/voip/market/y;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 266
    sget-object v0, Lcom/viber/voip/market/MarketApi;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/viber/voip/billing/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private c(Lcom/viber/voip/billing/bt;)Lcom/viber/voip/market/bj;
    .locals 3
    .parameter

    .prologue
    .line 161
    iget-object v0, p0, Lcom/viber/voip/market/MarketApi;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/market/bj;

    .line 162
    invoke-interface {v0, p1}, Lcom/viber/voip/market/bj;->a(Lcom/viber/voip/billing/bt;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 166
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bt;)Lcom/viber/voip/market/v;
    .locals 1
    .parameter

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/viber/voip/market/MarketApi;->c(Lcom/viber/voip/billing/bt;)Lcom/viber/voip/market/bj;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/market/bj;->c(Lcom/viber/voip/billing/bt;)Lcom/viber/voip/market/v;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/viber/voip/billing/bn;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/viber/voip/billing/bn;->a()Lcom/viber/voip/billing/bt;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/viber/voip/market/MarketApi;->b(Lcom/viber/voip/billing/bt;Ljava/lang/String;)Lcom/viber/voip/market/y;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "purchaseProduct "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/MarketApi;->b(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const-string/jumbo v0, "purchaseProduct: security violation"

    invoke-static {v0}, Lcom/viber/voip/market/MarketApi;->b(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a()Lcom/viber/voip/billing/dl;

    move-result-object v0

    .line 190
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    .line 191
    const v2, 0x7f0c055b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/billing/dl;->a(Ljava/lang/String;)Lcom/viber/voip/billing/dl;

    .line 192
    const v2, 0x7f0c055c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/dl;->b(Ljava/lang/String;)Lcom/viber/voip/billing/dl;

    .line 193
    invoke-virtual {v0}, Lcom/viber/voip/billing/dl;->a()V

    .line 204
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-static {}, Lcom/viber/voip/billing/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    const-string/jumbo v0, "purchaseProduct: no connectivity"

    invoke-static {v0}, Lcom/viber/voip/market/MarketApi;->b(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/viber/voip/billing/PurchaseSupportActivity;->a()Lcom/viber/voip/billing/dl;

    move-result-object v0

    .line 197
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    .line 198
    const v2, 0x7f0c03a2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/billing/dl;->a(Ljava/lang/String;)Lcom/viber/voip/billing/dl;

    .line 199
    const v2, 0x7f0c038e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/billing/dl;->b(Ljava/lang/String;)Lcom/viber/voip/billing/dl;

    .line 200
    invoke-virtual {v0}, Lcom/viber/voip/billing/dl;->a()V

    goto :goto_0

    .line 202
    :cond_1
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/billing/bv;->a(Lcom/viber/voip/billing/bn;)V

    goto :goto_0
.end method

.method public a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/w;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/viber/voip/market/MarketApi;->a(Lcom/viber/voip/billing/bt;)Lcom/viber/voip/market/v;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/viber/voip/market/w;->a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/market/v;)V

    .line 175
    return-void
.end method

.method public a(Lcom/viber/voip/billing/bt;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 178
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/market/MarketApi;->b(Lcom/viber/voip/billing/bt;Ljava/lang/String;)Lcom/viber/voip/market/y;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "downloadProduct "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", json:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/market/MarketApi;->b(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/viber/voip/market/MarketApi;->c(Lcom/viber/voip/billing/bt;)Lcom/viber/voip/market/bj;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/viber/voip/market/bj;->b(Lcom/viber/voip/billing/bt;)V

    .line 181
    return-void
.end method

.method public a([Lcom/viber/voip/billing/bn;Lcom/viber/voip/market/u;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    .line 209
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {}, Lcom/viber/voip/billing/bv;->a()Lcom/viber/voip/billing/bv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/billing/bv;->c()Lcom/viber/voip/billing/ap;

    move-result-object v0

    new-instance v2, Lcom/viber/voip/market/p;

    invoke-direct {v2, p0, p1, p2}, Lcom/viber/voip/market/p;-><init>(Lcom/viber/voip/market/MarketApi;[Lcom/viber/voip/billing/bn;Lcom/viber/voip/market/u;)V

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/billing/ap;->a(Ljava/util/List;Lcom/viber/voip/billing/bk;)V

    .line 246
    return-void
.end method

.method public b(Lcom/viber/voip/billing/bt;)Z
    .locals 1
    .parameter

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/viber/voip/market/MarketApi;->c(Lcom/viber/voip/billing/bt;)Lcom/viber/voip/market/bj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
