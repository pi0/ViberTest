.class public abstract Lcom/viber/voip/registration/bs;
.super Lcom/viber/voip/registration/cq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RES:",
        "Lcom/viber/voip/registration/bt;",
        ">",
        "Lcom/viber/voip/registration/cq",
        "<TRES;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/registration/cq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string/jumbo v0, "UDID"

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/registration/bs;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Lcom/viber/voip/billing/a;->b()Lcom/viber/voip/billing/an;

    move-result-object v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "invalid token"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_0
    const-string/jumbo v1, "phone_number"

    invoke-static {}, Lcom/viber/voip/billing/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/registration/bs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v1, "token"

    iget-object v2, v0, Lcom/viber/voip/billing/an;->b:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/viber/voip/registration/bs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo v1, "ts"

    iget-wide v2, v0, Lcom/viber/voip/billing/an;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/registration/bs;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 31
    const-string/jumbo v0, "Status"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/viber/voip/registration/bs;->f:Ljava/lang/Object;

    check-cast v0, Lcom/viber/voip/registration/bt;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/viber/voip/registration/bt;->b:I

    .line 34
    :cond_0
    return-void
.end method
