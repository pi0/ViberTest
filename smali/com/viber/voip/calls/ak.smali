.class Lcom/viber/voip/calls/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/o;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/af;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/af;)V
    .locals 0
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/viber/voip/calls/ak;->a:Lcom/viber/voip/calls/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/viber/voip/calls/ak;->a:Lcom/viber/voip/calls/af;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/calls/af;->a(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/t;)Lcom/viber/voip/calls/t;

    .line 261
    iget-object v0, p0, Lcom/viber/voip/calls/ak;->a:Lcom/viber/voip/calls/af;

    invoke-static {v0}, Lcom/viber/voip/calls/af;->a(Lcom/viber/voip/calls/af;)Lcom/viber/voip/calls/am;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/viber/voip/calls/am;->a(I)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/calls/ak;->a:Lcom/viber/voip/calls/af;

    invoke-static {v0}, Lcom/viber/voip/calls/af;->b(Lcom/viber/voip/calls/af;)V

    .line 264
    return-void
.end method
