.class public Lcom/viber/voip/registration/bw;
.super Lcom/viber/voip/registration/bs;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/viber/voip/registration/bs",
        "<",
        "Lcom/viber/voip/registration/bx;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-static {}, Lcom/viber/voip/bc;->b()Lcom/viber/voip/bd;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/bd;->f:Ljava/lang/String;

    const-string/jumbo v1, "SetRTokenRequest"

    const-string/jumbo v2, "SetRTokenResponse"

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/viber/voip/registration/bs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 13
    const-string/jumbo v0, "RToken"

    invoke-virtual {p0, v0, p2}, Lcom/viber/voip/registration/bw;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected a()Lcom/viber/voip/registration/bx;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/viber/voip/registration/bx;

    invoke-direct {v0}, Lcom/viber/voip/registration/bx;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/viber/voip/registration/bw;->a()Lcom/viber/voip/registration/bx;

    move-result-object v0

    return-object v0
.end method
