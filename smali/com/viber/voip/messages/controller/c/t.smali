.class Lcom/viber/voip/messages/controller/c/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/c/al;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;IJIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/t;->e:Lcom/viber/voip/messages/controller/c/e;

    iput p2, p0, Lcom/viber/voip/messages/controller/c/t;->a:I

    iput-wide p3, p0, Lcom/viber/voip/messages/controller/c/t;->b:J

    iput p5, p0, Lcom/viber/voip/messages/controller/c/t;->c:I

    iput-boolean p6, p0, Lcom/viber/voip/messages/controller/c/t;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/dc;)V
    .locals 6
    .parameter

    .prologue
    .line 400
    instance-of v0, p1, Lcom/viber/voip/messages/controller/dj;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 401
    check-cast v0, Lcom/viber/voip/messages/controller/dj;

    iget v1, p0, Lcom/viber/voip/messages/controller/c/t;->a:I

    iget-wide v2, p0, Lcom/viber/voip/messages/controller/c/t;->b:J

    iget v4, p0, Lcom/viber/voip/messages/controller/c/t;->c:I

    iget-boolean v5, p0, Lcom/viber/voip/messages/controller/c/t;->d:Z

    invoke-interface/range {v0 .. v5}, Lcom/viber/voip/messages/controller/dj;->a(IJIZ)V

    .line 402
    iget-boolean v0, p0, Lcom/viber/voip/messages/controller/c/t;->d:Z

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/t;->e:Lcom/viber/voip/messages/controller/c/e;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/e;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/controller/c/t;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/t;->e:Lcom/viber/voip/messages/controller/c/e;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/e;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/controller/c/t;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/t;->e:Lcom/viber/voip/messages/controller/c/e;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/c/e;->a(Lcom/viber/voip/messages/controller/c/e;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/viber/voip/messages/controller/c/t;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
