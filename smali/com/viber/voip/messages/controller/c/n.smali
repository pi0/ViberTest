.class Lcom/viber/voip/messages/controller/c/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/c/al;


# instance fields
.field final synthetic a:I

.field final synthetic b:J

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/viber/voip/messages/controller/c/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/c/e;IJLjava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/n;->d:Lcom/viber/voip/messages/controller/c/e;

    iput p2, p0, Lcom/viber/voip/messages/controller/c/n;->a:I

    iput-wide p3, p0, Lcom/viber/voip/messages/controller/c/n;->b:J

    iput-object p5, p0, Lcom/viber/voip/messages/controller/c/n;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/controller/dc;)V
    .locals 4
    .parameter

    .prologue
    .line 346
    iget v0, p0, Lcom/viber/voip/messages/controller/c/n;->a:I

    iget-wide v1, p0, Lcom/viber/voip/messages/controller/c/n;->b:J

    iget-object v3, p0, Lcom/viber/voip/messages/controller/c/n;->c:Ljava/util/Map;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/viber/voip/messages/controller/dc;->a(IJLjava/util/Map;)V

    .line 347
    return-void
.end method
