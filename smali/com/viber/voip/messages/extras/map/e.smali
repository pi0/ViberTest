.class abstract Lcom/viber/voip/messages/extras/map/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field protected a:D

.field protected b:D

.field final synthetic c:Lcom/viber/voip/messages/extras/map/d;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/extras/map/d;DD)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/viber/voip/messages/extras/map/e;->c:Lcom/viber/voip/messages/extras/map/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-wide p2, p0, Lcom/viber/voip/messages/extras/map/e;->a:D

    .line 441
    iput-wide p4, p0, Lcom/viber/voip/messages/extras/map/e;->b:D

    .line 442
    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 4

    .prologue
    .line 461
    iget-wide v0, p0, Lcom/viber/voip/messages/extras/map/e;->a:D

    iget-object v2, p0, Lcom/viber/voip/messages/extras/map/e;->c:Lcom/viber/voip/messages/extras/map/d;

    invoke-static {v2}, Lcom/viber/voip/messages/extras/map/d;->d(Lcom/viber/voip/messages/extras/map/d;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/viber/voip/messages/extras/map/e;->b:D

    iget-object v2, p0, Lcom/viber/voip/messages/extras/map/e;->c:Lcom/viber/voip/messages/extras/map/d;

    invoke-static {v2}, Lcom/viber/voip/messages/extras/map/d;->e(Lcom/viber/voip/messages/extras/map/d;)D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract b()V
.end method

.method public run()V
    .locals 1

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/map/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/map/e;->b()V

    goto :goto_0
.end method
