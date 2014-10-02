.class Lcom/viber/voip/billing/i;
.super Lcom/viber/voip/billing/k;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/bu;

.field final synthetic b:Lcom/viber/voip/billing/bq;

.field final synthetic c:Lcom/viber/voip/billing/am;

.field final synthetic d:Lcom/viber/voip/billing/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/bq;Lcom/viber/voip/billing/am;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/viber/voip/billing/i;->d:Lcom/viber/voip/billing/a;

    iput-object p2, p0, Lcom/viber/voip/billing/i;->a:Lcom/viber/voip/billing/bu;

    iput-object p3, p0, Lcom/viber/voip/billing/i;->b:Lcom/viber/voip/billing/bq;

    iput-object p4, p0, Lcom/viber/voip/billing/i;->c:Lcom/viber/voip/billing/am;

    invoke-direct {p0, p1}, Lcom/viber/voip/billing/k;-><init>(Lcom/viber/voip/billing/a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/bd;->N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/billing/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/products/android/purchase"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/viber/voip/billing/m;)V
    .locals 1
    .parameter

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/viber/voip/billing/i;->c:Lcom/viber/voip/billing/am;

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/am;->a(Lcom/viber/voip/billing/m;)V

    .line 1181
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 4
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
    .line 1169
    iget-object v0, p0, Lcom/viber/voip/billing/i;->a:Lcom/viber/voip/billing/bu;

    invoke-virtual {v0}, Lcom/viber/voip/billing/bu;->i()Ljava/lang/String;

    move-result-object v0

    .line 1170
    iget-object v1, p0, Lcom/viber/voip/billing/i;->a:Lcom/viber/voip/billing/bu;

    invoke-virtual {v1}, Lcom/viber/voip/billing/bu;->j()Ljava/lang/String;

    move-result-object v1

    .line 1171
    iget-object v2, p0, Lcom/viber/voip/billing/i;->b:Lcom/viber/voip/billing/bq;

    invoke-virtual {v2}, Lcom/viber/voip/billing/bq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/viber/voip/billing/do;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1173
    const-string/jumbo v3, "receipt"

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    const-string/jumbo v0, "signature"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    const-string/jumbo v0, "tss"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    return-void
.end method
