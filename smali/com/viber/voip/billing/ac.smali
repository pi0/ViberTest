.class public abstract Lcom/viber/voip/billing/ac;
.super Lcom/viber/voip/billing/k;
.source "SourceFile"


# instance fields
.field g:Lcom/viber/voip/billing/an;

.field final synthetic h:Lcom/viber/voip/billing/a;


# direct methods
.method public constructor <init>(Lcom/viber/voip/billing/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/viber/voip/billing/ac;->h:Lcom/viber/voip/billing/a;

    invoke-direct {p0, p1}, Lcom/viber/voip/billing/k;-><init>(Lcom/viber/voip/billing/a;)V

    .line 1080
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 1076
    invoke-super {p0}, Lcom/viber/voip/billing/k;->b()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/viber/voip/billing/ac;->h:Lcom/viber/voip/billing/a;

    new-instance v1, Lcom/viber/voip/billing/ad;

    invoke-direct {v1, p0}, Lcom/viber/voip/billing/ad;-><init>(Lcom/viber/voip/billing/ac;)V

    invoke-static {v0, v1}, Lcom/viber/voip/billing/a;->a(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/aj;)V

    .line 1101
    return-void
.end method

.method protected b(Ljava/util/Map;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/viber/voip/billing/ac;->g:Lcom/viber/voip/billing/an;

    if-eqz v0, :cond_0

    .line 1085
    const-string/jumbo v0, "token"

    iget-object v1, p0, Lcom/viber/voip/billing/ac;->g:Lcom/viber/voip/billing/an;

    iget-object v1, v1, Lcom/viber/voip/billing/an;->b:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    const-string/jumbo v0, "ts"

    iget-object v1, p0, Lcom/viber/voip/billing/ac;->g:Lcom/viber/voip/billing/an;

    iget-wide v1, v1, Lcom/viber/voip/billing/an;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    :goto_0
    return-void

    .line 1088
    :cond_0
    sget-object v0, Lcom/viber/voip/billing/s;->b:Lcom/viber/voip/billing/s;

    invoke-virtual {p0, v0}, Lcom/viber/voip/billing/ac;->a(Lcom/viber/voip/billing/s;)V

    goto :goto_0
.end method
