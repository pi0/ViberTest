.class public Lcom/viber/voip/billing/bu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Lcom/viber/voip/billing/bn;

.field d:J

.field e:I

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:J

.field o:J

.field p:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/viber/voip/billing/bu;->h:Ljava/lang/String;

    .line 53
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/viber/voip/billing/bu;->h:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 54
    const-string/jumbo v1, "orderId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/billing/bu;->a:Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/billing/bu;->b:Ljava/lang/String;

    .line 56
    const-string/jumbo v1, "productId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/billing/bn;->a(Ljava/lang/String;)Lcom/viber/voip/billing/bn;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/billing/bu;->c:Lcom/viber/voip/billing/bn;

    .line 57
    const-string/jumbo v1, "purchaseTime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/viber/voip/billing/bu;->d:J

    .line 58
    const-string/jumbo v1, "purchaseState"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/viber/voip/billing/bu;->e:I

    .line 59
    const-string/jumbo v1, "developerPayload"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/billing/bu;->f:Ljava/lang/String;

    .line 60
    const-string/jumbo v1, "token"

    const-string/jumbo v2, "purchaseToken"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/billing/bu;->g:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/viber/voip/billing/bu;->i:Ljava/lang/String;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/billing/bu;->l:Z

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/billing/bn;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/viber/voip/billing/bu;->a:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/viber/voip/billing/bu;->b:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/viber/voip/billing/bu;->c:Lcom/viber/voip/billing/bn;

    .line 71
    iput-wide p4, p0, Lcom/viber/voip/billing/bu;->d:J

    .line 72
    iput p6, p0, Lcom/viber/voip/billing/bu;->e:I

    .line 73
    iput-object p7, p0, Lcom/viber/voip/billing/bu;->f:Ljava/lang/String;

    .line 74
    iput-object p8, p0, Lcom/viber/voip/billing/bu;->g:Ljava/lang/String;

    .line 75
    iput-object p9, p0, Lcom/viber/voip/billing/bu;->h:Ljava/lang/String;

    .line 76
    iput-object p10, p0, Lcom/viber/voip/billing/bu;->i:Ljava/lang/String;

    .line 78
    iput-boolean p11, p0, Lcom/viber/voip/billing/bu;->j:Z

    .line 79
    iput-boolean p12, p0, Lcom/viber/voip/billing/bu;->k:Z

    .line 80
    iput-boolean p13, p0, Lcom/viber/voip/billing/bu;->l:Z

    .line 81
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/viber/voip/billing/bu;->c:Lcom/viber/voip/billing/bn;

    invoke-virtual {v0}, Lcom/viber/voip/billing/bn;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/viber/voip/billing/bu;->j:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/viber/voip/billing/bu;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/viber/voip/billing/bu;->k:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/billing/bu;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/viber/voip/billing/bu;->l:Z

    return-void
.end method

.method public d()Lcom/viber/voip/billing/bn;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/viber/voip/billing/bu;->c:Lcom/viber/voip/billing/bn;

    return-object v0
.end method

.method d(Z)V
    .locals 1
    .parameter

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/billing/bu;->m:Z

    .line 104
    return-void
.end method

.method public e()J
    .locals 2

    .prologue
    .line 87
    iget-wide v0, p0, Lcom/viber/voip/billing/bu;->d:J

    return-wide v0
.end method

.method e(Z)V
    .locals 1
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/billing/bu;->p:Z

    .line 111
    return-void
.end method

.method public f()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/viber/voip/billing/bu;->e:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viber/voip/billing/bu;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/billing/bu;->g:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/viber/voip/billing/bu;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/viber/voip/billing/bu;->i:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/viber/voip/billing/bu;->j:Z

    return v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/viber/voip/billing/bu;->k:Z

    return v0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/viber/voip/billing/bu;->l:Z

    return v0
.end method

.method n()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/viber/voip/billing/bu;->m:Z

    return v0
.end method

.method o()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/viber/voip/billing/bu;->p:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Purchase(itemType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/billing/bu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", category:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/billing/bu;->d()Lcom/viber/voip/billing/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/billing/bn;->a()Lcom/viber/voip/billing/bt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/billing/bt;->a()Lcom/viber/voip/billing/bp;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", verified:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/billing/bu;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", consumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/billing/bu;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pending:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/viber/voip/billing/bu;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/billing/bu;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
