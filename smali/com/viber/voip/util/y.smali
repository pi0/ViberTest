.class final Lcom/viber/voip/util/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/i;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/util/ag;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/viber/voip/util/ag;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/viber/voip/util/y;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/viber/voip/util/y;->b:Lcom/viber/voip/util/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/viber/voip/contacts/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/viber/voip/util/y;->a:Ljava/lang/String;

    .line 281
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/contacts/b/b;

    .line 283
    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/util/y;->b:Lcom/viber/voip/util/ag;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/viber/voip/util/y;->b:Lcom/viber/voip/util/ag;

    invoke-interface {v1, p1, v0}, Lcom/viber/voip/util/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_1
    return-void
.end method
