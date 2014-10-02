.class public Lcom/viber/voip/market/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/market/bj;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/stickers/r;

.field private c:Lcom/viber/voip/market/MarketApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/viber/voip/market/bn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/market/bn;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/market/MarketApi;)V
    .locals 1
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/viber/voip/market/bn;->c:Lcom/viber/voip/market/MarketApi;

    .line 28
    invoke-static {}, Lcom/viber/voip/stickers/r;->a()Lcom/viber/voip/stickers/r;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/market/bn;->b:Lcom/viber/voip/stickers/r;

    .line 29
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    invoke-static {p0}, Lcom/viber/voip/market/bn;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 84
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/market/bn;->a:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private d(Lcom/viber/voip/billing/bt;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method private e(Lcom/viber/voip/billing/bt;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    invoke-static {}, Lcom/viber/voip/billing/a;->a()Lcom/viber/voip/billing/a;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/market/bo;

    invoke-direct {v1, p0}, Lcom/viber/voip/market/bo;-><init>(Lcom/viber/voip/market/bn;)V

    invoke-virtual {v0, p1, v1}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/bt;Lcom/viber/voip/billing/p;)V

    .line 77
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/bt;)Z
    .locals 2
    .parameter

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/viber/voip/billing/bt;->a()Lcom/viber/voip/billing/bp;

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

.method public b(Lcom/viber/voip/billing/bt;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/viber/voip/billing/bt;->b()I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/viber/voip/market/bn;->b:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->e(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/market/bn;->b:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->d(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/market/bn;->b:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/viber/voip/market/bn;->b:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->i(I)V

    .line 63
    invoke-direct {p0, p1}, Lcom/viber/voip/market/bn;->e(Lcom/viber/voip/billing/bt;)V

    .line 65
    :cond_0
    return-void
.end method

.method public c(Lcom/viber/voip/billing/bt;)Lcom/viber/voip/market/v;
    .locals 2
    .parameter

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/viber/voip/billing/bt;->b()I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/viber/voip/market/bn;->b:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->b(I)Lcom/viber/voip/stickers/c/d;

    move-result-object v1

    .line 35
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/viber/voip/stickers/c/d;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    sget-object v0, Lcom/viber/voip/market/v;->e:Lcom/viber/voip/market/v;

    .line 47
    :goto_0
    return-object v0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/market/bn;->b:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    sget-object v0, Lcom/viber/voip/market/v;->d:Lcom/viber/voip/market/v;

    goto :goto_0

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/viber/voip/market/bn;->b:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->d(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 42
    iget-object v1, p0, Lcom/viber/voip/market/bn;->b:Lcom/viber/voip/stickers/r;

    invoke-virtual {v1, v0}, Lcom/viber/voip/stickers/r;->g(I)V

    .line 43
    sget-object v0, Lcom/viber/voip/market/v;->c:Lcom/viber/voip/market/v;

    goto :goto_0

    .line 44
    :cond_2
    invoke-direct {p0, p1}, Lcom/viber/voip/market/bn;->d(Lcom/viber/voip/billing/bt;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    sget-object v0, Lcom/viber/voip/market/v;->b:Lcom/viber/voip/market/v;

    goto :goto_0

    .line 47
    :cond_3
    sget-object v0, Lcom/viber/voip/market/v;->a:Lcom/viber/voip/market/v;

    goto :goto_0
.end method
