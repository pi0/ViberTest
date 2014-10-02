.class Lcom/viber/voip/messages/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/j;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/viber/voip/messages/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/a/b;Ljava/util/Set;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/viber/voip/messages/a/g;->b:Lcom/viber/voip/messages/a/b;

    iput-object p2, p0, Lcom/viber/voip/messages/a/g;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/contacts/b/b;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/viber/voip/contacts/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/viber/voip/messages/a/g;->b:Lcom/viber/voip/messages/a/b;

    invoke-static {v0}, Lcom/viber/voip/messages/a/b;->c(Lcom/viber/voip/messages/a/b;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/a/h;

    invoke-direct {v1, p0, p1, p2}, Lcom/viber/voip/messages/a/h;-><init>(Lcom/viber/voip/messages/a/g;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method
