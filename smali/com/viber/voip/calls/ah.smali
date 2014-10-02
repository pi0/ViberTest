.class Lcom/viber/voip/calls/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/calls/o;


# instance fields
.field final synthetic a:Lcom/viber/voip/calls/w;

.field final synthetic b:Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

.field final synthetic c:Lcom/viber/voip/calls/af;


# direct methods
.method constructor <init>(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/w;Lcom/viber/voip/calls/entities/impl/CallEntityImpl;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/viber/voip/calls/ah;->c:Lcom/viber/voip/calls/af;

    iput-object p2, p0, Lcom/viber/voip/calls/ah;->a:Lcom/viber/voip/calls/w;

    iput-object p3, p0, Lcom/viber/voip/calls/ah;->b:Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 184
    if-eqz p1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/viber/voip/calls/ah;->c:Lcom/viber/voip/calls/af;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/calls/af;->a(Lcom/viber/voip/calls/af;Lcom/viber/voip/calls/t;)Lcom/viber/voip/calls/t;

    .line 186
    iget-object v0, p0, Lcom/viber/voip/calls/ah;->c:Lcom/viber/voip/calls/af;

    invoke-static {v0}, Lcom/viber/voip/calls/af;->a(Lcom/viber/voip/calls/af;)Lcom/viber/voip/calls/am;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/viber/voip/calls/ah;->c:Lcom/viber/voip/calls/af;

    invoke-static {v0}, Lcom/viber/voip/calls/af;->a(Lcom/viber/voip/calls/af;)Lcom/viber/voip/calls/am;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/viber/voip/calls/am;->a(I)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/calls/ah;->a:Lcom/viber/voip/calls/w;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/viber/voip/calls/ah;->a:Lcom/viber/voip/calls/w;

    iget-object v1, p0, Lcom/viber/voip/calls/ah;->b:Lcom/viber/voip/calls/entities/impl/CallEntityImpl;

    invoke-interface {v0, v1}, Lcom/viber/voip/calls/w;->a(Lcom/viber/voip/calls/entities/CallEntity;)V

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/calls/ah;->c:Lcom/viber/voip/calls/af;

    invoke-static {v0}, Lcom/viber/voip/calls/af;->b(Lcom/viber/voip/calls/af;)V

    .line 194
    return-void
.end method
