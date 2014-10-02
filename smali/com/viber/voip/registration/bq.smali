.class public Lcom/viber/voip/registration/bq;
.super Lcom/viber/voip/registration/bs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/registration/bs",
        "<",
        "Lcom/viber/voip/registration/br;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->e:Ljava/lang/String;

    const-string/jumbo v1, "GetRIDRequest"

    const-string/jumbo v2, "GetRIDResponse"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/viber/voip/registration/bs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 16
    const-string/jumbo v0, "RToken"

    invoke-virtual {p0, v0, p2}, Lcom/viber/voip/registration/bq;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected a()Lcom/viber/voip/registration/br;
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/viber/voip/registration/br;

    invoke-direct {v0}, Lcom/viber/voip/registration/br;-><init>()V

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-super {p0, p1, p2}, Lcom/viber/voip/registration/bs;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const-string/jumbo v0, "RID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/viber/voip/registration/bq;->f:Ljava/lang/Object;

    check-cast v0, Lcom/viber/voip/registration/br;

    iput-object p2, v0, Lcom/viber/voip/registration/br;->a:Ljava/lang/String;

    .line 30
    :cond_0
    return-void
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/viber/voip/registration/bq;->a()Lcom/viber/voip/registration/br;

    move-result-object v0

    return-object v0
.end method
