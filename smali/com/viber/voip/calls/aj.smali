.class Lcom/viber/voip/calls/aj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/o;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/an;

.field final synthetic b:Lcom/viber/voip/calls/af;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/an;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/viber/voip/calls/aj;->b:Lcom/viber/voip/calls/af;

    iput-object p2, p0, Lcom/viber/voip/calls/aj;->a:Lcom/viber/voip/calls/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 245
    if-eqz p1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/viber/voip/calls/aj;->b:Lcom/viber/voip/calls/af;

    invoke-static {v0}, Lcom/viber/voip/calls/af;->a(Lcom/viber/voip/calls/af;)Lcom/viber/voip/calls/am;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/viber/voip/calls/am;->a(I)V

    .line 247
    iget-object v0, p0, Lcom/viber/voip/calls/aj;->b:Lcom/viber/voip/calls/af;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/calls/af;->a(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/t;)Lcom/viber/voip/calls/t;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/calls/aj;->b:Lcom/viber/voip/calls/af;

    sget-object v1, Lcom/viber/voip/calls/al;->c:Lcom/viber/voip/calls/al;

    iget-object v2, p0, Lcom/viber/voip/calls/aj;->a:Lcom/viber/voip/calls/an;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/calls/af;->a(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/al;Lcom/viber/voip/calls/an;)V

    .line 250
    return-void
.end method
