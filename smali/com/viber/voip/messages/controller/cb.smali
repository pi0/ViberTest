.class Lcom/viber/voip/messages/controller/cb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/ag;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/viber/voip/messages/controller/by;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/by;Lcom/viber/voip/messages/controller/ag;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/viber/voip/messages/controller/cb;->c:Lcom/viber/voip/messages/controller/by;

    iput-object p2, p0, Lcom/viber/voip/messages/controller/cb;->a:Lcom/viber/voip/messages/controller/ag;

    iput-object p3, p0, Lcom/viber/voip/messages/controller/cb;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/viber/voip/messages/controller/cb;->a:Lcom/viber/voip/messages/controller/ag;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/cb;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/controller/ag;->a(Ljava/util/Map;)V

    .line 405
    return-void
.end method
