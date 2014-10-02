.class Lcom/viber/voip/messages/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/viber/voip/messages/a/g;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/a/g;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/viber/voip/messages/a/h;->c:Lcom/viber/voip/messages/a/g;

    iput-object p2, p0, Lcom/viber/voip/messages/a/h;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/viber/voip/messages/a/h;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lcom/viber/voip/messages/a/h;->c:Lcom/viber/voip/messages/a/g;

    iget-object v0, v0, Lcom/viber/voip/messages/a/g;->b:Lcom/viber/voip/messages/a/b;

    iget-object v1, p0, Lcom/viber/voip/messages/a/h;->c:Lcom/viber/voip/messages/a/g;

    iget-object v1, v1, Lcom/viber/voip/messages/a/g;->a:Ljava/util/Set;

    iget-object v2, p0, Lcom/viber/voip/messages/a/h;->a:Ljava/util/Map;

    iget-object v3, p0, Lcom/viber/voip/messages/a/h;->b:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/messages/a/b;->a(Lcom/viber/voip/messages/a/b;Ljava/util/Set;Ljava/util/Map;Ljava/util/Map;)V

    .line 261
    return-void
.end method
