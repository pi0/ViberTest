.class Lcom/viber/voip/billing/g;
.super Lcom/viber/voip/billing/ac;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/bt;

.field final synthetic b:Lcom/viber/voip/billing/p;

.field final synthetic c:Lcom/viber/voip/billing/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/a;Lcom/viber/voip/billing/bt;Lcom/viber/voip/billing/p;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1109
    iput-object p1, p0, Lcom/viber/voip/billing/g;->c:Lcom/viber/voip/billing/a;

    iput-object p2, p0, Lcom/viber/voip/billing/g;->a:Lcom/viber/voip/billing/bt;

    iput-object p3, p0, Lcom/viber/voip/billing/g;->b:Lcom/viber/voip/billing/p;

    invoke-direct {p0, p1}, Lcom/viber/voip/billing/ac;-><init>(Lcom/viber/voip/billing/a;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1112
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

    const-string/jumbo v1, "/products/add"

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
    .line 1124
    iget-object v0, p0, Lcom/viber/voip/billing/g;->b:Lcom/viber/voip/billing/p;

    invoke-interface {v0, p1}, Lcom/viber/voip/billing/p;->a(Lcom/viber/voip/billing/m;)V

    .line 1125
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
    .line 1117
    const-string/jumbo v0, "product_id"

    iget-object v1, p0, Lcom/viber/voip/billing/g;->a:Lcom/viber/voip/billing/bt;

    invoke-virtual {v1}, Lcom/viber/voip/billing/bt;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    const-string/jumbo v0, "udid"

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/registration/HardwareParameters;->getUdid()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    const-string/jumbo v0, "phone_country"

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/registration/cp;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    return-void
.end method
