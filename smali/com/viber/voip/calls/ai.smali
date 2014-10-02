.class Lcom/viber/voip/calls/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/s;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/an;

.field final synthetic b:Lcom/viber/voip/calls/af;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/an;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/viber/voip/calls/ai;->b:Lcom/viber/voip/calls/af;

    iput-object p2, p0, Lcom/viber/voip/calls/ai;->a:Lcom/viber/voip/calls/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZJ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/viber/voip/calls/ai;->b:Lcom/viber/voip/calls/af;

    invoke-static {v0}, Lcom/viber/voip/calls/af;->a(Lcom/viber/voip/calls/af;)Lcom/viber/voip/calls/am;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/viber/voip/calls/am;->a(I)V

    .line 232
    iget-object v0, p0, Lcom/viber/voip/calls/ai;->b:Lcom/viber/voip/calls/af;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/calls/af;->a(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/t;)Lcom/viber/voip/calls/t;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/calls/ai;->a:Lcom/viber/voip/calls/an;

    invoke-virtual {v0, p2, p3}, Lcom/viber/voip/calls/an;->a(J)V

    .line 235
    iget-object v0, p0, Lcom/viber/voip/calls/ai;->b:Lcom/viber/voip/calls/af;

    sget-object v1, Lcom/viber/voip/calls/al;->b:Lcom/viber/voip/calls/al;

    iget-object v2, p0, Lcom/viber/voip/calls/ai;->a:Lcom/viber/voip/calls/an;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/calls/af;->a(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/al;Lcom/viber/voip/calls/an;)V

    .line 236
    return-void
.end method
