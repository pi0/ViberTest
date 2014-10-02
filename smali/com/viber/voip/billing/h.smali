.class Lcom/viber/voip/billing/h;
.super Lcom/viber/voip/billing/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/bu;

.field final synthetic b:Lcom/viber/voip/billing/bq;

.field final synthetic c:Lcom/viber/voip/billing/al;

.field final synthetic d:Lcom/viber/voip/billing/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/bu;Lcom/viber/voip/billing/bq;Lcom/viber/voip/billing/al;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/viber/voip/billing/h;->d:Lcom/viber/voip/billing/a;

    iput-object p2, p0, Lcom/viber/voip/billing/h;->a:Lcom/viber/voip/billing/bu;

    iput-object p3, p0, Lcom/viber/voip/billing/h;->b:Lcom/viber/voip/billing/bq;

    iput-object p4, p0, Lcom/viber/voip/billing/h;->c:Lcom/viber/voip/billing/al;

    invoke-direct {p0, p1}, Lcom/viber/voip/billing/ac;-><init>(Lcom/viber/voip/billing/a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v1

    iget-object v1, v1, Lcom/viber/voip/bd;->V:Ljava/lang/String;

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
    .line 1151
    iget-object v0, p0, Lcom/viber/voip/billing/h;->c:Lcom/viber/voip/billing/al;

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/al;->a(Lcom/viber/voip/billing/m;)V

    .line 1152
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
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
    .line 1142
    const-string/jumbo v0, "receipt"

    iget-object v1, p0, Lcom/viber/voip/billing/h;->a:Lcom/viber/voip/billing/bu;

    invoke-virtual {v1}, Lcom/viber/voip/billing/bu;->i()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    const-string/jumbo v0, "signature"

    iget-object v1, p0, Lcom/viber/voip/billing/h;->a:Lcom/viber/voip/billing/bu;

    invoke-virtual {v1}, Lcom/viber/voip/billing/bu;->j()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    const-string/jumbo v0, "udid"

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/registration/HardwareParameters;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    const-string/jumbo v0, "phone_country"

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/registration/cp;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    const-string/jumbo v0, "price_string"

    iget-object v1, p0, Lcom/viber/voip/billing/h;->b:Lcom/viber/voip/billing/bq;

    invoke-virtual {v1}, Lcom/viber/voip/billing/bq;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    return-void
.end method
