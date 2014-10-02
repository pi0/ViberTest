.class Lcom/viber/voip/registration/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/az;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/viber/voip/registration/ai;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/viber/voip/registration/ak;->d:Lcom/viber/voip/registration/ai;

    iput-object p2, p0, Lcom/viber/voip/registration/ak;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/viber/voip/registration/ak;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/viber/voip/registration/ak;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 4
    .parameter

    .prologue
    .line 148
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "105"

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "Ok"

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 152
    iget-object v0, p0, Lcom/viber/voip/registration/ak;->d:Lcom/viber/voip/registration/ai;

    invoke-virtual {v0}, Lcom/viber/voip/registration/ai;->g()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    .line 153
    iget-object v1, p0, Lcom/viber/voip/registration/ak;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/viber/voip/registration/ak;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/viber/voip/registration/ak;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/viber/voip/registration/ActivationController;->storeRegValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/viber/voip/registration/ak;->d:Lcom/viber/voip/registration/ai;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRegisterRequest() code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/registration/ak;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", alphaCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/registration/ak;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", regNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/registration/ak;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/ai;->h(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/viber/voip/registration/ak;->d:Lcom/viber/voip/registration/ai;

    invoke-virtual {v0}, Lcom/viber/voip/registration/ai;->c()V

    .line 158
    return-void
.end method
