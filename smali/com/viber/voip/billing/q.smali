.class public Lcom/viber/voip/billing/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/viber/voip/billing/bn;

.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:D

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/viber/voip/billing/bn;Ljava/lang/String;DLjava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/viber/voip/billing/q;->a:Lcom/viber/voip/billing/bn;

    .line 211
    iput-object p2, p0, Lcom/viber/voip/billing/q;->b:Ljava/lang/String;

    .line 212
    iput-wide p3, p0, Lcom/viber/voip/billing/q;->d:D

    .line 213
    iput-object p5, p0, Lcom/viber/voip/billing/q;->e:Ljava/lang/String;

    .line 214
    iput p6, p0, Lcom/viber/voip/billing/q;->c:I

    .line 215
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/q;)Lcom/viber/voip/billing/bn;
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-object v0, p0, Lcom/viber/voip/billing/q;->a:Lcom/viber/voip/billing/bn;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/viber/voip/billing/q;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/viber/voip/billing/q;->f:Ljava/lang/String;

    .line 230
    :goto_0
    return-object v0

    .line 225
    :cond_0
    const-string/jumbo v0, "USD"

    iget-object v1, p0, Lcom/viber/voip/billing/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/billing/q;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_1
    const-string/jumbo v0, "EUR"

    iget-object v1, p0, Lcom/viber/voip/billing/q;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u20ac"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/billing/q;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/billing/q;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    iput-object p1, p0, Lcom/viber/voip/billing/q;->f:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public b()Lcom/viber/voip/billing/bn;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/viber/voip/billing/q;->a:Lcom/viber/voip/billing/bn;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/viber/voip/billing/q;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/viber/voip/billing/q;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()D
    .locals 2

    .prologue
    .line 244
    iget-wide v0, p0, Lcom/viber/voip/billing/q;->d:D

    return-wide v0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/viber/voip/billing/q;->c:I

    return v0
.end method
