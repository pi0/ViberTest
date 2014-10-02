.class Lcom/viber/voip/messages/controller/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/de;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/controller/a/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/controller/a/c;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/viber/voip/messages/controller/a/e;->a:Lcom/viber/voip/messages/controller/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JJJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 88
    return-void
.end method

.method public a(JJZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    return-void
.end method

.method public a(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 82
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/e;->a:Lcom/viber/voip/messages/controller/a/c;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/e;->a:Lcom/viber/voip/messages/controller/a/c;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/e;->a:Lcom/viber/voip/messages/controller/a/c;

    invoke-static {v0}, Lcom/viber/voip/messages/controller/a/c;->c(Lcom/viber/voip/messages/controller/a/c;)V

    .line 83
    :cond_0
    return-void
.end method

.method public b(Ljava/util/Set;Z)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 77
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/e;->a:Lcom/viber/voip/messages/controller/a/c;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/e;->a:Lcom/viber/voip/messages/controller/a/c;

    iget-object v0, v0, Lcom/viber/voip/messages/controller/a/c;->b:Lcom/viber/jni/PhoneControllerWrapper;

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/a/e;->a:Lcom/viber/voip/messages/controller/a/c;

    invoke-static {v0, p1}, Lcom/viber/voip/messages/controller/a/c;->a(Lcom/viber/voip/messages/controller/a/c;Ljava/util/Set;)V

    .line 78
    :cond_0
    return-void
.end method
