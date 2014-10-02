.class Lcom/viber/voip/messages/ui/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/d/i;


# instance fields
.field final synthetic a:Landroid/view/ContextMenu;

.field final synthetic b:Lcom/viber/voip/messages/ui/h;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/h;Landroid/view/ContextMenu;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/viber/voip/messages/ui/i;->b:Lcom/viber/voip/messages/ui/h;

    iput-object p2, p0, Lcom/viber/voip/messages/ui/i;->a:Landroid/view/ContextMenu;

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
    .line 306
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    :cond_0
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/messages/ui/j;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/j;-><init>(Lcom/viber/voip/messages/ui/i;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 314
    :cond_1
    return-void
.end method
