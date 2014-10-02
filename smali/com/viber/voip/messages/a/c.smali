.class Lcom/viber/voip/messages/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/dh;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/a/b;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/viber/voip/messages/a/c;->a:Lcom/viber/voip/messages/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/util/Set;Z)V
    .locals 0
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
    .line 60
    return-void
.end method

.method public onChangeOwner()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/viber/voip/messages/a/c;->a:Lcom/viber/voip/messages/a/b;

    invoke-virtual {v0}, Lcom/viber/voip/messages/a/b;->c()V

    .line 65
    return-void
.end method

.method public onInitCache()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onNewInfo(Ljava/util/Set;Z)V
    .locals 2
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
    .line 54
    iget-object v0, p0, Lcom/viber/voip/messages/a/c;->a:Lcom/viber/voip/messages/a/b;

    iget-object v1, p0, Lcom/viber/voip/messages/a/c;->a:Lcom/viber/voip/messages/a/b;

    invoke-static {v1}, Lcom/viber/voip/messages/a/b;->a(Lcom/viber/voip/messages/a/b;)Lcom/viber/voip/messages/controller/c/as;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/viber/voip/messages/controller/c/as;->e(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/messages/a/b;->a(Lcom/viber/voip/messages/a/b;Ljava/util/List;)V

    .line 55
    return-void
.end method
